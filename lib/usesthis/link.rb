module UsesThis
  class Link
    
    attr_accessor :name
    attr_accessor :summary
    attr_accessor :url

    def initialize(path)
      metadata = YAML::load_file(path)

      @slug = File.basename(path, File.extname(path))
      
      @name = metadata['name']
      @summary = metadata['summary']
      @url = metadata['url']
    end
  end
end