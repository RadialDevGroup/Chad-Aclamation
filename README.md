# Chad-Aclamation

## Currently Using

* ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-freebsd10.1]
* Rails 4.2.1
* SQLite 3.8.10.1 2015-05-09 12:14:55 05b4b1f2a937c06c90db70c09890038f6c98ec40

## System Dependencies

### FreeBSD

Getting SQLite working with Rails on FreeBSD is "special":

    gem install sqlite3 -- --with-sqlite3-dir=/usr/local --with-sqlite3-lib=/usr/local/lib

## Starting

To make the current development site available from http://localhost:3000, use:

    $ rails server
