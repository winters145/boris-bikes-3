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
