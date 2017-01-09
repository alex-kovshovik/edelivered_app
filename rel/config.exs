use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: :prod

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/configuration.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :"4.5z%9/F@A^tQdyhYVqPt)AyADQ{1KG>r(%8;djg5O*Sv|,>)Xb}uS1hr<an%{6w"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"/D9|pjh*F6%ZskpUO&jLg6KwHs<UyPc2({Y&9eD;=:^qs][v~DUzrB,6WN=JH@l!"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :edelivered_app do
  set version: current_version(:edelivered_app)
end
