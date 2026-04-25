#!/bin/bash
HELLO=hello
function hello {
    LOCAL HELLO=world
    echo $HELLO
}


