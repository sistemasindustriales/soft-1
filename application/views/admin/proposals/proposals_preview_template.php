<?php echo form_hidden('_attachment_sale_id',$proposal->id); ?>
<?php echo form_hidden('_attachment_sale_type','proposal'); ?>
<div class="panel_s">
   <div class="panel-body">
      <div class="horizontal-scrollable-tabs preview-tabs-top">
         <div class="scroller arrow-left"><i class="fa fa-angle-left"></i></div>
         <div class="scroller arrow-right"><i class="fa fa-angle-right"></i></div>
         <div class="horizontal-tabs">
            <ul class="nav nav-tabs nav-tabs-horizontal mbot15" role="tablist">
               




<li role="presentation" class="active">
                  <a href="#tab_proposal" aria-controls="tab_proposal" role="tab" data-toggle="tab">
                  <?php echo _l('proposal'); ?>
                  </a>
               </li>
               <?php if(isset($proposal)){ ?>
               





<li role="presentation">
                  <a href="#tab_comments" onclick="get_proposal_comments(); return false;" aria-controls="tab_comments" role="tab" data-toggle="tab">
                  <?php echo _l('proposal_comments'); ?>
                  </a>
               </li>
               





<li role="presentation">
                  <a href="#tab_reminders" onclick="initDataTable('.table-reminders', admin_url + 'misc/get_reminders/' + <?php echo $proposal->id ;?> + '/' + 'proposal', undefined, undefined, undefined,[1,'asc']); return false;" aria-controls="tab_reminders" role="tab" data-toggle="tab">
                  <?php echo _l('proposal_reminders'); ?>
                  <?php
                     $total_reminders = total_rows('tblreminders',
                      array(
                       'isnotified'=>0,
                       'staff'=>get_staff_user_id(),
                       'rel_type'=>'proposal',
                       'rel_id'=>$proposal->id
                       )
                      );
                     if($total_reminders > 0){
                      echo '<span class="badge">'.$total_reminders.'</span>';
                     }
                     ?>
                  </a>
               </li>
               





<li role="presentation" class="tab-separator">
                  <a href="#tab_tasks" onclick="init_rel_tasks_table(<?php echo $proposal->id; ?>,'proposal'); return false;" aria-controls="tab_tasks" role="tab" data-toggle="tab">
                  <?php echo _l('tasks'); ?>
                  </a>
               </li>
                 



<li role="presentation" class="tab-separator">
                     <a href="#tab_notes" onclick="get_sales_notes(<?php echo $proposal->id; ?>,'proposals'); return false" aria-controls="tab_notes" role="tab" data-toggle="tab">
                     <?php echo _l('estimate_notes'); ?>
                     <span class="notes-total">
                        <?php if($totalNotes > 0){ ?>
                           <span class="badge"><?php echo $totalNotes; ?></span>
                        <?php } ?>
                     </span>
                     </a>
                  </li>
               


             


               


<li role="presentation" data-toggle="tooltip" data-title="<?php echo _l('toggle_full_view'); ?>" class="tab-separator toggle_view">
                  <a href="#" onclick="small_table_full_view(); return false;">
                  <i class="fa fa-expand"></i></a>
               </li>
               <?php } ?>
            </ul>
         </div>
      </div>
      <div class="row">
         <div class="col-md-3">
            <?php echo format_proposal_status($proposal->status,'pull-left mright5 mtop5'); ?>
         </div>
         <div class="col-md-9 text-right _buttons proposal_buttons">
            <?php if(has_permission('proposals','','edit')){ ?>
            <a href="<?php echo admin_url('proposals/proposal/'.$proposal->id); ?>" data-placement="left" data-toggle="tooltip" title="<?php echo _l('proposal_edit'); ?>" class="btn btn-default btn-with-tooltip" data-placement="bottom">

<i class="fa fa-pencil-square-o"></i></a>
            <?php } ?>
            <div class="btn-group">
               <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="fa fa-file-pdf-o"></i><?php if(is_mobile()){echo ' PDF';} ?> <span class="caret"></span></a>
               <ul class="dropdown-menu dropdown-menu-right">
                  <li class="hidden-xs"><a href="<?php echo admin_url('proposals/pdf/'.$proposal->id.'?output_type=I'); ?>"><?php echo _l('view_pdf'); ?></a></li>
                  <li class="hidden-xs"><a href="<?php echo admin_url('proposals/pdf/'.$proposal->id.'?output_type=I'); ?>" target="_blank"><?php echo _l('view_pdf_in_new_window'); ?></a></li>
                  <li><a href="<?php echo admin_url('proposals/pdf/'.$proposal->id); ?>"><?php echo _l('download'); ?></a></li>
                  <li>
                     <a href="<?php echo admin_url('proposals/pdf/'.$proposal->id.'?print=true'); ?>" target="_blank">
                     <?php echo _l('print'); ?>
                     </a>
                  </li>
               </ul>
            </div>
            



       


