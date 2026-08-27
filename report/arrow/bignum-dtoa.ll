Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bignum-dtoa?download=true
inline.NumInlined: 71
inline.NumDeleted: 31
begin_hunk_0_@_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_:bb.a
  %i.bv = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.bw = icmp sgt i32 %i.bv, -1                  ; 2 uses
  %or.cond.us.us.i = or i1 %i.bu, %i.bw
  br i1 %or.cond.us.us.i, label %.split6.us.i, label %bb.u

bb.u:                                             ; preds = %.split.us.split.us.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  br label %.split.us.split.us.i

.split.us.split.i:                                ; preds = %.split.us.i, %bb.v
  %i.bx = call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.by = trunc i16 %i.bx to i8
  %i.bz = add i8 %i.by, 48
  %i.ca = load i32, ptr %5, align 4, !tbaa !3     ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %5, align 4, !tbaa !3
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds i8, ptr %3, i64 %i.cc
  store i8 %i.bz, ptr %i.cd, align 1, !tbaa !9
  %i.ce = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.cf = icmp slt i32 %i.ce, 1                   ; 2 uses
  %i.cg = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.ch = icmp sgt i32 %i.cg, -1                  ; 2 uses
  %or.cond.us.i = or i1 %i.cf, %i.ch
  br i1 %or.cond.us.i, label %.split6.us.i, label %bb.v

bb.v:                                             ; preds = %.split.us.split.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, i32 noundef 10)
  br label %.split.us.split.i

.split.i47:                                       ; preds = %bb.t
  br i1 %i.bl, label %.split.split.us.i, label %.split.split.i

.split.split.us.i:                                ; preds = %.split.i47, %bb.w
  %i.ci = call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.cj = trunc i16 %i.ci to i8
  %i.ck = add i8 %i.cj, 48
  %i.cl = load i32, ptr %5, align 4, !tbaa !3     ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %5, align 4, !tbaa !3
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds i8, ptr %3, i64 %i.cn
  store i8 %i.ck, ptr %i.co, align 1, !tbaa !9
  %i.cp = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.cq = icmp slt i32 %i.cp, 0                   ; 2 uses
  %i.cr = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.cs = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %or.cond.us8.i = or i1 %i.cq, %i.cs
  br i1 %or.cond.us8.i, label %.split6.us.i, label %bb.w

bb.w:                                             ; preds = %.split.split.us.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  br label %.split.split.us.i

.split.split.i:                                   ; preds = %.split.i47, %bb.x
  %i.ct = call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.cu = trunc i16 %i.ct to i8
  %i.cv = add i8 %i.cu, 48
  %i.cw = load i32, ptr %5, align 4, !tbaa !3     ; 2 uses
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %5, align 4, !tbaa !3
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds i8, ptr %3, i64 %i.cy
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !9
  %i.da = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.db = icmp slt i32 %i.da, 0                   ; 2 uses
  %i.dc = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.dd = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %or.cond.i48 = or i1 %i.db, %i.dd
  br i1 %or.cond.i48, label %.split6.us.i, label %bb.x

bb.x:                                             ; preds = %.split.split.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, i32 noundef 10)
  br label %.split.split.i

.split6.us.i:                                     ; preds = %.split.split.i, %.split.split.us.i, %.split.us.split.i, %.split.us.split.us.i
  %.us-phi.i = phi i1 [ %i.cq, %.split.split.us.i ], [ %i.cf, %.split.us.split.i ], [ %i.bu, %.split.us.split.us.i ], [ %i.db, %.split.split.i ] ; 2 uses
  %.us-phi7.i = phi i1 [ %i.cs, %.split.split.us.i ], [ %i.ch, %.split.us.split.i ], [ %i.bw, %.split.us.split.us.i ], [ %i.dd, %.split.split.i ]
  %or.cond3.i = and i1 %.us-phi.i, %.us-phi7.i
  br i1 %or.cond3.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %.split6.us.i
  %i.de = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8) ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not46.i = icmp eq i32 %i.de, 0
  %i.dg = load i32, ptr %5, align 4, !tbaa !3
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr i8, ptr %3, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -1     ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !9   ; 3 uses
  br i1 %.not46.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = add i8 %i.dk, 1
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !9
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ab:                                            ; preds = %bb.z
  %i.dm = and i8 %i.dk, 1
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = add i8 %i.dk, 1
  store i8 %i.do, ptr %i.dj, align 1, !tbaa !9
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ad:                                            ; preds = %.split6.us.i
  br i1 %.us-phi.i, label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = load i32, ptr %5, align 4, !tbaa !3
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %3, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1     ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  %i.du = add i8 %i.dt, 1
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !9
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.af:                                            ; preds = %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  %i.dv = load i32, ptr %6, align 4, !tbaa !3     ; 2 uses
  %i.dw = sub nsw i32 0, %i.dv                    ; 2 uses
  %i.dx = icmp slt i32 %2, %i.dw
  br i1 %i.dx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dy = sub nsw i32 0, %2
  store i32 %i.dy, ptr %6, align 4, !tbaa !3
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ah:                                            ; preds = %bb.af
  %i.dz = icmp eq i32 %2, %i.dw
  br i1 %i.dz, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef 10)
  %i.ea = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.eb = icmp sgt i32 %i.ea, -1
  br i1 %i.eb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i8 49, ptr %3, align 1, !tbaa !9
  store i32 1, ptr %5, align 4, !tbaa !3
  %i.ec = load i32, ptr %6, align 4, !tbaa !3
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %6, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ak:                                            ; preds = %bb.ai
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.al:                                            ; preds = %bb.ah
  %i.ee = add nsw i32 %i.dv, %2
  call fastcc void @_ZN14arrow_vendored17double_conversionL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %i.ee, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr %3, ptr noundef %5)
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.am:                                            ; preds = %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  call fastcc void @_ZN14arrow_vendored17double_conversionL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %2, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr %3, ptr noundef %5)
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.an:                                            ; preds = %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  call void @abort() #6
  unreachable

