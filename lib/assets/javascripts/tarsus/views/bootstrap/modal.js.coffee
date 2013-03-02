class Tarsus.Views.Bootstrap.Modal extends Backbone.View

  tagName: 'div'
  className: 'modal hide fade'
  attributes:
    tabindex: -1

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

  render: ->
    body = Backbone.$('<div class="modal-body"></div>')
    body.html @template()

    @$el.append @header()
    @$el.append body

    footer = @footer()

    if footer?
      footer.wrap('<div class="modal-footer"></div>')
      @$el.append @footer()

    @$el.modal(@options)
    @delegateEvents()
    @

  show: ->
    @$el.modal('show')

  shown: ->
    # to be overloaded by child classes

  hide: ->
    @$el.modal('hide')

  hidden: ->
    # to be overloaded by child classes

  toggle: ->
    @$el.modal('toggle')

  header: ->
    header = Backbone.$('<div class="modal-header"></div>')
    header.append @closeButton()
    header.append('<h3>' + @options.title + '</h3>') if @options.title?
    header

  closeButton: ->
    Backbone.$('<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>')

  footer: ->
    # to be overloaded by child classes