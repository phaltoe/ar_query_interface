== README

We will build associations through ActiveRecord, where:

1 - `Customer` has many `Carts`;
2 - `Customer` has many `Products` through `Carts`;
3 - `Cart` has many `LineItems`
4 - `Cart` has many `Products` through `LineItems`;
5 - `Carts` belongs to a `Customer`;
6 - `LineItems` belongs to `Cart`;



