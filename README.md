This is [Jame Hoo's Easy 7-Zip](http://www.e7z.org/) (Additional Ergonomic & Useful GUI Enhancements and Improvements) , rebased on [7-zip](https://7-zip.org)'s newer release [25.01](https://www.7-zip.org/a/7z2501-src.7z). This is based on my previous effort on 23.01, and [glachancecmaisonneuve's previous effort of rebasing it on 19.00](https://github.com/glachancecmaisonneuve/Easy7-Zip), though some original features from James Hoo are missing.

### Download

Go to [GitHub Actions](https://github.com/shunf4/Easy7-Zip-SF/actions) and download the artifact of the latest run.

If the artifact gets expired, you may need to manually trigger it again somehow.

### Related

- https://www.7-zip.org/
- https://sourceforge.net/p/sevenzip/
- https://github.com/mcmilk/7-Zip
- http://www.e7z.org/
- https://github.com/glachancecmaisonneuve/Easy7-Zip
- https://github.com/treysis/Easy-7-Zip-ZS
- https://github.com/mcmilk/7-Zip-zstd/pull/186
- https://github.com/mcmilk/7-Zip-zstd/issues/262

### DevNote

print message in a dialog

```
#include <winuser.h>
#include <strsafe.h>

{
    char a[100] {};
    StringCbPrintfA(a, 100, "index=%u   SoleFolderIndex=%lld", _index, SoleFolderIndex);
    MessageBoxA(0, a, "AAA", MB_ICONERROR);
}
```

build.cmd seems not noticing changes that involves only header files; ensure clean/change all related .cpp files before build, if a header is changed
