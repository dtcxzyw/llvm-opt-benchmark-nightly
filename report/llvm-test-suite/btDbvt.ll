inline.NumInlined: 326
inline.NumDeleted: 113
begin_hunk_0_@_ZN6btDbvt19optimizeIncrementalEi:bb.a
  %.1 = phi i32 [ %i.bc, %_ZN6btDbvt6updateEP10btDbvtNodei.exit ], [ %.010, %.preheader ]
  %.0915 = load ptr, ptr %0, align 8, !tbaa !25   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0915, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %.not1416 = icmp eq ptr %i.i, null
  br i1 %.not1416, label %_ZN6btDbvt6updateEP10btDbvtNodei.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZL4sortP10btDbvtNodeRS0_.exit
  %i.j = phi ptr [ %i.aw, %_ZL4sortP10btDbvtNodeRS0_.exit ], [ %i.h, %bb.b ] ; 2 uses
  %.0918 = phi ptr [ %.09, %_ZL4sortP10btDbvtNodeRS0_.exit ], [ %.0915, %bb.b ] ; 11 uses
  %.017 = phi i32 [ %i.av, %_ZL4sortP10btDbvtNodeRS0_.exit ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0918, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 11 uses
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
  br i1 %.not14, label %_ZN6btDbvt6updateEP10btDbvtNodei.exit, label %.lr.ph

_ZN6btDbvt6updateEP10btDbvtNodei.exit:            ; preds = %_ZL4sortP10btDbvtNodeRS0_.exit, %bb.b
  %.09.lcssa = phi ptr [ %.0915, %bb.b ], [ %.09, %_ZL4sortP10btDbvtNodeRS0_.exit ] ; 2 uses
  %i.ay = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %.09.lcssa)
  %.not.i13 = icmp eq ptr %i.ay, null
  %i.az = load ptr, ptr %0, align 8
  %spec.select = select i1 %.not.i13, ptr null, ptr %i.az
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %spec.select, ptr noundef nonnull %.09.lcssa)
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
define dso_local void @_ZN6btDbvt6updateEP10btDbvtNodei(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
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
define dso_local noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
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
define internal fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 {
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
  %3 = load <3 x float>, ptr %2, align 4, !tbaa !42
  %4 = load <3 x float>, ptr %i.f, align 4, !tbaa !42
  %5 = fadd <3 x float> %3, %4                    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %i.g = phi ptr [ %i.s, %bb.d ], [ %i.d, %.preheader ] ; 2 uses
  %.045 = phi ptr [ %i.q, %bb.d ], [ %1, %.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.045, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %6 = load <3 x float>, ptr %i.i, align 4, !tbaa !42
  %7 = load <3 x float>, ptr %i.j, align 4, !tbaa !42
  %8 = fadd <3 x float> %6, %7
  %9 = fsub <3 x float> %5, %8
  %10 = tail call <3 x float> @llvm.fabs.v3f32(<3 x float> %9) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %11 = load <3 x float>, ptr %i.g, align 4, !tbaa !42
  %12 = load <3 x float>, ptr %i.k, align 4, !tbaa !42
  %13 = fadd <3 x float> %11, %12
  %14 = fsub <3 x float> %5, %13
  %15 = tail call <3 x float> @llvm.fabs.v3f32(<3 x float> %14) ; 3 uses
  %16 = shufflevector <3 x float> %10, <3 x float> %15, <2 x i32> <i32 0, i32 3>
  %17 = shufflevector <3 x float> %10, <3 x float> %15, <2 x i32> <i32 1, i32 4>
  %i.l = fadd <2 x float> %16, %17
  %18 = shufflevector <3 x float> %10, <3 x float> %15, <2 x i32> <i32 2, i32 5>
  %foldExtExtBinop57 = fadd <2 x float> %i.l, %18 ; 2 uses
  %i.m = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %19 = extractelement <2 x float> %foldExtExtBinop57, i64 1
  %i.n = fcmp uge float %i.m, %19
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.loopexit50, label %bb.d

.loopexit50:                                      ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %1, %bb.c ], [ %i.q, %bb.d ]    ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.1, i64 32 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit50
  store ptr null, ptr %i.w, align 8, !tbaa !23
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit

bb.f:                                             ; preds = %.loopexit50
  %i.y = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false)
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit

_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ] ; 18 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store ptr %i.v, ptr %i.z, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ae = load float, ptr %2, align 4, !tbaa !42  ; 2 uses
  %i.af = load float, ptr %.1, align 4, !tbaa !42 ; 2 uses
  %i.ag = fcmp olt float %i.ae, %i.af
  %.sink.i.i = select i1 %i.ag, float %i.ae, float %i.af
  store float %.sink.i.i, ptr %.0.i.i, align 8, !tbaa !42
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !42 ; 2 uses
  %i.ai = load float, ptr %i.ac, align 4, !tbaa !42 ; 2 uses
  %i.aj = fcmp ogt float %i.ah, %i.ai
  %storemerge.i.i = select i1 %i.aj, float %i.ah, float %i.ai
  store float %storemerge.i.i, ptr %i.ad, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !42 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !42 ; 2 uses
  %i.ao = fcmp olt float %i.al, %i.an
  %.sink27.i.i = select i1 %i.ao, float %i.al, float %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store float %.sink27.i.i, ptr %i.ap, align 4, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !42 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !42 ; 2 uses
  %i.au = fcmp ogt float %i.ar, %i.at
  %.sink40.i.i = select i1 %i.au, float %i.ar, float %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  store float %.sink40.i.i, ptr %i.av, align 4, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !42 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !42 ; 2 uses
  %i.ba = fcmp olt float %i.ax, %i.az
  %.sink28.i.i = select i1 %i.ba, float %i.ax, float %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store float %.sink28.i.i, ptr %i.bb, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !42 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.bf = load float, ptr %i.be, align 4, !tbaa !42 ; 2 uses
  %i.bg = fcmp ogt float %i.bd, %i.bf
  %.sink42.i.i = select i1 %i.bg, float %i.bd, float %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store float %.sink42.i.i, ptr %i.bh, align 8, !tbaa !42
  %.not48 = icmp eq ptr %i.v, null
  br i1 %.not48, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.bm = icmp eq ptr %i.bl, %.1
  %i.bn = zext i1 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bn
  store ptr %.0.i.i, ptr %i.bo, align 8, !tbaa !25
  store ptr %.1, ptr %i.aa, align 8, !tbaa !25
  store ptr %.0.i.i, ptr %i.u, align 8, !tbaa !44
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store ptr %2, ptr %i.bp, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i.i, ptr %i.bq, align 8, !tbaa !44
  %.pre = load float, ptr %.0.i.i, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, %bb.g
  %i.br = phi float [ %.pre, %bb.g ], [ %.sink.i, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ]
  %.044 = phi ptr [ %i.v, %bb.g ], [ %i.ef, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ] ; 16 uses
  %.0 = phi ptr [ %.0.i.i, %bb.g ], [ %.044, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ] ; 5 uses
  %i.bs = load float, ptr %.044, align 4, !tbaa !42
  %i.bt = fcmp ugt float %i.bs, %i.br
  br i1 %i.bt, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !42
  %i.by = fcmp ugt float %i.bv, %i.bx
  br i1 %i.by, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !42
  %i.cd = fcmp ugt float %i.ca, %i.cc
  br i1 %i.cd, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !42
  %i.ci = fcmp ult float %i.cf, %i.ch
  br i1 %i.ci, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.044, i64 20
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !42
  %i.cn = fcmp ult float %i.ck, %i.cm
  br i1 %i.cn, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit

