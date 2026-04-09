inline.NumInlined: 95
inline.NumDeleted: 27
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a
  br i1 %.not1640, label %.loopexit, label %.split

.split:                                           ; preds = %bb.b
  %.sroa.speculated32 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 72
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a
  %i.au = load float, ptr %i.v, align 4, !tbaa !8, !noalias !58
  %i.av = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %smin = sext i32 %i.av to i64
  %3 = add i32 %1, %2
  %i.aw = add i32 %3, 1
  %4 = sub i32 %i.aw, %.sroa.speculated32
  %i.ax = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ay = insertelement <2 x float> %i.ax, float %i.au, i64 1
  %i.az = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a
._crit_edge:                                      ; preds = %_ZN9Imath_3_14halfaSEf.exit25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond45.not = icmp eq i32 %4, %lftr.wideiv
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph, !llvm.loop !61

bb.c:                                             ; preds = %.lr.ph, %_ZN9Imath_3_14halfaSEf.exit25
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.i:                                             ; preds = %bb.g
  %5 = add nuw nsw i32 %i.cs, 134221823
  %i.dj = lshr i32 %i.cs, 13
  %i.dk = and i32 %i.dj, 1
  %i.dl = add nuw nsw i32 %5, %i.dk
  %i.dm = lshr i32 %i.dl, 13
  %i.dn = and i32 %i.ct, 32768
  %i.do = or i32 %i.dm, %i.dn
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a
  br label %_ZN9Imath_3_14halfaSEf.exit21

bb.s:                                             ; preds = %bb.q
  %6 = add nuw nsw i32 %i.eh, 134221823
  %i.ey = lshr i32 %i.eh, 13
  %i.ez = and i32 %i.ey, 1
  %i.fa = add nuw nsw i32 %6, %i.ez
  %i.fb = lshr i32 %i.fa, 13
  %i.fc = and i32 %i.ei, 32768
  %i.fd = or i32 %i.fb, %i.fc
end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a
  br label %_ZN9Imath_3_14halfaSEf.exit25

bb.ac:                                            ; preds = %bb.aa
  %7 = add nuw nsw i32 %i.fw, 134221823
  %i.gn = lshr i32 %i.fw, 13
  %i.go = and i32 %i.gn, 1
  %i.gp = add nuw nsw i32 %7, %i.go
  %i.gq = lshr i32 %i.gp, 13
  %i.gr = and i32 %i.fx, 32768
  %i.gs = or i32 %i.gq, %i.gr
end_hunk_5
begin_hunk_6_@llvm.smin.i32
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_6
