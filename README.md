# Pudi
====

Gives total number of https requests made at any given point. Ajax calls are also included.

## Application
1. To assert if the page is not reloading, as paart of an action
```ruby
beforeCount = getHttpRequestCount()
#<do some operations here>
afterCount = getHttpRequestCount()
beforeCount.should eq afterCount
```
2. To assert if the page is reloading, as paart of an action
```ruby
beforeCount = getHttpRequestCount()
#<do some operations here>
afterCount = getHttpRequestCount()
beforeCount.should < afterCount
#though we might need other assertions here
```
