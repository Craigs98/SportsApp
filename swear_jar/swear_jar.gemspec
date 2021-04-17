#X17126991 - Craig Smith 
# run rake file command if you make changes in this file
# Needs Jewler gem for creation/ built in another app and had trouble incorporating into this
# through some investigation think it could be mysql DB not working

Gem::Specification.new do |spec|
  spec.name = 'swear_jar'
  spec.version = '1.0.0'
  spec.description = "Custom Gem for NewsProject (Swear Jar)"
  spec.email = "craigs98@outlook.com"

  spec.files = [
    "Rakefile",
    "config/dictionary.yml",
    "lib/swear_jar.rb",
    "swear_jar.gemspec",
  ]
  spec.require_paths = [%q{lib}]
  spec.summary = %q{A Rails plugin gem for filtering out swears.}

  if spec.respond_to? :specification_version then
    spec.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.0.0') then
    else
    end
  else
  end
end
