[![Build Status](https://travis-ci.org/lsst-sqre/uservice-ccutter.svg?branch=master)](https://travis-ci.org/lsst-sqre/uservice-ccutter)

# sqre-travissync

Kubernetes job to cron-ishly run a Travis CI sync.

## Usage

sqre-travissync requires the environment variable `GITHUB_TOKEN` to be
set.  That token must be exchangeable for a Travis CI token, and the
user associated with that token will be the one who runs the sync.

Do this by copying traviscisync-secrets.yaml to a temp file, updating
the secret, and running `kubectl create -f secret-file` on it.  Then run
`kubectl create -f kubernetes\traviscisync-job.yaml` to create the job.

...or at least this would work if GKE supported CronJobs.

As it is, install the package sqre-travissync, and then run
sqre-travissync once `GITHUB_TOKEN` is set.
