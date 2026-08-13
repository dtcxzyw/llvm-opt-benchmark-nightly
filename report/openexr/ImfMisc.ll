inline.NumInlined: 360
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN7Imf_3_423copyFromDeepFrameBufferERPcPKcS0_lliiiiiiilllNS_10Compressor6FormatENS_9PixelTypeE:bb.a
  %exitcond.not = icmp eq i32 %i.ib, %i.hg
  br i1 %exitcond.not, label %._crit_edge, label %.preheader218, !llvm.loop !398

._crit_edge:                                      ; preds = %.preheader218, %bb.m
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond280.not = icmp eq i32 %i.dp, %lftr.wideiv
  br i1 %exitcond280.not, label %.loopexit, label %bb.m, !llvm.loop !399

bb.n:                                             ; preds = %bb.i
  %i.ic = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ic, ptr noundef nonnull @.str.9)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.ic, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit:                                        ; preds = %._crit_edge, %bb.l, %._crit_edge241, %._crit_edge249, %._crit_edge257, %._crit_edge265, %.preheader219, %.preheader216, %.preheader214, %.preheader211, %.preheader209, %.preheader
  ret void

bb.q:                                             ; preds = %bb.p, %bb.h
  %.sink = phi ptr [ %i.ic, %bb.p ], [ %i.da, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.id, %bb.p ], [ %i.db, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_421fillChannelWithZeroesERPcNS_10Compressor6FormatENS_9PixelTypeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.c [
    i32 0, label %.preheader
    i32 1, label %.preheader46
    i32 2, label %.preheader48
  ]

.preheader48:                                     ; preds = %bb.b
  %.not71 = icmp eq i64 %3, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %.preheader48
  %xtraiter101 = and i64 %3, 1
  %i.b = icmp eq i64 %3, 1
  br i1 %i.b, label %.lr.ph64.epil.preheader, label %.lr.ph64.preheader.new

.lr.ph64.preheader.new:                           ; preds = %.lr.ph64.preheader
  %unroll_iter104 = and i64 %3, -2
  br label %.lr.ph64

.preheader46:                                     ; preds = %bb.b
  %.not72 = icmp eq i64 %3, 0
  br i1 %.not72, label %.loopexit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader46
  %xtraiter106 = and i64 %3, 1
  %i.c = icmp eq i64 %3, 1
  br i1 %i.c, label %.lr.ph66.epil.preheader, label %.lr.ph66.preheader.new

.lr.ph66.preheader.new:                           ; preds = %.lr.ph66.preheader
  %unroll_iter109 = and i64 %3, -2
  br label %.lr.ph66

.preheader:                                       ; preds = %bb.b
  %.not73 = icmp eq i64 %3, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader
  %xtraiter111 = and i64 %3, 1
  %i.d = icmp eq i64 %3, 1
  br i1 %i.d, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter114 = and i64 %3, -2
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %niter115 = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %niter115.next.1, %.lr.ph68 ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.e, align 1, !tbaa !53
  %i.g = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.g, align 1, !tbaa !53
  %i.i = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.i, align 1, !tbaa !53
  %i.k = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.k, align 1, !tbaa !53
  %i.m = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.m, align 1, !tbaa !53
  %i.o = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.o, align 1, !tbaa !53
  %i.q = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.q, align 1, !tbaa !53
  %i.s = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.s, align 1, !tbaa !53
  %niter115.next.1 = add nuw i64 %niter115, 2     ; 2 uses
  %niter115.ncmp.1 = icmp eq i64 %niter115.next.1, %unroll_iter114
  br i1 %niter115.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !400

.lr.ph66:                                         ; preds = %.lr.ph66, %.lr.ph66.preheader.new
  %niter110 = phi i64 [ 0, %.lr.ph66.preheader.new ], [ %niter110.next.1, %.lr.ph66 ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.v, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.u, align 1, !tbaa !53
  %i.w = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.w, align 1, !tbaa !53
  %i.y = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.y, align 1, !tbaa !53
  %i.aa = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.aa, align 1, !tbaa !53
  %niter110.next.1 = add nuw i64 %niter110, 2     ; 2 uses
  %niter110.ncmp.1 = icmp eq i64 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %.loopexit.loopexit91.unr-lcssa, label %.lr.ph66, !llvm.loop !401

.lr.ph64:                                         ; preds = %.lr.ph64, %.lr.ph64.preheader.new
  %niter105 = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %niter105.next.1, %.lr.ph64 ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.ac, align 1, !tbaa !53
  %i.ae = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.ae, align 1, !tbaa !53
  %i.ag = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.ag, align 1, !tbaa !53
  %i.ai = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.ai, align 1, !tbaa !53
  %i.ak = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.ak, align 1, !tbaa !53
  %i.am = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.an, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.am, align 1, !tbaa !53
  %i.ao = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.ao, align 1, !tbaa !53
  %i.aq = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.ar, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.aq, align 1, !tbaa !53
  %niter105.next.1 = add nuw i64 %niter105, 2     ; 2 uses
  %niter105.ncmp.1 = icmp eq i64 %niter105.next.1, %unroll_iter104
  br i1 %niter105.ncmp.1, label %.loopexit.loopexit92.unr-lcssa, label %.lr.ph64, !llvm.loop !402

bb.c:                                             ; preds = %bb.b
  %i.as = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull @.str.9)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  switch i32 %2, label %bb.g [
    i32 0, label %.preheader51
    i32 1, label %.preheader53
    i32 2, label %.preheader53.a
  ]

.preheader53.a:                                   ; preds = %bb.f
  %.not69 = icmp eq i64 %3, 0
  br i1 %.not69, label %.loopexit, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %.preheader53.a
  %i.au = shl nuw i64 %3, 2
  %flatten.overflow = icmp ugt i64 %3, 4611686018427387903
  br i1 %flatten.overflow, label %.preheader50.preheader, label %.preheader55

.preheader50.preheader:                           ; preds = %.lr.ph.preheader.a
  %xtraiter96 = and i64 %3, 1
  %unroll_iter = and i64 %3, -2
  br label %.preheader50.a

.preheader50.a:                                   ; preds = %.preheader50.a, %.preheader50.preheader
  %niter100 = phi i64 [ 0, %.preheader50.preheader ], [ %niter100.next.1, %.preheader50.a ]
  %i.av = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.aw, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.av, align 1, !tbaa !53
  %i.ax = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.ay, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.ax, align 1, !tbaa !53
  %i.az = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.az, align 1, !tbaa !53
  %i.bb = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bb, align 1, !tbaa !53
  %i.bd = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bd, align 1, !tbaa !53
  %i.bf = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bf, align 1, !tbaa !53
  %i.bh = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bi, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bh, align 1, !tbaa !53
  %i.bj = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bk, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bj, align 1, !tbaa !53
  %niter100.next.1 = add nuw i64 %niter100, 2     ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter
  br i1 %niter100.ncmp.1, label %.loopexit.loopexit94.unr-lcssa, label %.preheader50.a, !llvm.loop !403

.preheader53:                                     ; preds = %bb.f
  %.not74 = icmp eq i64 %3, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader53
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %4 = shl nuw i64 %3, 1                          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %.promoted, i8 0, i64 %4, i1 false), !tbaa !45
  %scevgep = getelementptr i8, ptr %.promoted, i64 %4
  store ptr %scevgep, ptr %0, align 8, !tbaa !51
  br label %.loopexit

