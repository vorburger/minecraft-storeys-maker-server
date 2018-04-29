# minecraft-storeys-maker-server

Container image of minecraft-storeys-maker in a s2i-minecraft-server.
This is an UGLY HACK with a BINARY JAR which I'm hoping to remove
when I can finally get minecraft-storeys-maker fully S2I enabled.
Here's what's currently preventing that:

- [X] https://github.com/vorburger/minecraft-storeys-maker/issues/31 Minecraft OSGi API on Maven central
- [ ] https://github.com/vorburger/minecraft-storeys-maker/issues/28 ../lib/utils/unsupported.js (minishift only; Appuio OK?!)
- [ ] extremely slow S2I build on Appuio, why?
- [ ] unclear how to integrate; maybe `oc new-build ... --source-image=... --source-image-path=...` ?

## How to use
