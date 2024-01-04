## Installation

1. Create a fork of this repository.
2. Make sure [asdf](https://github.com/asdf-vm/asdf-ruby) is installed as well as ruby plugin
3. In root directory of project, install ruby using `asdf install`
4. Install project dependencies using `bundle install`

## Instructions

1. Abstract the following items into classes (placeholder files are provided):
    - A vehicle is a motorized transportation machine with wheels. It is identified by its plate number and name of owner. Not all vehicles are created equal. They can have different colors and number of wheels. For each vehicle we can find out what spare parts it has like tire size code (this can differ per model)
    - A car is your everyday vehicle with 4 wheels. It usually has a tire size of "P215/65R17 98T" but can probably also have other specific ones. It can also have a passenger capacity of around 4 (can be more or less depending on use case). Since this is a personal vehicle some people have a habit of giving it a nickname
    - A bus is a much bigger vehicle with 4 wheels capable of carrying 100 passengers. To accommodate this size it needs to have tires with a default size of "15/80R22.5". Since it specializes in passengers, it needs to be able to load and unload at designated bus stops. Loading passengers should increase passenger count by a specified value and unloading should decrease passenger count by a specified value (needs to be in the proper range).
    - A truck is a large vehicle specializing in delivering cargo. To maximize space it usually carries no passengers. To carry heavy loads, it needs to have 6 wheels with a default tire size of "31x10.50R15/ C109R". Unlike other vehicles it has the capability to switch its trailer in case the trailer breaks. To find out the type of trailer we can check the list of spare parts.
2. Given the abstraction above, create a motorcycle class. Provide proper defaults for certain attributes and add at least 1 attribute and method unique to motorcycles.

## Running in console

1. Open `irb`
2. Import file to use in console e.g. `require "./vehicle.rb"`.
3. You should be able to use the class in the console.

## Running tests

To make sure you're on the right track, run the tests using `rspec` command. All tests must pass.

## Submission

Create a Pull Request directed to your fork of this repository then provide a link to the PR to the facilitators.
