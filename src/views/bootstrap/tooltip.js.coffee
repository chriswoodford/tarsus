class Tarsus.Views.Bootstrap.Tooltip extends Backbone.View
  tagName: 'a'
  attributes:
    href: '#'

  defaults:
    bootstrap:
      animation: true
      html: false
      placement: 'top'
      selector: false
      title: ''
      trigger: 'hover focus'
      delay: 0
      container: false
    text: null

  initialize: (options)->
    _.bindAll @
    @options = _.extend @defaults, options

  render: ->
    @$el.text @options.text
    @$el.tooltip(@options.bootstrap)
    @

  show: ->
    @$el.tooltip('show')
    @trigger 'tarsus:tooltip:show'
    @

  hide: ->
    @$el.tooltip('hide')
    @trigger 'tarsus:tooltip:hide'
    @

  toggle: ->
    @$el.tooltip('toggle')
    @trigger 'tarsus:tooltip:toggle'
    @

  destroy: ->
    @$el.tooltip('destroy')
    @trigger 'tarsus:tooltip:destroy'
    @
