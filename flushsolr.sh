#!/bin/sh

URL=http://localhost:8983/solr/update

#match all docs query in a delete by query command: *:*
curl $URL --data-binary '*:*' -H 'Content-type:text/xml; charset=utf-8'

#send the commit command to make sure all the changes are flushed and visible
curl $URL --data-binary '' -H 'Content-type:text/xml; charset=utf-8'
echo