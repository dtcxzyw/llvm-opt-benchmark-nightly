Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_strtod?download=true
inline.NumInlined: 82
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@zend_bin_strtod:bb.a
bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.pre = load i8, ptr %i.e, align 1, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = phi i8 [ %.pre, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.018 = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ]
  %i.g = and i8 %i.f, -2
  %or.cond25 = icmp eq i8 %i.g, 48
  br i1 %or.cond25, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.d
  %.ph = phi i8 [ 48, %bb.b ], [ %i.f, %bb.d ]
  %.126.ph = phi ptr [ %0, %bb.b ], [ %.018, %bb.d ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.h = phi i8 [ %i.n, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.01727 = phi double [ %i.m, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.126 = phi ptr [ %i.i, %.lr.ph ], [ %.126.ph, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.126, i64 1 ; 3 uses
  %i.j = fmul double %.01727, 2.000000e+00
  %i.k = uitofp nneg i8 %i.h to double
  %i.l = fadd double %i.j, %i.k
  %i.m = fadd double %i.l, -4.800000e+01          ; 2 uses
  %i.n = load i8, ptr %i.i, align 1, !tbaa !54    ; 2 uses
  %i.o = and i8 %i.n, -2
  %or.cond = icmp eq i8 %i.o, 48
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.017.lcssa = phi double [ 0.000000e+00, %bb.d ], [ %i.m, %.lr.ph ]
  %.not23.lcssa = phi ptr [ %0, %bb.d ], [ %i.i, %.lr.ph ]
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store ptr %.not23.lcssa, ptr %1, align 8, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret double %.017.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zend_gcvt(double noundef %0, i32 noundef %1, i8 noundef signext %2, i8 noundef signext %3, ptr nofree noundef returned writeonly captures(ret: address, provenance) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.inv = icmp slt i32 %1, 0
  br i1 %.inv, label %.split80, label %.split

.split:                                           ; preds = %bb.a
  %i.c = call ptr @zend_dtoa(double noundef %0, i32 noundef 2, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
  br label %bb.b

.split80:                                         ; preds = %bb.a
  %i.d = call ptr @zend_dtoa(double noundef %0, i32 noundef 0, i32 noundef 17, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split80
  %phi.call = phi ptr [ %i.c, %.split ], [ %i.d, %.split80 ] ; 19 uses
  %.078 = phi i32 [ %1, %.split ], [ 17, %.split80 ] ; 2 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !75   ; 11 uses
  %i.f = icmp eq i32 %i.e, 9999
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i32 %.078, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load i8, ptr %i.b, align 1, !tbaa !95, !range !113, !noundef !114
  %i.j = trunc nuw i8 %i.i to i1
  %.pre = load i8, ptr %phi.call, align 1, !tbaa !54 ; 2 uses
  %i.k = icmp eq i8 %.pre, 73
  %i.l = and i1 %i.k, %i.j
  %i.m = select i1 %i.l, ptr @.str.4, ptr @.str.5
  %i.n = icmp eq i8 %.pre, 73
  %i.o = select i1 %i.n, ptr @.str.6, ptr @.str.7
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %4, i64 noundef %i.h, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o) #14 ; 0 uses
  %i.q = getelementptr inbounds i8, ptr %phi.call, i64 -4 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %phi.call, i64 4
  store i32 %i.r, ptr %i.s, align 8, !tbaa !64
  %i.t = shl nuw i32 1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %phi.call, i64 8
  store i32 %i.t, ptr %i.u, align 4, !tbaa !73
  %i.v = icmp sgt i32 %i.r, 7
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.q) #14
  br label %Bfree.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  store ptr %i.y, ptr %i.q, align 8, !tbaa !15
  store ptr %i.q, ptr %i.x, align 8, !tbaa !12
  br label %Bfree.exit.i

Bfree.exit.i:                                     ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1928), align 8, !tbaa !94
  %i.aa = icmp eq ptr %phi.call, %i.z
  br i1 %i.aa, label %zend_freedtoa.exit.sink.split, label %zend_freedtoa.exit

bb.f:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.b, align 1, !tbaa !95, !range !113, !noundef !114
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 45, ptr %4, align 1, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.073 = phi ptr [ %i.ad, %bb.g ], [ %4, %bb.f ] ; 11 uses
  %i.ae = icmp slt i32 %i.e, 0                    ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp samesign ugt i32 %i.e, %.078
  br i1 %i.af, label %bb.l, label %.preheader102

.preheader102:                                    ; preds = %bb.i
  %.not129 = icmp eq i32 %i.e, 0
  br i1 %.not129, label %._crit_edge113, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.preheader102
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.ag = icmp ult i32 %i.e, 4
  br i1 %i.ag, label %.lr.ph112.epil.preheader, label %.lr.ph112.preheader.new

.lr.ph112.preheader.new:                          ; preds = %.lr.ph112.preheader
  %unroll_iter = and i32 %i.e, 2147483644
  br label %.lr.ph112

bb.j:                                             ; preds = %bb.h
  %.old1 = icmp samesign ult i32 %i.e, -3
  br i1 %.old1, label %bb.k, label %.preheader103

bb.k:                                             ; preds = %bb.j
  %i.ah = sub nsw i32 1, %i.e
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ai = add nsw i32 %i.e, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pr = phi i32 [ %i.ai, %bb.l ], [ %i.ah, %bb.k ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %phi.call, i64 1 ; 2 uses
  %i.ak = load i8, ptr %phi.call, align 1, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %.073, i64 1
  store i8 %i.ak, ptr %.073, align 1, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.073, i64 2 ; 2 uses
  store i8 %2, ptr %i.al, align 1, !tbaa !54
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !54  ; 2 uses
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.n, label %.preheader99

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.073, i64 3
  store i8 48, ptr %i.am, align 1, !tbaa !54
  br label %.loopexit100

.preheader99:                                     ; preds = %bb.m, %.preheader99
  %i.aq = phi i8 [ %i.at, %.preheader99 ], [ %i.an, %bb.m ]
  %.174 = phi ptr [ %i.as, %.preheader99 ], [ %i.am, %bb.m ] ; 2 uses
  %.069 = phi ptr [ %i.ar, %.preheader99 ], [ %i.aj, %bb.m ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.069, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.174, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.174, align 1, !tbaa !54
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !54  ; 2 uses
  %.not91 = icmp eq i8 %i.at, 0
  br i1 %.not91, label %.loopexit100, label %.preheader99, !llvm.loop !115

.loopexit100:                                     ; preds = %.preheader99, %bb.n
  %.275 = phi ptr [ %i.ap, %bb.n ], [ %i.as, %.preheader99 ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.275, i64 1
  store i8 %3, ptr %.275, align 1, !tbaa !54
  %. = select i1 %i.ae, i8 45, i8 43
  %.376 = getelementptr inbounds nuw i8, ptr %.275, i64 2 ; 3 uses
  store i8 %., ptr %i.au, align 1, !tbaa !54
  %i.av = icmp samesign ult i32 %.pr, 10
  br i1 %i.av, label %bb.o, label %.preheader

bb.o:                                             ; preds = %.loopexit100
  %i.aw = trunc nuw nsw i32 %.pr to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.275, i64 3
  store i8 %i.ax, ptr %.376, align 1, !tbaa !54
  store i8 0, ptr %i.ay, align 1, !tbaa !54
  br label %.loopexit

.preheader:                                       ; preds = %.loopexit100, %.preheader
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %.preheader ], [ 1, %.loopexit100 ] ; 2 uses
  %.0124 = phi i32 [ %i.az, %.preheader ], [ %.pr, %.loopexit100 ] ; 2 uses
  %.068123 = phi i32 [ %i.ba, %.preheader ], [ 0, %.loopexit100 ]
  %i.az = udiv i32 %.0124, 10
  %i.ba = add nuw nsw i32 %.068123, 1             ; 2 uses
  %.not93 = icmp samesign ult i32 %.0124, 100
  %indvars.iv.next136 = add i64 %indvars.iv135, 1
  br i1 %.not93, label %.lr.ph128.preheader, label %.preheader, !llvm.loop !116

.lr.ph128.preheader:                              ; preds = %.preheader
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.376, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 0, ptr %i.bd, align 1, !tbaa !54
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %.lr.ph128
  %indvars.iv137 = phi i64 [ %indvars.iv135, %.lr.ph128.preheader ], [ %indvars.iv.next138, %.lr.ph128 ] ; 2 uses
  %i.be = phi i32 [ %.pr, %.lr.ph128.preheader ], [ %i.bj, %.lr.ph128 ] ; 3 uses
  %i.bf = urem i32 %i.be, 10
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, 48
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, -1
  %i.bi = getelementptr inbounds i8, ptr %.376, i64 %indvars.iv137
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !54
  %i.bj = udiv i32 %i.be, 10
  %i.bk = icmp ult i32 %i.be, 10
  br i1 %i.bk, label %.loopexit, label %.lr.ph128, !llvm.loop !117

.preheader103:                                    ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.073, i64 1
  store i8 48, ptr %.073, align 1, !tbaa !54
  %i.bm = getelementptr i8, ptr %.073, i64 2
  store i8 %2, ptr %i.bl, align 1, !tbaa !54
  %i.bn = xor i32 %i.e, -1
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bm, i8 48, i64 %i.bp, i1 false), !tbaa !54
  %i.bq = getelementptr i8, ptr %.073, i64 %i.bo
  %scevgep = getelementptr i8, ptr %i.bq, i64 3   ; 2 uses
  %i.br = load i8, ptr %phi.call, align 1, !tbaa !54 ; 2 uses
  %.not90106 = icmp eq i8 %i.br, 0
  br i1 %.not90106, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader103, %.lr.ph
  %i.bs = phi i8 [ %i.bv, %.lr.ph ], [ %i.br, %.preheader103 ]
  %.170108 = phi ptr [ %i.bt, %.lr.ph ], [ %phi.call, %.preheader103 ]
  %.5107 = phi ptr [ %i.bu, %.lr.ph ], [ %scevgep, %.preheader103 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.170108, i64 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.5107, i64 1 ; 2 uses
  store i8 %i.bs, ptr %.5107, align 1, !tbaa !54
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !54  ; 2 uses
  %.not90 = icmp eq i8 %i.bv, 0
  br i1 %.not90, label %._crit_edge, label %.lr.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph, %.preheader103
  %.5.lcssa = phi ptr [ %scevgep, %.preheader103 ], [ %i.bu, %.lr.ph ]
  store i8 0, ptr %.5.lcssa, align 1, !tbaa !54
  br label %.loopexit

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %.271110 = phi ptr [ %phi.call, %.lr.ph112.preheader.new ], [ %.372.3, %.lr.ph112 ] ; 2 uses
  %.6109 = phi ptr [ %.073, %.lr.ph112.preheader.new ], [ %.7.3, %.lr.ph112 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph112.preheader.new ], [ %niter.next.3, %.lr.ph112 ]
  %i.bw = load i8, ptr %.271110, align 1, !tbaa !54 ; 2 uses
  %.not89 = icmp ne i8 %i.bw, 0                   ; 2 uses
  %storemerge = select i1 %.not89, i8 %i.bw, i8 48
  %.372.idx = zext i1 %.not89 to i64
  %.372 = getelementptr inbounds nuw i8, ptr %.271110, i64 %.372.idx ; 2 uses
  %.7 = getelementptr inbounds nuw i8, ptr %.6109, i64 1
  store i8 %storemerge, ptr %.6109, align 1, !tbaa !54
  %i.bx = load i8, ptr %.372, align 1, !tbaa !54  ; 2 uses
  %.not89.1 = icmp ne i8 %i.bx, 0                 ; 2 uses
  %storemerge.1 = select i1 %.not89.1, i8 %i.bx, i8 48
  %.372.idx.1 = zext i1 %.not89.1 to i64
  %.372.1 = getelementptr inbounds nuw i8, ptr %.372, i64 %.372.idx.1 ; 2 uses
  %.7.1 = getelementptr inbounds nuw i8, ptr %.6109, i64 2
  store i8 %storemerge.1, ptr %.7, align 1, !tbaa !54
  %i.by = load i8, ptr %.372.1, align 1, !tbaa !54 ; 2 uses
  %.not89.2 = icmp ne i8 %i.by, 0                 ; 2 uses
  %storemerge.2 = select i1 %.not89.2, i8 %i.by, i8 48
  %.372.idx.2 = zext i1 %.not89.2 to i64
  %.372.2 = getelementptr inbounds nuw i8, ptr %.372.1, i64 %.372.idx.2 ; 2 uses
  %.7.2 = getelementptr inbounds nuw i8, ptr %.6109, i64 3
  store i8 %storemerge.2, ptr %.7.1, align 1, !tbaa !54
  %i.bz = load i8, ptr %.372.2, align 1, !tbaa !54 ; 2 uses
  %.not89.3 = icmp ne i8 %i.bz, 0                 ; 2 uses
  %storemerge.3 = select i1 %.not89.3, i8 %i.bz, i8 48
  %.372.idx.3 = zext i1 %.not89.3 to i64
  %.372.3 = getelementptr inbounds nuw i8, ptr %.372.2, i64 %.372.idx.3 ; 3 uses
  %.7.3 = getelementptr inbounds nuw i8, ptr %.6109, i64 4 ; 3 uses
  store i8 %storemerge.3, ptr %.7.2, align 1, !tbaa !54
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge113.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !119

._crit_edge113.loopexit.unr-lcssa:                ; preds = %.lr.ph112
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge113, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %._crit_edge113.loopexit.unr-lcssa, %.lr.ph112.preheader
  %.271110.epil.init = phi ptr [ %phi.call, %.lr.ph112.preheader ], [ %.372.3, %._crit_edge113.loopexit.unr-lcssa ]
  %.6109.epil.init = phi ptr [ %.073, %.lr.ph112.preheader ], [ %.7.3, %._crit_edge113.loopexit.unr-lcssa ]
  %lcmp.mod154 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph112.epil

.lr.ph112.epil:                                   ; preds = %.lr.ph112.epil, %.lr.ph112.epil.preheader
  %.271110.epil = phi ptr [ %.372.epil, %.lr.ph112.epil ], [ %.271110.epil.init, %.lr.ph112.epil.preheader ] ; 2 uses
  %.6109.epil = phi ptr [ %.7.epil, %.lr.ph112.epil ], [ %.6109.epil.init, %.lr.ph112.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph112.epil ], [ 0, %.lr.ph112.epil.preheader ]
  %i.ca = load i8, ptr %.271110.epil, align 1, !tbaa !54 ; 2 uses
  %.not89.epil = icmp ne i8 %i.ca, 0              ; 2 uses
  %storemerge.epil = select i1 %.not89.epil, i8 %i.ca, i8 48
  %.372.idx.epil = zext i1 %.not89.epil to i64
  %.372.epil = getelementptr inbounds nuw i8, ptr %.271110.epil, i64 %.372.idx.epil ; 2 uses
  %.7.epil = getelementptr inbounds nuw i8, ptr %.6109.epil, i64 1 ; 2 uses
  store i8 %storemerge.epil, ptr %.6109.epil, align 1, !tbaa !54
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge113, label %.lr.ph112.epil, !llvm.loop !120

._crit_edge113:                                   ; preds = %._crit_edge113.loopexit.unr-lcssa, %.lr.ph112.epil, %.preheader102
  %.6.lcssa = phi ptr [ %.073, %.preheader102 ], [ %.7.3, %._crit_edge113.loopexit.unr-lcssa ], [ %.7.epil, %.lr.ph112.epil ] ; 4 uses
  %.271.lcssa = phi ptr [ %phi.call, %.preheader102 ], [ %.372.3, %._crit_edge113.loopexit.unr-lcssa ], [ %.372.epil, %.lr.ph112.epil ] ; 2 uses
  %i.cb = load i8, ptr %.271.lcssa, align 1, !tbaa !54
  %.not = icmp eq i8 %i.cb, 0
  br i1 %.not, label %.loopexit101, label %bb.p

bb.p:                                             ; preds = %._crit_edge113
  %i.cc = icmp eq ptr %.271.lcssa, %phi.call
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 1
  store i8 48, ptr %.6.lcssa, align 1, !tbaa !54
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.8 = phi ptr [ %i.cd, %bb.q ], [ %.6.lcssa, %bb.p ] ; 2 uses
  store i8 %2, ptr %.8, align 1, !tbaa !54
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !75
  %.9116 = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %phi.call, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !54  ; 2 uses
  %.not88117 = icmp eq i8 %i.ch, 0
  br i1 %.not88117, label %.loopexit101, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.r, %.lr.ph121
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph121 ], [ %i.cf, %bb.r ]
  %i.ci = phi i8 [ %i.ck, %.lr.ph121 ], [ %i.ch, %bb.r ]
  %.9119 = phi ptr [ %.9, %.lr.ph121 ], [ %.9116, %bb.r ] ; 2 uses
  store i8 %i.ci, ptr %.9119, align 1, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.9 = getelementptr inbounds nuw i8, ptr %.9119, i64 1 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %phi.call, i64 %indvars.iv.next
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !54  ; 2 uses
  %.not88 = icmp eq i8 %i.ck, 0
  br i1 %.not88, label %.loopexit101, label %.lr.ph121, !llvm.loop !121

.loopexit101:                                     ; preds = %.lr.ph121, %bb.r, %._crit_edge113
  %.10 = phi ptr [ %.6.lcssa, %._crit_edge113 ], [ %.9116, %bb.r ], [ %.9, %.lr.ph121 ]
  store i8 0, ptr %.10, align 1, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph128, %._crit_edge, %.loopexit101, %bb.o
  %i.cl = getelementptr inbounds i8, ptr %phi.call, i64 -4 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !75 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %phi.call, i64 4
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !64
  %i.co = shl nuw i32 1, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %phi.call, i64 8
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !73
  %i.cq = icmp sgt i32 %i.cm, 7
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.cl) #14
  br label %Bfree.exit.i95

bb.t:                                             ; preds = %.loopexit
  %i.cr = sext i32 %i.cm to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.cr ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !12
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !15
  store ptr %i.cl, ptr %i.cs, align 8, !tbaa !12
  br label %Bfree.exit.i95

Bfree.exit.i95:                                   ; preds = %bb.t, %bb.s
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1928), align 8, !tbaa !94
  %i.cv = icmp eq ptr %phi.call, %i.cu
  br i1 %i.cv, label %zend_freedtoa.exit.sink.split, label %zend_freedtoa.exit

zend_freedtoa.exit.sink.split:                    ; preds = %Bfree.exit.i95, %Bfree.exit.i
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1928), align 8, !tbaa !94
  br label %zend_freedtoa.exit

zend_freedtoa.exit:                               ; preds = %zend_freedtoa.exit.sink.split, %Bfree.exit.i95, %Bfree.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @zend_error_noreturn(i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc double @b2d(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #10 {
end_hunk_0
