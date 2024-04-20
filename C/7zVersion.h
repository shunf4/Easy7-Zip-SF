#define MY_VER_MAJOR 16
#define MY_VER_MINOR 04
#define MY_VER_BUILD 0
#define MY_VERSION_NUMBERS "16.04"
#define MY_VERSION "16.04"

#ifdef MY_X64
  #define MY_7ZIP_NAME "7-Zip [64-bit]"
#else
  #define MY_7ZIP_NAME "7-Zip [32-bit]"
#endif


#define MY_DATE "2016-10-04"
#undef MY_COPYRIGHT
#undef MY_VERSION_COPYRIGHT_DATE
#define MY_AUTHOR_NAME "Igor Pavlov"
#define MY_COPYRIGHT_PD "Igor Pavlov : Public domain"
#define MY_COPYRIGHT_CR "Copyright (c) 1999-2016 Igor Pavlov"

#ifdef USE_COPYRIGHT_CR
  #define MY_COPYRIGHT MY_COPYRIGHT_CR
#else
  #define MY_COPYRIGHT MY_COPYRIGHT_PD
#endif

#define MY_VERSION_COPYRIGHT_DATE MY_VERSION " : " MY_COPYRIGHT " : " MY_DATE

#define MY_EASY7ZIP_VER_MAJOR 0
#define MY_EASY7ZIP_VER_MINOR 1

#ifdef MY_X64
  #define MY_EASY7ZIP_7ZIP "Easy 7-Zip [64-bit]"
#else
  #define MY_EASY7ZIP_7ZIP "Easy 7-Zip [32-bit]"
#endif

#define MY_EASY7ZIP_VERSION "0.1.6"

#ifdef MY_X64
  #define MY_EASY7ZIP_7ZIP_VERSION "Easy 7-Zip v0.1.6 [64-bit]"
#else
  #define MY_EASY7ZIP_7ZIP_VERSION "Easy 7-Zip v0.1.6 [32-bit]"
#endif
#define MY_EASY7ZIP_COPYRIGHT "Portions Copyright (C) 2013-2016 James Hoo"

#define MY_EASY7ZIP_AUTHOR "James Hoo"
#define MY_EASY7ZIP_HOMEPAGE "e7z.org"
#define MY_EASY7ZIP_SPECIAL_BUILD MY_EASY7ZIP_7ZIP_VERSION " (www." MY_EASY7ZIP_HOMEPAGE ") made by " MY_EASY7ZIP_AUTHOR
