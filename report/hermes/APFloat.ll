inline.NumInlined: 1817
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4llvh6detail9IEEEFloat9isLargestEv:bb.a

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7    ; 3 uses
  %i.n = add i32 %i.m, -64
  %i.o = icmp ult i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i.i.i = select i1 %i.o, ptr %i.q, ptr %i.p  ; 2 uses
  %i.r = add i32 %i.m, 64                         ; 2 uses
  %i.s = lshr i32 %i.r, 6
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  %.not1418.not.i = icmp eq i32 %i.t, 0
  br i1 %.not1418.not.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext i32 %i.t to i64       ; 2 uses
  br label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !31

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22
  %.not.i = icmp eq i64 %i.v, -1
  br i1 %.not.i, label %bb.d, label %_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.pre-phi.i = phi i64 [ 0, %bb.c ], [ %wide.trip.count.i, %bb.d ]
  %i.w = and i32 %i.r, -64
  %.neg.i = add i32 %i.m, 63
  %i.x = sub i32 %.neg.i, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nsw i64 -1, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %.pre-phi.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ac = or i64 %i.ab, %i.z
  %.not15.i = icmp eq i64 %i.ac, -1
  br label %_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit

_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit: ; preds = %.lr.ph.i, %.critedge.i, %bb.b, %bb.a
  %i.ad = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not15.i, %.critedge.i ], [ false, %.lr.ph.i ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6detail9IEEEFloat9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, 6
  %spec.select.i.not = icmp eq i8 %i.c, 0
  br i1 %spec.select.i.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.d = call noundef i32 @_ZN4llvh6detail9IEEEFloat15roundToIntegralENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 3) ; 0 uses
  %i.e = call noundef i32 @_ZNK4llvh6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.f = icmp eq i32 %i.e, 1
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = add i32 %i.i, -64
  %i.k = icmp ult i32 %i.j, -128
  br i1 %i.k, label %bb.c, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.m) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvh6detail9IEEEFloatD2Ev.exit
  %.0 = phi i1 [ %i.f, %_ZN4llvh6detail9IEEEFloatD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail9IEEEFloat15roundToIntegralENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APInt", align 8       ; 9 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 11 uses
  %4 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 7 uses
  %i.b = load i8, ptr %i.a, align 2               ; 2 uses
  %i.c = and i8 %i.b, 6
  %spec.select.i.not.i = icmp ne i8 %i.c, 0
  %i.d = and i8 %i.b, 7
  %i.e = icmp ne i8 %i.d, 3
  %i.f = and i1 %spec.select.i.not.i, %i.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !13    ; 3 uses
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre20 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i16, ptr %i.g, align 8, !tbaa !19
  %i.i = sext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %.not = icmp slt i32 %i.j, %i.l
  br i1 %.not, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.m = phi i32 [ %.pre20, %._crit_edge ], [ %i.l, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = lshr i64 %i.n, 1
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = or i64 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i64 %i.r, 4
  %i.t = or i64 %i.s, %i.r                        ; 2 uses
  %i.u = lshr i64 %i.t, 8
  %i.v = or i64 %i.u, %i.t                        ; 2 uses
  %i.w = lshr i64 %i.v, 16
  %i.x = or i64 %i.w, %i.v
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = add i32 %i.y, 1                          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = icmp ult i32 %i.z, 65
  br i1 %i.ab, label %_ZN4llvh5APIntC2Ejmb.exit.thread, label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit.thread:                 ; preds = %bb.c
  store i64 1, ptr %3, align 8, !tbaa !18
  %i.ac = add i32 %i.m, -1
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i15

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.c
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef 1, i1 noundef zeroext false) #25
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !13  ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %.pre21, i64 4
  %.pre23 = load i32, ptr %.phi.trans.insert22, align 4, !tbaa !7
  %.pre24 = load i32, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.ad = add i32 %.pre23, -1                     ; 2 uses
  %i.ae = icmp ult i32 %.pre24, 65
  br i1 %i.ae, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i15, label %bb.d

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i15:       ; preds = %_ZN4llvh5APIntC2Ejmb.exit.thread, %_ZN4llvh5APIntC2Ejmb.exit
  %i.af = phi i32 [ %i.ac, %_ZN4llvh5APIntC2Ejmb.exit.thread ], [ %i.ad, %_ZN4llvh5APIntC2Ejmb.exit ] ; 2 uses
  %i.ag = phi ptr [ %.pre, %_ZN4llvh5APIntC2Ejmb.exit.thread ], [ %.pre21, %_ZN4llvh5APIntC2Ejmb.exit ]
  %i.ah = phi i32 [ %i.z, %_ZN4llvh5APIntC2Ejmb.exit.thread ], [ %.pre24, %_ZN4llvh5APIntC2Ejmb.exit ] ; 2 uses
  %i.ai = icmp eq i32 %i.af, %i.ah
  %i.aj = load i64, ptr %3, align 8
  %i.ak = zext nneg i32 %i.af to i64
  %i.al = shl i64 %i.aj, %i.ak
  %storemerge.i = select i1 %i.ai, i64 0, i64 %i.al
  %i.am = sub nsw i32 0, %i.ah
  %i.an = and i32 %i.am, 63
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = lshr i64 -1, %i.ao
  %i.aq = and i64 %storemerge.i, %i.ap
  store i64 %i.aq, ptr %3, align 8, !tbaa !18
  br label %_ZN4llvh5APIntlSEj.exit

bb.d:                                             ; preds = %_ZN4llvh5APIntC2Ejmb.exit
  call void @_ZN4llvh5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.ad) #25
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZN4llvh5APIntlSEj.exit

_ZN4llvh5APIntlSEj.exit:                          ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i15, %bb.d
  %i.ar = phi ptr [ %i.ag, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i15 ], [ %.pre25, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.ar, ptr %4, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = add i32 %i.at, 64                       ; 2 uses
  %i.av = icmp ugt i32 %i.au, 127
  br i1 %i.av, label %bb.e, label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit

bb.e:                                             ; preds = %_ZN4llvh5APIntlSEj.exit
  %i.aw = lshr i32 %i.au, 3
  %i.ax = and i32 %i.aw, 536870904
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !18
  br label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit

_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit: ; preds = %_ZN4llvh5APIntlSEj.exit, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 6 uses
  %5 = load i8, ptr %i.bb, align 2
  %6 = and i8 %5, -16
  %7 = or disjoint i8 %6, 3
  %i.bc = load i32, ptr %i.aa, align 8, !tbaa !20 ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = lshr i64 %i.be, 6
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 %i.bc, ptr %i.bh, align 8, !tbaa !20
  %i.bi = icmp ult i32 %i.bc, 65
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit
  %i.bj = load i64, ptr %3, align 8, !tbaa !18
  store i64 %i.bj, ptr %2, align 8, !tbaa !18
  br label %_ZN4llvh5APIntC2ERKS0_.exit.i

bb.g:                                             ; preds = %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit
  call void @_ZN4llvh5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #25
  %.pre12.pre.i = load i32, ptr %i.bh, align 8, !tbaa !20
  %.pre14.pre.i = load ptr, ptr %2, align 8
  %i.bk = icmp ult i32 %.pre12.pre.i, 65
  %i.bl = select i1 %i.bk, ptr %2, ptr %.pre14.pre.i
  br label %_ZN4llvh5APIntC2ERKS0_.exit.i

_ZN4llvh5APIntC2ERKS0_.exit.i:                    ; preds = %bb.g, %bb.f
  %.pre12.i = phi ptr [ %2, %bb.f ], [ %i.bl, %bb.g ]
  store i8 %7, ptr %i.bb, align 2
  %i.bm = call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.pre12.i, i32 noundef %i.bg, i32 noundef 0) ; 2 uses
  %i.bn = load i32, ptr %i.bh, align 8, !tbaa !20
  %i.bo = icmp ugt i32 %i.bn, 64
  br i1 %i.bo, label %bb.h, label %_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit

bb.h:                                             ; preds = %_ZN4llvh5APIntC2ERKS0_.exit.i
  %i.bp = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #24
  br label %_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit

_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit: ; preds = %_ZN4llvh5APIntC2ERKS0_.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.br = load i8, ptr %i.a, align 2              ; 2 uses
  %i.bs = and i8 %i.br, 8
  %i.bt = load i8, ptr %i.bb, align 2
  %i.bu = and i8 %i.bt, -9
  %i.bv = or disjoint i8 %i.bu, %i.bs
  store i8 %i.bv, ptr %i.bb, align 2
  %.not13 = icmp eq i32 %i.bm, 0
  br i1 %.not13, label %bb.j, label %bb.w

bb.j:                                             ; preds = %_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit
  %i.bw = call noundef i32 @_ZN4llvh6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false) ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 2
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = call noundef i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
  %i.bz = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %i.by)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.bz, %bb.k ], [ %i.bw, %bb.j ] ; 2 uses
  %i.ca = load i8, ptr %i.a, align 2              ; 3 uses
  %i.cb = and i8 %i.ca, 7
  %i.cc = icmp eq i8 %i.cb, 3
  br i1 %i.cc, label %bb.m, label %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit

bb.m:                                             ; preds = %bb.l
  %i.cd = load i8, ptr %i.bb, align 2             ; 2 uses
  %i.ce = and i8 %i.cd, 7
  %.not.i.i = icmp eq i8 %i.ce, 3
  br i1 %.not.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = xor i8 %i.cd, %i.ca
  %i.cg = and i8 %i.cf, 8
  %.not.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i, label %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ch = icmp eq i32 %1, 2
  %i.ci = select i1 %i.ch, i8 8, i8 0
  %i.cj = and i8 %i.ca, -13
  %i.ck = or disjoint i8 %i.cj, %i.ci
  store i8 %i.ck, ptr %i.a, align 2
  br label %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit

_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit: ; preds = %bb.l, %bb.n, %bb.o
  %i.cl = and i32 %.0.i.i, 15
  %or.cond.not = icmp eq i32 %i.cl, 0
  br i1 %or.cond.not, label %bb.p, label %bb.w

bb.p:                                             ; preds = %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit
  %i.cm = call noundef i32 @_ZN4llvh6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true) ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 2
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = call noundef i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true)
  %i.cp = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %i.co)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i.i16 = phi i32 [ %i.cp, %bb.q ], [ %i.cm, %bb.p ] ; 2 uses
  %i.cq = load i8, ptr %i.a, align 2              ; 5 uses
  %i.cr = and i8 %i.cq, 7
  %i.cs = icmp eq i8 %i.cr, 3
  br i1 %i.cs, label %bb.s, label %_ZN4llvh6detail9IEEEFloat8subtractERKS1_NS_11APFloatBase12roundingModeE.exit

bb.s:                                             ; preds = %bb.r
  %i.ct = load i8, ptr %i.bb, align 2             ; 2 uses
  %i.cu = and i8 %i.ct, 7
  %.not.i.i17 = icmp eq i8 %i.cu, 3
  br i1 %.not.i.i17, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cv = xor i8 %i.ct, %i.cq
  %i.cw = and i8 %i.cv, 8
  %.not.i18 = icmp eq i8 %i.cw, 0
  br i1 %.not.i18, label %bb.u, label %_ZN4llvh6detail9IEEEFloat8subtractERKS1_NS_11APFloatBase12roundingModeE.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cx = icmp eq i32 %1, 2
  %i.cy = select i1 %i.cx, i8 8, i8 0
  %i.cz = and i8 %i.cq, -13
  %i.da = or disjoint i8 %i.cz, %i.cy             ; 2 uses
  store i8 %i.da, ptr %i.a, align 2
  br label %_ZN4llvh6detail9IEEEFloat8subtractERKS1_NS_11APFloatBase12roundingModeE.exit

_ZN4llvh6detail9IEEEFloat8subtractERKS1_NS_11APFloatBase12roundingModeE.exit: ; preds = %bb.r, %bb.t, %bb.u
  %i.db = phi i8 [ %i.cq, %bb.r ], [ %i.cq, %bb.t ], [ %i.da, %bb.u ] ; 2 uses
  %i.dc = xor i8 %i.db, %i.br
  %i.dd = and i8 %i.dc, 8
  %.not19 = icmp eq i8 %i.dd, 0
  br i1 %.not19, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4llvh6detail9IEEEFloat8subtractERKS1_NS_11APFloatBase12roundingModeE.exit
  %i.de = xor i8 %i.db, 8
  store i8 %i.de, ptr %i.a, align 2
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit, %bb.v, %_ZN4llvh6detail9IEEEFloat8subtractERKS1_NS_11APFloatBase12roundingModeE.exit, %_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit
  %.1 = phi i32 [ %i.bm, %_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit ], [ %.0.i.i, %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit ], [ %.0.i.i16, %bb.v ], [ %.0.i.i16, %_ZN4llvh6detail9IEEEFloat8subtractERKS1_NS_11APFloatBase12roundingModeE.exit ]
  %i.df = load ptr, ptr %4, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7
  %i.di = add i32 %i.dh, -64
  %i.dj = icmp ult i32 %i.di, -128
  br i1 %i.dj, label %bb.x, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !18 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.dn = load i32, ptr %i.aa, align 8, !tbaa !20
  %i.do = icmp ugt i32 %i.dn, 64
  br i1 %i.do, label %bb.z, label %_ZN4llvh5APIntD2Ev.exit

