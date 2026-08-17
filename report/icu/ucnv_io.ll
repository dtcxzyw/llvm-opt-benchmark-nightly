inline.NumInlined: 33
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL13haveAliasDataP10UErrorCode:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28   ; 2 uses
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 84), align 4, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28   ; 2 uses
  store i32 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 88), align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28   ; 2 uses
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 92), align 4, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28 ; 4 uses
  store i32 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 96), align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !28 ; 2 uses
  store i32 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 100), align 4, !tbaa !37
  %.not66.i = icmp eq i32 %i.k, 8
  br i1 %.not66.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  store i32 %i.af, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 104), align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.l, i32 2)
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %i.ag = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.ag, -8                      ; 3 uses
  %i.ah = or disjoint i64 %n.vec, 1
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.m, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ai, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !28
  %wide.load7 = load <4 x i32>, ptr %i.al, align 4, !tbaa !28
  %i.am = shl <4 x i32> %wide.load, splat (i32 1)
  %i.an = shl <4 x i32> %wide.load7, splat (i32 1)
  %i.ao = add <4 x i32> %i.am, %vec.phi           ; 2 uses
  %i.ap = add <4 x i32> %i.an, %vec.phi6          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %bb.i ], [ %i.ah, %middle.block ]
  %.06169.i.ph = phi i32 [ %i.m, %bb.i ], [ %i.ar, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ar, %middle.block ], [ %i.aw, %scalar.ph ]
  %i.as = icmp slt i32 %i.i, %.lcssa
  br i1 %i.as, label %bb.n, label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.06169.i = phi i32 [ %i.aw, %scalar.ph ], [ %.06169.i.ph, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !28
  %i.av = shl i32 %i.au, 1
  %i.aw = add i32 %i.av, %.06169.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %.loopexit, label %scalar.ph, !llvm.loop !42

bb.j:                                             ; preds = %.loopexit
  %i.ax = shl i32 %i.l, 1                         ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ay
  store ptr %i.az, ptr @_ZL10gMainTable, align 8, !tbaa !25
  %i.ba = add i32 %i.p, %i.ax                     ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bb
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 8), align 8, !tbaa !43
  %i.bd = add i32 %i.r, %i.ba                     ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.be
  store ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 16), align 8, !tbaa !44
  %i.bg = add i32 %i.t, %i.bd                     ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bh
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 24), align 8, !tbaa !45
  %i.bj = add i32 %i.v, %i.bg                     ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bk
  store ptr %i.bl, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 32), align 8, !tbaa !46
  %i.bm = add i32 %i.x, %i.bj                     ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bn
  store ptr %i.bo, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 40), align 8, !tbaa !47
  %i.bp = add i32 %i.z, %i.bm                     ; 3 uses
  %.not68.i = icmp eq i32 %i.ab, 0
  br i1 %.not68.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bq ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !48
  %.fr.i = freeze i16 %i.bs                       ; 2 uses
  %i.bt = icmp ult i16 %.fr.i, 2
  br i1 %i.bt, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  store ptr @_ZL19defaultTableOptions, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 48), align 8, !tbaa !50
  %i.bu = add i32 %i.ab, %i.bp
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bv ; 2 uses
  store ptr %i.bw, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 56), align 8, !tbaa !24
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.br, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 48), align 8, !tbaa !50
  %i.bx = add i32 %i.ab, %i.bp                    ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.by ; 2 uses
  store ptr %i.bz, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 56), align 8, !tbaa !24
  %i.ca = add i32 %i.ad, %i.bx
  %i.cb = icmp eq i16 %.fr.i, 0
  %i.cc = zext i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.cc
  %spec.select.i = select i1 %i.cb, ptr %i.bz, ptr %i.cd
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i
  %i.ce = phi ptr [ %spec.select.i, %bb.l ], [ %i.bw, %.thread.i ]
  store ptr %i.ce, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 64), align 8, !tbaa !51
  br label %_ZL13initAliasDataR10UErrorCode.exit

bb.n:                                             ; preds = %.loopexit, %bb.f, %bb.e
  store i32 3, ptr %0, align 4, !tbaa !22
  tail call void @udata_close_78(ptr noundef %i.e)
  br label %_ZL13initAliasDataR10UErrorCode.exit

_ZL13initAliasDataR10UErrorCode.exit:             ; preds = %bb.d, %bb.m, %bb.n
  %i.cf = load i32, ptr %0, align 4, !tbaa !22
  store i32 %i.cf, ptr getelementptr inbounds nuw (i8, ptr @_ZL18gAliasDataInitOnce, i64 4), align 4, !tbaa !52
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL18gAliasDataInitOnce)
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

