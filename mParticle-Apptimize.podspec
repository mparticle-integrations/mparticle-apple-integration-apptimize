Pod::Spec.new do |s|
    s.name             = "mParticle-Apptimize"
    s.version          = "7.15.11"
    s.summary          = "Apptimize integration for mParticle"

    s.description      = <<-DESC
                       This is the Apptimize integration for mParticle.
                       DESC

    s.homepage         = "https://www.mparticle.com"
    s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
    s.author           = { "mParticle" => "support@mparticle.com" }
    s.source           = { :git => "https://github.com/mparticle-integrations/mparticle-apple-integration-apptimize.git", :tag => s.version.to_s }
    s.social_media_url = "https://twitter.com/mparticle"

    s.ios.deployment_target = "8.0"
    s.ios.source_files      = 'mParticle-Apptimize/*.{h,m,mm}'
    s.ios.dependency 'mParticle-Apple-SDK/mParticle', '~> 7.0'
    s.ios.dependency 'Apptimize', '~> 3.0'
end
