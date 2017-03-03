#!/usr/bin/env python
import os
from travisci import TravisCI


def sync():
    ght = "GITHUB_TOKEN"
    if ght not in os.environ or not os.environ[ght]:
        raise ValueError("Environment variable %s must be set." % ght)
    tcli = TravisCI(github_token=os.environ[ght])
    tcli.start_travis_sync()


if __name__ == "__main__":
    sync()
