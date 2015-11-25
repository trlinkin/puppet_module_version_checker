require 'json'

module Puppet_module_version_checker; end;

class Puppet_module_version_checker::Module

  def initialize(module_path, opts = {})
    @name = File.basename(module_path)

    load_module(module_path)
  end

  attr_accessor :name, :data

  def version
    data["version"] if data
  end

  def forge_name
    data["name"] if data
  end

  def has_metadata?
    data ? true:false
  end

  def load_module(path)
    if File.exists?("#{path}/metadata.json")
      data_file = File.read("#{path}/metadata.json")

      @data = JSON.load(data_file)
    rescue JSON::ParserError
      ## Log failure
    end
  end
end
