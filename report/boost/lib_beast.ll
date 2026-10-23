Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvEN4initC2Ev:bb.a
  store i16 16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2184), align 8, !tbaa !197
  store <8 x i8> splat (i8 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1386), align 2, !tbaa !58
  store i16 24, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2186), align 2, !tbaa !197
  store <8 x i8> splat (i8 9), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1394), align 2, !tbaa !58
  store i16 32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2188), align 4, !tbaa !197
  store <16 x i8> splat (i8 10), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1402), align 2, !tbaa !58
  store i16 48, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2190), align 2, !tbaa !197
  store <16 x i8> splat (i8 11), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1418), align 2, !tbaa !58
  store i16 64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2192), align 8, !tbaa !197
  store <16 x i8> splat (i8 12), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1434), align 2, !tbaa !58
  store <16 x i8> splat (i8 12), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1450), align 2, !tbaa !58
  store i16 96, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2194), align 2, !tbaa !197
  store <16 x i8> splat (i8 13), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1466), align 2, !tbaa !58
  store <16 x i8> splat (i8 13), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1482), align 2, !tbaa !58
  store i16 128, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2196), align 4, !tbaa !197
  store <16 x i8> splat (i8 14), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1498), align 2, !tbaa !58
  store <16 x i8> splat (i8 14), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1514), align 2, !tbaa !58
  store <16 x i8> splat (i8 14), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1530), align 2, !tbaa !58
  store <16 x i8> splat (i8 14), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1546), align 2, !tbaa !58
  store i16 192, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2198), align 2, !tbaa !197
  store <16 x i8> splat (i8 15), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1562), align 2, !tbaa !58
  store <16 x i8> splat (i8 15), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1578), align 2, !tbaa !58
  store <16 x i8> splat (i8 15), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1594), align 2, !tbaa !58
  store <16 x i8> splat (i8 15), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1610), align 2, !tbaa !58
  store i8 16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1628), align 4, !tbaa !58
  store i8 17, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1629), align 1, !tbaa !58
  store <2 x i8> splat (i8 18), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1630), align 2, !tbaa !58
  store <2 x i8> splat (i8 19), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1632), align 8, !tbaa !58
  store <4 x i8> splat (i8 20), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1634), align 2, !tbaa !58
  store <4 x i8> splat (i8 21), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1638), align 2, !tbaa !58
  store <8 x i8> splat (i8 22), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1642), align 2, !tbaa !58
  store <8 x i16> <i16 256, i16 384, i16 512, i16 768, i16 1024, i16 1536, i16 2048, i16 3072>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2200), align 8, !tbaa !197
  store <8 x i8> splat (i8 23), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1650), align 2, !tbaa !58
  store i16 4096, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2216), align 8, !tbaa !197
  store <16 x i8> splat (i8 24), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1658), align 2, !tbaa !58
  store i16 6144, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2218), align 2, !tbaa !197
  store <16 x i8> splat (i8 25), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1674), align 2, !tbaa !58
  store i16 8192, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2220), align 4, !tbaa !197
  store <16 x i8> splat (i8 26), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1690), align 2, !tbaa !58
  store <16 x i8> splat (i8 26), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1706), align 2, !tbaa !58
  store i16 12288, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2222), align 2, !tbaa !197
  store <16 x i8> splat (i8 27), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1722), align 2, !tbaa !58
  store <16 x i8> splat (i8 27), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1738), align 2, !tbaa !58
  store i16 16384, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2224), align 8, !tbaa !197
  store <16 x i8> splat (i8 28), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1754), align 2, !tbaa !58
  store <16 x i8> splat (i8 28), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1770), align 2, !tbaa !58
  store <16 x i8> splat (i8 28), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1786), align 2, !tbaa !58
  store <16 x i8> splat (i8 28), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1802), align 2, !tbaa !58
  store i16 24576, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 2226), align 2, !tbaa !197
  store <16 x i8> splat (i8 29), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1818), align 2, !tbaa !58
  store <16 x i8> splat (i8 29), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1834), align 2, !tbaa !58
  store <16 x i8> splat (i8 29), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1850), align 2, !tbaa !58
  store <16 x i8> splat (i8 29), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1866), align 2, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 100), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 104), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 108), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 112), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 116), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 120), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 124), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 128), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 132), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 136), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 140), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 144), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 148), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 152), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 156), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 160), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 164), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 168), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 172), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 176), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 180), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 184), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 188), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 192), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 196), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 200), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 204), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 208), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 212), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 216), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 220), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 224), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 228), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 232), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 236), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 240), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 244), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 248), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 252), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 256), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 260), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 264), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 268), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 272), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 276), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 280), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 284), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 288), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 292), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 296), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 300), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 304), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 308), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 312), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 316), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 320), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 324), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 328), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 332), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 336), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 340), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 344), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 348), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 352), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 356), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 360), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 364), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 368), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 372), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 376), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 380), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 384), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 388), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 392), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 396), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 400), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 404), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 408), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 412), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 416), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 420), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 424), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 428), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 432), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 436), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 440), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 444), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 448), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 452), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 456), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 460), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 464), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 468), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 472), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 476), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 480), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 484), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 488), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 492), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 496), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 500), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 504), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 508), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 512), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 516), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 520), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 524), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 528), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 532), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 536), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 540), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 544), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 548), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 552), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 556), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 560), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 564), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 568), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 572), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 576), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 580), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 584), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 588), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 592), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 596), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 600), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 604), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 608), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 612), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 616), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 620), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 624), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 628), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 632), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 636), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 640), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 644), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 648), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 652), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 656), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 660), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 664), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 668), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 672), align 8, !tbaa !289
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 144, ptr %i.v, align 16, !tbaa !197
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 676), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 680), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 684), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 688), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 692), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 696), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 700), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 704), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 708), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 712), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 716), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 720), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 724), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 728), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 732), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 736), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 740), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 744), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 748), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 752), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 756), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 760), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 764), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 768), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 772), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 776), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 780), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 784), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 788), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 792), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 796), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 800), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 804), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 808), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 812), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 816), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 820), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 824), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 828), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 832), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 836), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 840), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 844), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 848), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 852), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 856), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 860), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 864), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 868), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 872), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 876), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 880), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 884), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 888), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 892), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 896), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 900), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 904), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 908), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 912), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 916), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 920), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 924), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 928), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 932), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 936), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 940), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 944), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 948), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 952), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 956), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 960), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 964), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 968), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 972), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 976), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 980), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 984), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 988), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 992), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 996), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1000), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1004), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1008), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1012), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1016), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1020), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1024), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1028), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1032), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1036), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1040), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1044), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1048), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1052), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1056), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1060), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1064), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1068), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1072), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1076), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1080), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1084), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1088), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1092), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1096), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1100), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1104), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1108), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1112), align 8, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1116), align 4, !tbaa !289
  store i16 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1120), align 8, !tbaa !289
  %0 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 112, ptr %0, align 2, !tbaa !197
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1124), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1128), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1132), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1136), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1140), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1144), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1148), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1152), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1156), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1160), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1164), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1168), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1172), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1176), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1180), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1184), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1188), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1192), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1196), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1200), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1204), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1208), align 8, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1212), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1216), align 8, !tbaa !289
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 24, ptr %i.w, align 2, !tbaa !197
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1220), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1224), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1228), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1232), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1236), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1240), align 8, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1244), align 4, !tbaa !289
  store i16 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1248), align 8, !tbaa !289
  store i16 152, ptr %i.v, align 16, !tbaa !197
  call void @_ZN5boost5beast4zlib6detail14deflate_stream9gen_codesEPNS3_7ct_dataEiPt(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 98), i32 noundef 287, ptr noundef nonnull %i.a)
  store <8 x i16> <i16 0, i16 5, i16 16, i16 5, i16 8, i16 5, i16 24, i16 5>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1250), align 2, !tbaa !197
  store <8 x i16> <i16 4, i16 5, i16 20, i16 5, i16 12, i16 5, i16 28, i16 5>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1266), align 2, !tbaa !197
  store <8 x i16> <i16 2, i16 5, i16 18, i16 5, i16 10, i16 5, i16 26, i16 5>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1282), align 2, !tbaa !197
  store <8 x i16> <i16 6, i16 5, i16 22, i16 5, i16 14, i16 5, i16 30, i16 5>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1298), align 2, !tbaa !197
  store <8 x i16> <i16 1, i16 5, i16 17, i16 5, i16 9, i16 5, i16 25, i16 5>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1314), align 2, !tbaa !197
  store <8 x i16> <i16 5, i16 5, i16 21, i16 5, i16 13, i16 5, i16 29, i16 5>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1330), align 2, !tbaa !197
  store <8 x i16> <i16 3, i16 5, i16 19, i16 5, i16 11, i16 5, i16 27, i16 5>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1346), align 2, !tbaa !197
  store i16 5, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1364), align 4, !tbaa !289
  store i16 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1362), align 2, !tbaa !290
  store i16 5, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1368), align 8, !tbaa !289
  store i16 23, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7get_lutEvE4data, i64 1366), align 2, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream7doResetEiiiNS1_8StrategyE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(5928) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::invalid_argument", align 8 ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.std::invalid_argument", align 8 ; 5 uses
  %8 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %9 = alloca %"class.std::invalid_argument", align 8 ; 5 uses
  %10 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = icmp eq i32 %1, -1
  %spec.store.select = select i1 %i.a, i32 6, i32 %1 ; 2 uses
  %i.b = icmp eq i32 %2, 8
  %spec.store.select6 = select i1 %i.b, i32 9, i32 %2 ; 2 uses
  %or.cond = icmp ugt i32 %spec.store.select, 9
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.181)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr @.str.182, ptr %6, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.183, ptr %i.c, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 245, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 29, ptr %i.e, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt16invalid_argumentEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #49
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.g = add i32 %spec.store.select6, -16
  %or.cond3 = icmp ult i32 %i.g, -8
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.184)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  store ptr @.str.182, ptr %8, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.183, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 249, ptr %i.i, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 34, ptr %i.j, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt16invalid_argumentEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #49
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.l = add i32 %3, -10
  %or.cond5 = icmp ult i32 %i.l, -9
  br i1 %or.cond5, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  call void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.185)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  store ptr @.str.182, ptr %10, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.183, ptr %i.m, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 253, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 32, ptr %i.o, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt16invalid_argumentEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #49
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %spec.store.select6, ptr %i.q, align 8, !tbaa !312
  %i.r = add nuw nsw i32 %3, 7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.r, ptr %i.s, align 8, !tbaa !313
  %i.t = shl nuw nsw i32 64, %3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5888
  store i32 %i.t, ptr %i.u, align 8, !tbaa !314
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %spec.store.select, ptr %i.v, align 4, !tbaa !315
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %4, ptr %i.w, align 8, !tbaa !316
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.x, align 8, !tbaa !317
  ret void

bb.n:                                             ; preds = %bb.l, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.k, %bb.h ], [ %i.p, %bb.l ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream7doResetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(5928) initializes((8, 9)) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !317
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream7doClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5928) initializes((8, 9)) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167  ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !167
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #51
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK5boost5beast4zlib6detail14deflate_stream12doUpperBoundEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5928) %0, i64 noundef %1) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = lshr i64 %i.a, 3
  %i.c = add i64 %1, 63
  %i.d = lshr i64 %i.c, 6
  %i.e = add i64 %1, 5
  %i.f = add i64 %i.e, %i.b
  %i.g = add i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !312
  %.not = icmp eq i32 %i.i, 15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i32, ptr %i.j, align 8
  %.not11 = icmp eq i32 %i.k, 15
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i64 %1, 12
  %i.m = lshr i64 %1, 14
  %i.n = lshr i64 %1, 25
  %i.o = add i64 %i.a, %i.l
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.p, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.q, %bb.b ], [ %i.g, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
end_hunk_0
