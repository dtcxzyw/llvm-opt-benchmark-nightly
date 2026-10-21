Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastRegion?download=true
inline.NumInlined: 580
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Z22rcBuildRegionsMonotoneP9rcContextR20rcCompactHeightfieldiii:bb.a
  %i.um = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  store i16 %.sink, ptr %i.um, align 2, !tbaa !93
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv347 ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 14
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !92 ; 3 uses
  %.off.1 = add i16 %i.up, -1
  %switch.1 = icmp ult i16 %.off.1, -2
  br i1 %switch.1, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph323.1
  %i.uq = zext i16 %i.up to i64
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.2, i64 %i.uq
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !86
  %i.ut = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !91
  %i.uv = zext i16 %i.uu to i32
  %i.uw = icmp eq i32 %i.us, %i.uv
  br i1 %i.uw, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph323.1
  %i.ux = add i16 %.3178, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink.1 = phi i16 [ %.3178, %bb.ar ], [ %i.up, %bb.aq ]
  %.3178.1 = phi i16 [ %i.ux, %bb.ar ], [ %.3178, %bb.aq ] ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.un, i64 10
  store i16 %.sink.1, ptr %i.uy, align 2, !tbaa !93
  %indvars.iv.next348.1 = add nuw nsw i64 %indvars.iv347, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph330.loopexit.unr-lcssa, label %.lr.ph323

._crit_edge331:                                   ; preds = %._crit_edge328, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit
  %.2177.lcssa400 = phi i16 [ %.1176335, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit ], [ %.2177.lcssa, %._crit_edge328 ] ; 2 uses
  %indvars.iv.next360 = add nsw i64 %indvars.iv359, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next360 to i32
  %exitcond361.not = icmp eq i32 %i.ok, %lftr.wideiv
  br i1 %exitcond361.not, label %._crit_edge338, label %bb.v

bb.at:                                            ; preds = %.lr.ph330, %._crit_edge328
  %indvars.iv354 = phi i64 [ %i.or, %.lr.ph330 ], [ %indvars.iv.next355, %._crit_edge328 ] ; 2 uses
  %gep404 = getelementptr [4 x i8], ptr %invariant.gep403, i64 %indvars.iv354
  %i.uz = load i32, ptr %gep404, align 4          ; 3 uses
  %i.va = lshr i32 %i.uz, 24                      ; 2 uses
  %.not344 = icmp eq i32 %i.va, 0
  br i1 %.not344, label %._crit_edge328, label %.lr.ph327.preheader

.lr.ph327.preheader:                              ; preds = %bb.at
  %i.vb = and i32 %i.uz, 16777215
  %i.vc = add nuw nsw i32 %i.vb, %i.va
  %i.vd = and i32 %i.uz, 16777215
  %i.ve = zext nneg i32 %i.vd to i64
  %i.vf = zext nneg i32 %i.vc to i64
  br label %.lr.ph327

._crit_edge328:                                   ; preds = %bb.av, %bb.at
  %indvars.iv.next355 = add nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %wide.trip.count357
  br i1 %exitcond358.not, label %._crit_edge331, label %bb.at

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.av
  %indvars.iv351 = phi i64 [ %i.ve, %.lr.ph327.preheader ], [ %indvars.iv.next352, %bb.av ] ; 2 uses
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv351 ; 2 uses
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !71 ; 3 uses
  %.not183 = icmp ne i16 %i.vh, 0
  %i.vi = icmp ult i16 %i.vh, %.1167.lcssa
  %or.cond310 = and i1 %.not183, %i.vi
  br i1 %or.cond310, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph327
  %i.vj = zext i16 %i.vh to i64
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 2
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !93
  store i16 %i.vm, ptr %i.vg, align 2, !tbaa !71
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph327, %bb.au
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %i.vn = icmp samesign ult i64 %indvars.iv.next352, %i.vf
  br i1 %i.vn, label %.lr.ph327, label %._crit_edge328

bb.aw:                                            ; preds = %bb.aw, %.lr.ph342.new
  %indvars.iv362 = phi i64 [ 0, %.lr.ph342.new ], [ %indvars.iv.next363.7, %bb.aw ] ; 10 uses
  %niter705 = phi i64 [ 0, %.lr.ph342.new ], [ %niter705.next.7, %bb.aw ]
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv362
  %i.vp = load i16, ptr %i.vo, align 2, !tbaa !71
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv362
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 2
  store i16 %i.vp, ptr %i.vr, align 2, !tbaa !95
  %indvars.iv.next363 = or disjoint i64 %indvars.iv362, 1 ; 2 uses
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !71
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  store i16 %i.vt, ptr %i.vv, align 2, !tbaa !95
  %indvars.iv.next363.1 = or disjoint i64 %indvars.iv362, 2 ; 2 uses
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.1
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !71
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 2
  store i16 %i.vx, ptr %i.vz, align 2, !tbaa !95
  %indvars.iv.next363.2 = or disjoint i64 %indvars.iv362, 3 ; 2 uses
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.2
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !71
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.2
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 2
  store i16 %i.wb, ptr %i.wd, align 2, !tbaa !95
  %indvars.iv.next363.3 = or disjoint i64 %indvars.iv362, 4 ; 2 uses
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.3
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !71
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.3
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 2
  store i16 %i.wf, ptr %i.wh, align 2, !tbaa !95
  %indvars.iv.next363.4 = or disjoint i64 %indvars.iv362, 5 ; 2 uses
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.4
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !71
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.4
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  store i16 %i.wj, ptr %i.wl, align 2, !tbaa !95
  %indvars.iv.next363.5 = or disjoint i64 %indvars.iv362, 6 ; 2 uses
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.5
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !71
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.5
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 2
  store i16 %i.wn, ptr %i.wp, align 2, !tbaa !95
  %indvars.iv.next363.6 = or disjoint i64 %indvars.iv362, 7 ; 2 uses
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next363.6
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !71
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next363.6
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 2
  store i16 %i.wr, ptr %i.wt, align 2, !tbaa !95
  %indvars.iv.next363.7 = add nuw nsw i64 %indvars.iv362, 8 ; 2 uses
  %niter705.next.7 = add i64 %niter705, 8         ; 2 uses
  %niter705.ncmp.7 = icmp eq i64 %niter705.next.7, %unroll_iter704
  br i1 %niter705.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.aw

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aw
  %lcmp.mod702.not = icmp eq i64 %xtraiter701, 0
  br i1 %lcmp.mod702.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph342
  %indvars.iv362.epil.init = phi i64 [ 0, %.lr.ph342 ], [ %indvars.iv.next363.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod703 = icmp ne i64 %xtraiter701, 0
  call void @llvm.assume(i1 %lcmp.mod703)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv362.epil = phi i64 [ %indvars.iv362.epil.init, %.epil.preheader ], [ %indvars.iv.next363.epil, %bb.ax ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv362.epil
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !71
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv362.epil
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 2
  store i16 %i.wv, ptr %i.wx, align 2, !tbaa !95
  %indvars.iv.next363.epil = add nuw nsw i64 %indvars.iv362.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter701
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.ax, !llvm.loop !152

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.ax, %.preheader, %_ZN13rcScopedTimerD2Ev.exit
  call void @_Z6rcFreePv(ptr noundef %.sroa.11.0.lcssa) #8
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit, %bb.e
  %.2172 = phi i1 [ %i.oz, %.loopexit ], [ false, %bb.e ]
  call void @_Z6rcFreePv(ptr noundef %i.w) #8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.c
  %.3173 = phi i1 [ %.2172, %bb.ay ], [ false, %bb.c ]
  call void @_Z6rcFreePv(ptr noundef %i.n) #8
  %i.wy = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %bb.ba, label %_ZN13rcScopedTimerD2Ev.exit255

bb.ba:                                            ; preds = %bb.az
  %i.xa = load ptr, ptr %0, align 8, !tbaa !21
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 48
  %i.xc = load ptr, ptr %i.xb, align 8
  call void %i.xc(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 20) #8, !call_target !79, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit255

_ZN13rcScopedTimerD2Ev.exit255:                   ; preds = %bb.az, %bb.ba
  ret i1 %.3173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL21mergeAndFilterRegionsP9rcContextiiRtR20rcCompactHeightfieldPtR12rcTempVectorIiE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %4, ptr nofree noundef captures(none) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %class.rcTempVector.3, align 8      ; 9 uses
  %8 = alloca %struct.rcRegion, align 8           ; 10 uses
  %9 = alloca %class.rcTempVector, align 8        ; 18 uses
  %i.a = load i32, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !70   ; 2 uses
  %i.d = load i16, ptr %3, align 2, !tbaa !71
  %10 = freeze i16 %i.d                           ; 5 uses
  %i.e = zext i16 %10 to i32                      ; 2 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.g = zext nneg i32 %i.f to i64                ; 11 uses
  %i.h = shl nuw nsw i64 %i.g, 6
  %i.i = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.h, i32 noundef 1) #8 ; 2 uses
  %.not.i.i = icmp ne ptr %i.i, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i, label %.thread

_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !98
  store i64 %i.g, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 6
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 14
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef %i.f) #8
  br label %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EED2Ev.exit

