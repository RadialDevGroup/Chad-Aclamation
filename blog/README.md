# Aclamation

a practice project to develop/hone/acclimate

Its name appears to be a hybrid of the noun forms of Acclaim and Acclimate.  It
seems nicely marketable.

## Currently Using

* ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-freebsd10.1]
* Rails 4.2.1
* SQLite 3.8.10.1 2015-05-09 12:14:55 05b4b1f2a937c06c90db70c09890038f6c98ec40


## System Dependencies

### FreeBSD

Getting SQLite working with Rails on FreeBSD is "special":

    gem install sqlite3 -- --with-sqlite3-dir=/usr/local --with-sqlite3-lib=/usr/local/lib


## Configuration

None, at the moment.


## Database Management

Only what Rails generates for free, at the moment.


## Services

None, at the moment.


## Testing

Only what Rails generates for free, at the moment.


## Deployment

### Development

To make the current development site available from http://localhost:3000, use:

    $ bundle install
    $ bundle exec rails server

### Production

Don't.  It is not production ready.  Not even remotely.


## Development Process

see PROCESS.md