bb.z:                                             ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit
  %i.dp = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN4llvh5APIntD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.dp) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %_ZN4llvh5APIntD2Ev.exit
  %.2 = phi i32 [ %.1, %_ZN4llvh5APIntD2Ev.exit ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZNK4llvh6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2               ; 5 uses
  %i.c = shl i8 %i.b, 2
  %i.d = and i8 %i.c, 28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.f = load i8, ptr %i.e, align 2               ; 4 uses
  %i.g = and i8 %i.f, 7
  %narrow = add nuw nsw i8 %i.d, %i.g
  switch i8 %narrow, label %bb.b [
    i8 7, label %bb.m
    i8 6, label %bb.m
    i8 4, label %bb.m
    i8 5, label %bb.m
    i8 13, label %bb.m
    i8 9, label %bb.m
    i8 1, label %bb.m
    i8 2, label %bb.c
    i8 3, label %bb.c
    i8 11, label %bb.c
    i8 8, label %bb.d
    i8 12, label %bb.d
    i8 14, label %bb.d
    i8 0, label %bb.e
    i8 15, label %bb.g
    i8 10, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.h = and i8 %i.b, 8
  %.not17 = icmp eq i8 %i.h, 0
  %. = select i1 %.not17, i32 2, i32 0
  br label %bb.m

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.i = lshr i8 %i.f, 2
end_hunk_0
begin_hunk_1_@_ZNK4llvh6detail9IEEEFloat15convertToDoubleEv:bb.a
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %.in.i.i = select i1 %i.c, ptr %1, ptr %i.d
  %i.e = load double, ptr %.in.i.i, align 8, !tbaa !18
  %i.f = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret double %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat26initFromF80LongDoubleAPIntERKNS_5APIntE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp ult i32 %i.b, 65
  %i.d = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.c, ptr %1, ptr %i.d ; 2 uses
  %i.e = load i64, ptr %spec.select.i, align 8, !tbaa !22
  %.fr = freeze i64 %i.e                          ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = and i64 %i.g, 32767                      ; 5 uses
  store ptr @_ZN4llvhL20semX87DoubleExtendedE, ptr %0, align 8, !tbaa !13
  %i.i = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 5 uses
  %i.l = load i8, ptr %i.k, align 2
  %sh.diff = lshr i64 %i.g, 12
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %i.m = and i8 %tr.sh.diff, 8
  %i.n = and i8 %i.l, -9
  %i.o = or disjoint i8 %i.n, %i.m                ; 4 uses
  %i.p = icmp eq i64 %i.h, 0
  %i.q = or i64 %i.h, %.fr
  %or.cond = icmp eq i64 %i.q, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = and i8 %i.o, -8
  %i.s = or disjoint i8 %i.r, 3
  store i8 %i.s, ptr %i.k, align 2
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.h, 32767                  ; 2 uses
  %i.u = icmp eq i64 %.fr, -9223372036854775808
  %or.cond3 = and i1 %i.u, %i.t
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = and i8 %i.o, -8
  store i8 %i.v, ptr %i.k, align 2
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.w = icmp ne i64 %.fr, -9223372036854775808
  %or.cond5 = and i1 %i.w, %i.t
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp sgt i64 %.fr, -1
  %.off = add nsw i64 %i.h, -1
  %switch = icmp ult i64 %.off, 32766
  %or.cond29 = select i1 %i.x, i1 %switch, i1 false
  br i1 %or.cond29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = and i8 %i.o, -8
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %i.k, align 2
  store i64 %.fr, ptr %i.i, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !22
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ab = and i8 %i.o, -8
  %i.ac = or disjoint i8 %i.ab, 2
  store i8 %i.ac, ptr %i.k, align 2
  %i.ad = trunc nuw nsw i64 %i.h to i16
  %i.ae = add nsw i16 %i.ad, -16383
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i16 %i.ae, ptr %i.af, align 8, !tbaa !19
  store i64 %.fr, ptr %i.i, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i16 -16382, ptr %i.af, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #2 align 2 {
.cont15:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ult i32 %i.c, 65
  %i.e = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.d, ptr %1, ptr %i.e ; 2 uses
  %i.f = load i64, ptr %spec.select.i, align 8, !tbaa !22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.i = lshr i64 %i.f, 52
  %i.j = and i64 %i.i, 2047                       ; 4 uses
  %i.k = and i64 %i.f, 4503599627370495           ; 6 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %0, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 8 uses
  %i.m = load i8, ptr %i.l, align 2
  %sh.diff.i = lshr i64 %i.f, 60
  %tr.sh.diff.i = trunc nuw nsw i64 %sh.diff.i to i8
  %i.n = and i8 %tr.sh.diff.i, 8
  %i.o = and i8 %i.m, -9
  %i.p = or disjoint i8 %i.o, %i.n                ; 3 uses
  %i.q = icmp eq i64 %i.j, 0
  %i.r = or i64 %i.j, %i.k
  %or.cond.i = icmp eq i64 %i.r, 0
  br i1 %or.cond.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.cont15
  %i.s = and i8 %i.p, -8
  %i.t = or disjoint i8 %i.s, 3
  store i8 %i.t, ptr %i.l, align 2
  br label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %.cont15
  %i.u = icmp eq i64 %i.k, 0
  %i.v = icmp eq i64 %i.j, 2047                   ; 2 uses
  %or.cond3.i = and i1 %i.u, %i.v
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = and i8 %i.p, -8
  store i8 %i.w, ptr %i.l, align 2
  br label %_ZN4llvh5APIntD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.x = icmp ne i64 %i.k, 0
  %or.cond5.i = and i1 %i.x, %i.v
  %i.y = and i8 %i.p, -8                          ; 2 uses
  br i1 %or.cond5.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %i.l, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.aa, align 8, !tbaa !22
  br label %_ZN4llvh5APIntD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = or disjoint i8 %i.y, 2
  store i8 %i.ab, ptr %i.l, align 2
  %i.ac = trunc nuw nsw i64 %i.j to i16
  %i.ad = add nsw i16 %i.ac, -1023
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i16 %i.ad, ptr %i.ae, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.af, align 8, !tbaa !22
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 -1022, ptr %i.ae, align 8, !tbaa !19
  br label %_ZN4llvh5APIntD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = or disjoint i64 %i.k, 4503599627370496
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !22
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.a
  %i.ah = call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL24semPPCDoubleDoubleLegacyE, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ai = load i8, ptr %i.l, align 2              ; 2 uses
  %i.aj = and i8 %i.ai, 6
  %spec.select.i.not.i = icmp ne i8 %i.aj, 0
  %i.ak = and i8 %i.ai, 7
  %i.al = icmp ne i8 %i.ak, 3
  %i.am = and i1 %spec.select.i.not.i, %i.al
  br i1 %i.am, label %.cont, label %bb.x

.cont:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.an = lshr i64 %i.h, 52
  %i.ao = and i64 %i.an, 2047                     ; 4 uses
  %i.ap = and i64 %i.h, 4503599627370495          ; 6 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %2, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 6 uses
  %3 = load i8, ptr %i.aq, align 2
  %sh.diff.i20.i = lshr i64 %i.h, 60
  %tr.sh.diff.i21.i = trunc nuw nsw i64 %sh.diff.i20.i to i8
  %4 = and i8 %tr.sh.diff.i21.i, 8
  %i.ar = and i8 %3, -9
  %5 = or disjoint i8 %i.ar, %4                   ; 3 uses
  %i.as = icmp eq i64 %i.ao, 0
  %i.at = or i64 %i.ao, %i.ap
  %or.cond.i22.i = icmp eq i64 %i.at, 0
  br i1 %or.cond.i22.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.cont
  %6 = and i8 %5, -8
  %i.au = or disjoint i8 %6, 3
  store i8 %i.au, ptr %i.aq, align 2
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.j:                                             ; preds = %.cont
  %i.av = icmp eq i64 %i.ap, 0
  %i.aw = icmp eq i64 %i.ao, 2047                 ; 2 uses
  %or.cond3.i23.i = and i1 %i.av, %i.aw
  br i1 %or.cond3.i23.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %7 = and i8 %5, -8
  store i8 %7, ptr %i.aq, align 2
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ne i64 %i.ap, 0
  %or.cond5.i24.i = and i1 %i.ax, %i.aw
  %8 = and i8 %5, -8                              ; 2 uses
  br i1 %or.cond5.i24.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = or disjoint i8 %8, 1
  store i8 %i.ay, ptr %i.aq, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ap, ptr %i.az, align 8, !tbaa !22
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.n:                                             ; preds = %bb.l
  %i.ba = or disjoint i8 %8, 2
  store i8 %i.ba, ptr %i.aq, align 2
  %i.bb = trunc nuw nsw i64 %i.ao to i16
  %i.bc = add nsw i16 %i.bb, -1023
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i16 %i.bc, ptr %i.bd, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ap, ptr %i.be, align 8, !tbaa !22
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 -1022, ptr %i.bd, align 8, !tbaa !19
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.p:                                             ; preds = %bb.n
  %i.bf = or disjoint i64 %i.ap, 4503599627370496
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !22
  br label %_ZN4llvh5APIntD2Ev.exit5

_ZN4llvh5APIntD2Ev.exit5:                         ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.i
  %i.bg = call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL24semPPCDoubleDoubleLegacyE, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.bh = call noundef i32 @_ZN4llvh6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit5
  %i.bj = call noundef i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  %i.bk = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0, i32 noundef %i.bj) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4llvh5APIntD2Ev.exit5
  %i.bl = load i8, ptr %i.l, align 2              ; 3 uses
  %i.bm = and i8 %i.bl, 7
  %i.bn = icmp eq i8 %i.bm, 3
  br i1 %i.bn, label %bb.s, label %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit

bb.s:                                             ; preds = %bb.r
  %i.bo = load i8, ptr %i.aq, align 2             ; 2 uses
  %i.bp = and i8 %i.bo, 7
  %.not.i.i = icmp eq i8 %i.bp, 3
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = xor i8 %i.bo, %i.bl
  %i.br = and i8 %i.bq, 8
  %.not.i = icmp eq i8 %i.br, 0
  br i1 %.not.i, label %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bs = and i8 %i.bl, -13
  store i8 %i.bs, ptr %i.l, align 2
  br label %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit

_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit: ; preds = %bb.r, %bb.t, %bb.u
  %i.bt = load ptr, ptr %2, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = add i32 %i.bv, -64
  %i.bx = icmp ult i32 %i.bw, -128
  br i1 %i.bx, label %bb.v, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.v:                                             ; preds = %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !18 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %_ZN4llvh6detail9IEEEFloat3addERKS1_NS_11APFloatBase12roundingModeE.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %_ZN4llvh5APIntD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat19initFromDoubleAPIntERKNS_5APIntE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp ult i32 %i.b, 65
  %i.d = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.c, ptr %1, ptr %i.d
  %i.e = load i64, ptr %spec.select.i, align 8, !tbaa !22 ; 3 uses
  %i.f = lshr i64 %i.e, 52
  %i.g = and i64 %i.f, 2047                       ; 4 uses
  %i.h = and i64 %i.e, 4503599627370495           ; 6 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 5 uses
  %i.j = load i8, ptr %i.i, align 2
  %sh.diff = lshr i64 %i.e, 60
  %tr.sh.diff = trunc nuw nsw i64 %sh.diff to i8
  %i.k = and i8 %tr.sh.diff, 8
  %i.l = and i8 %i.j, -9
  %i.m = or disjoint i8 %i.l, %i.k                ; 3 uses
  %i.n = icmp eq i64 %i.g, 0
  %i.o = or i64 %i.g, %i.h
  %or.cond = icmp eq i64 %i.o, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = and i8 %i.m, -8
  %i.q = or disjoint i8 %i.p, 3
  store i8 %i.q, ptr %i.i, align 2
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.h, 0
  %i.s = icmp eq i64 %i.g, 2047                   ; 2 uses
  %or.cond3 = and i1 %i.r, %i.s
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = and i8 %i.m, -8
  store i8 %i.t, ptr %i.i, align 2
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.u = icmp ne i64 %i.h, 0
  %or.cond5 = and i1 %i.u, %i.s
  %i.v = and i8 %i.m, -8                          ; 2 uses
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.v, 1
  store i8 %i.w, ptr %i.i, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.x, align 8, !tbaa !22
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = or disjoint i8 %i.v, 2
  store i8 %i.y, ptr %i.i, align 2
  %i.z = trunc nuw nsw i64 %i.g to i16
  %i.aa = add nsw i16 %i.z, -1023
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i16 %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.h, ptr %i.ac, align 8, !tbaa !22
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 -1022, ptr %i.ab, align 8, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = or disjoint i64 %i.h, 4503599627370496
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat22initFromQuadrupleAPIntERKNS_5APIntE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp ult i32 %i.b, 65
  %i.d = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.c, ptr %1, ptr %i.d ; 2 uses
  %i.e = load i64, ptr %spec.select.i, align 8, !tbaa !22 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 3 uses
  %i.h = lshr i64 %i.g, 48
  %i.i = and i64 %i.h, 32767                      ; 3 uses
  %i.j = and i64 %i.g, 281474976710655            ; 5 uses
  store ptr @_ZN4llvhL11semIEEEquadE, ptr %0, align 8, !tbaa !13
  %i.k = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 5 uses
  %i.n = load i8, ptr %i.m, align 2
  %sh.diff = lshr i64 %i.g, 60
  %tr.sh.diff = trunc nuw nsw i64 %sh.diff to i8
  %i.o = and i8 %tr.sh.diff, 8
  %i.p = and i8 %i.n, -9
  %i.q = or disjoint i8 %i.p, %i.o                ; 4 uses
  %i.r = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.s = icmp eq i64 %i.e, 0                      ; 2 uses
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  %i.t = icmp eq i64 %i.j, 0                      ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 %i.t, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = and i8 %i.q, -8
  %i.v = or disjoint i8 %i.u, 3
  store i8 %i.v, ptr %i.m, align 2
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.w = icmp eq i64 %i.i, 32767                  ; 2 uses
  %or.cond5 = select i1 %i.w, i1 %i.s, i1 false
  %or.cond7 = select i1 %or.cond5, i1 %i.t, i1 false
end_hunk_1
begin_hunk_2_@_ZNK4llvh6detail9IEEEFloat8toStringERNS_15SmallVectorImplIcEEjjb:bb.a
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !115
  %.not.i = icmp ult i32 %i.ao, %i.aq
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.h, !prof !119

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ar, i64 noundef 0, i64 noundef 1) #25
  %.pre.i = load i32, ptr %i.an, align 8, !tbaa !117
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %bb.g, %bb.h
  %i.as = phi i32 [ %.pre.i, %bb.h ], [ %i.ao, %bb.g ]
  %i.at = load ptr, ptr %1, align 8, !tbaa !118
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  store i8 45, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.an, align 8, !tbaa !117
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.an, align 8, !tbaa !117
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %bb.f
  %.not127 = icmp eq i32 %3, 0
  br i1 %.not127, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !115
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !117
  %i.bd = zext i32 %i.bc to i64                   ; 5 uses
  %i.be = sub nsw i64 %i.ba, %i.bd                ; 2 uses
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = icmp ult i64 %i.be, 6
  br i1 %i.bf, label %.thread.i156, label %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit158

