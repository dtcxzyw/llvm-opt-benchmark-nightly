inline.NumInlined: 326
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6btDbvt19optimizeIncrementalEi:bb.a
  %i.m = icmp ugt ptr %i.l, %.0918
  br i1 %i.m, label %bb.c, label %_ZL4sortP10btDbvtNodeRS0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = icmp eq ptr %i.o, %.0918                 ; 2 uses
  %i.q = xor i1 %i.p, true
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.s = zext i1 %i.q to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = icmp eq ptr %i.z, %i.l
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab
  store ptr %.0918, ptr %i.ac, align 8, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %.0918, ptr %0, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %.0918, ptr %i.ad, align 8, !tbaa !44
  store ptr %.0918, ptr %i.v, align 8, !tbaa !44
  store ptr %i.w, ptr %i.k, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %.0918, i64 40 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  store ptr %i.af, ptr %i.r, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !25
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !25
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.l, ptr %i.ai, align 8, !tbaa !44
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !44
  %i.al = zext i1 %i.p to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.al
  store ptr %i.l, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.s
  store ptr %i.u, ptr %i.an, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %i.l, i64 32, i1 false), !tbaa.struct !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.l, ptr noundef nonnull align 4 dereferenceable(32) %.0918, i64 32, i1 false), !tbaa.struct !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.0918, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZL4sortP10btDbvtNodeRS0_.exit

_ZL4sortP10btDbvtNodeRS0_.exit:                   ; preds = %.lr.ph, %bb.f
  %.0.i = phi ptr [ %i.l, %bb.f ], [ %.0918, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !21
  %i.aq = lshr i32 %i.ap, %.017
  %i.ar = and i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.as
  %i.au = add nuw nsw i32 %.017, 1
  %i.av = and i32 %i.au, 31
  %.09 = load ptr, ptr %i.at, align 8, !tbaa !25  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09, i64 48 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %.not14 = icmp eq ptr %i.ax, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZL4sortP10btDbvtNodeRS0_.exit, %bb.b
  %.09.lcssa = phi ptr [ %.0915, %bb.b ], [ %.09, %_ZL4sortP10btDbvtNodeRS0_.exit ] ; 2 uses
  %i.ay = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %.09.lcssa)
  %.not.i13 = icmp eq ptr %i.ay, null
  br i1 %.not.i13, label %_ZN6btDbvt6updateEP10btDbvtNodei.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZN6btDbvt6updateEP10btDbvtNodei.exit

_ZN6btDbvt6updateEP10btDbvtNodei.exit:            ; preds = %._crit_edge, %bb.g
  %.1.i = phi ptr [ null, %._crit_edge ], [ %i.az, %bb.g ]
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %.1.i, ptr noundef nonnull %.09.lcssa)
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !21
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.g, align 8, !tbaa !21
  %i.bc = add nsw i32 %.1, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN6btDbvt6updateEP10btDbvtNodei.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6btDbvt6updateEP10btDbvtNodei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %2, -1
  br i1 %i.b, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %.not20 = icmp eq i32 %2, 0
  br i1 %.not20, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i32 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %2
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.017 = phi i32 [ %i.c, %bb.c ], [ 0, %.preheader ]
  %.01016 = phi ptr [ %i.e, %bb.c ], [ %i.a, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01016, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %.critedge, label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.lr.ph, %.preheader, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.f, %bb.d ], [ %i.a, %.preheader ], [ %i.e, %bb.c ], [ %.01016, %.lr.ph ]
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef %0, ptr noundef %.1, ptr noundef %1)
  ret void
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !23
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit

_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  store ptr %2, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !76
  %i.g = load ptr, ptr %0, align 8, !tbaa !22
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull %.0.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !20
  ret ptr %.0.i.i
}

