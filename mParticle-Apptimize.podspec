Pod::Spec.new do |s|
    s.name             = "mParticle-Apptimize"
    s.version          = "8.2.0"
    s.summary          = "Apptimize integration for mParticle"

    s.description      = <<-DESC
                       This is the Apptimize integration for mParticle.
                       DESC

    s.homepage         = "https://www.mparticle.com"
    s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
    s.author           = { "mParticle" => "support@mparticle.com" }
    s.source           = { :git => "https://github.com/mparticle-integrations/mparticle-apple-integration-apptimize.git", :tag => "v" + s.version.to_s }
    s.social_media_url = "https://twitter.com/mparticle"

    s.ios.deployment_target = "11.0"
    s.ios.source_files      = 'mParticle-Apptimize/*.{h,m,mm}'
    s.ios.resource_bundles  = { 'mParticle-Apptimize-Privacy' => ['mParticle-Apptimize/PrivacyInfo.xcprivacy'] }
    s.ios.dependency 'mParticle-Apple-SDK/mParticle', '~> 8.22'
    s.ios.dependency 'Apptimize', '~> 3.5'

end
