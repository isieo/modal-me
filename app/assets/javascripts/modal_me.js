//= require twitter/bootstrap/bootstrap-modal
jQuery(function(){
  jQuery('a[data-modalme-url*=]').prop('href','#');
  jQuery('a[data-modalme-url*=]').click(function(){
    jQuery('#modal').modal('show');
    jQuery('.modal-title').html($(this).data('modalme-title'));
    jQuery.ajax({url: $(this).data('modalme-url'),
    success: function(data){
      jQuery('.modal-body').html(data);
    },
    async: false});
    return false;
  });
});
