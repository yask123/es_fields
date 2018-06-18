require "es_fields/version"
require "es_fields/fields"

module EsFields
  def mapping(&block)
    field_instance = ::Fields.new
    field_instance.instance_eval &block
  end
end
