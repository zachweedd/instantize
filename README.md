# instantize

First of all, this is NOT meant to be used in a production environment. The purpose of this was to see if I could do it.

Easily create instance variables from method arguments

### I'm sure most of us have ended up in situations like this:

```ruby
	def some_method(some_arg, some_other_arg, some_stuff)
	  @some_arg = some_arg
	  @some_other_arg = some_other_arg
	  @some_stuff = some_stuff
	end
```

#### With this gem we can do it like this:

```ruby
	class TestKlass
	  include Instantize::Argument
		
	  def some_method(some_arg, some_other_arg, some_stuff)
	    instantize local_context
	  end
	end
```