.thread.i156:                                     ; preds = %bb.k
  %i.bg = add nuw nsw i64 %i.bd, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bh, i64 noundef %i.bg, i64 noundef 1) #25
  %.pre7.pre.i.i157 = load i32, ptr %i.bb, align 8, !tbaa !117
  %.pre359 = zext i32 %.pre7.pre.i.i157 to i64
  br label %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit158

_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit158: ; preds = %bb.k, %.thread.i156
  %.pre-phi360 = phi i64 [ %i.bd, %bb.k ], [ %.pre359, %.thread.i156 ]
  %i.bi = load ptr, ptr %1, align 8, !tbaa !118
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.pre-phi360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bj, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  %.pre.i.i155 = load i32, ptr %i.bb, align 8, !tbaa !117
  %i.bk = add i32 %.pre.i.i155, 6
  store i32 %i.bk, ptr %i.bb, align 8, !tbaa !117
  br label %bb.du

bb.l:                                             ; preds = %bb.j
  %i.bl = icmp ult i64 %i.be, 3
  br i1 %i.bl, label %.thread.i162, label %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit164

.thread.i162:                                     ; preds = %bb.l
  %i.bm = add nuw nsw i64 %i.bd, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bn, i64 noundef %i.bm, i64 noundef 1) #25
  %.pre7.pre.i.i163 = load i32, ptr %i.bb, align 8, !tbaa !117
  %.pre361 = zext i32 %.pre7.pre.i.i163 to i64
  br label %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit164

_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit164: ; preds = %bb.l, %.thread.i162
  %.pre-phi362 = phi i64 [ %i.bd, %bb.l ], [ %.pre361, %.thread.i162 ]
  %i.bo = load ptr, ptr %1, align 8, !tbaa !118
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.pre-phi362
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bp, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  %.pre.i.i161 = load i32, ptr %i.bb, align 8, !tbaa !117
  %i.bq = add i32 %.pre.i.i161, 3                 ; 3 uses
  store i32 %i.bq, ptr %i.bb, align 8, !tbaa !117
  %i.br = icmp ugt i32 %2, 1
  br i1 %i.br, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit164
  %i.bs = add i32 %2, -1                          ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 3 uses
  %i.bu = load i32, ptr %i.ay, align 4, !tbaa !115
  %i.bv = zext i32 %i.bu to i64
  %i.bw = zext i32 %i.bq to i64                   ; 3 uses
  %i.bx = sub nsw i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.bt
  br i1 %i.by, label %.thread.i166, label %bb.n

.thread.i166:                                     ; preds = %bb.m
  %i.bz = add nuw nsw i64 %i.bw, %i.bt
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ca, i64 noundef %i.bz, i64 noundef 1) #25
  %i.cb = load ptr, ptr %1, align 8, !tbaa !118
  %i.cc = load i32, ptr %i.bb, align 8, !tbaa !117
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  br label %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit

bb.n:                                             ; preds = %bb.m
  %i.cf = load ptr, ptr %1, align 8, !tbaa !118
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bw
  br label %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit

_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit:    ; preds = %.thread.i166, %bb.n
  %i.ch = phi ptr [ %i.ce, %.thread.i166 ], [ %i.cg, %bb.n ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ch, i8 48, i64 %i.bt, i1 false)
  %.pre.i165 = load i32, ptr %i.bb, align 8, !tbaa !117
  %i.ci = add i32 %.pre.i165, %i.bs               ; 2 uses
  store i32 %i.ci, ptr %i.bb, align 8, !tbaa !117
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit164
  %i.cj = phi i32 [ %i.ci, %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit ], [ %i.bq, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit164 ]
  %i.ck = load i32, ptr %i.ay, align 4, !tbaa !115
  %i.cl = zext i32 %i.ck to i64
  %i.cm = zext i32 %i.cj to i64                   ; 3 uses
  %i.cn = sub nsw i64 %i.cl, %i.cm
  %i.co = icmp ult i64 %i.cn, 4
  br i1 %i.co, label %.thread.i170, label %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit172

.thread.i170:                                     ; preds = %bb.o
  %i.cp = add nuw nsw i64 %i.cm, 4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.cq, i64 noundef %i.cp, i64 noundef 1) #25
  %.pre7.pre.i.i171 = load i32, ptr %i.bb, align 8, !tbaa !117
  %.pre363 = zext i32 %.pre7.pre.i.i171 to i64
  br label %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit172

_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit172: ; preds = %bb.o, %.thread.i170
  %.pre-phi364 = phi i64 [ %i.cm, %bb.o ], [ %.pre363, %.thread.i170 ]
  %i.cr = load ptr, ptr %1, align 8, !tbaa !118
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.pre-phi364
  store i32 808463205, ptr %i.cs, align 1
  %.pre.i.i169 = load i32, ptr %i.bb, align 8, !tbaa !117
  %i.ct = add i32 %.pre.i.i169, 4
  store i32 %i.ct, ptr %i.bb, align 8, !tbaa !117
  br label %bb.du

bb.p:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !117 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !115
  %.not.i173 = icmp ult i32 %i.cv, %i.cx
  br i1 %.not.i173, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit175, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.cy, i64 noundef 0, i64 noundef 1) #25
  %.pre.i174 = load i32, ptr %i.cu, align 8, !tbaa !117
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit175

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit175: ; preds = %bb.p, %bb.q
  %i.cz = phi i32 [ %.pre.i174, %bb.q ], [ %i.cv, %bb.p ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !118
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  store i8 48, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.cu, align 8, !tbaa !117
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.cu, align 8, !tbaa !117
  br label %bb.du

bb.r:                                             ; preds = %bb.a
  %i.df = and i8 %i.e, 8
  %.not293 = icmp eq i8 %i.df, 0
  br i1 %.not293, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !117 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !115
  %.not.i176 = icmp ult i32 %i.dh, %i.dj
  br i1 %.not.i176, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit178, label %bb.t, !prof !119

bb.t:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.dk, i64 noundef 0, i64 noundef 1) #25
  %.pre.i177 = load i32, ptr %i.dg, align 8, !tbaa !117
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit178

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit178: ; preds = %bb.s, %bb.t
  %i.dl = phi i32 [ %.pre.i177, %bb.t ], [ %i.dh, %bb.s ]
  %i.dm = load ptr, ptr %1, align 8, !tbaa !118
  %i.dn = zext i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  store i8 45, ptr %i.do, align 1
  %i.dp = load i32, ptr %i.dg, align 8, !tbaa !117
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.dg, align 8, !tbaa !117
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit178, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = load i16, ptr %i.dr, align 8, !tbaa !19
  %i.dt = sext i16 %i.ds to i32
  %i.du = load ptr, ptr %0, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %17 = load i32, ptr %i.dv, align 4, !tbaa !7    ; 3 uses
  %i.dx = add i32 %17, -64
  %i.dy = icmp ult i32 %i.dx, -128
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %.0.i.i = select i1 %i.dy, ptr %i.ea, ptr %i.dz
  %i.eb = add i32 %17, 63
  %i.ec = lshr i32 %i.eb, 6
  %i.ed = zext nneg i32 %i.ec to i64
  call void @_ZN4llvh5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %17, ptr %.0.i.i, i64 %i.ed) #25
  %.not128 = icmp eq i32 %2, 0
  br i1 %.not128, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ee = load ptr, ptr %0, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7
  %i.eh = mul i32 %i.eg, 59
  %i.ei = udiv i32 %i.eh, 196
  %i.ej = add nuw nsw i32 %i.ei, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0102 = phi i32 [ %2, %bb.u ], [ %i.ej, %bb.v ] ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 15 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !20 ; 3 uses
  %i.em = icmp ult i32 %i.el, 65
  br i1 %i.em, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.en = load i64, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.eo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.en, i1 false)
  %i.ep = trunc nuw nsw i64 %i.eo to i32          ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.el, i32 %i.ep) ; 3 uses
  %.not294 = icmp samesign ugt i32 %i.el, %i.ep
  br i1 %.not294, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr %9, align 8, !tbaa !18
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.z:                                             ; preds = %bb.x
  %i.eq = zext nneg i32 %.sroa.speculated.i to i64
  %i.er = lshr i64 %i.en, %i.eq
  store i64 %i.er, ptr %9, align 8, !tbaa !18
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.aa:                                            ; preds = %bb.w
  %i.es = call noundef i32 @_ZNK4llvh5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %9) #26 ; 2 uses
  call void @_ZN4llvh5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.es) #25
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.speculated.i.pn = phi i32 [ %.sroa.speculated.i, %bb.y ], [ %.sroa.speculated.i, %bb.z ], [ %i.es, %bb.aa ]
  %.neg298 = add nsw i32 %i.dt, 1
  %i.et = sub i32 %.neg298, %i.dw
  %i.eu = add nsw i32 %i.et, %.sroa.speculated.i.pn ; 9 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_ZN4llvh5APIntlSEj.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit
  %i.ew = icmp sgt i32 %i.eu, 0
  br i1 %i.ew, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ex = load ptr, ptr %0, align 8, !tbaa !13
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !7
  %i.fa = add i32 %i.ez, %i.eu
  call void @_ZNK4llvh5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.fa) #25
  %i.fb = load i32, ptr %i.ek, align 8, !tbaa !20
  %i.fc = icmp ult i32 %i.fb, 65
  br i1 %i.fc, label %_ZN4llvh5APIntD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fd = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZN4llvh5APIntD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.fd) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ff = load i64, ptr %10, align 8              ; 2 uses
  store i64 %i.ff, ptr %9, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !20 ; 4 uses
  store i32 %i.fh, ptr %i.ek, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.fi = icmp ult i32 %i.fh, 65
  br i1 %i.fi, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.af

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.fj = icmp eq i32 %i.eu, %i.fh
  %i.fk = zext nneg i32 %i.eu to i64
  %i.fl = shl i64 %i.ff, %i.fk
  %storemerge.i = select i1 %i.fj, i64 0, i64 %i.fl
  %i.fm = sub nsw i32 0, %i.fh
  %i.fn = and i32 %i.fm, 63
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = lshr i64 -1, %i.fo
  %i.fq = and i64 %storemerge.i, %i.fp
  store i64 %i.fq, ptr %9, align 8, !tbaa !18
  br label %_ZN4llvh5APIntlSEj.exit

bb.af:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZN4llvh5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.eu) #25
  br label %_ZN4llvh5APIntlSEj.exit

bb.ag:                                            ; preds = %bb.ab
  %i.fr = sub nsw i32 0, %i.eu
  %i.fs = load ptr, ptr %0, align 8, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !7
  %i.fv = mul i32 %i.eu, -137
  %i.fw = add nuw nsw i32 %i.fv, 136
  %i.fx = udiv i32 %i.fw, 59
  %i.fy = add i32 %i.fu, %i.fx                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZNK4llvh5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.fy) #25
  %i.fz = load i32, ptr %i.ek, align 8, !tbaa !20
  %i.ga = icmp ult i32 %i.fz, 65
  br i1 %i.ga, label %_ZN4llvh5APIntD2Ev.exit180, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gb = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_ZN4llvh5APIntD2Ev.exit180, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.gb) #24
  br label %_ZN4llvh5APIntD2Ev.exit180

_ZN4llvh5APIntD2Ev.exit180:                       ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.gd = load i64, ptr %11, align 8
  store i64 %i.gd, ptr %9, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !20
  store i32 %i.gf, ptr %i.ek, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 %i.fy, ptr %i.gg, align 8, !tbaa !20
  %i.gh = icmp ult i32 %i.fy, 65
  br i1 %i.gh, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i181, label %bb.aj

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i181:      ; preds = %_ZN4llvh5APIntD2Ev.exit180
  %i.gi = sub nsw i32 0, %i.fy
  %i.gj = and i32 %i.gi, 63
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = lshr i64 -1, %i.gk
  %i.gm = and i64 %i.gl, 5
  store i64 %i.gm, ptr %12, align 8, !tbaa !18
  br label %_ZN4llvh5APIntC2Ejmb.exit.preheader

bb.aj:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit180
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %12, i64 noundef 5, i1 noundef zeroext false) #25
  br label %_ZN4llvh5APIntC2Ejmb.exit.preheader

_ZN4llvh5APIntC2Ejmb.exit.preheader:              ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i181, %bb.aj
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %_ZN4llvh5APIntC2Ejmb.exit.preheader, %bb.am
  %.0104 = phi i32 [ %i.gp, %bb.am ], [ %i.fr, %_ZN4llvh5APIntC2Ejmb.exit.preheader ] ; 2 uses
  %i.gn = and i32 %.0104, 1
  %.not129 = icmp eq i32 %i.gn, 0
  br i1 %.not129, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvh5APIntC2Ejmb.exit
  %i.go = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntmLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %12) #25 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN4llvh5APIntC2Ejmb.exit
  %i.gp = lshr i32 %.0104, 1                      ; 2 uses
  %.not130 = icmp eq i32 %i.gp, 0
  br i1 %.not130, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gq = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntmLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %12) #25 ; 0 uses
  br label %_ZN4llvh5APIntC2Ejmb.exit, !llvm.loop !120

bb.an:                                            ; preds = %bb.al
  %i.gr = load i32, ptr %i.gg, align 8, !tbaa !20
  %i.gs = icmp ugt i32 %i.gr, 64
  br i1 %i.gs, label %bb.ao, label %_ZN4llvh5APIntD2Ev.exit182

bb.ao:                                            ; preds = %bb.an
  %i.gt = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_ZN4llvh5APIntD2Ev.exit182, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.gt) #24
  br label %_ZN4llvh5APIntD2Ev.exit182

