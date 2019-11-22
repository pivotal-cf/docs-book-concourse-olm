#===== Temp Redirect to MkDocs =====#
#r302 %r{/p-concourse/(?![\d-]+)(.*)}, "https://docs.pivotal.io/concourse-pcf/"

#===== Original Redirects =====#

Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
   rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

 r301 %r{/p-concourse/(?![\d-]+)(.*)}, "/p-concourse/v5/$1"
 r301 %r{/p-concourse/3-0/(.*)}, '/p-concourse/v3/$1'
