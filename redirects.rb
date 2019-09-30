#===== Temp Redirect to MkDocs =====#
r302 %r{docs-pcf-staging.cfapps.io/p-concourse/(?![\d-]+)(.*)}, "docs.pivotal.io/concourse-pcf/v5/"



#===== Original Redirects =====#

# Redirect all production http traffic to https
# r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
#   rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
#}

# r301 %r{/p-concourse/(?![\d-]+)(.*)}, "/p-concourse/5-x/$1"
# r301 %r{/p-concourse/3-0/(.*)}, '/p-concourse/3-x/$1'