_ZN4llvh5APIntD2Ev.exit182:                       ; preds = %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZN4llvh5APIntlSEj.exit

_ZN4llvh5APIntlSEj.exit:                          ; preds = %bb.af, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %_ZN4llvh5APIntD2Ev.exit182, %_ZN4llvh5APInt11lshrInPlaceEj.exit
  %.0285 = phi i32 [ 0, %_ZN4llvh5APInt11lshrInPlaceEj.exit ], [ %i.eu, %_ZN4llvh5APIntD2Ev.exit182 ], [ 0, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i ], [ 0, %bb.af ] ; 3 uses
  %i.gv = load i32, ptr %i.ek, align 8, !tbaa !20 ; 8 uses
  %i.gw = icmp ult i32 %i.gv, 65                  ; 2 uses
  br i1 %i.gw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4llvh5APIntlSEj.exit
  %.neg.i.i.i = add nsw i32 %i.gv, -64
  %i.gx = load i64, ptr %9, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@_ZNK4llvh6detail9IEEEFloat8toStringERNS_15SmallVectorImplIcEEjjb:bb.a
  %i.uu = add i32 %i.ut, 1                        ; 2 uses
  store i32 %i.uu, ptr %i.uc, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not133 = icmp eq i64 %indvars.iv.next, %i.uf
  br i1 %.not133, label %bb.dh, label %bb.df, !llvm.loop !133

bb.dh:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 46, ptr %i.a, align 1, !tbaa !18
  call void @_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit304

bb.di:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 48, ptr %i.b, align 1, !tbaa !18
  call void @_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 46, ptr %i.c, align 1, !tbaa !18
  call void @_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %.not132313 = icmp eq i32 %i.nq, 0
  br i1 %.not132313, label %.loopexit304, label %.lr.ph

.lr.ph:                                           ; preds = %bb.di
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre348 = load i32, ptr %i.uv, align 8, !tbaa !117
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238
  %i.uy = phi i32 [ %.pre348, %.lr.ph ], [ %i.vf, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238 ] ; 2 uses
  %.0314 = phi i32 [ 1, %.lr.ph ], [ %i.vg, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238 ]
  %i.uz = load i32, ptr %i.uw, align 4, !tbaa !115
  %.not.i236 = icmp ult i32 %i.uy, %i.uz
  br i1 %.not.i236, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238, label %bb.dk, !prof !119

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ux, i64 noundef 0, i64 noundef 1) #25
  %.pre.i237 = load i32, ptr %i.uv, align 8, !tbaa !117
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238: ; preds = %bb.dj, %bb.dk
  %i.va = phi i32 [ %.pre.i237, %bb.dk ], [ %i.uy, %bb.dj ]
  %i.vb = load ptr, ptr %1, align 8, !tbaa !118
  %i.vc = zext i32 %i.va to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.vc
  store i8 48, ptr %i.vd, align 1
  %i.ve = load i32, ptr %i.uv, align 8, !tbaa !117
  %i.vf = add i32 %i.ve, 1                        ; 2 uses
  store i32 %i.vf, ptr %i.uv, align 8, !tbaa !117
  %i.vg = add i32 %.0314, 1                       ; 2 uses
  %.not132 = icmp eq i32 %i.vg, %i.nt
  br i1 %.not132, label %.loopexit304, label %bb.dj, !llvm.loop !134

.loopexit304:                                     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238, %bb.di, %bb.dh
  %.1 = phi i32 [ %i.nq, %bb.dh ], [ 0, %bb.di ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit238 ] ; 2 uses
  %.not134316 = icmp eq i32 %.1, %i.ng
  br i1 %.not134316, label %.loopexit300, label %.lr.ph318

.lr.ph318:                                        ; preds = %.loopexit304
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre350 = load i32, ptr %i.vh, align 8, !tbaa !117
  br label %bb.dl

bb.dl:                                            ; preds = %.lr.ph318, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241
  %i.vk = phi i32 [ %.pre350, %.lr.ph318 ], [ %i.vx, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241 ] ; 2 uses
  %.2317 = phi i32 [ %.1, %.lr.ph318 ], [ %i.vy, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241 ] ; 2 uses
  %i.vl = xor i32 %.2317, -1
  %i.vm = add i32 %i.ng, %i.vl
  %i.vn = zext i32 %i.vm to i64
  %i.vo = load ptr, ptr %13, align 8, !tbaa !118
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.vn
  %i.vq = load i32, ptr %i.vi, align 4, !tbaa !115
  %.not.i239 = icmp ult i32 %i.vk, %i.vq
  br i1 %.not.i239, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241, label %bb.dm, !prof !119

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.vj, i64 noundef 0, i64 noundef 1) #25
  %.pre.i240 = load i32, ptr %i.vh, align 8, !tbaa !117
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241: ; preds = %bb.dl, %bb.dm
  %i.vr = phi i32 [ %.pre.i240, %bb.dm ], [ %i.vk, %bb.dl ]
  %i.vs = load ptr, ptr %1, align 8, !tbaa !118
  %i.vt = zext i32 %i.vr to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vt
  %i.vv = load i8, ptr %i.vp, align 1
  store i8 %i.vv, ptr %i.vu, align 1
  %i.vw = load i32, ptr %i.vh, align 8, !tbaa !117
  %i.vx = add i32 %i.vw, 1                        ; 2 uses
  store i32 %i.vx, ptr %i.vh, align 8, !tbaa !117
  %i.vy = add i32 %.2317, 1                       ; 2 uses
  %.not134 = icmp eq i32 %i.vy, %i.ng
  br i1 %.not134, label %.loopexit300, label %bb.dl, !llvm.loop !135

.loopexit300:                                     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit241, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit232, %.loopexit304, %.preheader299, %_ZN4llvh11SmallVectorIcLj6EED2Ev.exit
  %i.vz = load i32, ptr %i.jp, align 8, !tbaa !20
  %i.wa = icmp ugt i32 %i.vz, 64
  br i1 %i.wa, label %bb.dn, label %_ZN4llvh5APIntD2Ev.exit242

bb.dn:                                            ; preds = %.loopexit300
  %i.wb = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %_ZN4llvh5APIntD2Ev.exit242, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZdaPv(ptr noundef nonnull %i.wb) #24
  br label %_ZN4llvh5APIntD2Ev.exit242

_ZN4llvh5APIntD2Ev.exit242:                       ; preds = %.loopexit300, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.wd = load i32, ptr %i.jg, align 8, !tbaa !20
  %i.we = icmp ugt i32 %i.wd, 64
  br i1 %i.we, label %bb.dp, label %_ZN4llvh5APIntD2Ev.exit243

bb.dp:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit242
  %i.wf = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.wg = icmp eq ptr %i.wf, null
  br i1 %i.wg, label %_ZN4llvh5APIntD2Ev.exit243, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @_ZdaPv(ptr noundef nonnull %i.wf) #24
  br label %_ZN4llvh5APIntD2Ev.exit243

_ZN4llvh5APIntD2Ev.exit243:                       ; preds = %_ZN4llvh5APIntD2Ev.exit242, %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.wh = load ptr, ptr %13, align 8, !tbaa !118  ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.jd
  br i1 %i.wi, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit243
  call void @free(ptr noundef %i.wh) #25
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit:          ; preds = %_ZN4llvh5APIntD2Ev.exit243, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.wj = load i32, ptr %i.ek, align 8, !tbaa !20
  %i.wk = icmp ugt i32 %i.wj, 64
  br i1 %i.wk, label %bb.ds, label %_ZN4llvh5APIntD2Ev.exit244

bb.ds:                                            ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit
  %i.wl = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.wm = icmp eq ptr %i.wl, null
  br i1 %i.wm, label %_ZN4llvh5APIntD2Ev.exit244, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @_ZdaPv(ptr noundef nonnull %i.wl) #24
  br label %_ZN4llvh5APIntD2Ev.exit244

_ZN4llvh5APIntD2Ev.exit244:                       ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.du

bb.du:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit175, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit172, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit158, %_ZN4llvh5APIntD2Ev.exit244, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit152, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit146, %_ZN4llvh6detail12_GLOBAL__N_16appendERNS_15SmallVectorImplIcEENS_9StringRefE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !115
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 1) #25
  %.pre = load i32, ptr %i.a, align 8, !tbaa !117
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !118
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.i, align 1
  %i.k = load i32, ptr %i.a, align 8, !tbaa !117
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !117
  ret void
}

declare void @_ZNK4llvh5APInt4zextEj(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntmLERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

declare void @_ZN4llvh5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6detail9IEEEFloat15getExactInverseEPNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 16 uses
  %3 = alloca %"class.llvh::APFloat", align 8     ; 8 uses
  %4 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2               ; 2 uses
  %i.c = and i8 %i.b, 6
  %spec.select.i.not.i = icmp ne i8 %i.c, 0
  %i.d = and i8 %i.b, 7
  %i.e = icmp ne i8 %i.d, 3
  %i.f = and i1 %spec.select.i.not.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7    ; 2 uses
  %i.j = add i32 %i.i, -64
  %i.k = icmp ult i32 %i.j, -128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.0.i.i.i = select i1 %i.k, ptr %i.m, ptr %i.l
  %i.n = add i32 %i.i, 64
  %i.o = lshr i32 %i.n, 6
  %i.p = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %.0.i.i.i, i32 noundef %i.o) #25
  %i.q = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7    ; 3 uses
  %i.t = add i32 %i.s, -1
  %.not = icmp eq i32 %i.p, %i.t
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.q, ptr %2, align 8, !tbaa !13
  %i.u = add i32 %i.s, 64                         ; 3 uses
  %i.v = icmp ugt i32 %i.u, 127
  br i1 %i.v, label %bb.d, label %._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i

._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i: ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i32 %i.u, 3
  %i.x = and i32 %i.w, 536870904
  %i.y = zext nneg i32 %i.x to i64
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !18
  br label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit

_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit: ; preds = %._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i, %bb.d
  %i.ab = phi ptr [ %.pre.i, %._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i ], [ %i.z, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 6 uses
  %5 = load i8, ptr %i.ac, align 2
  %6 = and i8 %5, -16
  %7 = or disjoint i8 %6, 2
  store i8 %7, ptr %i.ac, align 2
  %i.ad = add i32 %i.s, -64
  %i.ae = icmp ult i32 %i.ad, -128
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %.0.i.i.i7 = select i1 %i.ae, ptr %i.ab, ptr %i.af
  %i.ag = lshr i32 %i.u, 6
  call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i.i.i7, i64 noundef 0, i32 noundef %i.ag) #25
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !7
  %i.ai = trunc i32 %i.ah to i16
  %i.aj = add i16 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i16 %i.aj, ptr %i.ak, align 8, !tbaa !19
  %i.al = load ptr, ptr %2, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = add i32 %i.an, -64
  %i.ap = icmp ult i32 %i.ao, -128
  %i.aq = load ptr, ptr %i.af, align 8
  %.0.i.i = select i1 %i.ap, ptr %i.aq, ptr %i.af
  store i64 1, ptr %.0.i.i, align 8, !tbaa !22
  %i.ar = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.as = load i8, ptr %i.a, align 2
  %i.at = load i8, ptr %i.ac, align 2
  %i.au = and i8 %i.as, 8
  %i.av = xor i8 %i.au, %i.at
  store i8 %i.av, ptr %i.ac, align 2
  %i.aw = call noundef i32 @_ZN4llvh6detail9IEEEFloat14divideSpecialsERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ax = load i8, ptr %i.ac, align 2             ; 2 uses
  %i.ay = and i8 %i.ax, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.ay, 0
  %i.az = and i8 %i.ax, 7
  %i.ba = icmp ne i8 %i.az, 3
  %i.bb = and i1 %spec.select.i.not.i.i, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit

bb.e:                                             ; preds = %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit
  %i.bc = call noundef i32 @_ZN4llvh6detail9IEEEFloat17divideSignificandERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  %i.bd = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, i32 noundef %i.bc)
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread

_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit: ; preds = %bb.e, %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit
  %.1.i = phi i32 [ %i.aw, %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit ], [ %i.bd, %bb.e ]
  %.not5 = icmp eq i32 %.1.i, 0
  br i1 %.not5, label %bb.f, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread

bb.f:                                             ; preds = %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit
  %i.be = load i8, ptr %i.ac, align 2             ; 2 uses
  %i.bf = and i8 %i.be, 6
  %spec.select.i.not.i.i8 = icmp ne i8 %i.bf, 0
  %i.bg = and i8 %i.be, 7
  %i.bh = icmp ne i8 %i.bg, 3
  %i.bi = and i1 %spec.select.i.not.i.i8, %i.bh
  br i1 %i.bi, label %bb.g, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bj = load i16, ptr %i.ak, align 8, !tbaa !19
  %i.bk = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !11
  %i.bn = icmp eq i16 %i.bj, %i.bm
  br i1 %i.bn, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread

_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit:    ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7  ; 2 uses
  %i.bq = add i32 %i.bp, -64
  %i.br = icmp ult i32 %i.bq, -128
  %i.bs = load ptr, ptr %i.af, align 8
  %.0.i.i.i9 = select i1 %i.br, ptr %i.bs, ptr %i.af
  %i.bt = add i32 %i.bp, -1
  %i.bu = call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i.i9, i32 noundef %i.bt) #25
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread

_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread: ; preds = %bb.f, %bb.g, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bw = load ptr, ptr %0, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.by = load ptr, ptr %4, align 8, !tbaa !13    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !19 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.ce = load i8, ptr %i.cd, align 2
  %i.cf = and i8 %i.ce, 15                        ; 2 uses
  store ptr @_ZN4llvhL8semBogusE, ptr %4, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.bw, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ca, ptr %i.cg, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 %i.cc, ptr %i.ch, align 8, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 2 uses
  %8 = load i8, ptr %i.ci, align 2
  %9 = and i8 %8, -16
  %10 = or disjoint i8 %9, %i.cf
  store i8 %10, ptr %i.ci, align 2
  br label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i: ; preds = %bb.h
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %i.bx, align 8, !tbaa !136
  %i.cj = call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !145 ; 8 uses
  store i64 2, ptr %i.cj, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.by, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store i16 %i.cc, ptr %i.cl, align 16, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 34
  store i8 %i.cf, ptr %i.cm, align 2
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i

