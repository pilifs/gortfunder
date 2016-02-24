// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready page:load', function() {
  $('.back-project-button').on('click', function() {
    $.ajax({
      type: 'POST',
      url: '/pledges',
      dataType: 'script',
      data: 'pledge[reward_id]=' + $(this).attr('data-reward-id')
    });
  });
});
