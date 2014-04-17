# Lee-Jon's Technology Updates

## The purpose
A simple application for publishing updates to the technology team. But in
general it can be used as a markdown blog / updates site. Its pretty ugly right
now but is built on the Zurb Framework and Sinatra so its easy to customise.

## The app
Is rack, with omniauth for our company's google account and markdown cause its nice.
Change this if you want to remove the auth, or use the authentication for your
own company. To add see in the config file, and add `protected!` to the route. 

## How to Use it
To write a new post add a new markdown file to the `updates` folder and push
the code to a server. That's it.

## The Tests
Tests: Rspec style asserting against Rack::MockResponse

## Copywrite
Lee-Jon & Alliants 2014
