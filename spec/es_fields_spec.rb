RSpec.describe EsFields do
  it "has a version number" do
    expect(EsFields::VERSION).not_to be nil
  end

  context 'Including ESFields module' do
    include EsFields

    it 'can generate string and number fields' do
      field_mapping = mapping do
        field :name, :string
        field :age, :long
        field :email, :keyword
      end

      expect(field_mapping).to eq(
        {
          "mappings": {
            "doc": {
              "properties": {
                "name": { "type": "text"  },
                "age": { "type": "long" },
                "email": { "type": "keyword"},
              }
            }
          }
        }
      )
    end
  end
end
