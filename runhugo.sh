#!/bin/sh
hugo
#hugo server --bind <my ip>
hugo server --bind=0.0.0.0 --port 8095 --baseURL http://0.0.0.0
