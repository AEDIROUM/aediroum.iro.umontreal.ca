var $form = $('#contact');

$form.submit(function (event) {
  event.preventDefault();

  $.ajax({
    url: 'https://formspree.io/aediroum@iro.umontreal.ca',
    method: 'POST',
    data: $form.serialize(),
    dataType: 'json',
    beforeSend: function () {
      $('.alert-success').hide();
      $('.alert-danger').hide();
      $('.alert-info').show();
    },
    success: function () {
      $('.alert-info').hide();
      $('.alert-success').show();

      $form[0].reset();
    },
    error: function () {
      $('.alert-info').hide();
      $('.alert-danger').show();
    }
  });
});
