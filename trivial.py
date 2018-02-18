#!/usr/bin/env python3
import time


def trivial(environ, start_response):
    # for key, value in environ.items():
    #    print("\t", key, type(value), repr(value))
    start_response('200 OK', [('Content-type', 'text/plain')])
    # time.sleep(10)
    return [b"Hello world!\n"]


if __name__ == "__main__":
    from wsgiref.simple_server import make_server
    with make_server('', 8000, trivial) as httpd:
        httpd.serve_forever()