.preheader454:                                    ; preds = %bb.b
  %i.r = icmp sgt i32 %i.c, 0
  br i1 %i.r, label %.preheader453.lr.ph, label %._crit_edge470.split

.preheader453.lr.ph:                              ; preds = %.preheader454
  %i.s = icmp sgt i32 %i.a, 0
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  br i1 %i.s, label %.preheader453.preheader, label %._crit_edge470.split

.preheader453.preheader:                          ; preds = %.preheader453.lr.ph
  %i.w = zext nneg i32 %i.a to i64                ; 2 uses
  %wide.trip.count540 = zext nneg i32 %i.c to i64
  br label %.preheader453

bb.b:                                             ; preds = %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i, %bb.b
  %.0217458 = phi i32 [ 0, %_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE13destroy_rangeEll.exit.i ], [ %i.aa, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.x = trunc i32 %.0217458 to i16
  store i32 0, ptr %8, align 8, !tbaa !102
  store i16 %i.x, ptr %i.l, align 4, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.m, i8 0, i64 5, i1 false)
  store i16 -1, ptr %i.n, align 4, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %i.o, i8 0, i64 50, i1 false)
  call void @_ZN12rcVectorBaseI8rcRegionL11rcAllocHint1EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(64) %8)
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.y) #8
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !85
  call void @_Z6rcFreePv(ptr noundef %i.z) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.aa = add nuw nsw i32 %.0217458, 1
  %exitcond.not = icmp eq i32 %.0217458, %i.e
  br i1 %exitcond.not, label %.preheader454, label %bb.b

.preheader453:                                    ; preds = %.preheader453.preheader, %._crit_edge468
  %indvars.iv537 = phi i64 [ 0, %.preheader453.preheader ], [ %indvars.iv.next538, %._crit_edge468 ] ; 5 uses
  %i.ab = mul nuw nsw i64 %indvars.iv537, %i.w
  %i.ac = trunc nuw nsw i64 %indvars.iv537 to i32 ; 4 uses
  %i.ad = trunc i64 %indvars.iv537 to i32
  %i.ae = add i32 %i.ad, 1
  %i.af = trunc i64 %indvars.iv537 to i32
  %i.ag = add i32 %i.af, -1
  br label %bb.d

._crit_edge470.split:                             ; preds = %._crit_edge468, %.preheader453.lr.ph, %.preheader454
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.aj = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 128, i32 noundef 1) #8 ; 9 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  %.pre.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !85 ; 8 uses
  %.pre.i.i.i755 = ptrtoaddr ptr %.pre.i.i.i to i64
  br i1 %.not.i.i.i.i.i, label %_ZN12rcTempVectorIiEC2El.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge470.split
  %i.al = load i64, ptr %9, align 8, !tbaa !105   ; 7 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN12rcTempVectorIiEC2El.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %min.iters.check757 = icmp ult i64 %i.al, 8
  %i.an = sub i64 %.pre.i.i.i755, %i.ak
  %diff.check759 = icmp ugt i64 %i.an, -32
  %or.cond957 = select i1 %min.iters.check757, i1 true, i1 %diff.check759
  br i1 %or.cond957, label %.lr.ph.i.i.i.i.i.i.preheader988, label %vector.ph760

vector.ph760:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec761 = and i64 %i.al, 9223372036854775800  ; 3 uses
  br label %vector.body762

