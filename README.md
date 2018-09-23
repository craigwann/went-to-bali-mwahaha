# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

#### Installation
1. Download github repository from
`git clone https://github.com/craigwann/portfolio-rails.git`
1. Ruby version 2.5.0 Rails version 5.2.1
1. navigate to project directory `bundle install` and `rake db:setup`
1. There is an admin user with the email `admin@admin.com` and regular user with the email the email `user@user.com`. Both accounts have the  password= `password`

### AJAX
Before you do any other refactoring, you'll need to add the following AJAX to the site. Make sure to commit after each new feature:

1. Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.
1. Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image, the description, and any other fields you choose to add.
1. Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

#### Additional Features
Once you are finished adding AJAX, continue to refactor the site. Do at least 6 of the following items. Commit after each completed objective and also mention them in your README. Make sure you test where appropriate.

* Ensure that users can't order a negative number of items.
* Add flash messages for signing up, signing in and signing out.
* Add product update and delete functionality for admins.
* Add admin flash messages for adding, updating and deleting products.
* Allow other than whole dollar amounts for admin product creation (for instance, 3.99).
* Add product validations.
* Add Stripe so users can pay when finalizing orders.
* Add password validations to ensure a user's password is sufficiently complex.
* Add admin links to navbar so admins can easily add, update and delete products.
* Fix the row height for products, which can quickly become uneven.
* Add integration testing for AJAX functionality.
* Add further AJAX functionality where it might be useful.
