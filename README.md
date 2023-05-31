# ZooManagement

## About

ZooManagement is a console application for managing zoo. It allows to filter animals.

### Manual setup

1. Install relevant version of [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
2. `$ gem install terminal-table`
3. `$ ruby main.rb`

### Example usage

```
All Animals:
+----------------+-----+--------+
| Animal Species | Age | Sex    |
+----------------+-----+--------+
| monkey         | 3   | male   |
+----------------+-----+--------+
| squirrel       | 5   | female |
+----------------+-----+--------+
| monkey         | 1   | male   |
+----------------+-----+--------+
| monkey         | 11  | male   |
+----------------+-----+--------+
Filtered Animals:
+----------------+-----+------+
| Animal Species | Age | Sex  |
+----------------+-----+------+
| monkey         | 3   | male |
+----------------+-----+------+
| monkey         | 1   | male |
+----------------+-----+------+
```
