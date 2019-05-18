require '../lib/deep_freezable'

class Team
  extend DeepFreezable
  COUNTRIES = deep_freeze(['japan', 'us', 'india'])
end