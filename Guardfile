guard :rspec, cmd: 'foreman run bundle exec rspec' do
  watch('spec/spec_helper.rb')                        { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }
  watch('spec/services/')                            { "spec/services" }
  watch(%r{^app/(.+).rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(.erb|.haml|.slim)$})            { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^lib/(.+).rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller).rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }

  watch(%r{^spec/controllers/v1/(.+)_spec.rb$})      { |m| "spec/controllers/v1/#{m[1]}_spec.rb" }

  # External Services
  watch(%r{^lib/services/(.+).rb$})                  { |m| "spec/services/#{m[1]}_spec.rb" }
  watch(%r{^spec/services/(.+)_spec.rb$})            { |m| "spec/services/#{m[1]}_spec.rb" }

  # Jobs
  watch(%r{^app/jobs/(.+).rb$})                      { |m| "spec/jobs/#{m[1]}_spec.rb" }
  watch(%r{^spec/jobs/(.+)_spec.rb$})                { |m| "spec/jobs/#{m[1]}_spec.rb" }

end

