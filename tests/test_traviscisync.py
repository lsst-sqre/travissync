#!/usr/bin/env python
"""Test Travis CI Sync.
"""
import travissync


def test_travissync():
    travissync.sync()

if __name__ == "__main__":
    test_travissync()
