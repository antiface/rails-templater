gem 'mongoid', '>= 2.0.0.beta9'
gem 'bson_ext', '1.0.4'

create_file 'lib/tasks/mongo.rake', load_template('lib/tasks/mongo.rake', 'mongoid')

stategies << lambda do
  generate 'mongoid:config'
end