class Tarsus.Views.Bootstrap.Alert extends Backbone.View

  tagName: 'div'
  className: 'alert'

  defaults:
    fadeIn: true

  events:
    'close': 'close'
    'closed': 'closed'

  initialize: (options)->
    _.bindAll @
    @options = _.extend @defaults, options

  render: ->
    @$el.addClass('fade in') if @options.fadeIn
    @$el.addClass('alert-' + @options.status) if @options.status?

    @$el.append @closeButton()
    @$el.append @header() if @options.title?

    if template?
      @$el.addClass 'alert-block'
      @$el.append @template()
    else
      @$el.append @options.text

    @$el.alert()
    @

  close: ->
    @trigger 'tarsus:alert:close'
    @

  closed: ->
    @trigger 'tarsus:alert:closed'
    @

  success: ->
    @options.status = 'success'
    @

  info: ->
    @options.status = 'info'
    @

  error: ->
    @options.status = 'error'
    @

  closeButton: ->
    Backbone.$('<button type="button" class="close" data-dismiss="alert">&times;</button>')

  headerContainer: ->
    Backbone.$('<h4 class="alert-heading"></h4>')

  header: ->
    @headerContainer.append @options.title
