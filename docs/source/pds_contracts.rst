PDS Contracts and Tokens
========================

PDS Control Contract Features
-----------------------------

This contract will serve as the main control contract for the PDS 
project. Its duties include coordination of project wide functions,
collection and dispersal of funds and meta operations on the linked
ERC721 *Apartment* tokens.

Such operations can include

    - Percentage ownership of project by address
    - Total funds collected to date
    - Querying available funds
    - Project wide voting
    - Dispersal of funds to contractors

This will also act as the central exchange for the secondary market
of ERC777 investment tokens.

PDS ERC721 Apartment Token Features
-----------------------------------

This will be a single contract that mints all non-fungible tokens
that represent a particular building in the PDS project. The contract
can provide meta information about the buildings to each investor such
as
    
    - Percentage ownership of each apartment by address
    - URI with building-specific information
    - Voting on issues relating to a specific building (e.g. accept an offer)


PDS ERC777 Investment Token Features
------------------------------------

These tokens will represent stake in the apartments and voting rights. 
ERC777 implicitly sets the decimals value for a token to 18. We can thus use 
a granularity of 10^18 to ensure transactions take place in units of a single 
token (10^18 token bits). This will allow us to limit the number of investors
(say 1000 tokens are minted per apartment), which means that at any time 
an address can only hold an integer number of tokens and thus only a 
maximum of 1000 possible investors will be allowed for a single apartment.

A curious side affect is that a person who wishes to purchase Mauritian
residency still invest in the scheme. Assume investor returns are capped
at 50% and the return is above 50%. Then, an investor who has invested
$200000 in the project (perhaps in one apartment) can pay their
$500000 for a single apartment, which will trigger a payout of their
investment of $300000 (at 50% return). This will effectively allow them
to purchase their tax residency for $400000 while being assured they
will get a return on their investment since they purchase the property.
This differs from the traditional off-plan investment where investors
do not get this upside exposure.

If returns are capped at 100% (and 
`building costs reduced <https://bct.eco.umass.edu/publications/articles/getting-contractor-discounts/>`_),
this relationship can be even more pronounced. The $200000 investment
paying out $400000, leading to a net investment of $300000 for tax
residency by the investor.

Since the apartments can be sold any time from funding (off-plan) to completion
of construction, this creates an incentive for those invested in a particular
apartment to network and find buyers. Since apartments are sold individually,
and returns are apportioned specifically to those who own the apartment
that was sold, the investors in such an apartment are fairly free to
influence their own fate (through marketing the particular apartment
for sale). This creates an interesting situation for real estate agents
who may have buyers that are interested in a PDS project. The real
estate agent can then invest in the tokens for a particular apartment,
with the plan to sell it on to their client. They thus gain a commission
(as normal), but also an investment return associated with the sale
of the particular property.

Contracts
---------

.. toctree::
    pdscontrolcontract.rst
    pdsapartments.rst
    pdsinvestmenttoken.rst


Resources
---------

`Getting Contractor Discounts <https://bct.eco.umass.edu/publications/articles/getting-contractor-discounts/>`_