bb.o:                                             ; preds = %bb.c, %bb.b
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL18gAliasDataInitOnce, i64 4), align 4, !tbaa !52 ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.cg, ptr %0, align 4, !tbaa !22
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit: ; preds = %bb.a, %_ZL13initAliasDataR10UErrorCode.exit, %bb.o, %bb.p
  %i.ci = load i32, ptr %0, align 4, !tbaa !22
  %i.cj = icmp slt i32 %i.ci, 1
  %i.ck = zext i1 %i.cj to i8
  ret i8 %i.ck
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -1, 4096) i32 @_ZL13findConverterPKcPaP10UErrorCode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [60 x i8], align 16               ; 5 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 48), align 8, !tbaa !50
  %i.c = load i16, ptr %i.b, align 2, !tbaa !48
  %i.d = icmp eq i16 %i.c, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 16), align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 56), align 8
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 84), align 4, !tbaa !33 ; 2 uses
  %i.h = lshr i32 %i.g, 1
  br label %.split.us

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %i.j = icmp ugt i64 %i.i, 59
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 15, ptr %2, align 4, !tbaa !22
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %.not2831.i = icmp eq i8 %i.k, 0
  br i1 %.not2831.i, label %.thread82, label %.lr.ph.i

.thread82:                                        ; preds = %bb.d
  store i8 0, ptr %i.a, align 16, !tbaa !8
  br label %.split.preheader

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %i.l = phi i8 [ %i.aq, %.critedge.i ], [ %i.k, %bb.d ] ; 6 uses
  %.pn.i = phi ptr [ %i.ao, %.critedge.i ], [ %0, %bb.d ]
  %.0.ph34.i = phi i8 [ %.1.i, %.critedge.i ], [ 0, %bb.d ]
  %.018.ph32.i = phi ptr [ %i.ap, %.critedge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.m = icmp eq i8 %.0.ph34.i, 0
  %i.n = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 8 uses
  %i.o = icmp sgt i8 %i.l, -1
  br i1 %i.o, label %bb.e, label %..backedge.peel_crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = zext nneg i8 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZL10asciiTypes, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  switch i8 %i.r, label %.critedge.loopexit36.i [
    i8 0, label %..backedge.peel_crit_edge.i
    i8 1, label %bb.f
    i8 2, label %.critedge.i
  ]

..backedge.peel_crit_edge.i:                      ; preds = %bb.e, %.lr.ph.i
  %.pre.i = load i8, ptr %i.n, align 1, !tbaa !8
  br label %.backedge.peel.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.n, align 1, !tbaa !8     ; 3 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.u = zext nneg i8 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZL10asciiTypes, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = add i8 %i.w, -1
  %i.y = icmp ult i8 %i.x, 2
  br i1 %i.y, label %.backedge.peel.i, label %.critedge.i

.backedge.peel.i:                                 ; preds = %bb.h, %..backedge.peel_crit_edge.i
  %i.z = phi i8 [ %.pre.i, %..backedge.peel_crit_edge.i ], [ %i.s, %bb.h ] ; 2 uses
  %.not.peel.i = icmp eq i8 %i.z, 0
  br i1 %.not.peel.i, label %.loopexit86, label %.peel.next.i

.peel.next.i:                                     ; preds = %.backedge.peel.i, %.backedge.i
  %i.aa = phi i8 [ %i.an, %.backedge.i ], [ %i.z, %.backedge.peel.i ] ; 5 uses
  %.pn.pn.i = phi ptr [ %i.ab, %.backedge.i ], [ %i.n, %.backedge.peel.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn.pn.i, i64 1 ; 7 uses
  %i.ac = icmp sgt i8 %i.aa, -1
  br i1 %i.ac, label %bb.i, label %..backedge_crit_edge.i

bb.i:                                             ; preds = %.peel.next.i
  %i.ad = zext nneg i8 %i.aa to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZL10asciiTypes, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8   ; 2 uses
  switch i8 %i.af, label %.critedge.i.loopexit [
    i8 0, label %..backedge_crit_edge.i
    i8 1, label %bb.j
    i8 2, label %.critedge.i
  ]

..backedge_crit_edge.i:                           ; preds = %bb.i, %.peel.next.i
  %.pre48.i = load i8, ptr %i.ab, align 1, !tbaa !8
  br label %.backedge.i

bb.j:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !8   ; 3 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.ai = zext nneg i8 %i.ag to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZL10asciiTypes, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = add i8 %i.ak, -1
  %i.am = icmp ult i8 %i.al, 2
  br i1 %i.am, label %.backedge.i, label %.critedge.i

.backedge.i:                                      ; preds = %bb.k, %..backedge_crit_edge.i
  %i.an = phi i8 [ %.pre48.i, %..backedge_crit_edge.i ], [ %i.ag, %bb.k ] ; 2 uses
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %.loopexit86, label %.peel.next.i, !llvm.loop !9

.critedge.loopexit36.i:                           ; preds = %bb.e
  br label %.critedge.i

.critedge.i.loopexit:                             ; preds = %bb.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %bb.j, %bb.i, %.critedge.i.loopexit, %.critedge.loopexit36.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ao = phi ptr [ %i.ab, %bb.i ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.n, %.critedge.loopexit36.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.ab, %.critedge.i.loopexit ] ; 2 uses
  %.016.i = phi i8 [ %i.aa, %bb.i ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ %i.r, %.critedge.loopexit36.i ], [ %i.aa, %bb.k ], [ %i.aa, %bb.j ], [ %i.af, %.critedge.i.loopexit ]
  %.1.i = phi i8 [ 1, %bb.i ], [ 1, %bb.e ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %.critedge.loopexit36.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %.critedge.i.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.018.ph32.i, i64 1 ; 2 uses
  store i8 %.016.i, ptr %.018.ph32.i, align 1, !tbaa !8
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !8   ; 2 uses
  %.not28.i = icmp eq i8 %i.aq, 0
  br i1 %.not28.i, label %.loopexit86, label %.lr.ph.i, !llvm.loop !12

.loopexit86:                                      ; preds = %.critedge.i, %.backedge.peel.i, %.backedge.i
  %.018.ph.lcssa.i = phi ptr [ %.018.ph32.i, %.backedge.i ], [ %i.ap, %.critedge.i ], [ %.018.ph32.i, %.backedge.peel.i ]
  store i8 0, ptr %.018.ph.lcssa.i, align 1, !tbaa !8
  br label %.split.preheader

.split.preheader:                                 ; preds = %.loopexit86, %.thread82
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 84), align 4, !tbaa !33 ; 2 uses
  %i.as = lshr i32 %i.ar, 1
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 64), align 8
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 16), align 8
  br label %.split

