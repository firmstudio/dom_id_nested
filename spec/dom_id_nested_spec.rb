RSpec.describe DomIdNested do
  include ActionView::RecordIdentifier

  describe "#dom_id" do
    let(:record_with_key) { double("RecordWithKey", to_key: [1], model_name: double("ModelName", param_key: "record_with_key")) }
    let(:record_without_key) { "record_without_key" }

    it "returns a string with the dom ids of the given records" do
      expect(dom_id(record_with_key, record_without_key, record_with_key)).to eq("record_with_key_1_record_without_key_record_with_key_1")
    end

    it "skips blank records" do
      expect(dom_id(record_with_key, "", nil, record_without_key)).to eq("record_with_key_1_record_without_key")
    end

    it "returns an empty string if all records are blank" do
      expect(dom_id("", nil)).to be_nil
    end
  end
end
