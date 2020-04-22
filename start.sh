#!/bin/sh
if [ ! -d "$DATADIR/$WIKI_NAME" ]
then
  tiddlywiki ${DATADIR}/${WIKI_NAME} --init server
fi
tiddlywiki $DATADIR/$WIKI_NAME --listen host=$HOST port=$PORT 

