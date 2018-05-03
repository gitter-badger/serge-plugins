serge-plugins
============

Attempt to build a complete AWS SDK in Perl

This project is attempting to build an entire AWS SDK from the information
that is stored in other AWS SDKs. Other AWS SDKs have a "data-driven" approach,
meaning that the definitions for the method calls are stored in a data structure
describing input and output parameters.

Project info:

Travis CI status: [![Build Status](https://travis-ci.org/pplu/aws-sdk-perl.svg?branch=master)](https://travis-ci.org/pplu/aws-sdk-perl)

Version on CPAN: [![CPAN version](https://badge.fury.io/pl/Paws.svg)](https://badge.fury.io/pl/Paws)


Installation
============

If you want to install and use Paws then just install it via cpan, cpanm, carton or the likes. If you want to contribute code: read on

```
cpanm Paws

```

Development setup
============

If you want to develop a feature, or contribute code in some way, you need a development setup. This is done by cloning
the repo into a local directory.

```
# Clone the repo. For what it's worth, you can clone from a fork too :)
git clone https://github.com/dragosv/serge-plugins.git
cd serge-plugins
```

With carton you can install all the dependencies needed in a local environment, so you can play around with dependencies without
affecting the system libraries. The cpanfile is used to track the dependencies needed.

```

And now tell carton to install the dependencies in a local lib

```
carton install
# drop into a shell so perl can always find the local libraries
carton exec $SHELL -l
```


Now we're ready to code away! Happy hacking.

Organization
============

lib: Contains translation services plugins.

```

Perl versions
============

The SDK is targeted at modern Perl versions. Since a new perl gets released every year, distributions perl tend to lag behind, so
support for perl versions on any modern, widespread distribution is our target.
Very old versions may work, but no intention to support them is made. You can always install a modern version of perl with perlbrew or
plenv in a breeze. We're running the test cases on Travis for all "supported" perl versions. If you want to support a lower version,
you can contribute back. Acceptance of patches for older versions of Perl won't mean that the compatibility will be maintained
long-term, although it will be tried :).

Dependencies
============

Dependencies are versioned in a cpanfile. If you have carton, just execute 'carton install' in the sdk directory, and all dependencies
will be pulled in automatically into a local library path. After that use 'carton exec ...' to execute your scripts.

If you add a dependency, just add it to the cpanfile file. There are three sections:

 - the general section is for dependencies that are needed only in runtime
 - the test section is for dependecies needed to run the test suite
 - the develop section is for dependencies needed for developers

carton install installs all dependencies in all sections (after all, we're in developer mode here) 

Packaging
============

Packaging is managed with Dist::Zilla.

```



