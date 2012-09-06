$(document).ready(function() {
  /*FORM*/
  $('input, textarea, select').focusin(function(){
    if($(this).val() == ''){
      $(this).parent('.input-placeholder').children('label.label_input').hide();
    }
  });

  $('input, textarea, select').focusout(function(){
    if($(this).val() == ''){
      $(this).parent('.input-placeholder').children('label.label_input').show();
    }
  });

});