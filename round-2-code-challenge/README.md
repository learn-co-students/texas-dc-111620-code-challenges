# Object Relations Code Challenge - Concerts

For this assignment, we'll be working with a Concert domain.

We have three models: `Band`, `Concert`, and `Venue`.

For our purposes, a `Band` has many `Concerts`, a `Venue` has many `Concerts`s, and a `Concert` belongs to a `Band` and to a `Venue`.

`Band` - `Venue` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a tool that you can use to test your code. To use it, run `ruby tools/console.rb` from the command line. This will start a `pry` session with your classes defined. You can test out the methods that you write here. You can add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices. Examples of best practices might be to use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`, or, when you encounter duplicated logic, to extract it into a shared helper method.

**Before you submit!** Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### Band

- `Band#initialize(name, hometown)`
  - should initialize with a name (string) and hometown (string)
- `Band#name`
  - should return the `Band`'s name
  - should be able to change its name after creation
- `Band#hometown`
  - should return the `Band`'s hometown
  - should not be able to change its hometown after creation
- `Band.all`
  - returns an array of all the instances of `Band`

#### Venue

- `Venue#initialize(title, city)`
  - should initialize with a title (string) and city (string)
- `Venue#title`
  - should return the title of the venue
  - should be able to change its title after creation
- `Venue#city`
  - should return the city of the venue
  - should not be able to change its city after creation
- `Venue.all`
  - returns all the instances of `Venue`

#### Concert

- `Concert#initialize(date, band, venue)`
  - should initialize with a date (string), band, and venue
- `Concert.all`
  - should return all instances of `Concert`

### Object Relationship Methods

#### Concert

- `Concert#band`
  - should return the `Band` instance for this concert
- `Concert#venue`
  - should return the `Venue` instance for this concert

#### Venue

- `Venue#concerts`
  - returns an array of all the concerts for the venue
- `Venue#bands`
  - returns an array of all the bands for the venue

#### Band

- `Band#concerts`
  - should return an array of all the concerts that the band has played in

### Aggregate and Association Methods

#### Concert

- `Concert#hometown_show?`
  - returns `true` if the concert is in the band's hometown, `false` if it is not
- `Concert#introduction`
  - returns a string with the band's introduction for this concert
  - an introduction is in the form: `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`

#### Band

- `Band#play_in_venue(venue, date)`
  - takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date
- `Band#all_introductions`
  - returns an array of strings representing all the introductions for this band
  - each introduction is in the form `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`

#### Venue

- `Venue#concert_on(date)`
  - takes a date (string) as argument
  - finds and returns the first concert on that date at that venue
  - if there is no concert on that date at that venue, returns `nil`
- `Venue#most_frequent_band`
  - returns the band with the most concerts at the venue

## Rubric

You can find the rubric for this assessment [here](https://github.com/learn-co-curriculum/se-rubrics/blob/master/module-1.md).