vector.body762:                                   ; preds = %vector.body762, %vector.ph760
  %index763 = phi i64 [ 0, %vector.ph760 ], [ %index.next766, %vector.body762 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index763 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index763 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load764 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !86
  %wide.load765 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !86
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load764, ptr %i.ao, align 4, !tbaa !86
  store <4 x i32> %wide.load765, ptr %i.ar, align 4, !tbaa !86
  %index.next766 = add nuw i64 %index763, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next766, %n.vec761
  br i1 %i.as, label %middle.block767, label %vector.body762, !llvm.loop !161

middle.block767:                                  ; preds = %vector.body762
  %cmp.n768 = icmp eq i64 %i.al, %n.vec761
  br i1 %cmp.n768, label %_ZN12rcTempVectorIiEC2El.exit, label %.lr.ph.i.i.i.i.i.i.preheader988

.lr.ph.i.i.i.i.i.i.preheader988:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block767
  %.07.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec761, %middle.block767 ] ; 3 uses
  %xtraiter1000 = and i64 %i.al, 3                ; 2 uses
  %lcmp.mod1001.not = icmp eq i64 %xtraiter1000, 0
  br i1 %lcmp.mod1001.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader988, %.lr.ph.i.i.i.i.i.i.prol
  %.07.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader988 ] ; 3 uses
  %prol.iter1002 = phi i64 [ %prol.iter1002.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader988 ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.07.i.i.i.i.i.i.prol
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.07.i.i.i.i.i.i.prol
  %i.av = load i32, ptr %i.au, align 4, !tbaa !86
  store i32 %i.av, ptr %i.at, align 4, !tbaa !86
  %i.aw = add nuw nsw i64 %.07.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1002.next = add i64 %prol.iter1002, 1 ; 2 uses
  %prol.iter1002.cmp.not = icmp eq i64 %prol.iter1002.next, %xtraiter1000
  br i1 %prol.iter1002.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !162

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader988
  %.07.i.i.i.i.i.i.unr = phi i64 [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader988 ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ax = sub nsw i64 %.07.i.i.i.i.i.i.ph, %i.al
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %_ZN12rcTempVectorIiEC2El.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.07.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.07.i.i.i.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !86
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !86
  %i.bc = add nuw nsw i64 %.07.i.i.i.i.i.i, 1     ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !86
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !86
  %i.bg = add nuw nsw i64 %.07.i.i.i.i.i.i, 2     ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !86
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !86
  %i.bk = add nuw nsw i64 %.07.i.i.i.i.i.i, 3     ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.bk
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !86
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !86
  %i.bo = add nuw nsw i64 %.07.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bo, %i.al
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN12rcTempVectorIiEC2El.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !163

_ZN12rcTempVectorIiEC2El.exit:                    ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block767, %._crit_edge470.split, %bb.c
  call void @_Z6rcFreePv(ptr noundef %.pre.i.i.i) #8
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !85
  store i64 32, ptr %i.ah, align 8, !tbaa !106
  store i64 32, ptr %9, align 8, !tbaa !105
  %i.bp = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 128, i32 noundef 1) #8
  call void @_Z6rcFreePv(ptr noundef null) #8
  br label %bb.ai

._crit_edge468:                                   ; preds = %._crit_edge465
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count540
  br i1 %exitcond541.not, label %._crit_edge470.split, label %.preheader453

bb.d:                                             ; preds = %.preheader453, %._crit_edge465
  %indvars.iv532 = phi i64 [ 0, %.preheader453 ], [ %indvars.iv.next533, %._crit_edge465 ] ; 5 uses
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv532
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ab ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 3 uses
  %i.bu = and i32 %i.bt, 16777215
  %i.bv = lshr i32 %i.bt, 24                      ; 2 uses
  %i.bw = add nuw nsw i32 %i.bu, %i.bv            ; 2 uses
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %._crit_edge465, label %.lr.ph464.preheader

.lr.ph464.preheader:                              ; preds = %bb.d
  %i.bx = and i32 %i.bt, 16777215
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv532 to i32 ; 4 uses
  %i.cb = trunc i64 %indvars.iv532 to i32
  %i.cc = add i32 %i.cb, 1
  br label %.lr.ph464

._crit_edge465:                                   ; preds = %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit, %bb.d
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 2 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next533, %i.w
  br i1 %exitcond536.not, label %._crit_edge468, label %bb.d

.lr.ph464:                                        ; preds = %.lr.ph464.preheader, %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit
  %indvars.iv529 = phi i64 [ %i.by, %.lr.ph464.preheader ], [ %indvars.iv.next530, %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit ] ; 7 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv529 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !71 ; 3 uses
  %i.cf = add i16 %i.ce, -1
  %or.cond254.not = icmp ult i16 %i.cf, %10
  br i1 %or.cond254.not, label %bb.e, label %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit

bb.e:                                             ; preds = %.lr.ph464
  %i.cg = zext i16 %i.ce to i64
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.ch, i64 %i.cg ; 13 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !102
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !102
  %i.cl = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.cm = and i32 %i.cl, 16777215
  %i.cn = icmp samesign ult i32 %i.cm, %i.bw
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 56 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  %i.cs = and i32 %i.cl, 16777215
  %i.ct = zext nneg i32 %i.cs to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_ZL20addUniqueFloorRegionR8rcRegioni.exit, %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 10 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !105 ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %_ZL11walkContouriiiiR20rcCompactHeightfieldPKtR12rcTempVectorIiE.exit, label %bb.o

bb.f:                                             ; preds = %.lr.ph, %_ZL20addUniqueFloorRegionR8rcRegioni.exit
  %indvars.iv = phi i64 [ %i.ct, %.lr.ph ], [ %indvars.iv.next, %_ZL20addUniqueFloorRegionR8rcRegioni.exit ] ; 3 uses
  %i.cx = icmp eq i64 %indvars.iv529, %indvars.iv
  br i1 %i.cx, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !71 ; 3 uses
  %i.da = zext i16 %i.cz to i32                   ; 3 uses
  %i.db = add i16 %i.cz, -1
  %or.cond255.not = icmp ult i16 %i.db, %10
  br i1 %or.cond255.not, label %bb.h, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit

bb.h:                                             ; preds = %bb.g
  %i.dc = icmp eq i16 %i.cz, %i.ce
  br i1 %i.dc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.co, align 1, !tbaa !203
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dd = load i64, ptr %i.cp, align 8, !tbaa !105 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.df = load ptr, ptr %i.cq, align 8, !tbaa !85
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dd
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !86
  %i.di = icmp eq i32 %i.dh, %i.da
  br i1 %i.di, label %_ZL20addUniqueFloorRegionR8rcRegioni.exit, label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %i.dj = load i64, ptr %i.cr, align 8, !tbaa !106 ; 3 uses
  %i.dk = icmp slt i64 %i.dd, %i.dj
  br i1 %i.dk, label %bb.m, label %bb.n, !prof !107

bb.m:                                             ; preds = %._crit_edge.i
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !85
  %i.dm = add nsw i64 %i.dd, 1
  store i64 %i.dm, ptr %i.cp, align 8, !tbaa !105
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dd
  store i32 %i.da, ptr %i.dn, align 4, !tbaa !86
  br label %_ZL20addUniqueFloorRegionR8rcRegioni.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.do = add nsw i64 %i.dj, 1
  %i.dp = shl nsw i64 %i.dj, 1
  %..i.i.i = call i64 @llvm.smax.i64(i64 %i.dp, i64 %i.do) ; 2 uses
  %i.dq = shl i64 %..i.i.i, 2
  %i.dr = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.dq, i32 noundef 1) #8 ; 10 uses
  %.not.i367 = icmp ne ptr %i.dr, null
  %.pre = load i64, ptr %i.cp, align 8, !tbaa !105 ; 9 uses
  %.pre590 = load ptr, ptr %i.cq, align 8, !tbaa !85 ; 8 uses
  %i.ds = icmp sgt i64 %.pre, 0
  %or.cond703 = select i1 %.not.i367, i1 %i.ds, i1 false
  br i1 %or.cond703, label %.lr.ph.i.i368.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit

