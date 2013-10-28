# The Revolution will be Containerized

## Intro

A talk about Container technology in general, with a focus on Docker.

Open ``talk/index.html`` for the source, or [view it live](http://serialized.net/dockertalk/).

## Files in this repo

All the files in this repo are the demonstrations shown in the talk itself, so no need to copy and paste from the slides.

* ``redis``: Simple example of a ``Dockerfile``-based Redis container.
* ``redis-fixture``: Demo of chaining containers together and adding sample data for repeatable testing.
* ``rebuild.sh``: Simple script to, given a tag, rebuild a container, stop the running version, and start the replacement.
* ``Vagrantfile``: Local vagrant configuration I used while working on the talk. See below for details.
  * ``docker.yml`` is the ansible configuration the ``Vagrantfile`` drives.
* [TheRevolutionWillBeContainerized.pdf](TheRevolutionWillBeContainerized.pdf): PDF version of the talk.
* ``talk``: The talk itself (built with [reveal.js](https://github.com/hakimel/reveal.js/)).


## Getting Started with a Docker Env, using the local Vagrantfile. (See talk for a better way.)

This depends on having [Vagrant](http://vagrantup.com) and a newish version of [Ansible](http://en.wikipedia.org/wiki/Ansible) installed. You also have to manually reinstall the Guest Services after upgrading the kernel.

In the talk I describe the 'Docker recommended' way which skips these issues.


    $ vagrant init precise64 http://files.vagrantup.com/precise64.box
    $ vagrant up
    $ vagrant ssh