_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i:           ; preds = %bb.j, %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i
  store ptr %i.by, ptr %i.ck, align 16, !tbaa !146
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 %i.ca, ptr %i.cn, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 66
  store i8 3, ptr %i.co, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.cp, align 16, !tbaa !146
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !147
  br label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit: ; preds = %bb.i, %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.bx) ; 0 uses
  %i.cu = load ptr, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %.not.i10 = icmp eq ptr %i.cu, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i10, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = add i32 %i.cw, -64
  %i.cy = icmp ult i32 %i.cx, -128
  br i1 %i.cy, label %bb.l, label %_ZN4llvh7APFloatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !18 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.da) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.n:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bx) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.dc = load ptr, ptr %4, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = add i32 %i.de, -64
  %i.dg = icmp ult i32 %i.df, -128
  br i1 %i.dg, label %bb.o, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.o:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.dh = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread

_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread: ; preds = %bb.e, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread, %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit, %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit
  %.0 = phi i1 [ false, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit ], [ false, %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit ], [ true, %_ZN4llvh6detail9IEEEFloatD2Ev.exit ], [ true, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread ], [ false, %bb.e ]
  %i.dj = load ptr, ptr %2, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = add i32 %i.dl, -64
  %i.dn = icmp ult i32 %i.dm, -128
  br i1 %i.dn, label %bb.q, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit11

bb.q:                                             ; preds = %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread
  %i.do = load ptr, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.do) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit11

_ZN4llvh6detail9IEEEFloatD2Ev.exit11:             ; preds = %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.a, %_ZN4llvh6detail9IEEEFloatD2Ev.exit11
  %.1 = phi i1 [ false, %bb.a ], [ %.0, %_ZN4llvh6detail9IEEEFloatD2Ev.exit11 ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = add i32 %i.d, -64
  %i.f = icmp ult i32 %i.e, -128
  br i1 %i.f, label %bb.c, label %_ZN4llvh7APFloat7StorageD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4llvh7APFloat7StorageD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #24
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !150
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit

_ZN4llvh7APFloat7StorageD2Ev.exit:                ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6detail9IEEEFloat11isSignalingEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, 7
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = add i32 %i.g, -64
  %i.i = icmp ult i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i = select i1 %i.i, ptr %i.k, ptr %i.j
  %i.l = add i32 %i.g, -2
  %i.m = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i, i32 noundef %i.l) #25
  %.not = icmp eq i32 %i.m, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.not, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4llvh6detail9IEEEFloat4nextEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2               ; 2 uses
  br i1 %1, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.c = xor i8 %i.b, 8                           ; 2 uses
  store i8 %i.c, ptr %i.a, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ %i.b, %bb.a ]  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 11 uses
  %i.f = and i8 %i.d, 7
  switch i8 %i.f, label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit [
    i8 0, label %bb.c
    i8 1, label %_ZNK4llvh6detail9IEEEFloat11isSignalingEv.exit
    i8 3, label %bb.g
    i8 2, label %bb.h
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.g = and i8 %i.d, 8
  %.not47 = icmp eq i8 %i.g, 0
  br i1 %.not47, label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i8 %i.d, -16
  %i.i = or disjoint i8 %i.h, 10
  store i8 %i.i, ptr %i.e, align 2
  %i.j = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK4llvh6detail13DoubleAPFloat20compareAbsoluteValueERKS1_:bb.a
  %.0.i = phi i32 [ %..i.i, %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i ], [ %i.ai, %bb.d ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 1
  br i1 %.not, label %bb.e, label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit.thread

bb.e:                                             ; preds = %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !147 ; 3 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !147 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %.not53 = icmp eq ptr %i.am, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not53, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !19
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !19
  %i.as = sext i16 %i.ar to i32
  %i.at = sub nsw i32 %i.ap, %i.as                ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7  ; 2 uses
  %i.ay = add i32 %i.ax, -64
  %i.az = icmp ult i32 %i.ay, -128
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %.0.i.i.i.i38 = select i1 %i.az, ptr %i.bb, ptr %i.ba
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = add i32 %i.be, -64
  %i.bg = icmp ult i32 %i.bf, -128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %.0.i.i8.i.i39 = select i1 %i.bg, ptr %i.bi, ptr %i.bh
  %i.bj = add i32 %i.ax, 64
  %i.bk = lshr i32 %i.bj, 6
  %i.bl = tail call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %.0.i.i.i.i38, ptr noundef %.0.i.i8.i.i39, i32 noundef %i.bk) #25, !inline_history !165
  br label %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34

_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34: ; preds = %bb.g, %bb.f
  %.0.i.i35 = phi i32 [ %i.bl, %bb.g ], [ %i.at, %bb.f ] ; 2 uses
  %i.bm = icmp sgt i32 %.0.i.i35, 0
  %i.bn = icmp sgt i32 %.0.i.i35, -1
  %..i.i36 = zext i1 %i.bn to i32
  %.06.i.i37 = select i1 %i.bm, i32 2, i32 %..i.i36
  br label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit40

bb.h:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bp = tail call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat20compareAbsoluteValueERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.bo), !inline_history !165
  br label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit40

_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit40: ; preds = %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34, %bb.h
  %.0.i33 = phi i32 [ %.06.i.i37, %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34 ], [ %i.bp, %bb.h ] ; 4 uses
  %i.bq = and i32 %.0.i33, -3
  %or.cond = icmp eq i32 %i.bq, 0
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit40
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !147 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.bt, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.0.i.i41 = select i1 %.not.i.i, ptr %i.bw, ptr %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 18
  %i.by = load i8, ptr %i.bx, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !18
  %.not.i.i42 = icmp eq ptr %i.ca, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.0.i.i43 = select i1 %.not.i.i42, ptr %i.cd, ptr %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i43, i64 18
  %i.cf = load i8, ptr %i.ce, align 2
  %i.cg = xor i8 %i.cf, %i.by                     ; 2 uses
  %i.ch = and i8 %i.cg, 8                         ; 2 uses
  %.not54 = icmp eq i8 %i.ch, 0                   ; 2 uses
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !147 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18
  %.not.i.i44 = icmp eq ptr %i.ck, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.0.i.i45 = select i1 %.not.i.i44, ptr %i.cn, ptr %i.cj
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 18
  %i.cp = load i8, ptr %i.co, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18
  %.not.i.i46 = icmp eq ptr %i.cr, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.i.i47 = select i1 %.not.i.i46, ptr %i.cu, ptr %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 18
  %i.cw = load i8, ptr %i.cv, align 2
  %i.cx = xor i8 %i.cw, %i.cp                     ; 3 uses
  %i.cy = and i8 %i.cx, 8
  %i.cz = icmp ne i8 %i.cy, 0                     ; 2 uses
  %or.cond3 = or i1 %.not54, %i.cz
  br i1 %or.cond3, label %bb.j, label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit.thread

bb.j:                                             ; preds = %bb.i
  %or.cond5 = and i1 %.not54, %i.cz
  br i1 %or.cond5, label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = or i8 %i.cx, %i.cg
  %i.db = and i8 %i.da, 8
  %or.cond7.not = icmp eq i8 %i.db, 0
  br i1 %or.cond7.not, label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dc = and i8 %i.ch, %i.cx
  %or.cond9.not = icmp eq i8 %i.dc, 0
  %i.dd = sub nuw nsw i32 2, %.0.i33
  br i1 %or.cond9.not, label %bb.m, label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit.thread

bb.m:                                             ; preds = %bb.l, %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit40
  br label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit.thread

_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit.thread: ; preds = %bb.j, %bb.k, %bb.i, %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i, %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit, %bb.l, %bb.m
  %.1 = phi i32 [ %i.dd, %bb.l ], [ %.0.i33, %bb.m ], [ %.0.i, %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit ], [ 2, %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i ], [ 2, %bb.j ], [ %.0.i33, %bb.k ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloat7makeInfEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %.not = icmp eq ptr %i.d, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2
  %i.g = select i1 %1, i8 8, i8 0
  %i.h = and i8 %i.f, -16
  %i.i = or disjoint i8 %i.h, %i.g
  store i8 %i.i, ptr %i.e, align 2
  %i.j = load i16, ptr %i.d, align 4, !tbaa !10
  %i.k = add i16 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %i.o = add i32 %i.n, -64
  %i.p = icmp ult i32 %i.o, -128
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.0.i.i = select i1 %i.p, ptr %i.r, ptr %i.q
  %i.s = add i32 %i.n, 64
  %i.t = lshr i32 %i.s, 6
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i.i, i64 noundef 0, i32 noundef %i.t) #25
  br label %_ZN4llvh7APFloat7makeInfEb.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvh6detail13DoubleAPFloat7makeInfEb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i1 noundef zeroext %1), !inline_history !205
  br label %_ZN4llvh7APFloat7makeInfEb.exit

_ZN4llvh7APFloat7makeInfEb.exit:                  ; preds = %bb.b, %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  tail call void @_ZN4llvh7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloat8makeZeroEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  tail call void @_ZN4llvh7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i1 noundef zeroext %1)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @_ZN4llvh7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloat11makeLargestEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
.cont:
  %2 = alloca %"class.llvh::APFloat", align 8     ; 6 uses
  %3 = alloca %"class.llvh::APFloat", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 26 ; 2 uses
  %4 = load i8, ptr %i.b, align 2
  %5 = and i8 %4, -16
  %6 = or disjoint i8 %5, 2
  store i8 %6, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 1023, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 9007199254740991, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.i, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %.cont
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = add i32 %i.k, -64
  %i.m = icmp ult i32 %i.l, -128
  br i1 %i.m, label %bb.b, label %_ZN4llvh5APIntD2Ev.exit.cont

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh5APIntD2Ev.exit.cont, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24, !inline_history !148
  br label %_ZN4llvh5APIntD2Ev.exit.cont

bb.d:                                             ; preds = %.cont
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh5APIntD2Ev.exit.cont

_ZN4llvh5APIntD2Ev.exit.cont:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 2 uses
  %7 = load i8, ptr %i.q, align 2
  %8 = and i8 %7, -16
  %9 = or disjoint i8 %8, 2
  store i8 %9, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 969, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 9007199254740990, ptr %i.s, align 8, !tbaa !22
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 0 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %.not.i1 = icmp eq ptr %i.w, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i1, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit.cont
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = add i32 %i.y, -64
  %i.aa = icmp ult i32 %i.z, -128
  br i1 %i.aa, label %bb.f, label %_ZN4llvh5APIntD2Ev.exit3

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !18  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN4llvh5APIntD2Ev.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #24, !inline_history !148
  br label %_ZN4llvh5APIntD2Ev.exit3

bb.h:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit.cont
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #25, !inline_history !149
  br label %_ZN4llvh5APIntD2Ev.exit3

_ZN4llvh5APIntD2Ev.exit3:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit3
  call void @_ZN4llvh6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvh5APIntD2Ev.exit3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloat12makeSmallestEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %.not = icmp eq ptr %i.d, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2
  %i.g = and i8 %i.f, -16
  %i.h = select i1 %1, i8 10, i8 2
  %i.i = or disjoint i8 %i.g, %i.h
  store i8 %i.i, ptr %i.e, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %i.o = add i32 %i.n, -64
  %i.p = icmp ult i32 %i.o, -128
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.0.i.i = select i1 %i.p, ptr %i.r, ptr %i.q
  %i.s = add i32 %i.n, 64
  %i.t = lshr i32 %i.s, 6
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i.i, i64 noundef 1, i32 noundef %i.t) #25
  br label %_ZN4llvh7APFloat12makeSmallestEb.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvh6detail13DoubleAPFloat12makeSmallestEb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i1 noundef zeroext %1), !inline_history !206
  br label %_ZN4llvh7APFloat12makeSmallestEb.exit

_ZN4llvh7APFloat12makeSmallestEb.exit:            ; preds = %bb.b, %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  tail call void @_ZN4llvh7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloat22makeSmallestNormalizedEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
.cont:
  %2 = alloca %"class.llvh::APFloat", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 26 ; 2 uses
  %3 = load i8, ptr %i.b, align 2
  %4 = and i8 %3, -16
  %5 = or disjoint i8 %4, 2
  store i8 %5, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 -969, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 4503599627370496, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.i, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %.cont
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = add i32 %i.k, -64
  %i.m = icmp ult i32 %i.l, -128
  br i1 %i.m, label %bb.b, label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24, !inline_history !148
  br label %_ZN4llvh5APIntD2Ev.exit

bb.d:                                             ; preds = %.cont
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %1, label %bb.e, label %_ZN4llvh7APFloat10changeSignEv.exit

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %.not.i1 = icmp eq ptr %i.r, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 26 ; 2 uses
  %i.t = load i8, ptr %i.s, align 2
  %i.u = xor i8 %i.t, 8
  store i8 %i.u, ptr %i.s, align 2
  br label %_ZN4llvh7APFloat10changeSignEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN4llvh6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q), !inline_history !170
  br label %_ZN4llvh7APFloat10changeSignEv.exit

_ZN4llvh7APFloat10changeSignEv.exit:              ; preds = %bb.g, %bb.f, %_ZN4llvh5APIntD2Ev.exit
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @_ZN4llvh7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZNK4llvh6detail13DoubleAPFloat7compareERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.m, %bb.d ]
  %.tr9 = phi ptr [ %1, %bb.a ], [ %i.o, %bb.d ]
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %.tr9, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %.not = icmp eq ptr %i.f, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.h = tail call noundef i32 @_ZNK4llvh6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g), !inline_history !207
  br label %_ZNK4llvh7APFloat7compareERKS0_.exit

bb.c:                                             ; preds = %tailrecurse
  %i.i = tail call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.g), !inline_history !207
  br label %_ZNK4llvh7APFloat7compareERKS0_.exit

