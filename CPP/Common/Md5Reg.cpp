// MD5Reg.cpp

#include "StdAfx.h"

#include "../../C/CpuArch.h"

EXTERN_C_BEGIN
#include "../../C/hashes/md5.h"
EXTERN_C_END

#include "../Common/MyCom.h"
#include "../7zip/Common/RegisterCodec.h"

// MD5
Z7_CLASS_IMP_COM_1(CMD5Hasher, IHasher)
  MD5_CTX _ctx;
  Byte mtDummy[1 << 7];
  
public:
  CMD5Hasher() { MD5_Init(&_ctx); }

};

STDMETHODIMP_(void) CMD5Hasher::Init() throw()
{
  MD5_Init(&_ctx);
}

STDMETHODIMP_(void) CMD5Hasher::Update(const void *data, UInt32 size) throw()
{
  MD5_Update(&_ctx, (const Byte *)data, size);
}

STDMETHODIMP_(void) CMD5Hasher::Final(Byte *digest) throw()
{
  MD5_Final(digest, &_ctx);
}

REGISTER_HASHER(CMD5Hasher, 0x207, "MD5", MD5_DIGEST_LENGTH)