_ZNK12btDbvtAabbMm7ContainERKS_.exit:             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %.044, i64 24
  %i.cp = load float, ptr %i.co, align 4, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !42
  %i.cs = fcmp ult float %i.cp, %i.cr
  br i1 %i.cs, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %.loopexit

_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread:      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZNK12btDbvtAabbMm7ContainERKS_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.044, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !25 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.044, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !25 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.da = load float, ptr %i.cu, align 4, !tbaa !42 ; 2 uses
  %i.db = load float, ptr %i.cw, align 4, !tbaa !42 ; 2 uses
  %i.dc = fcmp olt float %i.da, %i.db
  %.sink.i = select i1 %i.dc, float %i.da, float %i.db ; 2 uses
  store float %.sink.i, ptr %.044, align 8, !tbaa !42
  %i.dd = load float, ptr %i.cx, align 4, !tbaa !42 ; 2 uses
  %i.de = load float, ptr %i.cy, align 4, !tbaa !42 ; 2 uses
  %i.df = fcmp ogt float %i.dd, %i.de
  %storemerge.i = select i1 %i.df, float %i.dd, float %i.de
  store float %storemerge.i, ptr %i.cz, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !42 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !42 ; 2 uses
  %i.dk = fcmp olt float %i.dh, %i.dj
  %.sink27.i = select i1 %i.dk, float %i.dh, float %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.044, i64 4
  store float %.sink27.i, ptr %i.dl, align 4, !tbaa !42
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !42 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.dp = load float, ptr %i.do, align 4, !tbaa !42 ; 2 uses
  %i.dq = fcmp ogt float %i.dn, %i.dp
  %.sink40.i = select i1 %i.dq, float %i.dn, float %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.044, i64 20
  store float %.sink40.i, ptr %i.dr, align 4, !tbaa !42
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !42 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !42 ; 2 uses
  %i.dw = fcmp olt float %i.dt, %i.dv
  %.sink28.i = select i1 %i.dw, float %i.dt, float %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.044, i64 8
  store float %.sink28.i, ptr %i.dx, align 8, !tbaa !42
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !42 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !42 ; 2 uses
  %i.ec = fcmp ogt float %i.dz, %i.eb
  %.sink42.i = select i1 %i.ec, float %i.dz, float %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %.044, i64 24
  store float %.sink42.i, ptr %i.ed, align 8, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %.044, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !44 ; 2 uses
  %.not49 = icmp eq ptr %i.ef, null
  br i1 %.not49, label %.loopexit, label %bb.h
