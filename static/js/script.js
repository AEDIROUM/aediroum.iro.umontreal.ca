/* Conseil */

$('table').addClass('table table-hover');

$('thead').remove();

$('td:first-child').replaceWith(function () {
  return $('<th/>', {
    scope: 'row',
    text: $(this).text()
  });
});