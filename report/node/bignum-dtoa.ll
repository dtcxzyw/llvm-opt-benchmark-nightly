inline.NumInlined: 72
inline.NumDeleted: 21
begin_hunk_0_@_ZN2v84base10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_:bb.a
  %i.bi = icmp slt i32 %i.bh, 1                   ; 2 uses
  %i.bj = call noundef i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %spec.select.i, ptr noundef nonnull align 8 dereferenceable(536) %8) #5
  %i.bk = icmp sgt i32 %i.bj, -1                  ; 2 uses
  %or.cond.us.i = or i1 %i.bi, %i.bk
  br i1 %or.cond.us.i, label %.split6.us.i, label %bb.u

bb.u:                                             ; preds = %.split.us.split.i
  call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %7, i32 noundef 10) #5
  call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %9, i32 noundef 10) #5
  call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %spec.select.i, i32 noundef 10) #5
  br label %.split.us.split.i

.split.i32:                                       ; preds = %bb.s
  br i1 %i.ao, label %.split.split.us.i, label %.split.split.i

.split.split.us.i:                                ; preds = %.split.i32, %bb.v
  %i.bl = call noundef zeroext i16 @_ZN2v84base6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %8) #5
  %i.bm = trunc i16 %i.bl to i8
  %i.bn = add i8 %i.bm, 48
  %i.bo = load i32, ptr %5, align 4               ; 2 uses
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %5, align 4
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq
  store i8 %i.bn, ptr %i.br, align 1
  %i.bs = call noundef i32 @_ZN2v84base6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %9) #5
  %i.bt = icmp slt i32 %i.bs, 0                   ; 2 uses
  %i.bu = call noundef i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %spec.select.i, ptr noundef nonnull align 8 dereferenceable(536) %8) #5
  %i.bv = icmp sgt i32 %i.bu, 0                   ; 2 uses
  %or.cond.us8.i = or i1 %i.bt, %i.bv
  br i1 %or.cond.us8.i, label %.split6.us.i, label %bb.v

bb.v:                                             ; preds = %.split.split.us.i
  call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %7, i32 noundef 10) #5
  call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %9, i32 noundef 10) #5
  br label %.split.split.us.i

.split.split.i:                                   ; preds = %.split.i32, %bb.w
  %i.bw = call noundef zeroext i16 @_ZN2v84base6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %8) #5
  %i.bx = trunc i16 %i.bw to i8
  %i.by = add i8 %i.bx, 48
  %i.bz = load i32, ptr %5, align 4               ; 2 uses
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %5, align 4
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 %i.cb
  store i8 %i.by, ptr %i.cc, align 1
  %i.cd = call noundef i32 @_ZN2v84base6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %9) #5
  %i.ce = icmp slt i32 %i.cd, 0                   ; 2 uses
  %i.cf = call noundef i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %spec.select.i, ptr noundef nonnull align 8 dereferenceable(536) %8) #5
  %i.cg = icmp sgt i32 %i.cf, 0                   ; 2 uses
  %or.cond.i = or i1 %i.ce, %i.cg
  br i1 %or.cond.i, label %.split6.us.i, label %bb.w

bb.w:                                             ; preds = %.split.split.i
  call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %7, i32 noundef 10) #5
  call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %9, i32 noundef 10) #5
  call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %spec.select.i, i32 noundef 10) #5
  br label %.split.split.i

.split6.us.i:                                     ; preds = %.split.split.i, %.split.split.us.i, %.split.us.split.i, %.split.us.split.us.i
  %.us-phi.i = phi i1 [ %i.bt, %.split.split.us.i ], [ %i.bi, %.split.us.split.i ], [ %i.ax, %.split.us.split.us.i ], [ %i.ce, %.split.split.i ] ; 2 uses
  %.us-phi7.i = phi i1 [ %i.bv, %.split.split.us.i ], [ %i.bk, %.split.us.split.i ], [ %i.az, %.split.us.split.us.i ], [ %i.cg, %.split.split.i ]
  %or.cond3.i = and i1 %.us-phi.i, %.us-phi7.i
  br i1 %or.cond3.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %.split6.us.i
  %i.ch = call noundef i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %8) #5 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not46.i = icmp eq i32 %i.ch, 0
  %i.cj = load i32, ptr %5, align 4
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr %3, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1     ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1             ; 3 uses
  br i1 %.not46.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = add i8 %i.cn, 1
  store i8 %i.co, ptr %i.cm, align 1
  br label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.aa:                                            ; preds = %bb.y
  %i.cp = and i8 %i.cn, 1
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = add i8 %i.cn, 1
  store i8 %i.cr, ptr %i.cm, align 1
  br label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ac:                                            ; preds = %.split6.us.i
  br i1 %.us-phi.i, label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = load i32, ptr %5, align 4
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr i8, ptr %3, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -1     ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = add i8 %i.cw, 1
  store i8 %i.cx, ptr %i.cv, align 1
  br label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ae:                                            ; preds = %_ZN2v84baseL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  %i.cy = load i32, ptr %6, align 4               ; 2 uses
  %i.cz = sub nsw i32 0, %i.cy                    ; 2 uses
  %i.da = icmp slt i32 %2, %i.cz
  br i1 %i.da, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.db = sub nsw i32 0, %2
  store i32 %i.db, ptr %6, align 4
  store i32 0, ptr %5, align 4
  br label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dc = icmp eq i32 %2, %i.cz
  br i1 %i.dc, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %8, i32 noundef 10) #5
  %i.dd = call noundef i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %7, ptr noundef nonnull align 8 dereferenceable(536) %8) #5
  %i.de = icmp sgt i32 %i.dd, -1
  br i1 %i.de, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 49, ptr %3, align 1
  store i32 1, ptr %5, align 4
  %i.df = load i32, ptr %6, align 4
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %6, align 4
  br label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %5, align 4
  br label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ak:                                            ; preds = %bb.ag
  %i.dh = add nsw i32 %i.cy, %2
  call fastcc void @_ZN2v84baseL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %i.dh, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr %3, ptr noundef %5)
  br label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.al:                                            ; preds = %_ZN2v84baseL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  call fastcc void @_ZN2v84baseL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %2, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr %3, ptr noundef %5)
  br label %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.am:                                            ; preds = %_ZN2v84baseL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #6
  unreachable

