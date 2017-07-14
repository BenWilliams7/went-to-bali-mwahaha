# README for Ecommerce Website

Refactor by Ben Williams

##About the site

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

*

* `rake db:setup`

* Sorry, didn't get around to tests. It mostly works. There might be a few bugs.

## Refactoring and Bug Fixes

1. Added AJAX elements to asynchronously update the shopping cart with products on the index.

2. Fixed bug that occurred when no quantity was added.

3. Added asynchronous display of product info when clicking on a product's name.

4. Add asynchronous delete and update of shopping carts.

5. Add image column to products and migrate.
(*Sidenote on fixed bug:* Accidentally rolled back a previous migration. When migrate was run again that migration generated a default that broke the application. Had to reset the browser cache in addition to rake db:reset in order to fix the app as just fixing the migration and resetting alone didn't fix it.)

6. Add validation for positive number.

7. Add flash for sign up, sign in, and sign out.

8. Add RailsAdmin, handling product update/delete as well as quick commands in navbar.
