This is [Jame Hoo's Easy 7-Zip](http://www.e7z.org/) (Additional Ergonomic & Useful GUI Enhancements and Improvements) , rebased on [7-zip](https://7-zip.org)'s latest release [23.01](https://7-zip.org/a/7z2301-src.7z). This is based on [glachancecmaisonneuve's previous effort of rebasing it on 19.00](https://github.com/glachancecmaisonneuve/Easy7-Zip), though some original features from James Hoo are missing.

### Download

Go to [GitHub Actions](https://github.com/shunf4/Easy7-Zip-SF/actions) and download the artifact of the latest run.

If the artifact gets expired, you may need to manually trigger it again somehow.

### Related

- http://www.e7z.org/
- https://github.com/glachancecmaisonneuve/Easy7-Zip
- https://github.com/treysis/Easy-7-Zip-ZS

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