; Function Attrs: uwtable
define internal fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.b, align 8, !tbaa !44
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit50, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !42
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !42
  %i.i = fadd <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !42
  %i.n = fadd float %i.k, %i.m                    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %i.o = phi ptr [ %i.ai, %bb.d ], [ %i.d, %.preheader ] ; 4 uses
  %.045 = phi ptr [ %i.ag, %bb.d ], [ %1, %.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.045, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !42
  %3 = fadd float %i.t, %i.v
  %4 = fsub float %i.n, %3
  %i.w = load <2 x float>, ptr %i.q, align 4, !tbaa !42
  %i.x = load <2 x float>, ptr %i.r, align 4, !tbaa !42
  %i.y = fadd <2 x float> %i.w, %i.x
  %i.z = fsub <2 x float> %i.i, %i.y
  %i.aa = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.z) ; 2 uses
  %shift = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aa, %shift
  %5 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %6 = tail call noundef float @llvm.fabs.f32(float %4)
  %7 = fadd float %5, %6
  %8 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %12 = load float, ptr %11, align 4, !tbaa !42
  %13 = fadd float %10, %12
  %14 = fsub float %i.n, %13
  %15 = load <2 x float>, ptr %i.o, align 4, !tbaa !42
  %16 = load <2 x float>, ptr %8, align 4, !tbaa !42
  %i.ab = fadd <2 x float> %15, %16
  %i.ac = fsub <2 x float> %i.i, %i.ab
  %17 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ac) ; 2 uses
  %shift56 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop57 = fadd <2 x float> %17, %shift56
  %18 = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %19 = tail call noundef float @llvm.fabs.f32(float %14)
  %20 = fadd float %18, %19
  %i.ad = fcmp uge float %7, %20
  %i.ae = zext i1 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.loopexit50, label %bb.d

.loopexit50:                                      ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %1, %bb.c ], [ %i.ag, %bb.d ]   ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1, i64 32 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit50
  store ptr null, ptr %i.am, align 8, !tbaa !23
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit

bb.f:                                             ; preds = %.loopexit50
  %i.ao = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i8 0, i64 56, i1 false)
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit

_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.an, %bb.e ], [ %i.ao, %bb.f ] ; 18 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.au = load float, ptr %2, align 4, !tbaa !42  ; 2 uses
  %i.av = load float, ptr %.1, align 8, !tbaa !42 ; 2 uses
  %i.aw = fcmp olt float %i.au, %i.av
  %.sink.i.i = select i1 %i.aw, float %i.au, float %i.av
  store float %.sink.i.i, ptr %.0.i.i, align 8, !tbaa !42
  %i.ax = load float, ptr %i.ar, align 4, !tbaa !42 ; 2 uses
  %i.ay = load float, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %i.az = fcmp ogt float %i.ax, %i.ay
  %storemerge.i.i = select i1 %i.az, float %i.ax, float %i.ay
  store float %storemerge.i.i, ptr %i.at, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !42 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !42 ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bd
  %.sink27.i.i = select i1 %i.be, float %i.bb, float %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store float %.sink27.i.i, ptr %i.bf, align 4, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !42 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !42 ; 2 uses
  %i.bk = fcmp ogt float %i.bh, %i.bj
  %.sink40.i.i = select i1 %i.bk, float %i.bh, float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  store float %.sink40.i.i, ptr %i.bl, align 4, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !42 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !42 ; 2 uses
  %i.bq = fcmp olt float %i.bn, %i.bp
  %.sink28.i.i = select i1 %i.bq, float %i.bn, float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store float %.sink28.i.i, ptr %i.br, align 8, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !42 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !42 ; 2 uses
  %i.bw = fcmp ogt float %i.bt, %i.bv
  %.sink42.i.i = select i1 %i.bw, float %i.bt, float %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store float %.sink42.i.i, ptr %i.bx, align 8, !tbaa !42
  %.not48 = icmp eq ptr %i.al, null
  br i1 %.not48, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !25
  %i.cc = icmp eq ptr %i.cb, %.1
  %i.cd = zext i1 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cd
  store ptr %.0.i.i, ptr %i.ce, align 8, !tbaa !25
  store ptr %.1, ptr %i.aq, align 8, !tbaa !25
  store ptr %.0.i.i, ptr %i.ak, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store ptr %2, ptr %i.cf, align 8, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i.i, ptr %i.cg, align 8, !tbaa !44
  %.pre = load float, ptr %.0.i.i, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, %bb.g
  %i.ch = phi float [ %.pre, %bb.g ], [ %.sink.i, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ]
  %.044 = phi ptr [ %i.al, %bb.g ], [ %i.ev, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ] ; 16 uses
  %.0 = phi ptr [ %.0.i.i, %bb.g ], [ %.044, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ] ; 5 uses
  %i.ci = load float, ptr %.044, align 4, !tbaa !42
  %i.cj = fcmp ugt float %i.ci, %i.ch
  br i1 %i.cj, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !42
  %i.co = fcmp ugt float %i.cl, %i.cn
  br i1 %i.co, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !42
  %i.ct = fcmp ugt float %i.cq, %i.cs
  br i1 %i.ct, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !42
  %i.cw = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !42
  %i.cy = fcmp ult float %i.cv, %i.cx
  br i1 %i.cy, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %.044, i64 20
  %i.da = load float, ptr %i.cz, align 4, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.dc = load float, ptr %i.db, align 4, !tbaa !42
  %i.dd = fcmp ult float %i.da, %i.dc
  br i1 %i.dd, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit

