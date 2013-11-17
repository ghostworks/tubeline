# tubeline
## A super-simple method of accessing the tube status API

```ruby

pp Tubeline.status

{:bakerloo=>
  {:name=>"Bakerloo",
   :line_id=>1,
   :active=>true,
   :technical=>"DisruptedService",
   :description=>"Part Closure",
   :explanation=>
    "No service Stonebridge Park to Harrow & Wealdstone due to planned engineering work. GOOD SERVICE on the rest of the line. Rail Replacement bus service in operation. "},
 :central=>
  {:name=>"Central",
   :line_id=>2,
   :active=>true,
   :technical=>"GoodService",
   :description=>"Good Service",
   :explanation=>""},
 :circle=>
  {:name=>"Circle",
   :line_id=>7,
   :active=>true,
   :technical=>"GoodService",
   :description=>"Good Service",
   :explanation=>""},
 :district=>
  {:name=>"District",
   :line_id=>9,
   :active=>true,
   :technical=>"DisruptedService",
   :description=>"Part Closure",
   :explanation=>
    "No service between Turnham Green and Ealing Broadway due to planned engineering work. GOOD SERVICE on the rest of the line."},
 :hammersmith_and_city=>
  {:name=>"Hammersmith and City",
   :line_id=>8,
   :active=>true,
   :technical=>"GoodService",
   :description=>"Good Service",
   :explanation=>""}
...
}

```

### is it finished?

No, this library is under development, and breaking changes is a very real possibility. The features I need:

* caching - every thirty seconds, with a cache key to assist invalidation.
* branch line status - northern, overground and dlr all have complex lines, so an overall status isn't always relevant.