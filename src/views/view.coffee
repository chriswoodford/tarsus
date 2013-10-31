class Tarsus.View extends Backbone.View

  initialize: (options)->
    _.bindAll @
    @options = _.extend @defaults, options
