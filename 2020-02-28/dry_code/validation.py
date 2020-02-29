def validate_age(value):
  validate_type(value, :integer)
  validate_min_integer(value, 0)

def validate_quantity(value):
  validate_type(value, :integer)
  validate_min_integer(value, 0)