end_hunk_0
begin_hunk_1_@_ZN20btDbvtNodeEnumeratorD0Ev:bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  resume { ptr, i32 } %i.f
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !83   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !83
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i4 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 6
  %i.q = sub i64 %.0.i.i.i4, %i.p
  %diff.check = icmp ult i64 %i.q, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !34
  %wide.load5 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !34
  store <2 x ptr> %wide.load5, ptr %i.u, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.prol
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  store ptr %i.y, ptr %i.w, align 8, !tbaa !34
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !94

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !34
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !34
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !34
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !34
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !95

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp ne ptr %i.o, null
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i8, ptr %i.an, align 8, !range !24
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond.i = select i1 %.not.i5.i.i, i1 %i.ap, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.old8.i = load i8, ptr %.old.i, align 8, !tbaa !79, !range !24, !noundef !41
  %.old9.i = trunc nuw i8 %.old8.i to i1
  br i1 %.old9.i, label %bb.e, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  %.pre2.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !83
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
  %.pre2.i = phi i32 [ %i.l, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.e ], [ %i.l, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.aq, align 8, !tbaa !79
  store ptr %.0.i.i.i, ptr %i.n, align 8, !tbaa !82
  store i32 %i.g, ptr %i.c, align 8, !tbaa !84
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit: ; preds = %bb.a, %bb.b, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i
  %i.ar = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  store ptr %1, ptr %i.av, align 8, !tbaa !34
  %i.aw = add nsw i32 %i.ar, 1
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !83
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, float noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fabs.v3f32(<3 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 24}
!9 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt6sStkNNEE", !10, i64 0, !5, i64 4, !5, i64 8, !11, i64 16, !13, i64 24}
!10 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt6sStkNNELj16EE"}
!11 = !{!"p1 _ZTSN6btDbvt6sStkNNE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!9, !11, i64 16}
!15 = !{!9, !5, i64 4}
!16 = !{!9, !5, i64 8}
!17 = !{!18, !5, i64 16}
!18 = !{!"_ZTS6btDbvt", !19, i64 0, !19, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !9, i64 32}
!19 = !{!"p1 _ZTS10btDbvtNode", !12, i64 0}
!20 = !{!18, !5, i64 20}
!21 = !{!18, !5, i64 24}
!22 = !{!18, !19, i64 0}
!23 = !{!18, !19, i64 8}
!24 = !{i8 0, i8 2}
!25 = !{!6, !6, i64 0}
!26 = !{!27, !13, i64 24}
!27 = !{!"_ZTS20btAlignedObjectArrayIP10btDbvtNodeE", !28, i64 0, !5, i64 4, !5, i64 8, !29, i64 16, !13, i64 24}
!28 = !{!"_ZTS18btAlignedAllocatorIP10btDbvtNodeLj16EE"}
!29 = !{!"p2 _ZTS10btDbvtNode", !30, i64 0}
!30 = !{!"any p2 pointer", !12, i64 0}
!31 = !{!27, !29, i64 16}
!32 = !{!27, !5, i64 4}
!33 = !{!27, !5, i64 8}
!34 = !{!19, !19, i64 0}
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !36}
!41 = !{}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !6, i64 0}
!44 = !{!45, !19, i64 32}
!45 = !{!"_ZTS10btDbvtNode", !46, i64 0, !19, i64 32, !6, i64 40}
!46 = !{!"_ZTS12btDbvtAabbMm", !47, i64 0, !47, i64 16}
!47 = !{!"_ZTS9btVector3", !6, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZL5mergeRK12btDbvtAabbMmS1_: argument 0"}
!50 = distinct !{!50, !"_ZL5mergeRK12btDbvtAabbMmS1_"}
!51 = !{!"branch_weights", i32 1, i32 1048575}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZL6boundsRK20btAlignedObjectArrayIP10btDbvtNodeE: argument 0"}
!54 = distinct !{!54, !"_ZL6boundsRK20btAlignedObjectArrayIP10btDbvtNodeE"}
!55 = distinct !{!55, !36, !37}
!56 = distinct !{!56, !39}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !36, !37}
!59 = distinct !{!59, !39}
!60 = distinct !{!60, !36}
!61 = distinct !{!61, !36, !37}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36, !37}
!65 = distinct !{!65, !39}
!66 = distinct !{!66, !36}
!67 = distinct !{!67, !36, !37}
!68 = distinct !{!68, !39}
!69 = distinct !{!69, !36}
!70 = distinct !{!70, !36, !37}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !36, !37}
!74 = distinct !{!74, !39}
!75 = distinct !{!75, !36}
!76 = !{i64 0, i64 16, !25, i64 16, i64 16, !25}
!77 = !{!78, !78, i64 0}
!78 = !{!"vtable pointer", !7, i64 0}
!79 = !{!80, !13, i64 24}
!80 = !{!"_ZTS20btAlignedObjectArrayIPK10btDbvtNodeE", !81, i64 0, !5, i64 4, !5, i64 8, !29, i64 16, !13, i64 24}
!81 = !{!"_ZTS18btAlignedAllocatorIPK10btDbvtNodeLj16EE"}
!82 = !{!80, !29, i64 16}
!83 = !{!80, !5, i64 4}
!84 = !{!80, !5, i64 8}
!85 = distinct !{!85, !36, !37}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !36}
!88 = !{ptr @_ZN20btDbvtNodeEnumeratorD2Ev}
!89 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!90 = distinct !{!90, !36, !37}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36, !37}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, !36}
end_hunk_1
