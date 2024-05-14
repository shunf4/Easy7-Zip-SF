This is [Jame Hoo's Easy 7-Zip](http://www.e7z.org/) (Additional Ergonomic & Useful GUI Enhancements and Improvements) , rebased on [7-zip](https://7-zip.org)'s latest release [23.01](https://7-zip.org/a/7z2301-src.7z). This is based on [glachancecmaisonneuve's previous effort of rebasing it on 19.00](https://github.com/glachancecmaisonneuve/Easy7-Zip), though some original features from James Hoo are missing.

### Download

Go to [GitHub Actions](https://github.com/shunf4/Easy7-Zip-SF/actions) and download the artifact of the latest run.

If the artifact gets expired, you may need to manually trigger it again somehow.

### Related

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

interesting commits from zstd that yet merged

~~c2277a39577dd9384e7f776f9871cbabbf9ac53e Fix #101 - thanks to aeonios for pointing that out~~ (no longer valid)
~~2314c89604a5362d58407c2ea18d3695a46c12c6 Some more fixes, mainly issue #116~~  (no longer valid)
~~a87ef5f0fe53727e534e3bd332ceeea94c8aff32 Fix #125~~ (not valid for non-zstd)
~~650fba0328fde64c76fb974c843ad4b6c6678600 Add history tracking and selectable hash formatting~~ (not too useful)
8cfdd747c83223fa1e417dce1314b84b61c5feaa Fixes for "vulnerable command line parsing"
(and other commit around this time)
19e97e4c680330d08a6665f3cf08dc31ba339000 Code deduplication GetQuotedString()
eef99c5416ae8942b3b3285803a90b8a05245afe GetQuotedString() uses correct windows cmdline notation
