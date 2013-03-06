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

  initialize: (options)->
    _.bindAll @
    @options = _.extend @defaults, options

  render: ->
    @$el.text @options.text
    @$el.tooltip(@options.bootstrap)
    @

  show: ->
    @$el.tooltop('show')
    @trigger 'tarsus:tooltip:show'
    @

  hide: ->
    @$el.tooltop('hide')
    @trigger 'tarsus:tooltip:hide'
    @

  toggle: ->
    @$el.tooltop('toggle')
    @trigger 'tarsus:tooltip:toggle'
    @

  destroy: ->
    @$el.tooltop('destroy')
    @trigger 'tarsus:tooltip:destroy'
    @