.lr.ph.i.i368.preheader:                          ; preds = %bb.n
  %.pre590738 = ptrtoaddr ptr %.pre590 to i64
  %i.dt = ptrtoaddr ptr %i.dr to i64
  %min.iters.check741 = icmp ult i64 %.pre, 8
  %i.du = sub i64 %.pre590738, %i.dt
  %diff.check739 = icmp ugt i64 %i.du, -32
  %or.cond958 = select i1 %min.iters.check741, i1 true, i1 %diff.check739
  br i1 %or.cond958, label %.lr.ph.i.i368.preheader990, label %vector.ph742

vector.ph742:                                     ; preds = %.lr.ph.i.i368.preheader
  %n.vec743 = and i64 %.pre, 9223372036854775800  ; 3 uses
  br label %vector.body744

vector.body744:                                   ; preds = %vector.body744, %vector.ph742
  %index745 = phi i64 [ 0, %vector.ph742 ], [ %index.next748, %vector.body744 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index745 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %index745 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load746 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !86
  %wide.load747 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !86
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x i32> %wide.load746, ptr %i.dv, align 4, !tbaa !86
  store <4 x i32> %wide.load747, ptr %i.dy, align 4, !tbaa !86
  %index.next748 = add nuw i64 %index745, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next748, %n.vec743
  br i1 %i.dz, label %middle.block749, label %vector.body744, !llvm.loop !164

middle.block749:                                  ; preds = %vector.body744
  %cmp.n750 = icmp eq i64 %.pre, %n.vec743
  br i1 %cmp.n750, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit, label %.lr.ph.i.i368.preheader990

.lr.ph.i.i368.preheader990:                       ; preds = %.lr.ph.i.i368.preheader, %middle.block749
  %.07.i.i.ph = phi i64 [ 0, %.lr.ph.i.i368.preheader ], [ %n.vec743, %middle.block749 ] ; 3 uses
  %xtraiter = and i64 %.pre, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i368.prol.loopexit, label %.lr.ph.i.i368.prol

.lr.ph.i.i368.prol:                               ; preds = %.lr.ph.i.i368.preheader990, %.lr.ph.i.i368.prol
  %.07.i.i.prol = phi i64 [ %i.ed, %.lr.ph.i.i368.prol ], [ %.07.i.i.ph, %.lr.ph.i.i368.preheader990 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i368.prol ], [ 0, %.lr.ph.i.i368.preheader990 ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.07.i.i.prol
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %.07.i.i.prol
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !86
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !86
  %i.ed = add nuw nsw i64 %.07.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i368.prol.loopexit, label %.lr.ph.i.i368.prol, !llvm.loop !165

.lr.ph.i.i368.prol.loopexit:                      ; preds = %.lr.ph.i.i368.prol, %.lr.ph.i.i368.preheader990
  %.07.i.i.unr = phi i64 [ %.07.i.i.ph, %.lr.ph.i.i368.preheader990 ], [ %i.ed, %.lr.ph.i.i368.prol ]
  %i.ee = sub nsw i64 %.07.i.i.ph, %.pre
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit, label %.lr.ph.i.i368

.lr.ph.i.i368:                                    ; preds = %.lr.ph.i.i368.prol.loopexit, %.lr.ph.i.i368
  %.07.i.i = phi i64 [ %i.ev, %.lr.ph.i.i368 ], [ %.07.i.i.unr, %.lr.ph.i.i368.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.07.i.i
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %.07.i.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !86
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !86
  %i.ej = add nuw nsw i64 %.07.i.i, 1             ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %i.ej
  %i.em = load i32, ptr %i.el, align 4, !tbaa !86
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !86
  %i.en = add nuw nsw i64 %.07.i.i, 2             ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.en
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %i.en
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !86
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !86
  %i.er = add nuw nsw i64 %.07.i.i, 3             ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.pre590, i64 %i.er
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !86
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !86
  %i.ev = add nuw nsw i64 %.07.i.i, 4             ; 2 uses
  %exitcond.not.i.i369.3 = icmp eq i64 %i.ev, %.pre
  br i1 %exitcond.not.i.i369.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit, label %.lr.ph.i.i368, !llvm.loop !166

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit: ; preds = %.lr.ph.i.i368.prol.loopexit, %.lr.ph.i.i368, %middle.block749, %bb.n
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %.pre
  store i32 %i.da, ptr %i.ew, align 4, !tbaa !86
  %i.ex = add nsw i64 %.pre, 1
  store i64 %i.ex, ptr %i.cp, align 8, !tbaa !105
  store i64 %..i.i.i, ptr %i.cr, align 8, !tbaa !106
  call void @_Z6rcFreePv(ptr noundef %.pre590) #8
  store ptr %i.dr, ptr %i.cq, align 8, !tbaa !85
  br label %_ZL20addUniqueFloorRegionR8rcRegioni.exit

_ZL20addUniqueFloorRegionR8rcRegioni.exit:        ; preds = %bb.l, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit, %bb.m, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next, %i.bz
  br i1 %exitcond524.not, label %._crit_edge, label %bb.f

bb.o:                                             ; preds = %._crit_edge
  %i.ey = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv529
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !74
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ci, i64 6
  store i8 %i.fa, ptr %i.fb, align 2, !tbaa !108
  %i.fc = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv529
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4            ; 4 uses
  %i.fg = and i32 %i.ff, 16777215                 ; 2 uses
  %i.fh = load i16, ptr %i.cd, align 2, !tbaa !71
  %i.fi = zext i16 %i.fh to i32                   ; 4 uses
  %i.fj = and i32 %i.ff, 63                       ; 2 uses
  %.not.i281 = icmp eq i32 %i.fj, 63
  br i1 %.not.i281, label %_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.fl = load i32, ptr %4, align 8, !tbaa !69
  %i.fm = mul nsw i32 %i.fl, %i.ac
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr [4 x i8], ptr %i.fk, i64 %indvars.iv532
  %i.fp = getelementptr i8, ptr %i.fo, i64 -4
  %i.fq = getelementptr [4 x i8], ptr %i.fp, i64 %i.fn
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = and i32 %i.fr, 16777215
  %i.ft = add nuw nsw i32 %i.fs, %i.fj
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !71
  %i.fx = zext i16 %i.fw to i32
  br label %_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit

_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit: ; preds = %bb.o, %bb.p
  %.019.i = phi i32 [ %i.fx, %bb.p ], [ 0, %bb.o ]
  %.not442 = icmp eq i32 %.019.i, %i.fi
  br i1 %.not442, label %bb.q, label %bb.w

bb.q:                                             ; preds = %_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit
  %i.fy = lshr i32 %i.ff, 6
  %i.fz = and i32 %i.fy, 63                       ; 2 uses
  %.not.i281.1 = icmp eq i32 %i.fz, 63
  br i1 %.not.i281.1, label %_ZL11isSolidEdgeR20rcCompactHeightfieldPKtiiii.exit.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ga = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.gb = load i32, ptr %4, align 8, !tbaa !69
end_hunk_0
begin_hunk_1_@_ZL21mergeAndFilterRegionsP9rcContextiiRtR20rcCompactHeightfieldPtR12rcTempVectorIiE:bb.a
  store i64 %i.rv, ptr %9, align 8, !tbaa !105
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.rr
  store i32 %i.rq, ptr %i.rw, align 4, !tbaa !86
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293

bb.as:                                            ; preds = %bb.aq
  %i.rx = add nsw i64 %i.rs, 1
  %i.ry = icmp sgt i64 %i.rs, 4611686018427387902
  %i.rz = shl nsw i64 %i.rs, 1
  %..i.i291 = call i64 @llvm.smax.i64(i64 %i.rz, i64 %i.rx)
  %.0.i.i292 = select i1 %i.ry, i64 9223372036854775807, i64 %..i.i291, !prof !109 ; 2 uses
  %i.sa = shl i64 %.0.i.i292, 2
  %i.sb = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.sa, i32 noundef 1) #8 ; 10 uses
  %.not.i385 = icmp ne ptr %i.sb, null
  %.pre596 = load i64, ptr %9, align 8, !tbaa !105 ; 9 uses
  %.pre597 = load ptr, ptr %i.ai, align 8, !tbaa !85 ; 8 uses
  %i.sc = icmp sgt i64 %.pre596, 0
  %or.cond706 = select i1 %.not.i385, i1 %i.sc, i1 false
  br i1 %or.cond706, label %.lr.ph.i.i386.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389

.lr.ph.i.i386.preheader:                          ; preds = %bb.as
  %.pre597771 = ptrtoaddr ptr %.pre597 to i64
  %i.sd = ptrtoaddr ptr %i.sb to i64
  %min.iters.check774 = icmp ult i64 %.pre596, 8
  %i.se = sub i64 %.pre597771, %i.sd
  %diff.check772 = icmp ugt i64 %i.se, -32
  %or.cond963 = select i1 %min.iters.check774, i1 true, i1 %diff.check772
  br i1 %or.cond963, label %.lr.ph.i.i386.preheader985, label %vector.ph775

vector.ph775:                                     ; preds = %.lr.ph.i.i386.preheader
  %n.vec776 = and i64 %.pre596, 9223372036854775800 ; 3 uses
  br label %vector.body777

vector.body777:                                   ; preds = %vector.body777, %vector.ph775
  %index778 = phi i64 [ 0, %vector.ph775 ], [ %index.next781, %vector.body777 ] ; 3 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %index778 ; 2 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.pre597, i64 %index778 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %wide.load779 = load <4 x i32>, ptr %i.sg, align 4, !tbaa !86
  %wide.load780 = load <4 x i32>, ptr %i.sh, align 4, !tbaa !86
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  store <4 x i32> %wide.load779, ptr %i.sf, align 4, !tbaa !86
  store <4 x i32> %wide.load780, ptr %i.si, align 4, !tbaa !86
  %index.next781 = add nuw i64 %index778, 8       ; 2 uses
  %i.sj = icmp eq i64 %index.next781, %n.vec776
  br i1 %i.sj, label %middle.block782, label %vector.body777, !llvm.loop !176

middle.block782:                                  ; preds = %vector.body777
  %cmp.n783 = icmp eq i64 %.pre596, %n.vec776
  br i1 %cmp.n783, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389, label %.lr.ph.i.i386.preheader985

.lr.ph.i.i386.preheader985:                       ; preds = %.lr.ph.i.i386.preheader, %middle.block782
  %.07.i.i387.ph = phi i64 [ 0, %.lr.ph.i.i386.preheader ], [ %n.vec776, %middle.block782 ] ; 3 uses
  %xtraiter1006 = and i64 %.pre596, 3             ; 2 uses
  %lcmp.mod1007.not = icmp eq i64 %xtraiter1006, 0
  br i1 %lcmp.mod1007.not, label %.lr.ph.i.i386.prol.loopexit, label %.lr.ph.i.i386.prol

.lr.ph.i.i386.prol:                               ; preds = %.lr.ph.i.i386.preheader985, %.lr.ph.i.i386.prol
  %.07.i.i387.prol = phi i64 [ %i.sn, %.lr.ph.i.i386.prol ], [ %.07.i.i387.ph, %.lr.ph.i.i386.preheader985 ] ; 3 uses
  %prol.iter1008 = phi i64 [ %prol.iter1008.next, %.lr.ph.i.i386.prol ], [ 0, %.lr.ph.i.i386.preheader985 ]
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.07.i.i387.prol
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.pre597, i64 %.07.i.i387.prol
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !86
  store i32 %i.sm, ptr %i.sk, align 4, !tbaa !86
  %i.sn = add nuw nsw i64 %.07.i.i387.prol, 1     ; 2 uses
  %prol.iter1008.next = add i64 %prol.iter1008, 1 ; 2 uses
  %prol.iter1008.cmp.not = icmp eq i64 %prol.iter1008.next, %xtraiter1006
  br i1 %prol.iter1008.cmp.not, label %.lr.ph.i.i386.prol.loopexit, label %.lr.ph.i.i386.prol, !llvm.loop !177

.lr.ph.i.i386.prol.loopexit:                      ; preds = %.lr.ph.i.i386.prol, %.lr.ph.i.i386.preheader985
  %.07.i.i387.unr = phi i64 [ %.07.i.i387.ph, %.lr.ph.i.i386.preheader985 ], [ %i.sn, %.lr.ph.i.i386.prol ]
  %i.so = sub nsw i64 %.07.i.i387.ph, %.pre596
  %i.sp = icmp ugt i64 %i.so, -4
  br i1 %i.sp, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389, label %.lr.ph.i.i386

.lr.ph.i.i386:                                    ; preds = %.lr.ph.i.i386.prol.loopexit, %.lr.ph.i.i386
  %.07.i.i387 = phi i64 [ %i.tf, %.lr.ph.i.i386 ], [ %.07.i.i387.unr, %.lr.ph.i.i386.prol.loopexit ] ; 6 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.07.i.i387
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.pre597, i64 %.07.i.i387
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !86
  store i32 %i.ss, ptr %i.sq, align 4, !tbaa !86
  %i.st = add nuw nsw i64 %.07.i.i387, 1          ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.st
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.pre597, i64 %i.st
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !86
  store i32 %i.sw, ptr %i.su, align 4, !tbaa !86
  %i.sx = add nuw nsw i64 %.07.i.i387, 2          ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.sx
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.pre597, i64 %i.sx
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !86
  store i32 %i.ta, ptr %i.sy, align 4, !tbaa !86
  %i.tb = add nuw nsw i64 %.07.i.i387, 3          ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.tb
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.pre597, i64 %i.tb
  %i.te = load i32, ptr %i.td, align 4, !tbaa !86
  store i32 %i.te, ptr %i.tc, align 4, !tbaa !86
  %i.tf = add nuw nsw i64 %.07.i.i387, 4          ; 2 uses
  %exitcond.not.i.i388.3 = icmp eq i64 %i.tf, %.pre596
  br i1 %exitcond.not.i.i388.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389, label %.lr.ph.i.i386, !llvm.loop !178

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389: ; preds = %.lr.ph.i.i386.prol.loopexit, %.lr.ph.i.i386, %middle.block782, %bb.as
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %.pre596
  store i32 %i.rq, ptr %i.tg, align 4, !tbaa !86
  %i.th = add nsw i64 %.pre596, 1
  store i64 %i.th, ptr %9, align 8, !tbaa !105
  store i64 %.0.i.i292, ptr %i.ah, align 8, !tbaa !106
  call void @_Z6rcFreePv(ptr noundef %.pre597) #8
  store ptr %i.sb, ptr %i.ai, align 8, !tbaa !85
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293: ; preds = %bb.ar, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit389
  store i8 1, ptr %i.rl, align 8, !tbaa !204
  %.pre598 = load i64, ptr %i.qz, align 8, !tbaa !105
  br label %bb.at

bb.at:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293, %bb.ao, %bb.ap, %bb.an
  %i.ti = phi i64 [ %i.rd, %bb.an ], [ %i.rd, %bb.ap ], [ %i.rd, %bb.ao ], [ %.pre598, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293 ] ; 2 uses
  %.2210 = phi i1 [ true, %bb.an ], [ %.1209471, %bb.ap ], [ %.1209471, %bb.ao ], [ %.1209471, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit293 ] ; 2 uses
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.tj = icmp sgt i64 %i.ti, %indvars.iv.next543
  br i1 %i.tj, label %bb.an, label %.loopexit448

._crit_edge481:                                   ; preds = %.loopexit448
  %i.tk = icmp sge i32 %i.pm, %1
  %or.cond = select i1 %i.tk, i1 true, i1 %.1209.lcssa
  br i1 %or.cond, label %.loopexit450, label %.lr.ph488

.lr.ph488:                                        ; preds = %._crit_edge481
  %i.tl = load ptr, ptr %i.k, align 8, !tbaa !98  ; 6 uses
  %i.tm = add nuw i64 %.sroa.0.0475, 1            ; 2 uses
  %i.tn = icmp eq i64 %.sroa.0.0475, 0
  br i1 %i.tn, label %.epil.preheader, label %.lr.ph488.new

.lr.ph488.new:                                    ; preds = %.lr.ph488
  %unroll_iter = and i64 %i.tm, -2
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph488.new
  %indvars.iv544 = phi i64 [ 0, %.lr.ph488.new ], [ %indvars.iv.next545.1, %bb.au ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph488.new ], [ %niter.next.1, %bb.au ]
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.3, i64 %indvars.iv544 ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !86
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [64 x i8], ptr %i.tl, i64 %i.tq
  store i32 0, ptr %i.tr, align 8, !tbaa !102
  %i.ts = load i32, ptr %i.to, align 4, !tbaa !86
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [64 x i8], ptr %i.tl, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  store i16 0, ptr %i.tv, align 4, !tbaa !103
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.3, i64 %indvars.iv544
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 4 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !86
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [64 x i8], ptr %i.tl, i64 %i.tz
  store i32 0, ptr %i.ua, align 8, !tbaa !102
  %i.ub = load i32, ptr %i.tx, align 4, !tbaa !86
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [64 x i8], ptr %i.tl, i64 %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  store i16 0, ptr %i.ue, align 4, !tbaa !103
  %indvars.iv.next545.1 = add nuw nsw i64 %indvars.iv544, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit450.loopexit.unr-lcssa, label %bb.au

.loopexit450.loopexit.unr-lcssa:                  ; preds = %bb.au
  %i.uf = and i64 %.sroa.0.0475, 1
  %lcmp.mod1010.not.not = icmp eq i64 %i.uf, 0
  br i1 %lcmp.mod1010.not.not, label %.epil.preheader, label %.loopexit450

.epil.preheader:                                  ; preds = %.loopexit450.loopexit.unr-lcssa, %.lr.ph488
  %indvars.iv544.epil.init = phi i64 [ 0, %.lr.ph488 ], [ %indvars.iv.next545.1, %.loopexit450.loopexit.unr-lcssa ]
  %lcmp.mod1011 = trunc i64 %i.tm to i1
  call void @llvm.assume(i1 %lcmp.mod1011)
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.3, i64 %indvars.iv544.epil.init ; 2 uses
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !86
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [64 x i8], ptr %i.tl, i64 %i.ui
  store i32 0, ptr %i.uj, align 8, !tbaa !102
  %i.uk = load i32, ptr %i.ug, align 4, !tbaa !86
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [64 x i8], ptr %i.tl, i64 %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  store i16 0, ptr %i.un, align 4, !tbaa !103
  br label %.loopexit450

.loopexit450:                                     ; preds = %.epil.preheader, %.loopexit450.loopexit.unr-lcssa, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit, %._crit_edge481, %bb.aj, %bb.ai
  %.sroa.12.2 = phi i64 [ %.sroa.12.0489, %bb.ai ], [ %.sroa.12.0489, %bb.aj ], [ %.sroa.12.3, %._crit_edge481 ], [ %.sroa.12.0489, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit ], [ %.sroa.12.3, %.loopexit450.loopexit.unr-lcssa ], [ %.sroa.12.3, %.epil.preheader ]
  %.sroa.15.2 = phi ptr [ %.sroa.15.0490, %bb.ai ], [ %.sroa.15.0490, %bb.aj ], [ %.sroa.15.3, %._crit_edge481 ], [ %.sroa.15.0490, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit ], [ %.sroa.15.3, %.loopexit450.loopexit.unr-lcssa ], [ %.sroa.15.3, %.epil.preheader ] ; 2 uses
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %exitcond552.not = icmp eq i64 %indvars.iv.next549, %i.g
  br i1 %exitcond552.not, label %.preheader447, label %bb.ai

bb.av:                                            ; preds = %_ZL25isRegionConnectedToBorderRK8rcRegion.exit
  %i.uo = icmp sgt i32 %.3204, 0
  br i1 %i.uo, label %.preheader447.backedge, label %.preheader444

.preheader444:                                    ; preds = %bb.av
  %i.up = load ptr, ptr %i.k, align 8, !tbaa !98  ; 9 uses
  %i.uq = zext i16 %10 to i64
  %xtraiter1028 = and i64 %i.g, 3                 ; 3 uses
  %i.ur = icmp ult i16 %10, 3
  br i1 %i.ur, label %.epil.preheader1027, label %.preheader444.new

.preheader444.new:                                ; preds = %.preheader444
  %unroll_iter1031 = and i64 %i.g, 131068
  br label %bb.cp

.preheader447:                                    ; preds = %.loopexit450, %.preheader447.backedge
  %indvars.iv561 = phi i64 [ %indvars.iv561.be, %.preheader447.backedge ], [ 0, %.loopexit450 ] ; 2 uses
  %.0201500 = phi i32 [ %.0201500.be, %.preheader447.backedge ], [ 0, %.loopexit450 ] ; 8 uses
  %i.us = load ptr, ptr %i.k, align 8, !tbaa !98  ; 3 uses
  %i.ut = getelementptr inbounds nuw [64 x i8], ptr %i.us, i64 %indvars.iv561 ; 16 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  %i.uv = load i16, ptr %i.uu, align 4, !tbaa !103 ; 6 uses
  %or.cond258 = icmp slt i16 %i.uv, 1
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 9
  %i.ux = load i8, ptr %i.uw, align 1, !range !18
  %i.uy = trunc nuw i8 %i.ux to i1
  %or.cond267 = select i1 %or.cond258, i1 true, i1 %i.uy
  br i1 %or.cond267, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit, label %bb.aw

bb.aw:                                            ; preds = %.preheader447
  %i.uz = load i32, ptr %i.ut, align 8, !tbaa !102 ; 2 uses
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.vb = icmp sgt i32 %i.uz, %2
  %i.vc = getelementptr i8, ptr %i.ut, i64 16
  %.val = load i64, ptr %i.vc, align 8            ; 8 uses
  br i1 %i.vb, label %bb.ay, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.vd = getelementptr i8, ptr %i.ut, i64 32
  %.val270 = load ptr, ptr %i.vd, align 8
  %i.ve = icmp sgt i64 %.val, 0
  br i1 %i.ve, label %.lr.ph.i295, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit

bb.az:                                            ; preds = %.lr.ph.i295
  %indvars.iv.next.i297 = add nuw nsw i64 %indvars.iv.i296, 1 ; 2 uses
  %exitcond.not.i298 = icmp eq i64 %indvars.iv.next.i297, %.val
  br i1 %exitcond.not.i298, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit.thread, label %.lr.ph.i295

.lr.ph.i295:                                      ; preds = %bb.ay, %bb.az
  %indvars.iv.i296 = phi i64 [ %indvars.iv.next.i297, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.val270, i64 %indvars.iv.i296
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !86
  %i.vh = icmp eq i32 %i.vg, 0
  br i1 %i.vh, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit, label %bb.az

_ZL25isRegionConnectedToBorderRK8rcRegion.exit.thread: ; preds = %bb.az, %bb.ax
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ut, i64 16 ; 5 uses
  %i.vj = icmp sgt i64 %.val, 0
  br i1 %i.vj, label %.lr.ph496, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit

.lr.ph496:                                        ; preds = %_ZL25isRegionConnectedToBorderRK8rcRegion.exit.thread
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !85 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ut, i64 6
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ut, i64 40
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ut, i64 56
  %i.vp = zext nneg i16 %i.uv to i32              ; 3 uses
  %min.iters.check939 = icmp ult i64 %.val, 8
  %n.vec941 = and i64 %.val, 9223372036854775800  ; 3 uses
  %cmp.n953 = icmp eq i64 %.val, %n.vec941
  %broadcast.splatinsert925 = insertelement <4 x i32> poison, i32 %i.vp, i64 0
  %broadcast.splat926 = shufflevector <4 x i32> %broadcast.splatinsert925, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.ba

._crit_edge497:                                   ; preds = %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326
  %.not242 = icmp eq i16 %.3, %i.uv
  br i1 %.not242, label %_ZL25isRegionConnectedToBorderRK8rcRegion.exit, label %bb.bh

bb.ba:                                            ; preds = %.lr.ph496, %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326
  %indvars.iv553 = phi i64 [ 0, %.lr.ph496 ], [ %indvars.iv.next554, %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326 ] ; 2 uses
  %.0194494 = phi i16 [ %i.uv, %.lr.ph496 ], [ %.3, %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326 ] ; 7 uses
  %.0196493 = phi i32 [ 268435455, %.lr.ph496 ], [ %.3199, %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326 ] ; 8 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv553
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !86 ; 2 uses
  %i.vs = and i32 %i.vr, 32768
  %.not245 = icmp eq i32 %i.vs, 0
  br i1 %.not245, label %bb.bb, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326

bb.bb:                                            ; preds = %bb.ba
  %i.vt = sext i32 %i.vr to i64
  %i.vu = getelementptr inbounds [64 x i8], ptr %i.us, i64 %i.vt ; 8 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vw = load i16, ptr %i.vv, align 4, !tbaa !103 ; 4 uses
  %or.cond259 = icmp slt i16 %i.vw, 1
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 9
  %i.vy = load i8, ptr %i.vx, align 1, !range !18
  %i.vz = trunc nuw i8 %i.vy to i1
  %or.cond262 = select i1 %or.cond259, i1 true, i1 %i.vz
  %i.wa = load i32, ptr %i.vu, align 8            ; 3 uses
  %i.wb = icmp sge i32 %i.wa, %.0196493
  %or.cond269.not = select i1 %or.cond262, i1 true, i1 %i.wb
  br i1 %or.cond269.not, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.wc = getelementptr i8, ptr %i.vu, i64 6
  %.val274 = load i8, ptr %i.wc, align 2, !tbaa !108
  %i.wd = load i8, ptr %i.vm, align 2, !tbaa !108
  %.not.i299 = icmp eq i8 %i.wd, %.val274
  br i1 %.not.i299, label %.lr.ph.i303, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326

.lr.ph.i303:                                      ; preds = %bb.bc
  %i.we = zext nneg i16 %i.vw to i32              ; 3 uses
  br i1 %min.iters.check939, label %scalar.ph938.preheader, label %vector.ph940

vector.ph940:                                     ; preds = %.lr.ph.i303
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %i.we, i64 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %vector.ph940
  %index945 = phi i64 [ 0, %vector.ph940 ], [ %index.next950, %vector.body944 ] ; 2 uses
  %vec.phi946 = phi <4 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.wl, %vector.body944 ]
  %vec.phi947 = phi <4 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.wm, %vector.body944 ]
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %index945 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %wide.load948 = load <4 x i32>, ptr %i.wf, align 4, !tbaa !86
  %wide.load949 = load <4 x i32>, ptr %i.wg, align 4, !tbaa !86
  %i.wh = icmp eq <4 x i32> %wide.load948, %broadcast.splat943
  %i.wi = icmp eq <4 x i32> %wide.load949, %broadcast.splat943
  %i.wj = zext <4 x i1> %i.wh to <4 x i32>
  %i.wk = zext <4 x i1> %i.wi to <4 x i32>
  %i.wl = add <4 x i32> %vec.phi946, %i.wj        ; 2 uses
  %i.wm = add <4 x i32> %vec.phi947, %i.wk        ; 2 uses
  %index.next950 = add nuw i64 %index945, 8       ; 2 uses
  %i.wn = icmp eq i64 %index.next950, %n.vec941
  br i1 %i.wn, label %middle.block951, label %vector.body944, !llvm.loop !179

middle.block951:                                  ; preds = %vector.body944
  %bin.rdx952 = add <4 x i32> %i.wm, %i.wl
  %i.wo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx952) ; 2 uses
  br i1 %cmp.n953, label %._crit_edge.i307, label %scalar.ph938.preheader

