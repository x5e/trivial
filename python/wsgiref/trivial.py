#!/usr/bin/env python3


def trivial(_, start_response):
    start_response('200 OK', [('Content-type', 'text/plain')])
    return [b"Hello world!\n"]


if __name__ == "__main__":
    from wsgiref.simple_server import make_server
    with make_server('', 1980, trivial) as httpd:
        httpd.serve_forever()