.split.us:                                        ; preds = %.thread, %bb.m
  %i.av = phi i32 [ %i.be, %bb.m ], [ %i.h, %.thread ] ; 4 uses
  %.03048.us = phi i32 [ %.1.us, %bb.m ], [ %i.g, %.thread ]
  %.03147.us = phi i32 [ %.132.us, %bb.m ], [ 0, %.thread ]
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !26
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.az
  %i.bb = tail call i32 @ucnv_compareNames_78(ptr noundef %0, ptr noundef %i.ba) ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split.us
  %.not.us = icmp eq i32 %i.bb, 0
  br i1 %.not.us, label %.split50.us, label %bb.m

bb.m:                                             ; preds = %bb.l, %.split.us
  %.132.us = phi i32 [ %.03147.us, %.split.us ], [ %i.av, %bb.l ] ; 2 uses
  %.1.us = phi i32 [ %i.av, %.split.us ], [ %.03048.us, %bb.l ] ; 2 uses
  %i.bd = add i32 %.1.us, %.132.us
  %i.be = lshr i32 %i.bd, 1                       ; 2 uses
  %i.bf = icmp eq i32 %i.av, %i.be
  br i1 %i.bf, label %.loopexit, label %.split.us, !llvm.loop !56

.split:                                           ; preds = %.split.preheader, %bb.s
  %i.bg = phi i32 [ %i.cb, %bb.s ], [ %i.as, %.split.preheader ] ; 4 uses
  %.03048 = phi i32 [ %.1, %bb.s ], [ %i.ar, %.split.preheader ]
  %.03147 = phi i32 [ %.132, %bb.s ], [ 0, %.split.preheader ]
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !26
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bk
  %i.bm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.bl) #15 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.split
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %.split50.us, label %bb.s

.split50.us:                                      ; preds = %bb.n, %bb.l
  %.pre-phi = phi i64 [ %i.aw, %bb.l ], [ %i.bh, %bb.n ]
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 24), align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %.pre-phi ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !26 ; 3 uses
  %.not35 = icmp sgt i16 %i.bq, -1
  br i1 %.not35, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.split50.us
  store i32 -122, ptr %2, align 4, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.split50.us
  %.not36 = icmp eq ptr %1, null
  br i1 %.not36, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 48), align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !57
  %i.bu = and i16 %i.bt, 255
  %.not37 = icmp eq i16 %i.bu, 0
  %i.bv = and i16 %i.bq, 16384
  %.not38 = icmp ne i16 %i.bv, 0
  %narrow = or i1 %.not38, %.not37
  %i.bw = zext i1 %narrow to i8
  store i8 %i.bw, ptr %1, align 1, !tbaa !8
  %.pre = load i16, ptr %i.bp, align 2, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bx = phi i16 [ %.pre, %bb.q ], [ %i.bq, %bb.p ]
  %i.by = and i16 %i.bx, 4095
  %i.bz = zext nneg i16 %i.by to i32
  br label %.loopexit