_ZNK4llvh7APFloat7compareERKS0_.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = icmp eq i32 %.0.i, 1
  br i1 %i.j, label %bb.d, label %_ZNK4llvh7APFloat7compareERKS0_.exit7

bb.d:                                             ; preds = %_ZNK4llvh7APFloat7compareERKS0_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %.not8 = icmp eq ptr %i.n, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  br i1 %.not8, label %tailrecurse, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef i32 @_ZNK4llvh6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.o), !inline_history !207
  br label %_ZNK4llvh7APFloat7compareERKS0_.exit7

_ZNK4llvh7APFloat7compareERKS0_.exit7:            ; preds = %_ZNK4llvh7APFloat7compareERKS0_.exit, %bb.e
  %.0 = phi i32 [ %i.p, %bb.e ], [ %.0.i, %_ZNK4llvh7APFloat7compareERKS0_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6detail13DoubleAPFloat14bitwiseIsEqualERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.e = tail call noundef zeroext i1 @_ZNK4llvh7APFloat14bitwiseIsEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = tail call noundef zeroext i1 @_ZNK4llvh7APFloat14bitwiseIsEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh7APFloat14bitwiseIsEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %.lr.ph.preheader, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %.not537 = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not537, label %.lr.ph40, label %.lr.ph._crit_edge

.lr.ph:                                           ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %.not5 = icmp eq ptr %i.at, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not5, label %.lr.ph40, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa35 = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.av, %.lr.ph ]
  %.lcssa = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.at, %.lr.ph ]
  %.tr614.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.f, %.lr.ph ] ; 4 uses
  %.tr13.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.g = icmp eq ptr %.tr13.lcssa, %.tr614.lcssa
  br i1 %i.g, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %.tr13.lcssa, i64 26
  %i.i = load i8, ptr %i.h, align 2               ; 3 uses
  %i.j = and i8 %i.i, 7                           ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr614.lcssa, i64 26
  %i.l = load i8, ptr %i.k, align 2               ; 2 uses
  %i.m = and i8 %i.l, 7
  %.not11.i = icmp eq i8 %i.j, %i.m
  br i1 %.not11.i, label %bb.c, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = xor i8 %i.l, %i.i
  %i.o = and i8 %i.n, 8
  %.not12.i = icmp eq i8 %i.o, 0
  br i1 %.not12.i, label %bb.d, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

bb.d:                                             ; preds = %bb.c
  switch i8 %i.j, label %bb.e [
    i8 3, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit
    i8 0, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = and i8 %i.i, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.p, 0
  %i.q = icmp ne i8 %i.j, 3
  %i.r = and i1 %spec.select.i.not.i.i, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.tr13.lcssa, i64 24
  %i.t = load i16, ptr %i.s, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %.tr614.lcssa, i64 24
  %i.v = load i16, ptr %i.u, align 8, !tbaa !19
  %.not13.i = icmp eq i16 %i.t, %i.v
  br i1 %.not13.i, label %bb.g, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4
end_hunk_4
begin_hunk_5_@_ZNK4llvh7APFloat14bitwiseIsEqualERKS0_:bb.a
  %i.z = lshr i32 %i.y, 3
  %i.aa = and i32 %i.z, 536870904                 ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.not.i.i.i.i.i, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i = zext nneg i32 %i.aa to i64
  %i.ab = add i32 %i.x, -64
  %i.ac = icmp ult i32 %i.ab, -128
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr13.lcssa, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.0.i.i.i = select i1 %i.ac, ptr %i.ae, ptr %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = add i32 %i.ag, -64
  %i.ai = icmp ult i32 %i.ah, -128
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr614.lcssa, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %.0.i.i15.i = select i1 %i.ai, ptr %i.ak, ptr %i.aj
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %.0.i.i.i, ptr %.0.i.i15.i, i64 %.idx.i)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

.lr.ph40:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.tr1339 = phi ptr [ %i.e, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %.tr61438 = phi ptr [ %i.f, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.tr1339, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.an = getelementptr inbounds nuw i8, ptr %.tr61438, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !147
  %i.ap = tail call noundef zeroext i1 @_ZNK4llvh7APFloat14bitwiseIsEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.ao), !inline_history !208
  br i1 %i.ap, label %tailrecurse, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

tailrecurse:                                      ; preds = %.lr.ph40
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !147 ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !147 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.av
  br i1 %.not, label %.lr.ph, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit: ; preds = %tailrecurse, %.lr.ph40, %bb.a, %bb.h, %bb.g, %bb.f, %bb.d, %bb.d, %bb.c, %bb.b, %.lr.ph._crit_edge
  %.0 = phi i1 [ %.not9.i.i.i.i.i, %bb.h ], [ true, %bb.d ], [ false, %bb.f ], [ true, %.lr.ph._crit_edge ], [ true, %bb.g ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %.lr.ph40 ], [ false, %tailrecurse ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4llvh6detail10hash_valueERKNS0_13DoubleAPFloatE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %.not10 = icmp eq ptr %i.d, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.c), !inline_history !209
  br label %_ZN4llvh10hash_valueERKNS_7APFloatE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_13DoubleAPFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.c), !inline_history !209
  br label %_ZN4llvh10hash_valueERKNS_7APFloatE.exit

_ZN4llvh10hash_valueERKNS_7APFloatE.exit:         ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %.not11 = icmp eq ptr %i.i, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh10hash_valueERKNS_7APFloatE.exit
  %i.j = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.h), !inline_history !209
  br label %_ZN4llvh10hash_valueERKNS_7APFloatE.exit5

bb.f:                                             ; preds = %_ZN4llvh10hash_valueERKNS_7APFloatE.exit
  %i.k = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_13DoubleAPFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.h), !inline_history !209
  br label %_ZN4llvh10hash_valueERKNS_7APFloatE.exit5

_ZN4llvh10hash_valueERKNS_7APFloatE.exit5:        ; preds = %bb.e, %bb.f
  %.sroa.0.0.i4 = phi i64 [ %i.j, %bb.e ], [ %i.k, %bb.f ] ; 2 uses
  %i.l = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.g, label %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit, !prof !87

bb.g:                                             ; preds = %_ZN4llvh10hash_valueERKNS_7APFloatE.exit5
  %i.n = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #25
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !22 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.o, 0
  %i.p = select i1 %.not1.i.i.i, i64 -49064778989728563, i64 %i.o
  store i64 %i.p, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !22
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #25
  br label %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit

_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit: ; preds = %_ZN4llvh10hash_valueERKNS_7APFloatE.exit5, %bb.g, %bb.h
  %i.q = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !22
  %i.r = add i64 %.sroa.0.0.i4, 16                ; 2 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 48) ; 2 uses
  %i.t = xor i64 %.sroa.0.0.i, %i.q
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -7070675565921424023       ; 2 uses
  %i.w = lshr i64 %i.v, 47
  %i.x = xor i64 %i.s, %i.w
  %i.y = xor i64 %i.x, %i.v
  %i.z = mul i64 %i.y, -7070675565921424023       ; 2 uses
  %i.aa = lshr i64 %i.z, 47
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7070675565921424023
  %i.ad = xor i64 %i.ac, %.sroa.0.0.i4
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ae = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.j, label %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit, !prof !87

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #25
  %.not.i.i.i6 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i6, label %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !22 ; 2 uses
  %.not1.i.i.i7 = icmp eq i64 %i.ah, 0
  %i.ai = select i1 %.not1.i.i.i7, i64 -49064778989728563, i64 %i.ah
  store i64 %i.ai, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !22
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #25
  br label %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit

_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.aj = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !22
  %i.ak = load ptr, ptr %0, align 8, !tbaa !146
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = shl i64 %i.al, 3
  %i.an = and i64 %i.am, 34359738360
  %i.ao = add nuw nsw i64 %i.an, 8
  %.sroa.0.4.extract.shift = lshr i64 %i.al, 32
  %i.ap = xor i64 %.sroa.0.4.extract.shift, %i.aj ; 2 uses
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = mul i64 %i.aq, -7070675565921424023     ; 2 uses
  %i.as = lshr i64 %i.ar, 47
  %i.at = xor i64 %i.ap, %i.as
  %i.au = xor i64 %i.at, %i.ar
  %i.av = mul i64 %i.au, -7070675565921424023     ; 2 uses
  %i.aw = lshr i64 %i.av, 47
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -7070675565921424023
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit, %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit
  %.sroa.0.0 = phi i64 [ %i.ad, %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit ], [ %i.ay, %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4llvh10hash_valueERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_13DoubleAPFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i64 %.sroa.0.0
}

declare void @_ZN4llvh5APIntC1EjjPKm(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh6detail13DoubleAPFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %5 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 7 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.a, align 8, !tbaa !13
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !210
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 4 uses
  %7 = load i8, ptr %i.d, align 2
  %8 = and i8 %7, -16
  %9 = or disjoint i8 %8, 3
  store i8 %9, ptr %i.d, align 2
  %i.e = call noundef zeroext i1 @_ZN4llvh6detail9IEEEFloat25convertFromStringSpecialsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %1, i64 %2)
  br i1 %i.e, label %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !18      ; 2 uses
  %i.g = icmp eq i8 %i.f, 45
  %i.h = load i8, ptr %i.d, align 2
  %i.i = select i1 %i.g, i8 8, i8 0
  %i.j = and i8 %i.h, -9
  %i.k = or disjoint i8 %i.j, %i.i
  store i8 %i.k, ptr %i.d, align 2
  switch i8 %i.f, label %bb.d [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = add i64 %2, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016.i = phi ptr [ %i.l, %bb.c ], [ %1, %bb.b ] ; 4 uses
  %.0.i6 = phi i64 [ %i.m, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %i.n = icmp ugt i64 %.0.i6, 1
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %.016.i, align 1, !tbaa !18
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  switch i8 %i.r, label %bb.h [
    i8 120, label %bb.g
    i8 88, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i, i64 2
  %i.t = add i64 %.0.i6, -2
  %i.u = call noundef i32 @_ZN4llvh6detail9IEEEFloat28convertFromHexadecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %i.s, i64 %i.t, i32 noundef %3)
  br label %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.v = call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromDecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %.016.i, i64 %.0.i6, i32 noundef %3)
  br label %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit: ; preds = %bb.h, %bb.g, %bb.a
  %.0.i = phi i32 [ %i.v, %bb.h ], [ 0, %bb.a ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !211
  %.not.i = icmp eq ptr %i.w, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.j:                                             ; preds = %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.i, %bb.j
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %6)
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.x = load ptr, ptr %5, align 8, !tbaa !136
  store ptr %i.x, ptr %0, align 8, !tbaa !136
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !147
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !147
  store ptr null, ptr %i.z, align 8, !tbaa !147
  store ptr @_ZN4llvhL8semBogusE, ptr %5, align 8, !tbaa !136
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !20
  %i.ad = icmp ugt i32 %i.ac, 64
  br i1 %i.ad, label %bb.k, label %_ZN4llvh5APIntD2Ev.exit

bb.k:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  %i.ae = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4llvh5APIntD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i5 = icmp eq ptr %i.ag, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i5, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = add i32 %i.ai, -64
  %i.ak = icmp ult i32 %i.aj, -128
  br i1 %i.ak, label %bb.n, label %_ZN4llvh7APFloatD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.al) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.p:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4llvh6detail9IEEEFloat25convertFromStringSpecialsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %1, i64 %2)
  br i1 %i.c, label %_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %1, align 1, !tbaa !18
  %i.e = icmp eq i8 %i.d, 45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2
  %i.h = select i1 %i.e, i8 8, i8 0
  %i.i = and i8 %i.g, -9
  %i.j = or disjoint i8 %i.i, %i.h
  store i8 %i.j, ptr %i.f, align 2
  %i.k = load i8, ptr %1, align 1, !tbaa !18
  switch i8 %i.k, label %bb.e [
    i8 45, label %bb.d
    i8 43, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = add i64 %2, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.016.i = phi ptr [ %i.l, %bb.d ], [ %1, %bb.c ] ; 4 uses
  %.0.i = phi i64 [ %i.m, %bb.d ], [ %2, %bb.c ]  ; 3 uses
  %i.n = icmp ugt i64 %.0.i, 1
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %.016.i, align 1, !tbaa !18
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  switch i8 %i.r, label %bb.i [
    i8 120, label %bb.h
    i8 88, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i, i64 2
  %i.t = add i64 %.0.i, -2
  %i.u = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat28convertFromHexadecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %i.s, i64 %i.t, i32 noundef %3)
  br label %_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.v = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromDecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %.016.i, i64 %.0.i, i32 noundef %3)
  br label %_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

bb.j:                                             ; preds = %bb.a
  %i.w = tail call noundef i32 @_ZN4llvh6detail13DoubleAPFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr %1, i64 %2, i32 noundef %3)
  br label %_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit: ; preds = %bb.i, %bb.h, %bb.b, %bb.j
  %.0 = phi i32 [ %i.w, %bb.j ], [ 0, %bb.b ], [ %i.u, %bb.h ], [ %i.v, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4llvh6detail13DoubleAPFloat4nextEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 7 uses
end_hunk_5
begin_hunk_6_@_ZN4llvh6detail13DoubleAPFloat4nextEb:bb.a
  br i1 %i.x, label %bb.k, label %_ZN4llvh7APFloatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.z) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.m:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit3
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 17) i32 @_ZNK4llvh6detail13DoubleAPFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %8), !inline_history !177
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i32 @_ZNK4llvh6detail9IEEEFloat28convertToSignExtendedIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %1, i64 poison, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6) ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %3, 63
  %i.f = lshr i32 %i.e, 6                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 26 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2               ; 2 uses
  %i.i = and i8 %i.h, 7
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i8 %i.h, 8
  %.not.i6 = icmp eq i8 %i.k, 0
  br i1 %.not.i6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i1 %4 to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.neg.i = sext i1 %4 to i32
  %i.m = add i32 %3, %.neg.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.0.i7 = phi i32 [ %i.m, %bb.f ], [ %i.l, %bb.e ], [ 0, %bb.c ]
  call void @_ZN4llvh5APInt25tcSetLeastSignificantBitsEPmjj(ptr noundef %1, i32 noundef %i.f, i32 noundef %.0.i7) #25
  %i.n = load i8, ptr %i.g, align 2
  %i.o = and i8 %i.n, 8
  %i.p = icmp ne i8 %i.o, 0
  %or.cond.i = and i1 %4, %i.p
  br i1 %or.cond.i, label %bb.h, label %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.h:                                             ; preds = %bb.g
  %i.q = add i32 %3, -1
  call void @_ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %1, i32 noundef %i.f, i32 noundef %i.q) #25
  br label %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.i:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6), !inline_history !218
  br label %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit: ; preds = %bb.h, %bb.g, %bb.b, %bb.i
  %.0.i = phi i32 [ %i.r, %bb.i ], [ %i.c, %bb.b ], [ 1, %bb.g ], [ 1, %bb.h ]
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.s, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = add i32 %i.u, -64
  %i.w = icmp ult i32 %i.v, -128
  br i1 %i.w, label %bb.k, label %_ZN4llvh7APFloatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.y) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.m:                                             ; preds = %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !20
  %i.ac = icmp ugt i32 %i.ab, 64
  br i1 %i.ac, label %bb.n, label %_ZN4llvh5APIntD2Ev.exit