scalar.ph938.preheader:                           ; preds = %.lr.ph.i303, %middle.block951
  %indvars.iv.i304.ph = phi i64 [ 0, %.lr.ph.i303 ], [ %n.vec941, %middle.block951 ]
  %.0192.i.ph = phi i32 [ 0, %.lr.ph.i303 ], [ %i.wo, %middle.block951 ]
  br label %scalar.ph938

._crit_edge.i307:                                 ; preds = %scalar.ph938, %middle.block951
  %spec.select.i.lcssa = phi i32 [ %i.wo, %middle.block951 ], [ %spec.select.i, %scalar.ph938 ]
  %i.wp = icmp samesign ugt i32 %spec.select.i.lcssa, 1
  br i1 %i.wp, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326, label %.preheader.i302

.preheader.i302:                                  ; preds = %._crit_edge.i307
  %i.wq = load i64, ptr %i.vn, align 8, !tbaa !105 ; 2 uses
  %.not244.i = icmp slt i64 %i.wq, 1
  br i1 %.not244.i, label %.preheader1.i311, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %.preheader.i302
  %i.wr = load ptr, ptr %i.vo, align 8, !tbaa !85
  br label %bb.be

scalar.ph938:                                     ; preds = %scalar.ph938.preheader, %scalar.ph938
  %indvars.iv.i304 = phi i64 [ %indvars.iv.next.i305, %scalar.ph938 ], [ %indvars.iv.i304.ph, %scalar.ph938.preheader ] ; 2 uses
  %.0192.i = phi i32 [ %spec.select.i, %scalar.ph938 ], [ %.0192.i.ph, %scalar.ph938.preheader ]
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv.i304
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !86
  %i.wu = icmp eq i32 %i.wt, %i.we
  %i.wv = zext i1 %i.wu to i32
  %spec.select.i = add nuw nsw i32 %.0192.i, %i.wv ; 2 uses
  %indvars.iv.next.i305 = add nuw nsw i64 %indvars.iv.i304, 1 ; 2 uses
  %exitcond.not.i306 = icmp eq i64 %indvars.iv.next.i305, %.val
  br i1 %exitcond.not.i306, label %._crit_edge.i307, label %scalar.ph938, !llvm.loop !180

