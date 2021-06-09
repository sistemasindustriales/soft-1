<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php echo form_hidden('rel_id',$id); ?>
<?php echo form_hidden('rel_type',$name); ?>
<?php echo render_datetime_input('date','set_reminder_date','',array('data-date-min-date'=>_d(date('Y-m-d')))); ?>
<?php echo render_select('staff',$members,array('staffid',array('firstname','lastname')),'reminder_set_to',get_staff_user_id(),array('data-current-staff'=>get_staff_user_id())); ?>
<?php echo render_textarea('description','reminder_description'); ?>
<?php if(is_email_template_active('reminder-email-staff')) { ?>
  <div class="form-group">
   
  </div>
<?php } ?>
