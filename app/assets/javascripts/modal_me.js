jQuery(function(){
  jQuery('.modal-me').prop('href','#');
  jQuery('.modal-me').click(function(){
    jQuery('#modal').modal('show');
    jQuery('.modal-title').html($(this).data('title'));
    jQuery.ajax({url: $(this).data('url'),
    success: function(data){
      jQuery('.modal-body').html(data);
    },
    async: false});
    return false;
  });
});
