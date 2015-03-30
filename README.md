# Netzke Demo

This extension of the Netzke tutorial shows some of the UI issues discovered with Netzke
and ExtJS.

## Requirements
* Ruby ~> 2.1.5
* Rails ~> 4.2.0
* Netzke ~> 0.12.0
* ExtJS = 5.1.0

## Installation

1. Clone this repo to a local repo
  $ git clone git@github.com:elitwin/netzke_demo.git && netzke_demo
2. Install required Gems
  $ bundle install
3. Setup the symlink for public/extjs
  $ ln -s PATH_TO_EXTJS_FILES public/extjs
4. Optionally setup a symlink for public/images/icons
  $ mkdir public/images
  $ ln -s PATH_TO_ICON_FILES public/images/icons
5. Create database, run migrations and seed the demo data
  $ rake db:create && rake db:migrate && rake db:seed

## Issues

The following issues can be seen using the Est. Hours column (integer)
* When filtering on this column, the grid treats the value as a string rather than a number. The >, < and = filters are not displayed. The Priority column shows how a number filter should look.
* The first five rows have Est. Hours set to 0, but the UI does not display 0 consistently. If you double click on Est. Hours in the first row, the combo box will show a value of 0, but when it loses focus, the 0 disappears. Also, if you select that row and choose "Edit in form", the popup form will correctly display 0. You can also confirm that the first task has a value set in the database for this field. Another strange artifact that occurs is when you do double click on that cell, exit focus, but then sort on this field, the 0 values will get displayed.

Note that estimated hours is an association to the estimates table where the hours column is an integer.
