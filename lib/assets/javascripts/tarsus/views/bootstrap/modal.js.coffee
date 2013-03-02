class Tarsus.Views.Bootstrap.Modal extends Backbone.View

  tagName: 'div'
  className: 'modal hide fade'
  attributes:
    tabindex: -1
    style: 'outline: 0;'

  events:
    'shown': 'shown'
    'hidden': 'hidden'

  defaults:
    bootstrap:
      backdrop: true
      keyboard: true
      show: false
      remote: false
    noCloseButton: false

  initialize: (options)->
    _.bindAll @
    @options = _.extend @defaults, options

  render: ->
    model = @model.attributes if @model?

    header = @header()
    footer = @footer()
    body = Backbone.$('<div class="modal-body"></div>')
    body.append @template(model)

    if header?
      headerContainer = Backbone.$('<div class="modal-header"></div>')
      headerContainer.append @closeButton() unless @options.noCloseButton
      headerContainer.append header
      @$el.append headerContainer

    @$el.append body

    if footer?
      footerContainer = Backbone.$('<div class="modal-footer"></div>')
      footerContainer.append footer
      @$el.append footerContainer

    @$el.modal(@options.bootstrap)
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
    Backbone.$('<h3>' + @options.title + '</h3>') if @options.title?

  closeButton: ->
    Backbone.$('<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>')

  footer: ->
    # to be overloaded by child classes
