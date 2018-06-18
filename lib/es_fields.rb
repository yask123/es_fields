require "es_fields/version"

module EsFields
  def mapping(&block)
    field_instance = ::Fields.new
    field_instance.instance_eval &block
  end
end

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
