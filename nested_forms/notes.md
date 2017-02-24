Nested Forms

Character
  belongs_to tv_show
  belongs_to :actor


TV show
  has_many :characters
  has_many :actors, through: :characters
Actor
  has_many :characters
  has_many :tv_shows, through: :characters


  characters
  id | name  | tv_show_id | actor_id
  1    topanga  1             2
  2   topanga  3             2
  3    corey    1             1
  4    corey    2             1


  actors
  id | name
  1     ben savage
  2     danielle fischer

  tv_show
  id | name               
  1     boy meets world
  2     working
  3     girl meets world




1. if it is a belongs to relationship, the it has the foreign id
2. For a has many relationship, there cannot be a foreign key for that respective relationship
3. If you have a many to many relationship, there must be at least one other table.

Main concept: whenever I put a foreign key on a table, I am telling an row of that table, that it only has one.

Task:
# GOAL: make a characters/new form, which takes in the charcter name, and creates
# a new character with that name.
# After it creates the character, redirect_to the characters show page,
# where we will display
# the character's name.
