Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullComputer?download=true
inline.NumInlined: 668
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN20b3ConvexHullInternal15mergeProjectionERNS_16IntermediateHullES1_RPNS_6VertexES4_:bb.a
  %i.iq = mul nsw i32 %.neg421, %i.hs
  %i.ir = icmp slt i32 %i.ip, %i.iq
  br i1 %i.ir, label %.thread318.backedge.1, label %.critedge9.1

.thread318.backedge.1:                            ; preds = %bb.bo, %bb.bm
  br label %.thread318.1, !llvm.loop !77

.critedge9.1:                                     ; preds = %.thread312.1, %bb.bl, %bb.bn, %bb.bo, %.thread332.1, %bb.bc, %bb.be, %bb.bf, %bb.au, %bb.av, %bb.aw
  %.10258.1 = phi ptr [ %.0216.1, %bb.au ], [ %.5253.ph.1, %.thread332.1 ], [ %.0216.1, %bb.aw ], [ %.0216.1, %bb.av ], [ %.5253.ph.1, %bb.bf ], [ %.5253.ph.1, %bb.be ], [ %.5253.ph.1, %bb.bc ], [ %.1249.ph.1, %bb.bo ], [ %.1249.ph.1, %bb.bn ], [ %.1249.ph.1, %bb.bl ], [ %.1249.ph.1, %.thread312.1 ] ; 2 uses
  %.11246.1 = phi ptr [ %.0.1, %bb.au ], [ %.7242.1, %.thread332.1 ], [ %.0.1, %bb.aw ], [ %.0.1, %bb.av ], [ %.7242.1, %bb.bf ], [ %.7242.1, %bb.be ], [ %.7242.1, %bb.bc ], [ %.2237.1, %bb.bo ], [ %.2237.1, %bb.bn ], [ %.2237.1, %bb.bl ], [ %.2237.1, %.thread312.1 ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.10258.1, i64 8
  store ptr %.11246.1, ptr %i.is, align 8, !tbaa !71
  store ptr %.10258.1, ptr %.11246.1, align 8, !tbaa !74
  store ptr %.11246, ptr %.10258, align 8, !tbaa !74
  %i.it = getelementptr inbounds nuw i8, ptr %.11246, i64 8
  store ptr %.10258, ptr %i.it, align 8, !tbaa !71
  %i.iu = load ptr, ptr %2, align 8, !tbaa !75    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 104
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !66
  %i.ix = load ptr, ptr %1, align 8, !tbaa !75
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 104
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !66
  %i.ja = icmp slt i32 %i.iw, %i.iz
  br i1 %i.ja, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.critedge9.1
  store ptr %i.iu, ptr %1, align 8, !tbaa !75
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.critedge9.1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !66
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !66
  %.not291 = icmp slt i32 %i.jc, %i.je
  br i1 %.not291, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !76
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !63
  store ptr %i.jg, ptr %i.a, align 8, !tbaa !63
  store ptr %.10258, ptr %3, align 8, !tbaa !72
  br label %bb.bt

bb.bt:                                            ; preds = %bb.e, %bb.d, %bb.bs
  %storemerge = phi ptr [ %.11246, %bb.bs ], [ %i.t, %bb.e ], [ %i.d, %bb.d ]
  %.1261 = phi i1 [ true, %bb.bs ], [ false, %bb.e ], [ false, %bb.d ]
  store ptr %storemerge, ptr %4, align 8, !tbaa !72
  ret i1 %.1261
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20b3ConvexHullInternal15computeInternalEiiRNS_16IntermediateHullE(ptr noundef nonnull align 16 dereferenceable(192) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.b3ConvexHullInternal::IntermediateHull", align 8 ; 5 uses
  %i.a = sub nsw i32 %2, %1                       ; 2 uses
  switch i32 %i.a, label %bb.f [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %..critedge117_crit_edge
  ]

..critedge117_crit_edge:                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre = load ptr, ptr %.phi.trans.insert, align 16, !tbaa !81
  %.pre127 = sext i32 %1 to i64
  %.phi.trans.insert128 = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.pre127
  %.pre129 = load ptr, ptr %.phi.trans.insert128, align 8, !tbaa !72
  br label %.critedge117

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !81
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.j = load i32, ptr %i.h, align 4, !tbaa !82   ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !82   ; 2 uses
  %.not.i = icmp eq i32 %i.j, %i.k                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.m = load i32, ptr %i.l, align 4, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 236
  %i.o = load i32, ptr %i.n, align 4, !tbaa !83   ; 2 uses
  %.not4.i = icmp eq i32 %i.m, %i.o               ; 2 uses
  %i.p = select i1 %.not.i, i1 %.not4.i, i1 false
  br i1 %i.p, label %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit, label %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit.thread.thread

_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit:  ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.r = load i32, ptr %i.q, align 4, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.t = load i32, ptr %i.s, align 4, !tbaa !84
  %.not = icmp eq i32 %i.r, %i.t
  br i1 %.not, label %.critedge117, label %bb.d

bb.d:                                             ; preds = %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.x = load i32, ptr %i.w, align 8, !tbaa !85
  %i.y = icmp sgt i32 %i.v, %i.x                  ; 2 uses
  %spec.select = select i1 %i.y, ptr %i.f, ptr %i.g
  %spec.select113 = select i1 %i.y, ptr %i.g, ptr %i.f ; 9 uses
  store ptr %spec.select113, ptr %spec.select113, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select113, i64 8
  store ptr %spec.select113, ptr %i.z, align 8, !tbaa !71
  store ptr %spec.select113, ptr %3, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select113, ptr %i.aa, align 8, !tbaa !76
  br label %bb.e

_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit.thread.thread: ; preds = %bb.c
  store ptr %i.g, ptr %i.f, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.ab, align 8, !tbaa !71
  store ptr %i.f, ptr %i.g, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.f, ptr %i.ac, align 8, !tbaa !71
  %i.ad = icmp slt i32 %i.j, %i.k                 ; 2 uses
  %i.ae = icmp slt i32 %i.m, %i.o                 ; 2 uses
  %or.cond3 = select i1 %.not.i, i1 %i.ae, i1 false
  %or.cond114 = select i1 %i.ad, i1 true, i1 %or.cond3 ; 2 uses
  %spec.select140 = select i1 %or.cond114, ptr %i.f, ptr %i.g
  %spec.select141 = select i1 %or.cond114, ptr %i.g, ptr %i.f
  store ptr %spec.select140, ptr %3, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select141, ptr %i.af, align 8, !tbaa !76
  %or.cond5 = select i1 %i.ad, i1 %.not4.i, i1 false
  %or.cond115 = or i1 %or.cond5, %i.ae            ; 2 uses
  %. = select i1 %or.cond115, ptr %i.f, ptr %i.g
  %.145 = select i1 %or.cond115, ptr %i.g, ptr %i.f
  br label %bb.e

bb.e:                                             ; preds = %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit.thread.thread, %bb.d
  %.sink143 = phi ptr [ %., %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit.thread.thread ], [ %spec.select113, %bb.d ]
  %.sink = phi ptr [ %.145, %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit.thread.thread ], [ %spec.select113, %bb.d ]
  %.1112 = phi ptr [ %i.g, %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit.thread.thread ], [ %spec.select, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %i.f, %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit.thread.thread ], [ %spec.select113, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sink143, ptr %i.ag, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sink, ptr %i.ah, align 8, !tbaa !63
  %i.ai = tail call noundef ptr @_ZN20b3ConvexHullInternal11newEdgePairEPNS_6VertexES1_(ptr noundef nonnull align 16 dereferenceable(192) %0, ptr noundef nonnull %.1, ptr noundef nonnull %.1112) ; 6 uses
  store ptr %i.ai, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 5 uses
  store ptr %i.am, ptr %i.am, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %.1112, i64 16
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !73
  br label %bb.i

.critedge117:                                     ; preds = %..critedge117_crit_edge, %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit
  %i.ap = phi ptr [ %.pre129, %..critedge117_crit_edge ], [ %i.f, %_ZNK20b3ConvexHullInternal7Point32neERKS0_.exit ] ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !73
  store ptr %i.ap, ptr %i.ap, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !71
  store ptr %i.ap, ptr %3, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !63
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.av = sdiv i32 %i.a, 2
  %i.aw = add nsw i32 %i.av, %1                   ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !81 ; 2 uses
  %i.az = sext i32 %i.aw to i64                   ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %.sroa.0.0.copyload = load i32, ptr %i.bd, align 8, !tbaa !87
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 108
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !87
  %i.be = icmp slt i32 %i.aw, %2
  br i1 %i.be, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.f
  %5 = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.az, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !82
  %i.bj = icmp eq i32 %i.bi, %.sroa.0.0.copyload
  br i1 %i.bj, label %bb.g, label %.critedge.loopexit.split.loop.exit

bb.g:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 108
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !83
  %i.bm = icmp eq i32 %i.bl, %.sroa.4.0.copyload
  br i1 %i.bm, label %_ZNK20b3ConvexHullInternal7Point32eqERKS0_.exit, label %.critedge.loopexit.split.loop.exit132

_ZNK20b3ConvexHullInternal7Point32eqERKS0_.exit:  ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !84
  %i.bp = icmp eq i32 %i.bo, %.sroa.5.0.copyload
  br i1 %i.bp, label %bb.h, label %.critedge.loopexit.split.loop.exit136

bb.h:                                             ; preds = %_ZNK20b3ConvexHullInternal7Point32eqERKS0_.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next, %5
  br i1 %6, label %.lr.ph, label %.critedge, !llvm.loop !88

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.bq = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit132:            ; preds = %bb.g
  %i.br = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit136:            ; preds = %_ZNK20b3ConvexHullInternal7Point32eqERKS0_.exit
  %i.bs = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit132, %.critedge.loopexit.split.loop.exit136, %bb.f
  %.0.lcssa = phi i32 [ %i.aw, %bb.f ], [ %i.bs, %.critedge.loopexit.split.loop.exit136 ], [ %i.bq, %.critedge.loopexit.split.loop.exit ], [ %i.br, %.critedge.loopexit.split.loop.exit132 ], [ %2, %bb.h ]
  tail call void @_ZN20b3ConvexHullInternal15computeInternalEiiRNS_16IntermediateHullE(ptr noundef nonnull align 16 dereferenceable(192) %0, i32 noundef %1, i32 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @_ZN20b3ConvexHullInternal15computeInternalEiiRNS_16IntermediateHullE(ptr noundef nonnull align 16 dereferenceable(192) %0, i32 noundef %.0.lcssa, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @_ZN20b3ConvexHullInternal5mergeERNS_16IntermediateHullES1_(ptr noundef nonnull align 16 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %.critedge, %.critedge117, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20b3ConvexHullInternal5mergeERNS_16IntermediateHullES1_(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.b3ConvexHullInternal::Point32", align 8 ; 7 uses
  %4 = alloca %"class.b3ConvexHullInternal::Point64", align 8 ; 8 uses
  %5 = alloca %"class.b3ConvexHullInternal::Point64", align 8 ; 8 uses
  %6 = alloca %"class.b3ConvexHullInternal::Rational64", align 8 ; 8 uses
  %7 = alloca %"class.b3ConvexHullInternal::Rational64", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.cd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %.not184 = icmp eq ptr %i.j, null
  br i1 %.not184, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !89
  br label %bb.cd

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = load i32, ptr %i.k, align 16, !tbaa !47
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 16, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !72
  %i.n = call noundef zeroext i1 @_ZN20b3ConvexHullInternal15mergeProjectionERNS_16IntermediateHullES1_RPNS_6VertexES4_(ptr nonnull align 16 poison, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !72   ; 11 uses
  br i1 %i.n, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !72   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.s = load i32, ptr %i.q, align 4, !tbaa !82   ; 4 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !82   ; 2 uses
  %i.u = sub nsw i32 %i.s, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 108
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 108
  %i.y = load i32, ptr %i.x, align 4, !tbaa !83   ; 2 uses
  %i.z = sub nsw i32 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !84 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !84 ; 2 uses
  %i.ae = sub nsw i32 %i.ab, %i.ad
  %i.af = sext i32 %i.z to i64                    ; 7 uses
  %i.ag = sub nsw i32 0, %i.u
  %i.ah = sext i32 %i.ag to i64                   ; 6 uses
  %i.ai = sext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = sub nsw i64 0, %i.aj                    ; 2 uses
  %i.al = mul nsw i64 %i.ai, %i.af                ; 2 uses
  %i.am = sext i32 %i.u to i64
  %i.an = mul nsw i64 %i.ah, %i.am
  %i.ao = mul nsw i64 %i.af, %i.af
  %i.ap = sub nsw i64 %i.an, %i.ao                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store ptr null, ptr %i.c, align 8, !tbaa !90
  %.not185 = icmp eq ptr %i.ar, null
  br i1 %.not185, label %bb.k, label %.preheader393

.preheader393:                                    ; preds = %bb.e, %.critedge
  %.0144401 = phi ptr [ %.0144400, %.critedge ], [ null, %bb.e ] ; 9 uses
  %.0144 = phi ptr [ %i.db, %.critedge ], [ %i.ar, %bb.e ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0144, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.av = load i32, ptr %i.au, align 4, !tbaa !82 ; 2 uses
  %i.aw = sub nsw i32 %i.av, %i.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 108
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !83 ; 2 uses
  %i.az = sub nsw i32 %i.ay, %i.y
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !84 ; 2 uses
  %i.bc = sext i32 %i.aw to i64                   ; 2 uses
  %i.bd = sext i32 %i.az to i64                   ; 2 uses
  %i.be = mul nsw i64 %i.bd, %i.ah
  %i.bf = mul nsw i64 %i.af, %i.bc
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.preheader393
  %i.bi = sub nsw i32 %i.bb, %i.ad
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bc, %i.ak
  %i.bl = mul nsw i64 %i.al, %i.bd
  %i.bm = add nsw i64 %i.bl, %i.bk
  %i.bn = mul nsw i64 %i.ap, %i.bj
  %i.bo = add nsw i64 %i.bm, %i.bn
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %.not186 = icmp eq ptr %.0144401, null
  br i1 %.not186, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %.0144401, align 8, !tbaa !37
  %i.br = icmp eq ptr %i.bq, %.0144
  %i.bs = getelementptr inbounds nuw i8, ptr %.0144401, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !86
  %i.bu = icmp eq ptr %i.bt, %.0144               ; 2 uses
  br i1 %i.br, label %bb.i, label %_ZN20b3ConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit

bb.i:                                             ; preds = %bb.h
  br i1 %i.bu, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0144401, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0144, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !59 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !82
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !82 ; 2 uses
  %.neg387 = sub i32 %i.ce, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 108
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 108
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !83 ; 2 uses
  %i.cj = sub nsw i32 %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 112
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !84
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !84 ; 2 uses
  %i.co = sub nsw i32 %i.cl, %i.cn                ; 2 uses
  %i.cp = sub nsw i32 %i.av, %i.ce
  %.neg = sub i32 %i.ci, %i.ay
  %i.cq = sub nsw i32 %i.bb, %i.cn                ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cj
  %.neg386 = mul i32 %i.co, %.neg
  %i.cs = add i32 %.neg386, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i32 %i.co, %i.cp
  %.neg388 = mul i32 %i.cq, %.neg387
  %i.cv = add i32 %.neg388, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %i.ct, %i.af
  %i.cy = mul nsw i64 %i.cw, %i.ah
  %i.cz = add nsw i64 %i.cx, %i.cy
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.critedge, label %.critedge2

_ZN20b3ConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit: ; preds = %bb.h
  br i1 %i.bu, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.j, %bb.g, %_ZN20b3ConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %.preheader393, %_ZN20b3ConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit, %.critedge2, %bb.f
  %.0144400 = phi ptr [ %.0144401, %bb.j ], [ %.0144401, %bb.i ], [ %.0144401, %.preheader393 ], [ %.0144401, %_ZN20b3ConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit ], [ %.0144, %.critedge2 ], [ %.0144401, %bb.f ] ; 3 uses
  %i.db = load ptr, ptr %.0144, align 8, !tbaa !37 ; 2 uses
  %.not187 = icmp eq ptr %i.db, %i.ar
end_hunk_0
