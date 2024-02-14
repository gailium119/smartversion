// File: lzham_lib.cpp - Static library entrypoints.
// See Copyright Notice and license at the end of include/lzham.h

#ifdef __cplusplus
extern "C" {
#endif
lzham_uint32 LZHAM_CDECL lzham_decomp_get_version(void);

void LZHAM_CDECL lzham_decomp_set_memory_callbacks(lzham_realloc_func pRealloc, lzham_msize_func pMSize, void* pUser_data);

lzham_decompress_state_ptr LZHAM_CDECL lzham_decomp_decompress_init(const lzham_decompress_params *pParams);

lzham_decompress_state_ptr LZHAM_CDECL lzham_decomp_decompress_reinit(lzham_decompress_state_ptr p, const lzham_decompress_params *pParams);

lzham_uint32 LZHAM_CDECL lzham_decomp_decompress_deinit(lzham_decompress_state_ptr p);

lzham_decompress_status_t LZHAM_CDECL lzham_decomp_decompress(
   lzham_decompress_state_ptr p,
   const lzham_uint8 *pIn_buf, size_t *pIn_buf_size, 
   lzham_uint8 *pOut_buf, size_t *pOut_buf_size,
   lzham_bool no_more_input_bytes_flag);

lzham_decompress_status_t LZHAM_CDECL lzham_decomp_decompress_memory(const lzham_decompress_params *pParams, lzham_uint8* pDst_buf, size_t *pDst_len, const lzham_uint8* pSrc_buf, size_t src_len, lzham_uint32 *pAdler32);



// ----------------- zlib-style API's

const char * LZHAM_CDECL lzham_decomp_z_version(void);

lzham_z_ulong LZHAM_CDECL lzham_decomp_z_adler32(lzham_z_ulong adler, const unsigned char *ptr, size_t buf_len);

lzham_z_ulong LZHAM_CDECL lzham_decomp_z_crc32(lzham_z_ulong crc, const lzham_uint8 *ptr, size_t buf_len);
 

int LZHAM_CDECL lzham_decomp_z_inflateInit(lzham_z_streamp pStream);

int LZHAM_CDECL lzham_decomp_z_inflateInit2(lzham_z_streamp pStream, int window_bits);

int LZHAM_CDECL lzham_decomp_z_inflateReset(lzham_z_streamp pStream);

int LZHAM_CDECL lzham_decomp_z_inflate(lzham_z_streamp pStream, int flush);

int LZHAM_CDECL lzham_decomp_z_inflateEnd(lzham_z_streamp pStream);

int LZHAM_CDECL lzham_decomp_z_uncompress(unsigned char *pDest, lzham_z_ulong *pDest_len, const unsigned char *pSource, lzham_z_ulong source_len);

const char * LZHAM_CDECL lzham_decomp_z_error(int err);

#ifdef __cplusplus
}
#endif
