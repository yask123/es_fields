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

  OPTIONS_MAPPING = {
    sortable: 'keyword',
    full_text_search: 'text',
    aggregation: 'keyword',
    filtering: 'keyword',
  }

  def initialize
    @base_mapping = BASE_MAPPING.dup
  end

  def field(name, type, options: [])
    @base_mapping[:mappings][:doc][:properties].merge!(
      {
        name => {
          type: options.empty? ? TYPE_MAPPING[type] : OPTIONS_MAPPING[options.first]
        }
      }
    )
    @base_mapping
  end
end
