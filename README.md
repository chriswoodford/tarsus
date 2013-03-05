# Tarsus.js

Wrap [Twitter Bootstrap](http://twitter.github.com/bootstrap) elements in
[Backbone](http://backbonejs.org) Views

## Requirements

* [Backbone](http://backbonejs.org) v0.9.10
* [Bootstrap](http://twitter.github.com/bootstrap) v2.3.0

## About Tarsus

* Extendable
* Templating agnostic

## Views

* [Modal](docs/modal.md)
* [Alert](docs/alert.md)

## Examples

All examples use [Coffeescript](http://coffeescript.org)

### Bootstrap Modal

Create a modal that transfers the user to /login after 1 second

    class YourApplication.Views.Login extends Tarsus.Views.Bootstrap.Modal
      id: "processLogin"
      template: JST['shared/login']

      shown: ->
        setTimeout (-> window.location.href = "/login" ), 1000

Instantiate the Modal with options

    $(document).ready ->
      login = new YourApplication.Views.Login(
        title: 'Login'
        noCloseButton: true
        bootstrap:
          show: false
      )
      login.render()

### Bootstrap Alert

Render an info alert to an element

    $(document).ready ->
      alert = new Tarsus.Views.Bootstrap.Alert
        text: 'Hello World!'
        status: 'info'
      $('#app').append alert.render()
