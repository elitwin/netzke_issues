# Netzke Demo

This extension of the Netzke tutorial shows some of the UI issues discovered with Netzke
and ExtJS.

## Requirements
* Ruby ~> 2.1.5
* Rails ~> 4.2.0
* Netzke ~> 0.11.0
* ExtJS = 4.2.1

## Installation

1. Clone this repo to a local repo
2. Have ExtJS and the icon library available
3. Setup the symlink for public/extjs
4. Optionally setup a symlink for public/images/icons
5. Run rake db:migrate to create the sqlite3 database
--* This will also seed the lookup and task tables with some sample data

## Issues

The following issues can be seen using the Est. Hours column (integer)
* When filtering on this column, the grid treats the value as a string rather than a number. The >, < and = filters are not displayed. The Priority column shows how a number filter should look.
* The first row has Est. Hours set to 0, but the UI does not display 0 consistently. If you double click on Est. Hours in the first row, the combo box will show a value of 0, but when it loses focus, the 0 disappears. Also, if you select that row and choose "Edit in form", the popup form will correctly display 0. You can also confirm that the first task has a value set in the database for this field.

Note that estimated hours is an association to the estimates table where the hours column is an integer.

The following issues can be seen with the Due On column (date as opposed to datetime)
* After editing Due On in the grid and pressing Apply, the date is decremented by 1 day incorrectly.
This seems to be an issue with the dateformat not being set properly on the underlying ExtJS grid component. When you edit the record in the form, the date is actually shown with the correct value and the model is not incorrectly updated.