require_relative "dom_id_enhanced/version"

require "active_support/core_ext/enumerable"
require "action_view"

module DomIdEnhanced
  class Error < StandardError; end

  def dom_id(*args)
    args
      .compact_blank
      .map { |record| record.respond_to?(:to_key) ? super(record) : record }
      .join("_").presence
  end
end

# Monkey patch ActionView::RecordIdentifier#dom_id
ActionView::RecordIdentifier.send(:prepend, DomIdEnhanced)