.preheader51:                                     ; preds = %bb.f
  %.not75 = icmp eq i64 %3, 0
  br i1 %.not75, label %.loopexit, label %.preheader50.lver.check

.preheader50.lver.check:                          ; preds = %.preheader51
  %flatten.tripcount66 = shl nuw i64 %3, 2
  %flatten.overflow67 = icmp ugt i64 %3, 4611686018427387903
  br i1 %flatten.overflow67, label %.preheader50.lver.orig.preheader, label %.preheader50

.preheader50.lver.orig.preheader:                 ; preds = %.preheader50.lver.check
  %xtraiter112 = and i64 %3, 1
  %unroll_iter115 = and i64 %3, -2
  br label %.preheader55.a

.preheader55.a:                                   ; preds = %.preheader55.a, %.preheader50.lver.orig.preheader
  %niter = phi i64 [ 0, %.preheader50.lver.orig.preheader ], [ %niter.next.1, %.preheader55.a ]
  %i.bl = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bl, align 1, !tbaa !53
  %i.bn = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bo, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bn, align 1, !tbaa !53
  %i.bp = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bp, align 1, !tbaa !53
  %i.br = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.br, align 1, !tbaa !53
  %i.bt = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bt, align 1, !tbaa !53
  %i.bv = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store ptr %i.bw, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bv, align 1, !tbaa !53
  %i.bx = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.by, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bx, align 1, !tbaa !53
  %i.bz = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.bz, align 1, !tbaa !53
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter115
  br i1 %niter.ncmp.1, label %.loopexit.loopexit93.unr-lcssa, label %.preheader55.a, !llvm.loop !404

.preheader50:                                     ; preds = %.preheader50.lver.check, %.preheader50
  %.03863 = phi i64 [ %13, %.preheader50 ], [ 0, %.preheader50.lver.check ]
  %5 = load ptr, ptr %0, align 8, !tbaa !51       ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 1
  store ptr %6, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %5, align 1, !tbaa !53
  %7 = load ptr, ptr %0, align 8, !tbaa !51       ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 1
  store ptr %8, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %7, align 1, !tbaa !53
  %9 = load ptr, ptr %0, align 8, !tbaa !51       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 1
  store ptr %10, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %9, align 1, !tbaa !53
  %11 = load ptr, ptr %0, align 8, !tbaa !51      ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 1
  store ptr %12, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %11, align 1, !tbaa !53
  %13 = add nuw i64 %.03863, 4                    ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %13, %flatten.tripcount66
  br i1 %exitcond87.not.3, label %.loopexit, label %.preheader50, !llvm.loop !404

