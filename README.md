# Reproduction Steps

This repo illustrates a bug present in [arbre 1.2.0](https://github.com/activeadmin/arbre) as mentioned in the following issue.

https://github.com/activeadmin/arbre/issues/119

## Installation

Setup the vanilla rails app + active admin with standard instructions:

```
$> bundle install
$> rails db:setup
$> rails s
```

Then open open your browser and navigate to edit the first Order, ie:

```
$> open http://localhost:3000/admin/orders/1/edit
```

Observe that the 2 payments recorded on the Order are shown twice, resulting in 4 rows.