_ZNK12btDbvtAabbMm7ContainERKS_.exit:             ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %.044, i64 24
  %i.df = load float, ptr %i.de, align 4, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !42
  %i.di = fcmp ult float %i.df, %i.dh
  br i1 %i.di, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %.loopexit

_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread:      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZNK12btDbvtAabbMm7ContainERKS_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %.044, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !25 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.044, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !25 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.dq = load float, ptr %i.dk, align 4, !tbaa !42 ; 2 uses
  %i.dr = load float, ptr %i.dm, align 4, !tbaa !42 ; 2 uses
  %i.ds = fcmp olt float %i.dq, %i.dr
  %.sink.i = select i1 %i.ds, float %i.dq, float %i.dr ; 2 uses
  store float %.sink.i, ptr %.044, align 8, !tbaa !42
  %i.dt = load float, ptr %i.dn, align 4, !tbaa !42 ; 2 uses
  %i.du = load float, ptr %i.do, align 4, !tbaa !42 ; 2 uses
  %i.dv = fcmp ogt float %i.dt, %i.du
  %storemerge.i = select i1 %i.dv, float %i.dt, float %i.du
  store float %storemerge.i, ptr %i.dp, align 8, !tbaa !42
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !42 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !42 ; 2 uses
  %i.ea = fcmp olt float %i.dx, %i.dz
  %.sink27.i = select i1 %i.ea, float %i.dx, float %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %.044, i64 4
  store float %.sink27.i, ptr %i.eb, align 4, !tbaa !42
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !42 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !42 ; 2 uses
  %i.eg = fcmp ogt float %i.ed, %i.ef
  %.sink40.i = select i1 %i.eg, float %i.ed, float %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.044, i64 20
  store float %.sink40.i, ptr %i.eh, align 4, !tbaa !42
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !42 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.el = load float, ptr %i.ek, align 4, !tbaa !42 ; 2 uses
  %i.em = fcmp olt float %i.ej, %i.el
  %.sink28.i = select i1 %i.em, float %i.ej, float %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.044, i64 8
  store float %.sink28.i, ptr %i.en, align 8, !tbaa !42
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !42 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.er = load float, ptr %i.eq, align 4, !tbaa !42 ; 2 uses
  %i.es = fcmp ogt float %i.ep, %i.er
  %.sink42.i = select i1 %i.es, float %i.ep, float %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.044, i64 24
  store float %.sink42.i, ptr %i.et, align 8, !tbaa !42
  %i.eu = getelementptr inbounds nuw i8, ptr %.044, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !44 ; 2 uses
  %.not49 = icmp eq ptr %i.ev, null
  br i1 %.not49, label %.loopexit, label %bb.h
end_hunk_0