<div class="btn-group ">
               <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <?php echo _l('more'); ?> <span class="caret"></span>
               </button>
               <ul class="dropdown-menu dropdown-menu-right">
                  <li>
                     <a href="<?php echo site_url('proposal/'.$proposal->id .'/'.$proposal->hash); ?>" target="_blank"><?php echo _l('proposal_view'); ?></a>
                  </li>
                  <?php if(!empty($proposal->open_till) && date('Y-m-d') < $proposal->open_till && ($proposal->status == 4 || $proposal->status == 1) && is_proposals_expiry_reminders_enabled()) { ?>
                  <li>
                     <a href="<?php echo admin_url('proposals/send_expiry_reminder/'.$proposal->id); ?>"><?php echo _l('send_expiry_reminder'); ?></a>
                  </li>
                  <?php } ?>
                  <li>
                     <a href="#" data-toggle="modal" data-target="#sales_attach_file"><?php echo _l('invoice_attach_file'); ?></a>
                  </li>
                  <?php if(has_permission('proposals','','create')){ ?>
                  <li>
                     <a href="<?php echo admin_url() . 'proposals/copy/'.$proposal->id; ?>"><?php echo _l('proposal_copy'); ?></a>
                  </li>
                  <?php } ?>
                  <?php if($proposal->proposal_id == NULL && $proposal->invoice_id == NULL){ ?>
                  <?php foreach($proposal_statuses as $status){
                     if(has_permission('proposals','','edit')){
                      if($proposal->status != $status){ ?>
                  <li>
                     <a href="<?php echo admin_url() . 'proposals/mark_action_status/'.$status.'/'.$proposal->id; ?>"><?php echo _l('proposal_mark_as',format_proposal_status($status,'',false)); ?></a>
                  </li>
                  <?php
                     } } } ?>
                  <?php } ?>
                  <?php if(!empty($proposal->signature) && has_permission('proposals','','delete')){ ?>
                  <li>
                     <a href="<?php echo admin_url('proposals/clear_signature/'.$proposal->id); ?>" class="_delete">
                     <?php echo _l('clear_signature'); ?>
                     </a>
                  </li>
                  <?php } ?>
                  <?php if(has_permission('proposals','','delete')){ ?>
                  <li>
                     <a href="<?php echo admin_url() . 'proposals/delete/'.$proposal->id; ?>" class="text-danger delete-text _delete"><?php echo _l('proposal_delete'); ?></a>
                  </li>
                  <?php } ?>
               </ul>
            </div>
            <?php if($proposal->proposal_id == NULL && $proposal->invoice_id == NULL){ ?>
            <?php if(has_permission('proposals','','create') || has_permission('invoices','','create')){ ?>
            <div class="btn-group">
               





           </div>
            <?php } ?>
            <?php } else {
               if($proposal->proposal_id != NULL){
                echo '<a href="'.admin_url('proposals/list_proposals/'.$proposal->proposal_id).'" class="btn btn-info">'.format_proposal_number($proposal->proposal_id).'</a>';
               } else {
                echo '<a href="'.admin_url('invoices/list_invoices/'.$proposal->invoice_id).'" class="btn btn-info">'.format_invoice_number($proposal->invoice_id).'</a>';
               }
               } ?>
         </div>
      </div>
      <div class="clearfix"></div>
      <hr class="hr-panel-heading" />
      <div class="row">
         <div class="col-md-12">
            <div class="tab-content">
               <div role="tabpanel" class="tab-pane active" id="tab_proposal">
                  <div class="row mtop10">
                     <?php if($proposal->status == 3 && !empty($proposal->acceptance_firstname) && !empty($proposal->acceptance_lastname) && !empty($proposal->acceptance_email)){ ?>
                     <div class="col-md-12">
                        <div class="alert alert-info">
                           <?php echo _l('accepted_identity_info',array(
                              _l('proposal_lowercase'),
                              '<b>'.$proposal->acceptance_firstname . ' ' . $proposal->acceptance_lastname . '</b> (<a href="mailto:'.$proposal->acceptance_email.'">'.$proposal->acceptance_email.'</a>)',
                              '<b>'. _dt($proposal->acceptance_date).'</b>',
                              '<b>'.$proposal->acceptance_ip.'</b>'.(is_admin() ? '&nbsp;<a href="'.admin_url('proposals/clear_acceptance_info/'.$proposal->id).'" class="_delete text-muted" data-toggle="tooltip" data-title="'._l('clear_this_information').'">

<i class="fa fa-remove"></i></a>' : '')
                              )); ?>
                        </div>
                     </div>
                     <?php } ?>
                     <div class="col-md-6">
                        <h4 class="bold">
                           <?php
                              $tags = get_tags_in($proposal->id,'proposal');
                              if(count($tags) > 0){
                               echo '
<i class="fa fa-tag" aria-hidden="true" data-toggle="tooltip" data-title="'.implode(', ',$tags).'"></i>';
                              }
                              ?>
                           <a href="<?php echo admin_url('proposals/proposal/'.$proposal->id); ?>">
                           <span id="proposal-number">
                           <?php echo format_proposal_number($proposal->id); ?>
                           </span>
                           </a>
                        </h4>
                        <h5 class="bold mbot15 font-medium"><a href="<?php echo admin_url('proposals/proposal/'.$proposal->id); ?>"><?php echo $proposal->subject; ?></a></h5>
                        <address>
                           <?php echo format_organization_info(); ?>
                        </address>
                     </div>
                     <div class="col-md-6 text-right">
                        <address>
                           <span class="bold"><?php echo _l('proposal_to'); ?>:</span><br>
                           <?php echo format_proposal_info($proposal,'admin'); ?>
                        </address>
                     </div>
                  </div>
                  <hr class="hr-panel-heading" />
            




   <div class="row">
                     <div class="col-md-12">
                        <div class="table-responsive">
                           <table class="table items proposal-items-preview">
                              <thead>
                                 <tr>
                                    <th align="left">#</th>
                                    <th class="description" width="50%" align="left"><?php echo _l('estimate_table_item_heading'); ?></th>
                                    <?php
                                       $custom_fields = get_items_custom_fields_for_table_html($proposal->id,'proposal');
                                       foreach($custom_fields as $cf){
                                         echo '<th class="custom_field" align="left">' . $cf['name'] . '</th>';
                                       }
                                       ?>
                                    <?php
                                       $qty_heading = _l('estimate_table_quantity_heading');
                                       if($proposal->show_quantity_as == 2){
                                        $qty_heading = _l('estimate_table_hours_heading');
                                       } else if($proposal->show_quantity_as == 3){
                                        $qty_heading = _l('estimate_table_quantity_heading') .'/'._l('proposal_table_hours_heading');
                                       }
                                       ?>
                                    <th align="right"><?php echo $qty_heading; ?></th>
                                    <th align="right"><?php echo _l('estimate_table_rate_heading'); ?></th>
                                    <?php if(get_option('show_tax_per_item') == 1){ ?>
                                    <th align="right"><?php echo _l('estimate_table_tax_heading'); ?></th>
                                    <?php } ?>
                                    <th align="right"><?php echo _l('estimate_table_amount_heading'); ?></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <?php
                                    $items_data = get_table_items_and_taxes($proposal->items,'proposal',true);
                                    $taxes = $items_data['taxes'];
                                    echo $items_data['html'];
                                    ?>
                              </tbody>
                           </table>
                        </div>
                     </div>
</div>




    
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_comments">
                  <div class="row proposal-comments mtop15">
                     <div class="col-md-12">
                        <div id="proposal-comments"></div>
                        <div class="clearfix"></div>
                        <textarea name="content" id="comment" rows="4" class="form-control mtop15 proposal-comment"></textarea>
                        <button type="button" class="btn btn-info mtop10 pull-right" onclick="add_proposal_comment();"><?php echo _l('proposal_add_comment'); ?></button>
                     </div>
                  </div>
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_notes">
                  <?php echo form_open(admin_url('proposals/add_note/'.$proposal->id),array('id'=>'sales-notes','class'=>'proposal-notes-form')); ?>
                  <?php echo render_textarea('description'); ?>
                  <div class="text-right">
                     <button type="submit" class="btn btn-info mtop15 mbot15"><?php echo _l('proposal_add_note'); ?></button>
                  </div>
                  <?php echo form_close(); ?>
                  <hr />
                  <div class="panel_s mtop20 no-shadow" id="sales_notes_area">
                  </div>
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_emails_tracking">
                  <?php
                     $this->load->view('admin/includes/emails_tracking',array(
                       'tracked_emails'=>
                       get_tracked_emails($proposal->id, 'proposal'))
                       );
                     ?>
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_tasks">
                  <?php init_relation_tasks_table(array( 'data-new-rel-id'=>$proposal->id,'data-new-rel-type'=>'proposal')); ?>
               </div>
               <div role="tabpanel" class="tab-pane" id="tab_reminders">
                  <a href="#" data-toggle="modal" class="btn btn-info" data-target=".reminder-modal-proposal-<?php echo $proposal->id; ?>">
<i class="fa fa-bell-o"></i> <?php echo _l('proposal_set_reminder_title'); ?></a>
                  <hr />
                  <?php render_datatable(array( _l( 'reminder_description'), _l( 'reminder_date'), _l( 'reminder_staff'), _l( 'reminder_is_notified')), 'reminders'); ?>
                  <?php $this->load->view('admin/includes/modals/reminder',array('id'=>$proposal->id,'name'=>'proposal','members'=>$members,'reminder_title'=>_l('proposal_set_reminder_title'))); ?>
               </div>
               <div role="tabpanel" class="tab-pane ptop10" id="tab_views">
                  <?php
                     $views_activity = get_views_tracking('proposal',$proposal->id);
                       if(count($views_activity) === 0) {
                     echo '<h4 class="no-margin">'._l('not_viewed_yet',_l('proposal_lowercase')).'</h4>';
                     }
                     foreach($views_activity as $activity){ ?>
                  <p class="text-success no-margin">
                     <?php echo _l('view_date') . ': ' . _dt($activity['date']); ?>
                  </p>
                  <p class="text-muted">
                     <?php echo _l('view_ip') . ': ' . $activity['view_ip']; ?>
                  </p>
                  <hr />
                  <?php } ?>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php $this->load->view('admin/proposals/send_proposal_to_email_template'); ?>
<script>
   init_btn_with_tooltips();
   init_datepicker();
   init_selectpicker();
   init_form_reminder();
   init_tabs_scrollable();
     // defined in manage proposals
     proposal_id = '<?php echo $proposal->id; ?>';
     init_proposal_editor();
</script>