_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.am
  %i.ef = load i32, ptr %5, align 4, !tbaa !3
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %3, i64 %i.eg
  store i8 0, ptr %i.eh, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored17double_conversionL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr nofree captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1                           ; 5 uses
  %i.b = icmp sgt i32 %0, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge37.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.c = tail call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.d = tail call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = zext i1 %i.e to i16
  %spec.select = add i16 %i.c, %i.f
  %i.g = trunc i16 %spec.select to i8
  %i.h = add i8 %i.g, 48
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds i8, ptr %4, i64 %i.i
  store i8 %i.h, ptr %i.j, align 1, !tbaa !9
  %.phi.trans.insert.a = zext nneg i32 %i.a to i64
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %4, i64 %.phi.trans.insert.a
  %.pre = load i8, ptr %.phi.trans.insert40, align 1, !tbaa !9
  br label %.lr.ph36

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.k = tail call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.l = trunc i16 %i.k to i8
  %i.m = add i8 %i.l, 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.m, ptr %i.n, align 1, !tbaa !9
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %2, i32 noundef 10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

.lr.ph36:                                         ; preds = %._crit_edge, %bb.b
  %i.o = phi i8 [ %i.s, %bb.b ], [ %.pre, %._crit_edge ]
  %.034 = phi i32 [ %7, %bb.b ], [ %i.a, %._crit_edge ] ; 3 uses
  %.not = icmp eq i8 %i.o, 58
  br i1 %.not, label %bb.b, label %._crit_edge37

bb.b:                                             ; preds = %.lr.ph36
  %6 = zext nneg i32 %.034 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %6
  store i8 48, ptr %i.p, align 1, !tbaa !9
  %7 = add nsw i32 %.034, -1                      ; 2 uses
  %8 = zext nneg i32 %7 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = add i8 %i.r, 1                           ; 2 uses
  store i8 %i.s, ptr %i.q, align 1, !tbaa !9
  %i.t = icmp sgt i32 %.034, 1
  br i1 %i.t, label %.lr.ph36, label %._crit_edge37, !llvm.loop !15

._crit_edge37.critedge:                           ; preds = %bb.a
  %i.u = tail call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.v = tail call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.w = icmp sgt i32 %i.v, -1
  %i.x = zext i1 %i.w to i16
  %spec.select.c = add i16 %i.u, %i.x
  %i.y = trunc i16 %spec.select.c to i8
  %i.z = add i8 %i.y, 48
  %i.aa = sext i32 %i.a to i64
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !9
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.b, %.lr.ph36, %._crit_edge37.critedge
  %i.ac = load i8, ptr %4, align 1, !tbaa !9
  %i.ad = icmp eq i8 %i.ac, 58
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge37
  store i8 49, ptr %4, align 1, !tbaa !9
  %i.ae = load i32, ptr %1, align 4, !tbaa !3
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %1, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge37
  store i32 %0, ptr %5, align 4, !tbaa !3
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

declare noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516)) local_unnamed_addr #3

declare noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516)) local_unnamed_addr #3

declare noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516)) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516), i32 noundef) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516), i64 noundef) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum17AssignPowerUInt16Eti(ptr noundef nonnull align 4 dereferenceable(516), i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516), i16 noundef zeroext) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum12AssignBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516)) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em(ptr noundef nonnull align 4 dereferenceable(516), i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN14arrow_vendored17double_conversion6BignumE", !12, i64 0, !12, i64 2, !5, i64 4}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
end_hunk_0
