inline.NumInlined: 10913
inline.NumDeleted: 449
begin_hunk_0_@_ZN5arrow8internal13unpack_avx512IbEEvPKhPT_iii:bb.a
  %.02530.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %i.t, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.v, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %i.bx = load i32, ptr %.02530.i.i, align 1      ; 6 uses
  %5 = insertelement <16 x i32> poison, i32 %i.bx, i64 0
  %i.by = insertelement <8 x i32> poison, i32 %i.bx, i64 0
  %6 = shufflevector <8 x i32> %i.by, <8 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = lshr <16 x i32> %6, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.32.vec.insert.i.i.i.i9 = shufflevector <16 x i32> %5, <16 x i32> %7, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = lshr <16 x i32> %9, <i32 9, i32 10, i32 11, i32 12, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.48.vec.insert.i.i.i.i10 = shufflevector <16 x i32> %.sroa.0109.32.vec.insert.i.i.i.i9, <16 x i32> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %11 = lshr i32 %i.bx, 13
  %.sroa.0109.52.vec.insert.i.i.i.i = insertelement <16 x i32> %.sroa.0109.48.vec.insert.i.i.i.i10, i32 %11, i64 13
  %12 = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %13 = shufflevector <2 x i32> %12, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = lshr <16 x i32> %13, <i32 14, i32 15, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.sroa.0109.60.vec.insert.i.i.i.i11 = shufflevector <16 x i32> %.sroa.0109.52.vec.insert.i.i.i.i, <16 x i32> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %15 = insertelement <16 x i32> poison, i32 %i.bx, i64 0
  %16 = shufflevector <16 x i32> %15, <16 x i32> poison, <16 x i32> zeroinitializer
  %17 = lshr <16 x i32> %16, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %18 = bitcast <16 x i32> %.sroa.0109.60.vec.insert.i.i.i.i11 to <64 x i8>
  %19 = and <64 x i8> %18, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %20 = bitcast <16 x i32> %17 to <64 x i8>
  %21 = and <64 x i8> %20, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %22 = shufflevector <64 x i8> %19, <64 x i8> %21, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 92, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 120, i32 124>
  store <32 x i8> %22, ptr %.02629.i.i, align 1, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 32 ; 2 uses
  %i.cb = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
end_hunk_0
