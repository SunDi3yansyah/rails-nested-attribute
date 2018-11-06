# Rails Nested Attribute

In designing a data model, you will sometimes find a model that should have a relation to itself. For example, you may want to store all employees in a single database model, but be able to trace relationships such as between manager and subordinates. [2.10 Self Joins](http://guides.rubyonrails.org/association_basics.html#self-joins)


### Dependencies

- Ruby >= 2.4.1
- Rails >= 5.2.1
- MySQL / MariaDB


### Function

- Parents
- Children
- Siblings
- Scoping


### Clone

SSH:
```
git clone git@github.com:SunDi3yansyah/RailsNestedAttribute.git
```

HTTP(S):
```
git clone https://github.com/SunDi3yansyah/RailsNestedAttribute.git
```


### Bundle

```
bundle install
```


### Setup

```
rails db:create db:migrate db:seed
```


### Start

```
rs
```

This will fire up Puma, To see your application in action, open a browser window and navigate to http://localhost:3000/categories


### Look at me :sunglasses:

![Rails Nested Attribute 1](https://user-images.githubusercontent.com/3952281/48037165-d4bbe980-e19d-11e8-80b2-e6a54a02ed04.png)
![Rails Nested Attribute 2](https://user-images.githubusercontent.com/3952281/48037166-d5548000-e19d-11e8-9bdb-61576bb7da82.png)


### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SunDi3yansyah/RailsNestedAttribute. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


### License

[![MIT License](https://img.shields.io/dub/l/vibe-d.svg)](http://opensource.org/licenses/MIT)

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
