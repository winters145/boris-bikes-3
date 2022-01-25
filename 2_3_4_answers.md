```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```

Objects  | Messages
------------- | -------------
Person  | 
Docking Station  | release_bike
Bike


```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

Objects  | Messages
------------- | -------------
Person  | 
Bike  | check_bike


## This diagram shows how the Objects will use Messages to communicate with one another

Bike --> check_bike --> Y/N --> Docking Station --> release_bike --> Releases bike to Person

Refactored:
Objects  | Messages
------------- | -------------
Person  |
Bike  | working?
DockingStation | release_bike

## 3. From a Domain Model to a Feature Test

```
irb>> docking_station = DockingStation.new 
```

## 4. Errors are good

The above `irb` command results in:
```
Traceback (most recent call last):
        5: from /Users/nelsonclaire/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
        4: from /Users/nelsonclaire/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
        3: from /Users/nelsonclaire/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb: bv:in `<top (required)>'
        2: from (irb):1:in `<main>'
        1: from (irb):2:in `rescue in <main>'
NameError (uninitialized constant DockingStation)
```

At the moment there is nothing in our Boris-Bikes that references DockingStation in code and, therefore, Ruby does not recognise it as a method or class resulting in a NameError message.
This results in a series of error messages that references the internal Ruby Version Manager files where the search for DockingStation has taken place.