.preheader55:                                     ; preds = %.lr.ph.preheader.a, %.preheader55
  %.03559 = phi i64 [ %22, %.preheader55 ], [ 0, %.lr.ph.preheader.a ]
  %14 = load ptr, ptr %0, align 8, !tbaa !51      ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 1
  store ptr %15, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %14, align 1, !tbaa !53
  %16 = load ptr, ptr %0, align 8, !tbaa !51      ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 1
  store ptr %17, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %16, align 1, !tbaa !53
  %18 = load ptr, ptr %0, align 8, !tbaa !51      ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 1
  store ptr %19, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %18, align 1, !tbaa !53
  %20 = load ptr, ptr %0, align 8, !tbaa !51      ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 1
  store ptr %21, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %20, align 1, !tbaa !53
  %22 = add nuw i64 %.03559, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %22, %i.au
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader55, !llvm.loop !403

bb.g:                                             ; preds = %bb.f
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cb, ptr noundef nonnull @.str.9)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph68
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.loopexit, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph68.preheader
  %lcmp.mod113 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod113)
  %i.cd = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.ce, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cd, align 1, !tbaa !53
  %i.cf = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cf, align 1, !tbaa !53
  %i.ch = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.ch, align 1, !tbaa !53
  %i.cj = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store ptr %i.ck, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cj, align 1, !tbaa !53
  br label %.loopexit

.loopexit.loopexit91.unr-lcssa:                   ; preds = %.lr.ph66
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.loopexit, label %.lr.ph66.epil.preheader

.lr.ph66.epil.preheader:                          ; preds = %.loopexit.loopexit91.unr-lcssa, %.lr.ph66.preheader
  %lcmp.mod108 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.cl = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.cm, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cl, align 1, !tbaa !53
  %i.cn = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cn, align 1, !tbaa !53
  br label %.loopexit

.loopexit.loopexit92.unr-lcssa:                   ; preds = %.lr.ph64
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.loopexit, label %.lr.ph64.epil.preheader

.lr.ph64.epil.preheader:                          ; preds = %.loopexit.loopexit92.unr-lcssa, %.lr.ph64.preheader
  %lcmp.mod103 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.cp = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store ptr %i.cq, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cp, align 1, !tbaa !53
  %i.cr = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.cs, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cr, align 1, !tbaa !53
  %i.ct = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cu, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.ct, align 1, !tbaa !53
  %i.cv = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cw, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cv, align 1, !tbaa !53
  br label %.loopexit

.loopexit.loopexit93.unr-lcssa:                   ; preds = %.preheader55.a
  %lcmp.mod97.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod97.not, label %.loopexit, label %.preheader50.epil.preheader

.preheader50.epil.preheader:                      ; preds = %.loopexit.loopexit93.unr-lcssa
  %lcmp.mod98 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.cx = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store ptr %i.cy, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cx, align 1, !tbaa !53
  %i.cz = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.da, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.cz, align 1, !tbaa !53
  %i.db = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.db, align 1, !tbaa !53
  %i.dd = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store ptr %i.de, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.dd, align 1, !tbaa !53
  br label %.loopexit

.loopexit.loopexit94.unr-lcssa:                   ; preds = %.preheader50.a
  %lcmp.mod.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader55.epil.preheader

.preheader55.epil.preheader:                      ; preds = %.loopexit.loopexit94.unr-lcssa
  %lcmp.mod95 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.df = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store ptr %i.dg, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.df, align 1, !tbaa !53
  %i.dh = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store ptr %i.di, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.dh, align 1, !tbaa !53
  %i.dj = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store ptr %i.dk, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.dj, align 1, !tbaa !53
  %i.dl = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store ptr %i.dm, ptr %0, align 8, !tbaa !51
  store i8 0, ptr %i.dl, align 1, !tbaa !53
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader55, %.preheader55.epil.preheader, %.loopexit.loopexit94.unr-lcssa, %.preheader50, %.preheader50.epil.preheader, %.loopexit.loopexit93.unr-lcssa, %.lr.ph64.epil.preheader, %.loopexit.loopexit92.unr-lcssa, %.lr.ph66.epil.preheader, %.loopexit.loopexit91.unr-lcssa, %.lr.ph68.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader53.a, %.preheader53, %.lr.ph.preheader, %.preheader51, %.preheader48, %.preheader46, %.preheader
  ret void

