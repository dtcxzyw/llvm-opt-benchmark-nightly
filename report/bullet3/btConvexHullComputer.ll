Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHullComputer?download=true
inline.NumInlined: 665
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN20btConvexHullInternal15mergeProjectionERNS_16IntermediateHullES1_RPNS_6VertexES4_:bb.a

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
define dso_local void @_ZN20btConvexHullInternal15computeInternalEiiRNS_16IntermediateHullE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.btConvexHullInternal::IntermediateHull", align 8 ; 5 uses
  %i.a = sub nsw i32 %2, %1                       ; 2 uses
  switch i32 %i.a, label %bb.h [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 27 uses
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
  br i1 %i.p, label %_ZNK20btConvexHullInternal7Point32neERKS0_.exit, label %_ZNK20btConvexHullInternal7Point32neERKS0_.exit.thread.thread

_ZNK20btConvexHullInternal7Point32neERKS0_.exit:  ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.r = load i32, ptr %i.q, align 4, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.t = load i32, ptr %i.s, align 4, !tbaa !84
  %.not = icmp eq i32 %i.r, %i.t
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK20btConvexHullInternal7Point32neERKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.x = load i32, ptr %i.w, align 8, !tbaa !85
  %i.y = icmp sgt i32 %i.v, %i.x                  ; 2 uses
  %spec.select = select i1 %i.y, ptr %i.f, ptr %i.g
  %spec.select125 = select i1 %i.y, ptr %i.g, ptr %i.f ; 9 uses
  store ptr %spec.select125, ptr %spec.select125, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select125, i64 8
  store ptr %spec.select125, ptr %i.z, align 8, !tbaa !71
  store ptr %spec.select125, ptr %3, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select125, ptr %i.aa, align 8, !tbaa !76
  br label %bb.e

_ZNK20btConvexHullInternal7Point32neERKS0_.exit.thread.thread: ; preds = %bb.c
  store ptr %i.g, ptr %i.f, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.ab, align 8, !tbaa !71
  store ptr %i.f, ptr %i.g, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.f, ptr %i.ac, align 8, !tbaa !71
  %i.ad = icmp slt i32 %i.j, %i.k                 ; 2 uses
  %i.ae = icmp slt i32 %i.m, %i.o                 ; 2 uses
  %or.cond3 = select i1 %.not.i, i1 %i.ae, i1 false
  %or.cond126 = select i1 %i.ad, i1 true, i1 %or.cond3 ; 2 uses
  %spec.select147 = select i1 %or.cond126, ptr %i.f, ptr %i.g
  %spec.select148 = select i1 %or.cond126, ptr %i.g, ptr %i.f
  store ptr %spec.select147, ptr %3, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select148, ptr %i.af, align 8, !tbaa !76
  %or.cond5 = select i1 %i.ad, i1 %.not4.i, i1 false
  %or.cond127 = or i1 %or.cond5, %i.ae            ; 2 uses
  %. = select i1 %or.cond127, ptr %i.f, ptr %i.g
  %.152 = select i1 %or.cond127, ptr %i.g, ptr %i.f
  br label %bb.e

bb.e:                                             ; preds = %_ZNK20btConvexHullInternal7Point32neERKS0_.exit.thread.thread, %bb.d
  %.sink150 = phi ptr [ %., %_ZNK20btConvexHullInternal7Point32neERKS0_.exit.thread.thread ], [ %spec.select125, %bb.d ]
  %.sink = phi ptr [ %.152, %_ZNK20btConvexHullInternal7Point32neERKS0_.exit.thread.thread ], [ %spec.select125, %bb.d ]
  %.1124 = phi ptr [ %i.g, %_ZNK20btConvexHullInternal7Point32neERKS0_.exit.thread.thread ], [ %spec.select, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %i.f, %_ZNK20btConvexHullInternal7Point32neERKS0_.exit.thread.thread ], [ %spec.select125, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sink150, ptr %i.ag, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sink, ptr %i.ah, align 8, !tbaa !63
  %i.ai = tail call noundef ptr @_ZN20btConvexHullInternal11newEdgePairEPNS_6VertexES1_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %.1, ptr noundef nonnull %.1124) ; 6 uses
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
  %i.ao = getelementptr inbounds nuw i8, ptr %.1124, i64 16
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !73
  br label %bb.k

bb.f:                                             ; preds = %_ZNK20btConvexHullInternal7Point32neERKS0_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.ap, align 8, !tbaa !73
  store ptr %i.f, ptr %i.f, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.f, ptr %i.aq, align 8, !tbaa !71
  %i.ar = insertelement <4 x ptr> poison, ptr %i.f, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.as, ptr %3, align 8, !tbaa !72
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81
  %i.av = sext i32 %1 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !72 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !73
  store ptr %i.ax, ptr %i.ax, align 8, !tbaa !74
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !71
  %i.ba = insertelement <4 x ptr> poison, ptr %i.ax, i64 0
  %i.bb = shufflevector <4 x ptr> %i.ba, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.bb, ptr %3, align 8, !tbaa !72
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.bc = sdiv i32 %i.a, 2
  %i.bd = add nsw i32 %i.bc, %1                   ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81 ; 2 uses
  %i.bg = sext i32 %i.bd to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  %.sroa.0.0.copyload = load i32, ptr %i.bk, align 8, !tbaa !87
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 108
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !87
  %i.bl = icmp slt i32 %i.bd, %2
  br i1 %i.bl, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.h
  %5 = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.bg, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !72 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !82
  %i.bq = icmp eq i32 %i.bp, %.sroa.0.0.copyload
  br i1 %i.bq, label %bb.i, label %.critedge.loopexit.split.loop.exit

bb.i:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 108
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !83
  %i.bt = icmp eq i32 %i.bs, %.sroa.4.0.copyload
  br i1 %i.bt, label %_ZNK20btConvexHullInternal7Point32eqERKS0_.exit, label %.critedge.loopexit.split.loop.exit139

_ZNK20btConvexHullInternal7Point32eqERKS0_.exit:  ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !84
  %i.bw = icmp eq i32 %i.bv, %.sroa.5.0.copyload
  br i1 %i.bw, label %bb.j, label %.critedge.loopexit.split.loop.exit143

bb.j:                                             ; preds = %_ZNK20btConvexHullInternal7Point32eqERKS0_.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next, %5
  br i1 %6, label %.lr.ph, label %.critedge, !llvm.loop !88

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.bx = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit139:            ; preds = %bb.i
  %i.by = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit143:            ; preds = %_ZNK20btConvexHullInternal7Point32eqERKS0_.exit
  %i.bz = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit139, %.critedge.loopexit.split.loop.exit143, %bb.h
  %.0.lcssa = phi i32 [ %i.bd, %bb.h ], [ %i.bz, %.critedge.loopexit.split.loop.exit143 ], [ %i.bx, %.critedge.loopexit.split.loop.exit ], [ %i.by, %.critedge.loopexit.split.loop.exit139 ], [ %2, %bb.j ]
  tail call void @_ZN20btConvexHullInternal15computeInternalEiiRNS_16IntermediateHullE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @_ZN20btConvexHullInternal15computeInternalEiiRNS_16IntermediateHullE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.0.lcssa, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @_ZN20btConvexHullInternal5mergeERNS_16IntermediateHullES1_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.f, %.critedge, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20btConvexHullInternal5mergeERNS_16IntermediateHullES1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.btConvexHullInternal::Point32", align 8 ; 7 uses
  %4 = alloca %"class.btConvexHullInternal::Point64", align 8 ; 8 uses
  %5 = alloca %"class.btConvexHullInternal::Point64", align 8 ; 8 uses
  %6 = alloca %"class.btConvexHullInternal::Rational64", align 8 ; 8 uses
  %7 = alloca %"class.btConvexHullInternal::Rational64", align 8 ; 8 uses
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
  %i.l = load i32, ptr %i.k, align 8, !tbaa !47
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !72
  %i.n = call noundef zeroext i1 @_ZN20btConvexHullInternal15mergeProjectionERNS_16IntermediateHullES1_RPNS_6VertexES4_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !72   ; 11 uses
  br i1 %i.n, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !72   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.s = load i32, ptr %i.q, align 4, !tbaa !82   ; 4 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !82   ; 2 uses
  %i.u = sub nsw i32 %i.s, %i.t
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
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = sext i32 %i.z to i64                    ; 7 uses
  %i.ah = sext i32 %i.u to i64                    ; 5 uses
  %i.ai = sub nsw i64 0, %i.ah                    ; 3 uses
  %.neg = mul nsw i64 %i.af, %i.ah                ; 2 uses
  %i.aj = mul nsw i64 %i.af, %i.ag                ; 2 uses
  %i.ak = mul nsw i64 %i.ai, %i.ah
  %i.al = mul nsw i64 %i.ag, %i.ag
  %i.am = sub nsw i64 %i.ak, %i.al                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !73 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store ptr null, ptr %i.c, align 8, !tbaa !90
  %.not185 = icmp eq ptr %i.ao, null
  br i1 %.not185, label %bb.k, label %.preheader388

.preheader388:                                    ; preds = %bb.e, %.critedge
  %.0144396 = phi ptr [ %.0144395, %.critedge ], [ null, %bb.e ] ; 9 uses
  %.0144 = phi ptr [ %i.df, %.critedge ], [ %i.ao, %bb.e ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0144, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !59 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !82 ; 2 uses
  %i.at = sub nsw i32 %i.as, %i.t
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 108
  %i.av = load i32, ptr %i.au, align 4, !tbaa !83 ; 2 uses
  %i.aw = sub nsw i32 %i.av, %i.y
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84 ; 2 uses
  %i.az = sext i32 %i.at to i64                   ; 2 uses
  %i.ba = sext i32 %i.aw to i64                   ; 2 uses
  %i.bb = mul nsw i64 %i.ba, %i.ai
  %i.bc = mul nsw i64 %i.ag, %i.az
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = icmp eq i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.preheader388
  %i.bf = sub nsw i32 %i.ay, %i.ad
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %.neg, %i.az
  %i.bi = mul nsw i64 %i.aj, %i.ba
  %i.bj = add nsw i64 %i.bi, %i.bh
  %i.bk = mul nsw i64 %i.am, %i.bg
  %i.bl = add nsw i64 %i.bj, %i.bk
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %.not186 = icmp eq ptr %.0144396, null
  br i1 %.not186, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %.0144396, align 8, !tbaa !37
  %i.bo = icmp eq ptr %i.bn, %.0144
  %i.bp = getelementptr inbounds nuw i8, ptr %.0144396, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.br = icmp eq ptr %i.bq, %.0144               ; 2 uses
  br i1 %i.bo, label %bb.i, label %_ZN20btConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit

bb.i:                                             ; preds = %bb.h
  br i1 %i.br, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0144396, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !59 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0144, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !59 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 104
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !82
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !82 ; 2 uses
  %i.cc = sub nsw i32 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 108
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !83
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 108
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !83 ; 2 uses
  %i.ch = sub nsw i32 %i.ce, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !84
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !84 ; 2 uses
  %i.cm = sub nsw i32 %i.cj, %i.cl
  %i.cn = sub nsw i32 %i.as, %i.cb
  %i.co = sub nsw i32 %i.av, %i.cg
  %i.cp = sub nsw i32 %i.ay, %i.cl
  %i.cq = sext i32 %i.ch to i64
  %i.cr = sext i32 %i.cp to i64                   ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.cq
  %i.ct = sext i32 %i.cm to i64                   ; 2 uses
  %i.cu = sext i32 %i.co to i64
  %i.cv = mul nsw i64 %i.ct, %i.cu
  %i.cw = sub nsw i64 %i.cs, %i.cv
  %i.cx = sext i32 %i.cn to i64
  %i.cy = mul nsw i64 %i.ct, %i.cx
  %i.cz = sext i32 %i.cc to i64
  %i.da = mul nsw i64 %i.cr, %i.cz
  %.neg386 = sub nsw i64 %i.da, %i.cy
  %i.db = mul nsw i64 %i.cw, %i.ag
  %i.dc = mul i64 %.neg386, %i.ah
  %i.dd = add i64 %i.db, %i.dc
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.critedge, label %.critedge2

_ZN20btConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit: ; preds = %bb.h
  br i1 %i.br, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.j, %bb.g, %_ZN20btConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %.preheader388, %_ZN20btConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit, %.critedge2, %bb.f
  %.0144395 = phi ptr [ %.0144396, %bb.j ], [ %.0144396, %bb.i ], [ %.0144396, %.preheader388 ], [ %.0144396, %_ZN20btConvexHullInternal14getOrientationEPKNS_4EdgeES2_RKNS_7Point32ES5_.exit ], [ %.0144, %.critedge2 ], [ %.0144396, %bb.f ] ; 3 uses
end_hunk_0
