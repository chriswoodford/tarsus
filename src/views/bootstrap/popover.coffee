class Tarsus.Views.Bootstrap.Popover extends Tarsus.View
  tagName: 'a'
  className: 'btn'
  attributes:
    href: '#'

  defaults:
    bootstrap:
      animation: true
      html: false
      placement: 'top'
      selector: false
      trigger: 'hover focus'
      delay: 0
      container: false
      title: null
      content: null
    text: null

  render: ->
    @$el.text @options.text
    @$el.popover @options.bootstrap
    @

  show: ->
    @$el.popover 'show'
    @trigger 'tarsus:popover:show'
    @

  hide: ->
    @$el.popover 'hide'
    @trigger 'tarsus:popover:hide'
    @

  toggle: ->
    @$el.popover 'toggle'
    @trigger 'tarsus:popover:toggle'
    @

  destroy: ->
    @$el.popover 'destroy'
    @trigger 'tarsus:popover:destroy'
    @
