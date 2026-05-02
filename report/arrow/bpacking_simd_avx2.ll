inline.NumInlined: 12609
inline.NumDeleted: 445
begin_hunk_0_@_ZN5arrow8internal11unpack_avx2IbEEvPKhPT_iii:bb.a
.lr.ph.i.i:                                       ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.ch, %.lr.ph.i.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ]
  %.02530.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.t, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.v, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.bx = load i32, ptr %.02530.i.i, align 1
  %i.by = insertelement <8 x i32> poison, i32 %i.bx, i64 0
  %i.bz = shufflevector <8 x i32> %i.by, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal11unpack_avx2IbEEvPKhPT_iii:bb.a
  %i.cb = lshr <8 x i32> %i.bz, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = lshr <8 x i32> %i.bz, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cd = lshr <8 x i32> %i.bz, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %5 = bitcast <8 x i32> %i.ca to <32 x i8>
  %6 = and <32 x i8> %5, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %7 = bitcast <8 x i32> %i.cb to <32 x i8>
  %8 = and <32 x i8> %7, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %9 = shufflevector <32 x i8> %6, <32 x i8> %8, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %9, ptr %.02629.i.i, align 1, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 16
  %10 = bitcast <8 x i32> %i.cc to <32 x i8>
  %11 = and <32 x i8> %10, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %12 = bitcast <8 x i32> %i.cd to <32 x i8>
  %13 = and <32 x i8> %12, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %14 = shufflevector <32 x i8> %11, <32 x i8> %13, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %14, ptr %i.ce, align 1, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 32 ; 2 uses
  %i.ch = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
end_hunk_1
