inline.NumInlined: 262
inline.NumDeleted: 50
begin_hunk_0_@ZSTD_rescaleFreqs:bb.a
.split.i.i103:                                    ; preds = %sum_u32.exit.i102
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %i.lh = load <4 x i32>, ptr %i.lg, align 4, !tbaa !3
  %i.li = getelementptr inbounds nuw i8, ptr %i.kx, i64 112 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kx, i64 96 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kx, i64 80
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
end_hunk_0
begin_hunk_1_@ZSTD_rescaleFreqs:bb.a
  %i.lp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.lo, i1 true)
  %i.lq = xor i32 %i.lp, 31                       ; 2 uses
  %i.lr = load <4 x i32>, ptr %i.kx, align 4, !tbaa !3
  %4 = load <4 x i32>, ptr %i.lj, align 4, !tbaa !3
  %5 = load <4 x i32>, ptr %i.li, align 4, !tbaa !3
  %6 = shufflevector <4 x i32> %5, <4 x i32> %4, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %7 = shufflevector <32 x i32> %i.ky, <32 x i32> %6, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ls = shufflevector <4 x i32> %i.lr, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lt = shufflevector <32 x i32> %i.ls, <32 x i32> %7, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.lu = shufflevector <4 x i32> %i.lh, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lv = shufflevector <32 x i32> %i.lt, <32 x i32> %i.lu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 34, i32 35, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lw = insertelement <32 x i32> poison, i32 %i.lq, i64 0
end_hunk_1
begin_hunk_2_@ZSTD_rescaleFreqs:bb.a
  store i32 %.0.i119, ptr %i.py, align 8, !tbaa !73
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !50 ; 16 uses
  %i.qb = load <32 x i32>, ptr %i.qa, align 4, !tbaa !3 ; 5 uses
  %i.qc = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.qb) ; 3 uses
  %i.qd = icmp ult i32 %i.qc, 4096
  br i1 %i.qd, label %.loopexit.sink.split, label %.split.i.i125
end_hunk_2
begin_hunk_3_@ZSTD_rescaleFreqs:bb.a
  %i.qx = add nuw i32 %i.qw, 1                    ; 2 uses
  store i32 %i.qx, ptr %i.qe, align 4, !tbaa !3
  %i.qy = load <4 x i32>, ptr %i.qm, align 4, !tbaa !3
  %8 = shufflevector <32 x i32> %i.qb, <32 x i32> poison, <4 x i32> <i32 21, i32 22, i32 23, i32 24>
  %9 = shufflevector <4 x i32> %i.qy, <4 x i32> %8, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %10 = shufflevector <32 x i32> %i.qb, <32 x i32> poison, <28 x i32> <i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <28 x i32> %9, <28 x i32> %10, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %12 = shufflevector <32 x i32> %i.qb, <32 x i32> poison, <28 x i32> <i32 13, i32 14, i32 15, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <28 x i32> %11, <28 x i32> %12, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %14 = shufflevector <9 x i32> %i.qg, <9 x i32> poison, <28 x i32> <i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <28 x i32> %14, <28 x i32> %13, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %16 = shufflevector <32 x i32> %i.qb, <32 x i32> poison, <28 x i32> <i32 9, i32 10, i32 11, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <28 x i32> %15, <28 x i32> %16, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 28, i32 29, i32 30, i32 31, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.qz = insertelement <28 x i32> poison, i32 %i.qv, i64 0
  %i.ra = shufflevector <28 x i32> %i.qz, <28 x i32> poison, <28 x i32> zeroinitializer
  %i.rb = lshr <28 x i32> %17, %i.ra
  %i.rc = add nuw <28 x i32> %i.rb, splat (i32 1) ; 10 uses
  %i.rd = extractelement <28 x i32> %i.rc, i64 0
  store i32 %i.rd, ptr %i.qa, align 4, !tbaa !3
end_hunk_3