bb.n:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.ad = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvh5APIntD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK4llvh6detail9IEEEFloat28convertToSignExtendedIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %1, i64 poison, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6) ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %3, 63
  %i.f = lshr i32 %i.e, 6                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2               ; 2 uses
  %i.i = and i8 %i.h, 7
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i8 %i.h, 8
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i1 %4 to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.neg.i = sext i1 %4 to i32
  %i.m = add i32 %3, %.neg.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.f ], [ %i.l, %bb.e ], [ 0, %bb.c ]
  tail call void @_ZN4llvh5APInt25tcSetLeastSignificantBitsEPmjj(ptr noundef %1, i32 noundef %i.f, i32 noundef %.0.i) #25
  %i.n = load i8, ptr %i.g, align 2
  %i.o = and i8 %i.n, 8
  %i.p = icmp ne i8 %i.o, 0
  %or.cond.i = and i1 %4, %i.p
  br i1 %or.cond.i, label %bb.h, label %_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.h:                                             ; preds = %bb.g
  %i.q = add i32 %3, -1
  tail call void @_ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %1, i32 noundef %i.f, i32 noundef %i.q) #25
  br label %_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.i:                                             ; preds = %bb.a
  %i.r = tail call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6)
  br label %_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit: ; preds = %bb.h, %bb.g, %bb.b, %bb.i
  %.0 = phi i32 [ %i.r, %bb.i ], [ %i.c, %bb.b ], [ 1, %bb.g ], [ 1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail13DoubleAPFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
_ZN4llvh7APFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %5 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 7 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.a, align 8, !tbaa !13
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !210
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %7 = load i8, ptr %i.d, align 2
  %8 = and i8 %7, -16
  %9 = or disjoint i8 %8, 3
  store i8 %9, ptr %i.d, align 2
  %i.e = call noundef i32 @_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2, i32 noundef %3), !inline_history !219
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !220
  %.not.i = icmp eq ptr %i.f, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4llvh7APFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.b:                                             ; preds = %_ZN4llvh7APFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.a, %bb.b
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %6)
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.g = load ptr, ptr %5, align 8, !tbaa !136
  store ptr %i.g, ptr %0, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !147
  store i64 %i.j, ptr %i.h, align 8, !tbaa !147
  store ptr null, ptr %i.i, align 8, !tbaa !147
  store ptr @_ZN4llvhL8semBogusE, ptr %5, align 8, !tbaa !136
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp ugt i32 %i.l, 64
  br i1 %i.m, label %bb.c, label %_ZN4llvh5APIntD2Ev.exit

bb.c:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  %i.n = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i5 = icmp eq ptr %i.p, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i5, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = add i32 %i.r, -64
  %i.t = icmp ult i32 %i.s, -128
  br i1 %i.t, label %bb.f, label %_ZN4llvh7APFloatD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.u) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.h:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail13DoubleAPFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
_ZN4llvh7APFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit:
  %5 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 7 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.a, align 8, !tbaa !13
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !210
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 26 ; 2 uses
  %8 = load i8, ptr %i.d, align 2
  %9 = and i8 %8, -16
  %10 = or disjoint i8 %9, 3
  store i8 %10, ptr %i.d, align 2
  %i.e = call noundef i32 @_ZN4llvh6detail9IEEEFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4), !inline_history !223
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !224
  %.not.i = icmp eq ptr %i.f, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4llvh7APFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.b:                                             ; preds = %_ZN4llvh7APFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.a, %bb.b
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %7)
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.g = load ptr, ptr %6, align 8, !tbaa !136
  store ptr %i.g, ptr %0, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !147
  store i64 %i.j, ptr %i.h, align 8, !tbaa !147
  store ptr null, ptr %i.i, align 8, !tbaa !147
  store ptr @_ZN4llvhL8semBogusE, ptr %6, align 8, !tbaa !136
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp ugt i32 %i.l, 64
  br i1 %i.m, label %bb.c, label %_ZN4llvh5APIntD2Ev.exit

bb.c:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  %i.n = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i6 = icmp eq ptr %i.p, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i6, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = add i32 %i.r, -64
  %i.t = icmp ult i32 %i.s, -128
  br i1 %i.t, label %bb.f, label %_ZN4llvh7APFloatD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.u) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.h:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail13DoubleAPFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
_ZN4llvh7APFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit:
  %5 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 7 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.a, align 8, !tbaa !13
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !210
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 26 ; 2 uses
  %8 = load i8, ptr %i.d, align 2
  %9 = and i8 %8, -16
  %10 = or disjoint i8 %9, 3
  store i8 %10, ptr %i.d, align 2
  %i.e = call noundef i32 @_ZN4llvh6detail9IEEEFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4), !inline_history !227
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !228
  %.not.i = icmp eq ptr %i.f, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4llvh7APFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.b:                                             ; preds = %_ZN4llvh7APFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.a, %bb.b
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %7)
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.g = load ptr, ptr %6, align 8, !tbaa !136
  store ptr %i.g, ptr %0, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !147
  store i64 %i.j, ptr %i.h, align 8, !tbaa !147
  store ptr null, ptr %i.i, align 8, !tbaa !147
  store ptr @_ZN4llvhL8semBogusE, ptr %6, align 8, !tbaa !136
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp ugt i32 %i.l, 64
  br i1 %i.m, label %bb.c, label %_ZN4llvh5APIntD2Ev.exit

bb.c:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  %i.n = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i6 = icmp eq ptr %i.p, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i6, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = add i32 %i.r, -64
  %i.t = icmp ult i32 %i.s, -128
  br i1 %i.t, label %bb.f, label %_ZN4llvh7APFloatD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.u) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.h:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4llvh6detail13DoubleAPFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %6), !inline_history !177
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.d = load i8, ptr %i.c, align 2               ; 2 uses
  %i.e = and i8 %i.d, 8
  %.not.i4 = icmp eq i8 %i.e, 0
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i5 = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ] ; 11 uses
  %i.g = and i8 %i.d, 7
  switch i8 %i.g, label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 3, label %bb.g
    i8 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = select i1 %3, i64 6436850368004902473, i64 8751735898823356009
  store i64 %i.h, ptr %.0.i5, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i5, i64 8
  br label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

bb.f:                                             ; preds = %bb.d
  %_ZN4llvhL4NaNUE._ZN4llvhL4NaNLE.i = select i1 %3, ptr @_ZN4llvhL4NaNUE, ptr @_ZN4llvhL4NaNLE
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0.i5, ptr noundef nonnull align 1 dereferenceable(3) %_ZN4llvhL4NaNUE._ZN4llvhL4NaNLE.i, i64 3, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i5, i64 3
  br label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i5, i64 1
  store i8 48, ptr %.0.i5, align 1, !tbaa !18
  %i.l = select i1 %3, i8 88, i8 120
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i5, i64 2
  store i8 %i.l, ptr %i.k, align 1, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i5, i64 3 ; 2 uses
  store i8 48, ptr %i.m, align 1, !tbaa !18
  %i.o = icmp ugt i32 %2, 1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i5, i64 4 ; 2 uses
  store i8 46, ptr %i.n, align 1, !tbaa !18
  %i.q = add i32 %2, -1
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 48, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi ptr [ %i.s, %bb.h ], [ %i.n, %bb.g ] ; 3 uses
  %i.t = select i1 %3, i8 80, i8 112
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.t, ptr %.1.i, align 1, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 48, ptr %i.u, align 1, !tbaa !18
  br label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

bb.j:                                             ; preds = %bb.d
  %i.w = call noundef ptr @_ZNK4llvh6detail9IEEEFloat24convertNormalToHexStringEPcjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %.0.i5, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4)
  br label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.i, %bb.j
  %.2.i = phi ptr [ %.0.i5, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.v, %bb.i ], [ %i.w, %bb.j ] ; 2 uses
  store i8 0, ptr %.2.i, align 1, !tbaa !18
  %i.x = ptrtoint ptr %.2.i to i64
  %i.y = ptrtoint ptr %1 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  br label %_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

bb.k:                                             ; preds = %bb.a
  %i.ab = call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4), !inline_history !231
  br label %_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit: ; preds = %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit, %bb.k
  %.0.i = phi i32 [ %i.aa, %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit ], [ %i.ab, %bb.k ]
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i = icmp eq ptr %i.ac, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = add i32 %i.ae, -64
  %i.ag = icmp ult i32 %i.af, -128
  br i1 %i.ag, label %bb.m, label %_ZN4llvh7APFloatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.o:                                             ; preds = %_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !20
  %i.am = icmp ugt i32 %i.al, 64
  br i1 %i.am, label %bb.p, label %_ZN4llvh5APIntD2Ev.exit

end_hunk_6
begin_hunk_7_@_ZNK4llvh6detail13DoubleAPFloat9isIntegerEv:bb.a
  call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.h = call noundef i32 @_ZN4llvh6detail9IEEEFloat15roundToIntegralENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 3) ; 0 uses
  %i.i = call noundef i32 @_ZNK4llvh6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.j = icmp eq i32 %i.i, 1
  %i.k = load ptr, ptr %2, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = add i32 %i.m, -64
  %i.o = icmp ult i32 %i.n, -128
  br i1 %i.o, label %bb.d, label %_ZNK4llvh7APFloat9isIntegerEv.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK4llvh7APFloat9isIntegerEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.q) #24
  br label %_ZNK4llvh7APFloat9isIntegerEv.exit

bb.f:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZNK4llvh6detail13DoubleAPFloat9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c), !inline_history !235
  br i1 %i.s, label %bb.g, label %_ZNK4llvh7APFloat9isIntegerEv.exit2

_ZNK4llvh7APFloat9isIntegerEv.exit:               ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %i.j, label %bb.g, label %_ZNK4llvh7APFloat9isIntegerEv.exit2

bb.g:                                             ; preds = %bb.f, %_ZNK4llvh7APFloat9isIntegerEv.exit
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %.not9 = icmp eq ptr %i.v, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not9, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 58
  %i.x = load i8, ptr %i.w, align 2
  %i.y = and i8 %i.x, 6
  %spec.select.i.not.i4 = icmp eq i8 %i.y, 0
  br i1 %spec.select.i.not.i4, label %_ZNK4llvh7APFloat9isIntegerEv.exit2, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  %i.z = call noundef i32 @_ZN4llvh6detail9IEEEFloat15roundToIntegralENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 3) ; 0 uses
  %i.aa = call noundef i32 @_ZNK4llvh6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ab = icmp eq i32 %i.aa, 1
  %i.ac = load ptr, ptr %1, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = add i32 %i.ae, -64
  %i.ag = icmp ult i32 %i.af, -128
  br i1 %i.ag, label %bb.j, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i5

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i5, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i5

_ZN4llvh6detail9IEEEFloatD2Ev.exit.i5:            ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZNK4llvh7APFloat9isIntegerEv.exit2

bb.l:                                             ; preds = %bb.g
  %i.ak = call noundef zeroext i1 @_ZNK4llvh6detail13DoubleAPFloat9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u), !inline_history !235
  br label %_ZNK4llvh7APFloat9isIntegerEv.exit2

_ZNK4llvh7APFloat9isIntegerEv.exit2:              ; preds = %bb.b, %bb.l, %bb.h, %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i5, %bb.f, %_ZNK4llvh7APFloat9isIntegerEv.exit
  %i.al = phi i1 [ false, %_ZNK4llvh7APFloat9isIntegerEv.exit ], [ false, %bb.f ], [ false, %bb.h ], [ %i.ak, %bb.l ], [ %i.ab, %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i5 ], [ false, %bb.b ]
  ret i1 %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6detail13DoubleAPFloat8toStringERNS_15SmallVectorImplIcEEjjb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %6), !inline_history !177
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4llvh6detail9IEEEFloat8toStringERNS_15SmallVectorImplIcEEjjb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4), !inline_history !236
  br label %_ZNK4llvh7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK4llvh6detail13DoubleAPFloat8toStringERNS_15SmallVectorImplIcEEjjb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4), !inline_history !236
  br label %_ZNK4llvh7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit

_ZNK4llvh7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit: ; preds = %bb.b, %bb.c
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.c, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = add i32 %i.e, -64
  %i.g = icmp ult i32 %i.f, -128
  br i1 %i.g, label %bb.e, label %_ZN4llvh7APFloatD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %_ZNK4llvh7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp ugt i32 %i.l, 64
  br i1 %i.m, label %bb.h, label %_ZN4llvh5APIntD2Ev.exit

bb.h:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.n = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6detail13DoubleAPFloat15getExactInverseEPNS_7APFloatE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvh::APFloat", align 8     ; 7 uses
  %5 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %3), !inline_history !177
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ugt i32 %i.c, 64
  br i1 %i.d, label %bb.b, label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not14 = icmp eq ptr %i.g, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef zeroext i1 @_ZNK4llvh6detail9IEEEFloat15getExactInverseEPNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef null), !inline_history !237
  br label %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.i = call noundef zeroext i1 @_ZNK4llvh6detail13DoubleAPFloat15getExactInverseEPNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef null), !inline_history !237
  br label %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit

