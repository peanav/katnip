define([
  'lib/jquery',
  'lib/backbone',
  'lib/mustache',
  'text!templates/katalus.mustache'
],
function($, Backbone, Mustache, template) {
  return KatalusView = Backbone.View.extend({
    className: 'hero-unit',
    render: function() {
      this.$el.append( Mustache.render(template) );
      return this;
    }
  });
});
