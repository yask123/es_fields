class Fields
  BASE_MAPPING =
    {
      "mappings": {
        "doc": {
          "properties": {
          }
        }
      }
    }

  TYPE_MAPPING = {
    string: 'text',
    long: 'long',
    date: 'date',
    keyword: 'keyword',
    double: 'double',
    boolean: 'boolean',
    ip: 'ip',
  }

  def initialize
    @base_mapping = BASE_MAPPING.dup
  end

  def field(name, type)
    @base_mapping[:mappings][:doc][:properties].merge!(
      { name => { type: TYPE_MAPPING[type]}}
    )
    @base_mapping
  end
end