bb.g:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.j, align 8, !tbaa !13
  %i.k = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !210
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %7 = load i8, ptr %i.m, align 2
  %8 = and i8 %7, -16
  %9 = or disjoint i8 %8, 3
  store i8 %9, ptr %i.m, align 2
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not13 = icmp eq ptr %i.n, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = call noundef zeroext i1 @_ZNK4llvh6detail9IEEEFloat15getExactInverseEPNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %4), !inline_history !237
  br label %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6

bb.i:                                             ; preds = %bb.g
  %i.p = call noundef zeroext i1 @_ZNK4llvh6detail13DoubleAPFloat15getExactInverseEPNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %4), !inline_history !237
  br label %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6

_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6:    ; preds = %bb.h, %bb.i
  %.0.i5 = phi i1 [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !238
  %.not.i = icmp eq ptr %i.q, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.j), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.k:                                             ; preds = %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.j), !inline_history !182
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.j, %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %6), !inline_history !241
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r) ; 0 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !18   ; 2 uses
  %.not.i7 = icmp eq ptr %i.u, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i7, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = add i32 %i.w, -64
  %i.y = icmp ult i32 %i.x, -128
  br i1 %i.y, label %bb.m, label %_ZN4llvh7APFloatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.o:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !20
  %i.ae = icmp ugt i32 %i.ad, 64
  br i1 %i.ae, label %bb.p, label %_ZN4llvh5APIntD2Ev.exit8

bb.p:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.af = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN4llvh5APIntD2Ev.exit8, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.af) #24
  br label %_ZN4llvh5APIntD2Ev.exit8

_ZN4llvh5APIntD2Ev.exit8:                         ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !18  ; 2 uses
  %.not.i9 = icmp eq ptr %i.ah, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i9, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = add i32 %i.aj, -64
  %i.al = icmp ult i32 %i.ak, -128
  br i1 %i.al, label %bb.s, label %_ZN4llvh7APFloatD2Ev.exit10

bb.s:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !18  ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN4llvh7APFloatD2Ev.exit10, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.am) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit10

bb.u:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit8
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit10

_ZN4llvh7APFloatD2Ev.exit10:                      ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit

_ZNK4llvh7APFloat15getExactInverseEPS0_.exit:     ; preds = %bb.f, %bb.e, %_ZN4llvh7APFloatD2Ev.exit10
  %.0 = phi i1 [ %.0.i5, %_ZN4llvh7APFloatD2Ev.exit10 ], [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i11 = icmp eq ptr %i.ao, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i11, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = add i32 %i.aq, -64
  %i.as = icmp ult i32 %i.ar, -128
  br i1 %i.as, label %bb.w, label %_ZN4llvh7APFloatD2Ev.exit12

bb.w:                                             ; preds = %bb.v
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !18 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4llvh7APFloatD2Ev.exit12, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.au) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit12

bb.y:                                             ; preds = %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit12

_ZN4llvh7APFloatD2Ev.exit12:                      ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail6scalbnENS0_13DoubleAPFloatEiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::detail::DoubleAPFloat") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 7 uses
  %5 = alloca %"class.llvh::APFloat", align 8     ; 3 uses
  %6 = alloca %"class.llvh::APFloat", align 8     ; 7 uses
  %7 = alloca %"class.llvh::APFloat", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d), !inline_history !155
  call void @_ZN4llvh6scalbnENS_7APFloatEiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APFloat") align 8 %4, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g), !inline_history !155
  call void @_ZN4llvh6scalbnENS_7APFloatEiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APFloat") align 8 %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3)
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %0, align 8, !tbaa !136
  %i.h = call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23 ; 10 uses
  store i64 2, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i16, ptr %i.n, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i16 %i.o, ptr %i.p, align 16, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.r = load i8, ptr %i.q, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 34
  %i.t = and i8 %i.r, 15
  store i8 %i.t, ptr %i.s, align 2
  br label %_ZN4llvh7APFloatC2EOS0_.exit.i

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.l, align 8, !tbaa !147
  br label %_ZN4llvh7APFloatC2EOS0_.exit.i

_ZN4llvh7APFloatC2EOS0_.exit.i:                   ; preds = %bb.c, %bb.b
  store ptr %i.k, ptr %i.i, align 16, !tbaa !146
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.m, ptr %i.u, align 8, !tbaa !18
  store ptr @_ZN4llvhL8semBogusE, ptr %i.j, align 8, !tbaa !146
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.w, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  br i1 %.not.i.i4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh7APFloatC2EOS0_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i16 %i.aa, ptr %i.ab, align 16, !tbaa !19
end_hunk_7
begin_hunk_8_@_ZN4llvh7APFloat7StorageC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE:bb.a
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.y = load i8, ptr %i.x, align 2
  store ptr @_ZN4llvhL8semBogusE, ptr %1, align 8, !tbaa !13
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %0, align 8, !tbaa !136
  %i.z = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23 ; 8 uses
  store i64 2, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.not.i.i.i = icmp eq ptr %i.s, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i.i, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.ab = and i8 %i.y, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i16 %i.w, ptr %i.ac, align 16, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 34
  store i8 %i.ab, ptr %i.ad, align 2
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit, %bb.c
  store ptr %i.s, ptr %i.aa, align 16, !tbaa !146
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.u, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  store i8 3, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.ag, align 16, !tbaa !146
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh7APFloatC2ERKNS_12fltSemanticsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr %2, i64 %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %1, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = add i32 %i.c, 64                         ; 2 uses
  %i.e = icmp ugt i32 %i.d, 127
  br i1 %i.e, label %bb.c, label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %i.d, 3
  %i.g = and i32 %i.f, 536870904
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #23, !inline_history !210
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  br label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i

_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, -16
  %i.n = or disjoint i8 %i.m, 3
  store i8 %i.n, ptr %i.k, align 2
  br label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit

bb.d:                                             ; preds = %bb.a
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %i.a, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !245 ; 6 uses
  store i64 2, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.r, align 16, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 34
  store i8 3, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.t, align 16, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 66
  store i8 3, ptr %i.u, align 2
  store ptr %i.q, ptr %i.o, align 8, !tbaa !147
  br label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit:     ; preds = %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i, %bb.d
  %i.v = tail call noundef i32 @_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %2, i64 %3, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh7APFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::APFloat", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !35
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not27 = icmp eq ptr %1, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not27, label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr noundef %3)
  br label %bb.p

_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.d
  %i.e = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL24semPPCDoubleDoubleLegacyE, i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %5), !inline_history !241
  %i.g = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f) ; 0 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.h, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = add i32 %i.j, -64
  %i.l = icmp ult i32 %i.k, -128
  br i1 %i.l, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp ugt i32 %i.q, 64
  br i1 %i.r, label %bb.j, label %_ZN4llvh5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.s = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN4llvh5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.s) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.p

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit: ; preds = %bb.c
  %i.u = icmp ne ptr %1, @_ZN4llvhL18semPPCDoubleDoubleE
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not.i20 = icmp eq ptr %i.z, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.i21 = select i1 %.not.i20, ptr %i.ab, ptr %i.a ; 5 uses
  %i.ac = load ptr, ptr %.0.i21, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i21, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i21, i64 16
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i21, i64 18
  %i.ai = load i8, ptr %i.ah, align 2
  %i.aj = and i8 %i.ai, 15
  store ptr @_ZN4llvhL8semBogusE, ptr %.0.i21, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.ae, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %i.ag, ptr %i.am, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 2 uses
  %7 = load i8, ptr %i.an, align 2
  %8 = and i8 %7, -16
  %9 = or disjoint i8 %8, %i.aj
  store i8 %9, ptr %i.an, align 2
  %i.ao = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ak) ; 0 uses
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ap, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = add i32 %i.ar, -64
  %i.at = icmp ult i32 %i.as, -128
  br i1 %i.at, label %bb.m, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.au) #24, !inline_history !148
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.o:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #25, !inline_history !149
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %_ZN4llvh5APIntD2Ev.exit, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.e ], [ %i.e, %_ZN4llvh5APIntD2Ev.exit ], [ %i.y, %_ZN4llvh6detail9IEEEFloatD2Ev.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh7APFloat15getAllOnesValueEjb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APFloat") align 8 captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  br i1 %2, label %bb.b, label %bb.bb

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 28)
  %i.b = icmp ult i32 %1, 65                      ; 5 uses
  switch i32 %i.a, label %bb.ba [
    i32 1, label %bb.c
    i32 2, label %bb.n
    i32 4, label %bb.y
    i32 5, label %bb.aj
    i32 8, label %bb.aw
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %1, ptr %i.c, align 8, !tbaa !20, !alias.scope !246
  br i1 %i.b, label %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread, label %_ZN4llvh5APInt15getAllOnesValueEj.exit

_ZN4llvh5APInt15getAllOnesValueEj.exit.thread:    ; preds = %bb.c
  %i.d = sub nsw i32 0, %1
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 -1, %i.f                        ; 2 uses
  store i64 %i.g, ptr %3, align 8, !tbaa !18, !alias.scope !246
  %i.h = inttoptr i64 %i.g to ptr
  br label %bb.d

_ZN4llvh5APInt15getAllOnesValueEj.exit:           ; preds = %bb.c
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef -1, i1 noundef zeroext true) #25
  %.pr = load ptr, ptr %3, align 8                ; 2 uses
  %.pre35 = load i32, ptr %i.c, align 8, !tbaa !20
  %.pre35.fr = freeze i32 %.pre35
  %i.i = icmp ult i32 %.pre35.fr, 65              ; 2 uses
  %spec.select = select i1 %i.i, ptr %3, ptr %.pr
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APInt15getAllOnesValueEj.exit, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread
  %i.j = phi ptr [ %.pr, %_ZN4llvh5APInt15getAllOnesValueEj.exit ], [ %i.h, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread ] ; 2 uses
  %i.k = phi i1 [ %i.i, %_ZN4llvh5APInt15getAllOnesValueEj.exit ], [ true, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread ]
  %i.l = phi ptr [ %spec.select, %_ZN4llvh5APInt15getAllOnesValueEj.exit ], [ %3, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22   ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = lshr i32 %i.o, 10
  %i.q = and i32 %i.p, 31                         ; 4 uses
  %i.r = and i32 %i.o, 1023                       ; 3 uses
  store ptr @_ZN4llvhL11semIEEEhalfE, ptr %i.m, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 5 uses
  %i.t = load i8, ptr %i.s, align 2
  %sh.diff.i.i = lshr i64 %i.n, 12
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i8
  %i.u = and i8 %tr.sh.diff.i.i, 8
  %i.v = and i8 %i.t, -9
  %i.w = or disjoint i8 %i.v, %i.u                ; 3 uses
  %i.x = icmp eq i32 %i.q, 0
  %i.y = or i32 %i.q, %i.r
  %or.cond.i.i = icmp eq i32 %i.y, 0
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = and i8 %i.w, -8
  %i.aa = or disjoint i8 %i.z, 3
  store i8 %i.aa, ptr %i.s, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp eq i32 %i.r, 0
  %i.ac = icmp eq i32 %i.q, 31                    ; 2 uses
  %or.cond3.i.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = and i8 %i.w, -8
  store i8 %i.ad, ptr %i.s, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp ne i32 %i.r, 0
  %or.cond5.i.i = and i1 %i.ae, %i.ac
  %i.af = and i8 %i.w, -8                         ; 2 uses
  br i1 %or.cond5.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = or disjoint i8 %i.af, 1
  store i8 %i.ag, ptr %i.s, align 2
  %i.ah = and i64 %i.n, 1023
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !22
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = or disjoint i8 %i.af, 2
  store i8 %i.aj, ptr %i.s, align 2
  %i.ak = trunc nuw nsw i32 %i.q to i16
  %i.al = add nsw i16 %i.ak, -15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i16 %i.al, ptr %i.am, align 8, !tbaa !19
  %i.an = and i64 %i.n, 1023                      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !22
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 -14, ptr %i.am, align 8, !tbaa !19
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = or disjoint i64 %i.an, 1024
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !22
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.l
  %i.aq = icmp eq ptr %i.j, null
  %or.cond = select i1 %i.k, i1 true, i1 %i.aq
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.j) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.bf

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %i.ar, align 8, !tbaa !20, !alias.scope !249
  br i1 %i.b, label %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread, label %_ZN4llvh5APInt15getAllOnesValueEj.exit9

_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread:   ; preds = %bb.n
  %i.as = sub nsw i32 0, %1
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 -1, %i.au                      ; 2 uses
  store i64 %i.av, ptr %4, align 8, !tbaa !18, !alias.scope !249
  %i.aw = inttoptr i64 %i.av to ptr
  br label %bb.o

_ZN4llvh5APInt15getAllOnesValueEj.exit9:          ; preds = %bb.n
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef -1, i1 noundef zeroext true) #25
  %.pr27 = load ptr, ptr %4, align 8              ; 2 uses
  %.pre34 = load i32, ptr %i.ar, align 8, !tbaa !20
  %.pre34.fr = freeze i32 %.pre34
  %i.ax = icmp ult i32 %.pre34.fr, 65             ; 2 uses
  %spec.select59 = select i1 %i.ax, ptr %4, ptr %.pr27
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh5APInt15getAllOnesValueEj.exit9, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread
  %i.ay = phi ptr [ %.pr27, %_ZN4llvh5APInt15getAllOnesValueEj.exit9 ], [ %i.aw, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread ] ; 2 uses
  %i.az = phi i1 [ %i.ax, %_ZN4llvh5APInt15getAllOnesValueEj.exit9 ], [ true, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread ]
  %i.ba = phi ptr [ %spec.select59, %_ZN4llvh5APInt15getAllOnesValueEj.exit9 ], [ %4, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !22 ; 3 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  %i.be = lshr i32 %i.bd, 23
end_hunk_8
