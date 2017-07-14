# README

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
