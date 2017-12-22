# labelled 1.0.1

* bug fix: argument drop_unused_labels could now be used with `to_factor.data.frame()`
* new labels argument for `to_labelled` method when applied to a factor
* bug fix: appropriate column names with `data.frame` (cf. https://github.com/larmarange/labelled/issues/20)

# labelled 1.0.0

* now imports `haven`
* new function to deal with user defined missing values (SPSS style): 
  `na_values()`, `na_range()`, `set_na_values()`, `set_na_values()`,
  `remove_user_na()`, `user_na_to_na()`.
* `remove_labels()` has been updated.

# labelled 0.2.3

* new functions `set_variable_labels()`, `set_value_labels()`, `add_value_labels()` 
  and `remove_value_labels()` compatible with `%>%`.
* new functions `remove_val_labels` and `remove_var_label()`.
* bug fix in `to_character.labelled()` when applied to data frames.


# labelled 0.2.2

* `to_factor()`, `to_character()` and `to_labelled.factor()` now preserves variable label.
* bug fix in `to_factor()` when applied to data frames.

# labelled 0.2.0

* Following evolution of `haven`, `labelled` deosn't support missing values anymore (cf. https://github.com/hadley/haven/commit/4b12ff9d51ddb9e7486966b85e0bcff44992904d)
* New function `to_character()` (cf. https://github.com/larmarange/labelled/commit/3d32852587bb707d06627e56407eed1c9d5a49de)
* `to_factor()` could now be applied to a data.frame (cf. https://github.com/larmarange/labelled/commit/ce1d750681fe0c9bcd767cb83a8d72ed4c5fc5fb)
* If `data.table` is available, labelled attribute are now changed by _reference_ (cf. https://github.com/larmarange/labelled/commit/c8b163f706122844d798e6625779e8a65e5bbf41)
* `zap_labels()` added as a synonym of `remove_labels()`
