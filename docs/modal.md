## Modal View - Tarsus.Views.Bootstrap.Modal

[Bootstrap Modal](http://twitter.github.com/bootstrap/javascript.html#modals)

### Initialization Options:

* title (default: null)
* noCloseButton (default: false)
* bootstrap:
  * backdrop (default: true)
  * keyboard (default: true)
  * show (default: false)
  * remote (default: false)

### Properties

[Backbone Properties](http://backbonejs.org/#View)

### Methods

#### render()

Renders the Modal to the page.
The modal will not show, unless you've set the bootstrap.show options to true.

#### show()

Calls Bootstrap's .modal('show')
Shows the modal

#### shown()

This method is called when the Bootstrap Modal fires the "shown" event.
Implemented as a no-op. Override this method on your child class to add funcitonality

#### hide()

Calls Bootstrap's .modal('hide')
Hides the modal

#### hidden()

This method is called when the Bootstrap Modal fires the "hidden" event.
Implemented as a no-op. Override this method in your child class to add functionality

#### toggle()

Calls Bootstrap's .modal('toggle')

#### header()

Builds the markup that will display in the header. Uses Bootstrap's <h3>Title</h3> convention by default
Override this method to change the returned markup

#### headerContainer()

Builds the markup that will surround the header. Uses Bootstrap's <div class="modal-header"> convention by default.
Override this method to change the returned markup.

#### closeButton()

Builds the markup for the close button that will appear in the header. Override this method to
change the returned markup. The close button will not display if the noCloseButton option is set to true

#### footer()

Build the markup that will display in in the footer. Implemented as a no-op by default.
Override this method to build markup to be rendered in the footer

#### footerContainer()

Build the markup that will surround the footer. Uses Bootstrap's <div class="modal-footer"> convention by default.
Override this method to change the returned markup. The markup will only be rendered if the footer() method returns a value.
