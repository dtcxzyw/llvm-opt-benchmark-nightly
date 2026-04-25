inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.ow = load <16 x i8>, ptr %i.ou, align 1, !tbaa !51
  %i.ox = load <32 x i8>, ptr %i.ov, align 1, !tbaa !51
  %6 = shufflevector <16 x i8> %i.ow, <16 x i8> poison, <44 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 13, i32 12, i32 14, i32 15, i32 9, i32 8, i32 poison, i32 6, i32 7, i32 0, i32 2, i32 3> ; 2 uses
  %7 = insertelement <44 x i8> %6, i8 %i.ol, i64 38
  %8 = shufflevector <32 x i8> %i.ox, <32 x i8> poison, <44 x i32> <i32 29, i32 28, i32 30, i32 31, i32 25, i32 24, i32 26, i32 27, i32 21, i32 20, i32 22, i32 23, i32 17, i32 16, i32 18, i32 19, i32 13, i32 12, i32 14, i32 15, i32 9, i32 8, i32 10, i32 11, i32 5, i32 4, i32 6, i32 7, i32 1, i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <44 x i8> %8, <44 x i8> %7, <44 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87> ; 2 uses
  %10 = shufflevector <44 x i8> %9, <44 x i8> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 38, i32 38, i32 38, i32 39, i32 40, i32 38, i32 41, i32 42, i32 43>
  %11 = shufflevector <44 x i8> %9, <44 x i8> %6, <48 x i32> <i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 54, i32 55, i32 49, i32 48, i32 38, i32 38, i32 45, i32 38, i32 38, i32 38>
  %i.oy = icmp eq <48 x i8> %10, %11              ; 2 uses
  %i.oz = load <8 x i8>, ptr %i.ot, align 1, !tbaa !51
  %i.pa = insertelement <8 x i8> poison, i8 %i.ol, i64 0
  %i.pb = shufflevector <8 x i8> %i.pa, <8 x i8> poison, <8 x i32> zeroinitializer
end_hunk_0