bb.j:                                             ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.cb, %bb.i ], [ %i.as, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.i ], [ %i.at, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7Imf_3_413usesLongNamesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @_ZNK7Imf_3_46Header5beginEv(ptr noundef nonnull align 8 dereferenceable(49) %0) ; 2 uses
  %i.b = tail call ptr @_ZNK7Imf_3_46Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  %.not20 = icmp eq ptr %i.a, %i.b
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.013.021 = phi ptr [ %i.n, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 32
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.e = icmp ugt i64 %i.d, 31
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !405  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #21
  %i.m = icmp ugt i64 %i.l, 31
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.013.021) #21 ; 2 uses
  %i.o = tail call ptr @_ZNK7Imf_3_46Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  %.not = icmp eq ptr %i.n, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !409

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %0) ; 3 uses
  %i.q = tail call ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p) ; 2 uses
  %i.r = tail call ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p)
  %.not1822 = icmp eq ptr %i.q, %i.r
  br i1 %.not1822, label %.critedge, label %.lr.ph25

.lr.ph25:                                         ; preds = %._crit_edge, %bb.d
  %.sroa.09.023 = phi ptr [ %i.v, %bb.d ], [ %i.q, %._crit_edge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.09.023, i64 32
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #21
  %i.u = icmp ugt i64 %i.t, 31                    ; 3 uses
  br i1 %i.u, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph25
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.023) #21 ; 2 uses
  %i.w = tail call ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p)
  %.not18 = icmp eq ptr %i.v, %i.w
  br i1 %.not18, label %.critedge, label %.lr.ph25, !llvm.loop !410

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph25, %bb.d, %._crit_edge
  %.3 = phi i1 [ %i.u, %.lr.ph25 ], [ false, %._crit_edge ], [ %i.u, %bb.d ], [ true, %bb.b ], [ true, %.lr.ph ]
  ret i1 %.3
}

declare ptr @_ZNK7Imf_3_46Header5beginEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare ptr @_ZNK7Imf_3_46Header3endEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN7Imf_3_431getScanlineChunkOffsetTableSizeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %0) ; 2 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !411
  %i.d = tail call noundef i32 @_ZN7Imf_3_416numLinesInBufferENS_11CompressionE(i32 noundef %i.c)
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.e
  %i.m = sub nsw i64 %i.l, %i.k
  %i.n = sdiv i64 %i.m, %i.e
  %i.o = trunc i64 %i.n to i32
  ret i32 %i.o
}

declare noundef i32 @_ZN7Imf_3_416numLinesInBufferENS_11CompressionE(i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7Imf_3_423getChunkOffsetTableSizeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK7Imf_3_46Header7hasTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %0)
  %i.c = tail call noundef zeroext i1 @_ZN7Imf_3_415isSupportedTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZNK7Imf_3_46Header13hasChunkCountEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header10chunkCountEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull @.str.10)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #19
  resume { ptr, i32 } %i.h

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %0)
  %i.j = tail call noundef zeroext i1 @_ZN7Imf_3_47isTiledERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  br i1 %i.j, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %0) ; 2 uses
  %i.l = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  %i.m = load i32, ptr %i.l, align 4, !tbaa !411
  %i.n = tail call noundef i32 @_ZN7Imf_3_416numLinesInBufferENS_11CompressionE(i32 noundef %i.m)
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !11
  %i.u = sext i32 %i.t to i64
  %i.v = add nsw i64 %i.r, %i.o
  %i.w = sub nsw i64 %i.v, %i.u
  %i.x = sdiv i64 %i.w, %i.o
  %i.y = trunc i64 %i.x to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = tail call noundef i32 @_ZN7Imf_3_428getTiledChunkOffsetTableSizeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.d
  %.0 = phi i32 [ %i.y, %bb.i ], [ %i.z, %bb.j ], [ %i.f, %bb.d ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZNK7Imf_3_46Header7hasTypeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7Imf_3_415isSupportedTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK7Imf_3_46Header13hasChunkCountEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header10chunkCountEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7Imf_3_47isTiledERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef i32 @_ZN7Imf_3_428getTiledChunkOffsetTableSizeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_413WidenFilenameB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.15") align 8 %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::wstring_convert", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 6 uses
  invoke void @_ZNSt7codecvtIwc11__mbstate_tEC2Em(ptr noundef nonnull align 8 dereferenceable(36) %i.a, i64 noundef 0)
          to label %_ZNSt7__cxx1115wstring_convertISt12codecvt_utf8IwLm1114111ELSt12codecvt_mode0EEwSaIwESaIcEEC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.ab, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #23
  br label %common.resume

_ZNSt7__cxx1115wstring_convertISt12codecvt_utf8IwLm1114111ELSt12codecvt_mode0EEwSaIwESaIcEEC2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_0
