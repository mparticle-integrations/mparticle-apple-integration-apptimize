Pod::Spec.new do |s|
    s.name             = "mParticle-Apptimize"
    s.version          = "6.8.0"
    s.summary          = "Apptimize integration for mParticle"

    s.description      = <<-DESC
                       This is the Apptimize integration for mParticle.
                       DESC

    s.homepage         = "https://www.mparticle.com"
    s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
    s.author           = { "mParticle" => "support@mparticle.com" }
    s.source           = { :git => "https://github.com/mparticle-integrations/mparticle-apple-integration-apptimize.git", :tag => s.version.to_s }
    s.social_media_url = "https://twitter.com/mparticles"
    s.default_subspec  = "DefaultVersion"

    def s.subspec_common(ss)
        ss.ios.deployment_target = "8.0"
        ss.ios.source_files      = 'mParticle-Apptimize/*.{h,m,mm}'
        ss.ios.dependency 'mParticle-Apple-SDK/mParticle', '~> 6.7'
    end

    s.subspec 'DefaultVersion' do |ss|
        ss.ios.dependency 'Apptimize', '2.18'
        s.subspec_common(ss)
    end

    s.subspec 'UserDefinedVersion' do |ss|
        ss.ios.dependency 'Apptimize'
        s.subspec_common(ss)
    end

end
