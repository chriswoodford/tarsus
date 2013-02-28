class Tarsus.Views.Bootstrap.Modal extends Backbone.View

  events:
    'shown': 'shown'
    'hidden': 'hidden'

  defaults:
    backdrop: true
    keyboard: true
    show: false
    remote: false

  initialize: (options)->
    _.bindAll @
    @options = _.extend @defaults, options
    # check for template

  render: ->
    @$el.html @template()
    @$el.modal(@options)
    @delegateEvents()
    @

  show: ->
    @$el.modal('show')
    console.log 'show'

  shown: ->
    console.log 'shown'

  hide: ->
    @$el.modal('hide')
    console.log 'hide'

  hidden: ->
    console.log 'hidden'

  toggle: ->
    @$el.modal('toggle')
    console.log 'toggle'
