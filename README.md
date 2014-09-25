# Spiral Path

Write a function called "spiral" that takes an NxM array as input and returns a "spiral" path through the array, starting in the upper-left corner and moving clockwise.  Use the  language of your choice.

For example (in Ruby), if

```ruby
array = [[1,2,3],
         [8,9,4],
         [7,6,5]]
```

then

```ruby
spiral(array) # => [1,2,3,4,5,6,7,8,9]
```

## REBECCA NOTE

So, the progression by index goes something like this:

```ruby
[(0, 0), (0, 1), (0, 2), (1, 2), (2, 2), (2, 1), (2, 0), (1, 0), (1, 1)]
```

And for this:

```ruby
array = [[1 ,2 ,3 ,4],
         [12,13,14,5],
         [11,16,15,6],
         [10,9 ,8 ,7]]
```
it's like (oh this will be fun):

```ruby
[(0, 0), (0, 1), (0, 2), (0, 3), (1, 3), (2, 3), (3, 3),]
```

So start from 0 and increment by m.

## NOTE OVER!

It should work on any NxM array, so don't assume the input is a square array.  However, every row will have the same number of elements.


### Credit:

Credit and inspiration for this exercise goes to [Jesse Farmer](https://gist.github.com/jfarmer/b043eee597d2f4934fb2#file-spiral-md).