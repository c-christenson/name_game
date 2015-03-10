class Maker

    include DataMapper::Resource

    property :id, Serial
    property :name, String
    property :path, FilePath 

end