// Formulaire de contact
$('#contact').submit(function (event) {
    event.preventDefault();

    $.ajax({
        url: 'https://formspree.io/aediroum@iro.umontreal.ca',
        method: 'POST',
        data: $('#contact-form').serialize(),
        dataType: 'json',
        beforeSend: function () {
            // $('.alert-info').show();
        },
        success: function (data) {
            // $('.alert-info').hide();
            // $('.alert-success').show();
        },
        error: function (err) {
            // $('.alert-info').hide();
            // $('.alert-danger').show();
        }
    });
});