_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.al
  %i.di = load i32, ptr %5, align 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %i.dj
  store i8 0, ptr %i.dk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.an

bb.an:                                            ; preds = %_ZN2v84baseL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN2v84base6BignumC1Ev(ptr noundef nonnull align 8 dereferenceable(536)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v84baseL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr nofree captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1                           ; 4 uses
  %i.b = icmp sgt i32 %0, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge37.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.c = tail call noundef zeroext i16 @_ZN2v84base6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %3) #5
  %i.d = tail call noundef i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %3) #5
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = zext i1 %i.e to i16
  %spec.select = add i16 %i.c, %i.f
  %i.g = trunc i16 %spec.select to i8
  %i.h = add i8 %i.g, 48                          ; 2 uses
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %i.i
  store i8 %i.h, ptr %i.j, align 1
  br label %.lr.ph36

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.k = tail call noundef zeroext i16 @_ZN2v84base6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %3) #5
  %i.l = trunc i16 %i.k to i8
  %i.m = add i8 %i.l, 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.m, ptr %i.n, align 1
  tail call void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536) %2, i32 noundef 10) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

.lr.ph36:                                         ; preds = %._crit_edge, %bb.b
  %i.o = phi i8 [ %i.s, %bb.b ], [ %i.h, %._crit_edge ]
  %.034 = phi i32 [ %7, %bb.b ], [ %i.a, %._crit_edge ] ; 3 uses
  %.not = icmp eq i8 %i.o, 58
  br i1 %.not, label %bb.b, label %._crit_edge37

bb.b:                                             ; preds = %.lr.ph36
  %6 = zext nneg i32 %.034 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %6
  store i8 48, ptr %i.p, align 1
  %7 = add nsw i32 %.034, -1                      ; 2 uses
  %8 = zext nneg i32 %7 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = add i8 %i.r, 1                           ; 2 uses
  store i8 %i.s, ptr %i.q, align 1
  %i.t = icmp sgt i32 %.034, 1
  br i1 %i.t, label %.lr.ph36, label %._crit_edge37, !llvm.loop !8

._crit_edge37.critedge:                           ; preds = %bb.a
  %i.u = tail call noundef zeroext i16 @_ZN2v84base6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %3) #5
  %i.v = tail call noundef i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(536) %3) #5
  %i.w = icmp sgt i32 %i.v, -1
  %i.x = zext i1 %i.w to i16
  %spec.select.c = add i16 %i.u, %i.x
  %i.y = trunc i16 %spec.select.c to i8
  %i.z = add i8 %i.y, 48
  %i.aa = sext i32 %i.a to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.b, %.lr.ph36, %._crit_edge37.critedge
  %i.ac = load i8, ptr %4, align 1
  %i.ad = icmp eq i8 %i.ac, 58
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge37
  store i8 49, ptr %4, align 1
  %i.ae = load i32, ptr %1, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %1, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge37
  store i32 %0, ptr %5, align 4
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN2v84base6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #2

declare noundef i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #2

declare noundef i32 @_ZN2v84base6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #2

declare void @_ZN2v84base6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 8 dereferenceable(536), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare void @_ZN2v84base6Bignum12AssignUInt64Em(ptr noundef nonnull align 8 dereferenceable(536), i64 noundef) local_unnamed_addr #2

declare void @_ZN2v84base6Bignum9ShiftLeftEi(ptr noundef nonnull align 8 dereferenceable(536), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v84base6Bignum17AssignPowerUInt16Eti(ptr noundef nonnull align 8 dereferenceable(536), i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v84base6Bignum12AssignUInt16Et(ptr noundef nonnull align 8 dereferenceable(536), i16 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v84base6Bignum12AssignBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #2

declare void @_ZN2v84base6Bignum16MultiplyByUInt64Em(ptr noundef nonnull align 8 dereferenceable(536), i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
end_hunk_0