bb.s:                                             ; preds = %bb.n, %.split
  %.132 = phi i32 [ %.03147, %.split ], [ %i.bg, %bb.n ] ; 2 uses
  %.1 = phi i32 [ %i.bg, %.split ], [ %.03048, %bb.n ] ; 2 uses
  %i.ca = add i32 %.1, %.132
  %i.cb = lshr i32 %i.ca, 1                       ; 2 uses
  %i.cc = icmp eq i32 %i.bg, %i.cb
  br i1 %i.cc, label %.loopexit, label %.split, !llvm.loop !56

.loopexit:                                        ; preds = %bb.s, %bb.m, %bb.r, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.bz, %bb.r ], [ -1, %bb.m ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @ucnv_openStandardNames_78(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef signext i8 @_ZL13haveAliasDataP10UErrorCode(ptr noundef %2)
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %_ZL7isAliasPKcP10UErrorCode.exit.thread, label %_ZL7isAliasPKcP10UErrorCode.exit

_ZL7isAliasPKcP10UErrorCode.exit.thread:          ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !22
  br label %.critedge

_ZL7isAliasPKcP10UErrorCode.exit:                 ; preds = %bb.b
  %i.c = load i8, ptr %0, align 1, !tbaa !8
  %.not34 = icmp eq i8 %i.c, 0
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZL7isAliasPKcP10UErrorCode.exit
  %i.d = tail call fastcc noundef i32 @_ZL26findTaggedAliasListsOffsetPKcS0_P10UErrorCode(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 92), align 4, !tbaa !35
  %i.f = icmp ult i32 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias dereferenceable_or_null(56) ptr @uprv_malloc_78(i64 noundef 56) #16 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 7, ptr %2, align 4, !tbaa !22
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) @_ZL12gEnumAliases, i64 56, i1 false)
  %i.i = tail call noalias dereferenceable_or_null(8) ptr @uprv_malloc_78(i64 noundef 8) #16 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %2, align 4, !tbaa !22
  tail call void @uprv_free_78(ptr noundef nonnull %i.g)
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  store i32 %i.d, ptr %i.i, align 4, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.l, align 8, !tbaa !61
  br label %.critedge

.critedge:                                        ; preds = %_ZL7isAliasPKcP10UErrorCode.exit.thread, %bb.g, %bb.e, %bb.a, %_ZL7isAliasPKcP10UErrorCode.exit, %bb.c, %bb.h
  %.3 = phi ptr [ %i.g, %bb.h ], [ null, %bb.a ], [ null, %_ZL7isAliasPKcP10UErrorCode.exit ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.g ], [ null, %_ZL7isAliasPKcP10UErrorCode.exit.thread ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -1, 65536) i32 @_ZL26findTaggedAliasListsOffsetPKcS0_P10UErrorCode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !22
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 8), align 8, !tbaa !43
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 76), align 4
  %i.d = icmp ne i32 %i.c, 0
  %or.cond.i = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZL12getTagNumberPKc.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 56), align 8, !tbaa !24
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 8), align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load i16, ptr %i.g, align 2, !tbaa !26
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.i
  %i.k = tail call i32 @uprv_stricmp_78(ptr noundef %i.j, ptr noundef %1)
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %.thread.loopexit.split.loop.exit14.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10gMainTable, i64 76), align 4, !tbaa !31
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv.next.i, %i.m
  br i1 %i.n, label %.lr.ph.i, label %_ZL12getTagNumberPKc.exit, !llvm.loop !63

.thread.loopexit.split.loop.exit14.i:             ; preds = %.lr.ph.i
  %i.o = trunc nuw i64 %indvars.iv.i to i32
  br label %_ZL12getTagNumberPKc.exit

_ZL12getTagNumberPKc.exit:                        ; preds = %bb.b, %bb.a, %.thread.loopexit.split.loop.exit14.i
  %.1.i = phi i32 [ -1, %bb.a ], [ %i.o, %.thread.loopexit.split.loop.exit14.i ], [ -1, %bb.b ] ; 2 uses
  %i.p = call fastcc noundef i32 @_ZL13findConverterPKcPaP10UErrorCode(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !22   ; 3 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

end_hunk_0
