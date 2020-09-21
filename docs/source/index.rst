.. Mauritius PDS Tokenization documentation master file, created by
   sphinx-quickstart on Fri Sep 18 13:39:26 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to Mauritius PDS Tokenization's documentation!
======================================================

Overview
--------

This repository aims to aid in the tokenization of Mauritian PDS
(Property Development Scheme) projects.

Background
----------

The Mauritius Property Development Scheme is a merging of two previous
property development schemes viz. the Integrated Resort Scheme (IRS) and
the Real Estate Scheme (RES).

The merger and new guidance has created a scheme that is more friendly
towards foreign investment and additionally allows sales to mauritian
locals and diaspora.

The fundamental premium attached to properties is that the purchaser
who invests the minimum investment (currently $350000) will be automatically
granted Mauritian Residency, and tax residency should the purchaser
spend sufficient tax days in the country. Additional premiums are that
Mauritius is ranked highly in the world in terms of ease of global
business dealings (along with favourable company tax) and that the
resident also gets a tropical paradise lifestyle, at a lower cost than
would be possible within Europe.

Opportunities
-------------

Traditionally, these IRS and RES schemes have been plagued with
difficulties and inefficiencies. These include
`fictional projects <https://en.wikipedia.org/wiki/Integrated_Resort_Scheme>`_
as well as difficulties obtaining finance. Some of the obstacles appear
to have been overcome by the current PDS developer pool, however, there
is large room for improvement.

Primarily, the way these projects are financed can be changed, minimizing
risk for all parties. In normal operation, a contract known as a VEFA
(vente en l’état futur d’achèvement) is used. These are used for selling off plan,
usually with the following installment
`terms <https://www.edbmauritius.org/media/3343/guidelines-pds_july-2020.pdf>`_:

1. Upon signing of the deed: 25%
2. Upon completion of the foundation works: 10%
3. Upon completion of roofed-in phase: 35%
4. Upon completion: 25%
5. Upon availability of premises: 5%

As can be deduced, this structure affects both developers and investors
as in the first case, an investor can lose their initial deposit of 25%
on a property that may never be built and in the second case, the staggered
nature of funding inhibits developers' negotiating power and ability to
plan in advance.

A tokenization of Mauritian PDS projects can solve the above issues by
making financing available at the outset. Instead of a single individual
needing to purchase off plan, many individuals can be tapped for smaller
amounts to pay for the construction of the properties. The properties
can then be listed on the open market, which will lead to easier
investment from those who wish to purchase the properties, as they will
know they are purchasing a tangible and complete property (versus off-plan
where they are purchasing an idea).

The returns on such developments vary, however, we do have a minimum
guaranteed investment of $350000 (valid until June 2022) from foreigners
who wish to purchase residency. The previous minimum was $500000 and
it may return to that level after June 2022. We can see that on a
real estate agency site such as
`Pam Golding <https://www.pamgolding.co.za/property-developments/mauritius/6c0ac44b-e6dc-4aa7-8b07-6bb7e779640c>`_,
that the majority of developments are still pricing above the $500000 mark.

Multiple areas of optimization for these projects should be possible,
but primarily building costs should be looked at as these make up
the majority of the cost of the project. Given up front funding, it
may be possible to buy bulk purchases of building materials which
should allow for more negotiating power.

Setup
-----

Requirements:

- NodeJS >= V12
- NPM
- Docker

It is recommended you use the ready-made docker environment. All commands in
the sections that follow should preferably run inside the container. To set
this up run the following code on the host machine::

    npm run docker_setup
    npm run docker_interactive

Linting and Formatting
----------------------

To check for code problems::

    npm run lint:js           # JavaScript
    npm run lint:sol          # Solidity
    npm run lint:slither      # Solidity Static Analyzer
    npm run lint              # Run all

Testing
-------

Run all tests::

    npm test


To run tests in a specific file::

    npx mocha --exit [path/to/file]

Documentation
-------------

To compile the docs run::

    npm run docs         # compile docs

They will be located inside the run directory within the root
project directory under docs/build/html/index.html

Deployment
----------

Deployment to the local development blockchain is fairly easy::

    npx truffle compile  # compile contracts
    npx truffle develop  # enter development environment
    migrate --reset      # deploy contracts, resetting network artifacts

To deploy to Rinkeby::

    [TODO]

Quick Usage
-----------

Once inside the container, run::

    npx truffle compile  # compile contracts
    npm test             # run tests
    npm run docs         # compile docs

To save the state of your work on the
host machine, run::

    npm run save

This saves the work within the root project directory on the host machine, in a folder called run.

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   pds_index.rst
   pds_contracts.rst
   token_index.rst
   initializable_index.rst
   proxy_index.rst
   access_index.rst
   math_index.rst
   utils_index.rst
   introspection_index.rst

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
