# Your Travel List

Your Travel List is a simple web app for tracking travel destinations.

This app was created with Ruby, HTML, CSS and RESTful routes in SINATRA.
## Installation
1. Clone repository
2. Create a database using command line


```bash
createdb travellist
psql -d travellist -f db/travellist.sql
```
3. To run it type:


```bash
ruby app.rb
```
and open this address in a browser:

```bash
localhost:4567
```
If you wan use data provided with an app run seed file
```bash
ruby db/seed.rb
```