bb.bd:                                            ; preds = %bb.be
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1 ; 2 uses
  %exitcond14.not.i = icmp eq i64 %indvars.iv.next12.i, %i.wq
  br i1 %exitcond14.not.i, label %.preheader1.i311, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph6.i
  %indvars.iv11.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next12.i, %bb.bd ] ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv11.i
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !86
  %.not17.i = icmp eq i32 %i.wx, %i.we
  br i1 %.not17.i, label %_ZL18canMergeWithRegionRK8rcRegionS1_.exit326, label %bb.bd

.preheader1.i311:                                 ; preds = %bb.bd, %.preheader.i302
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !105 ; 5 uses
  %i.xa = icmp sgt i64 %i.wz, 0
  br i1 %i.xa, label %.lr.ph.i319, label %.preheader.i312

.lr.ph.i319:                                      ; preds = %.preheader1.i311
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vu, i64 32
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !85 ; 2 uses
  %min.iters.check922 = icmp ult i64 %i.wz, 8
  br i1 %min.iters.check922, label %scalar.ph921.preheader, label %vector.ph923

vector.ph923:                                     ; preds = %.lr.ph.i319
  %n.vec924 = and i64 %i.wz, 9223372036854775800  ; 3 uses
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph923
  %index928 = phi i64 [ 0, %vector.ph923 ], [ %index.next933, %vector.body927 ] ; 2 uses
  %vec.phi929 = phi <4 x i32> [ zeroinitializer, %vector.ph923 ], [ %i.xj, %vector.body927 ]
  %vec.phi930 = phi <4 x i32> [ zeroinitializer, %vector.ph923 ], [ %i.xk, %vector.body927 ]
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %index928 ; 2 uses
end_hunk_1
