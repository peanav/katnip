define([
  'lib/jquery',
  'router'
],
function($, router) {
  var init = function() {
    router.start();
  }

  return {
    init: init
  };
});
