## Apptimize Kit Integration

This repository contains the [Apptimize](https://www.apptimize.com) integration for the [mParticle Apple SDK](https://github.com/mParticle/mparticle-apple-sdk).

### Adding the integration

1. Add the kit dependency to your app's Podfile:

    ```
    pod 'mParticle-Apptimize', '~> 8'
    ```

2. Follow the mParticle iOS SDK [quick-start](https://github.com/mParticle/mparticle-apple-sdk), then rebuild and launch your app, and verify that you see `"Included kits: { Apptimize }"` in your Xcode console 

> (This requires your mParticle log level to be at least Debug)

3. Reference mParticle's integration docs below to enable the integration.

### Documentation

[Apptimize integration](https://docs.mparticle.com/integrations/apptimize/event/)

### License

[Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0)
