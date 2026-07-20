inline.NumInlined: 128
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@array_fast_read:bb.a
  %i.bn = tail call ptr @errswitch() #24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.i, %bb.f, %bb.e, %bb.d, %strcons.exit
  %.0 = phi ptr [ %i.bn, %bb.i ], [ %i.k, %strcons.exit ], [ %i.ab, %bb.d ], [ %i.ak, %bb.e ], [ %i.au, %bb.f ], [ %i.bg, %bb.g ], [ %i.bg, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @array_equal(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  switch i16 %i.c, label %.thread [
    i16 13, label %bb.c
    i16 18, label %bb.c
    i16 15, label %bb.e
    i16 14, label %bb.g
    i16 16, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %.not42 = icmp eq i64 %i.e, %i.g
  br i1 %.not42, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %bcmp43 = tail call i32 @bcmp(ptr %i.i, ptr %i.k, i64 %i.e)
  %i.l = icmp eq i32 %bcmp43, 0
  %i.m = load ptr, ptr @sym_t, align 8
  %spec.select = select i1 %i.l, ptr %i.m, ptr null
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19
  %.not41 = icmp eq i64 %i.o, %i.q
  br i1 %.not41, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = shl i64 %i.o, 3
  %bcmp = tail call i32 @bcmp(ptr %i.s, ptr %i.u, i64 %i.v)
  %i.w = icmp eq i32 %bcmp, 0
  %i.x = load ptr, ptr @sym_t, align 8
  %spec.select44 = select i1 %i.w, ptr %i.x, ptr null
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19
  %.not40 = icmp eq i64 %i.z, %i.ab
  br i1 %.not40, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.g
  %i.ac = icmp sgt i64 %i.z, 0
  br i1 %i.ac, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.ah = add nuw nsw i64 %.048, 1                ; 2 uses
  %exitcond52.not = icmp eq i64 %i.ah, %i.z
  br i1 %exitcond52.not, label %._crit_edge50, label %bb.i, !llvm.loop !36

bb.i:                                             ; preds = %.lr.ph49, %bb.h
  %.048 = phi i64 [ 0, %.lr.ph49 ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.048
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.048
  %i.al = load double, ptr %i.ak, align 8, !tbaa !26
  %i.am = fcmp une double %i.aj, %i.al
  br i1 %i.am, label %.loopexit, label %bb.h

._crit_edge50:                                    ; preds = %bb.h, %.preheader
  %i.an = load ptr, ptr @sym_t, align 8, !tbaa !14
  br label %.loopexit

bb.j:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !19 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !19
  %.not = icmp eq i64 %i.ap, %i.ar
  br i1 %.not, label %.preheader45, label %.loopexit

.preheader45:                                     ; preds = %bb.j
  %i.as = icmp sgt i64 %i.ap, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader45
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.av = add nuw nsw i64 %.147, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !37

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.147 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.k ] ; 3 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.147
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.147
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14
  %i.bc = tail call ptr @equal(ptr noundef %i.ay, ptr noundef %i.bb)
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.loopexit, label %bb.k

._crit_edge:                                      ; preds = %bb.k, %.preheader45
  %i.be = load ptr, ptr @sym_t, align 8, !tbaa !14
  br label %.loopexit

.thread:                                          ; preds = %bb.a, %bb.b
  %i.bf = tail call ptr @errswitch() #24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.f, %bb.d, %bb.j, %bb.g, %bb.e, %bb.c, %.thread, %._crit_edge, %._crit_edge50
  %.034 = phi ptr [ %i.bf, %.thread ], [ %i.be, %._crit_edge ], [ null, %bb.i ], [ null, %bb.c ], [ null, %bb.j ], [ %spec.select, %bb.d ], [ null, %bb.e ], [ %spec.select44, %bb.f ], [ null, %bb.g ], [ %i.an, %._crit_edge50 ], [ null, %bb.l ]
  ret ptr %.034
}

; Function Attrs: nounwind uwtable
define dso_local i64 @array_sxhash(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  switch i16 %i.c, label %.thread [
    i16 13, label %bb.c
    i16 18, label %bb.c
    i16 15, label %bb.d
    i16 14, label %bb.e
    i16 16, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 5 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph71.preheader, label %.loopexit

.lr.ph71.preheader:                               ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %xtraiter106 = and i64 %i.e, 1
  %i.i = icmp eq i64 %i.e, 1
  br i1 %i.i, label %.lr.ph71.epil.preheader, label %.lr.ph71.preheader.new

.lr.ph71.preheader.new:                           ; preds = %.lr.ph71.preheader
  %unroll_iter110 = and i64 %i.e, 9223372036854775806
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71, %.lr.ph71.preheader.new
  %.04570 = phi ptr [ %i.h, %.lr.ph71.preheader.new ], [ %i.w, %.lr.ph71 ] ; 3 uses
  %.04669 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %i.v, %.lr.ph71 ]
  %niter111 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %niter111.next.1, %.lr.ph71 ]
  %i.j = mul nsw i64 %.04669, 17
  %i.k = add nsw i64 %i.j, 1
  %i.l = load i8, ptr %.04570, align 1, !tbaa !19
  %i.m = zext i8 %i.l to i64
  %i.n = xor i64 %i.k, %i.m
  %i.o = srem i64 %i.n, %1
  %i.p = getelementptr inbounds nuw i8, ptr %.04570, i64 1
  %i.q = mul nsw i64 %i.o, 17
  %i.r = add nsw i64 %i.q, 1
  %i.s = load i8, ptr %i.p, align 1, !tbaa !19
  %i.t = zext i8 %i.s to i64
  %i.u = xor i64 %i.r, %i.t
  %i.v = srem i64 %i.u, %1                        ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04570, i64 2 ; 2 uses
  %niter111.next.1 = add nuw nsw i64 %niter111, 2 ; 2 uses
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph71, !llvm.loop !38

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19   ; 5 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph66.preheader, label %.loopexit

.lr.ph66.preheader:                               ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %xtraiter = and i64 %i.y, 1
  %i.ac = icmp eq i64 %i.y, 1
  br i1 %i.ac, label %.lr.ph66.epil.preheader, label %.lr.ph66.preheader.new

.lr.ph66.preheader.new:                           ; preds = %.lr.ph66.preheader
  %unroll_iter = and i64 %i.y, 9223372036854775806
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66, %.lr.ph66.preheader.new
  %.04465 = phi ptr [ %i.ab, %.lr.ph66.preheader.new ], [ %i.aq, %.lr.ph66 ] ; 3 uses
  %.164 = phi i64 [ 0, %.lr.ph66.preheader.new ], [ %i.ap, %.lr.ph66 ]
  %niter = phi i64 [ 0, %.lr.ph66.preheader.new ], [ %niter.next.1, %.lr.ph66 ]
  %i.ad = mul nsw i64 %.164, 17
  %i.ae = add nsw i64 %i.ad, 1
  %i.af = load i64, ptr %.04465, align 8, !tbaa !29
  %i.ag = urem i64 %i.af, %1
  %i.ah = xor i64 %i.ag, %i.ae
  %i.ai = urem i64 %i.ah, %1
  %i.aj = getelementptr inbounds nuw i8, ptr %.04465, i64 8
  %i.ak = mul nsw i64 %i.ai, 17
  %i.al = add nsw i64 %i.ak, 1
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !29
  %i.an = urem i64 %i.am, %1
  %i.ao = xor i64 %i.an, %i.al
  %i.ap = urem i64 %i.ao, %1                      ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04465, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit98.unr-lcssa, label %.lr.ph66, !llvm.loop !39

bb.e:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph61.preheader, label %.loopexit

.lr.ph61.preheader:                               ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %.060 = phi ptr [ %i.be, %.lr.ph61 ], [ %i.av, %.lr.ph61.preheader ] ; 2 uses
  %.259 = phi i64 [ %i.bc, %.lr.ph61 ], [ 0, %.lr.ph61.preheader ]
  %.24958 = phi i64 [ %i.bd, %.lr.ph61 ], [ 0, %.lr.ph61.preheader ]
  %i.aw = mul nsw i64 %.259, 17
  %i.ax = add nsw i64 %i.aw, 1
  %i.ay = load double, ptr %.060, align 8, !tbaa !26
  %i.az = fptoui double %i.ay to i64
  %i.ba = urem i64 %i.az, %1
  %i.bb = xor i64 %i.ba, %i.ax
  %i.bc = urem i64 %i.bb, %1                      ; 2 uses
  %i.bd = add nuw nsw i64 %.24958, 1              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.060, i64 8
  %exitcond79.not = icmp eq i64 %i.bd, %i.as
  br i1 %exitcond79.not, label %.loopexit, label %.lr.ph61, !llvm.loop !40

bb.f:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !19 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.357 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.g ]
  %.35056 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.g ] ; 2 uses
  %i.bj = mul nsw i64 %.357, 17
  %i.bk = add nsw i64 %i.bj, 1
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.35056
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bo = tail call i64 @c_sxhash(ptr noundef %i.bn, i64 noundef %1)
  %i.bp = xor i64 %i.bo, %i.bk
  %i.bq = srem i64 %i.bp, %1                      ; 2 uses
  %i.br = add nuw nsw i64 %.35056, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.bg
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !41

.thread:                                          ; preds = %bb.a, %bb.b
  %i.bs = tail call ptr @errswitch() #24          ; 0 uses
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph71
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.loopexit, label %.lr.ph71.epil.preheader

.lr.ph71.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph71.preheader
  %.04570.epil.init = phi ptr [ %i.h, %.lr.ph71.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %.04669.epil.init = phi i64 [ 0, %.lr.ph71.preheader ], [ %i.v, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod109 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.bt = mul nsw i64 %.04669.epil.init, 17
  %i.bu = add nsw i64 %i.bt, 1
  %i.bv = load i8, ptr %.04570.epil.init, align 1, !tbaa !19
  %i.bw = zext i8 %i.bv to i64
  %i.bx = xor i64 %i.bu, %i.bw
  %i.by = srem i64 %i.bx, %1
  br label %.loopexit

.loopexit.loopexit98.unr-lcssa:                   ; preds = %.lr.ph66
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph66.epil.preheader

.lr.ph66.epil.preheader:                          ; preds = %.loopexit.loopexit98.unr-lcssa, %.lr.ph66.preheader
  %.04465.epil.init = phi ptr [ %i.ab, %.lr.ph66.preheader ], [ %i.aq, %.loopexit.loopexit98.unr-lcssa ]
  %.164.epil.init = phi i64 [ 0, %.lr.ph66.preheader ], [ %i.ap, %.loopexit.loopexit98.unr-lcssa ]
  %lcmp.mod105 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.bz = mul nsw i64 %.164.epil.init, 17
  %i.ca = add nsw i64 %i.bz, 1
  %i.cb = load i64, ptr %.04465.epil.init, align 8, !tbaa !29
  %i.cc = urem i64 %i.cb, %1
  %i.cd = xor i64 %i.cc, %i.ca
  %i.ce = urem i64 %i.cd, %1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.lr.ph61, %.lr.ph66.epil.preheader, %.loopexit.loopexit98.unr-lcssa, %.lr.ph71.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.f, %bb.e, %bb.d, %bb.c, %.thread
  %.051 = phi i64 [ 0, %.thread ], [ %i.ce, %.lr.ph66.epil.preheader ], [ %i.bc, %.lr.ph61 ], [ %i.by, %.lr.ph71.epil.preheader ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.v, %.loopexit.loopexit.unr-lcssa ], [ %i.ap, %.loopexit.loopexit98.unr-lcssa ], [ %i.bq, %bb.g ]
  ret i64 %.051
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @init_storage_a() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  tail call void @gc_protect(ptr noundef nonnull @bashnum) #24
  %i.f = tail call ptr @newcell(i64 noundef 2) #24
  store ptr %i.f, ptr @bashnum, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @set_gc_hooks(i64 noundef 13, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.e) #24
  call void @set_print_hooks(i64 noundef 13, ptr noundef nonnull @array_prin1) #24
  %i.g = call ptr @get_user_type_hooks(i64 noundef 13) #24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @array_fast_print, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr @array_fast_read, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr @array_equal, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr @array_sxhash, ptr %i.k, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @set_gc_hooks(i64 noundef 14, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.d) #24
  call void @set_print_hooks(i64 noundef 14, ptr noundef nonnull @array_prin1) #24
  %i.l = call ptr @get_user_type_hooks(i64 noundef 14) #24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr @array_fast_print, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr @array_fast_read, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr @array_equal, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr @array_sxhash, ptr %i.p, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @set_gc_hooks(i64 noundef 15, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.c) #24
  call void @set_print_hooks(i64 noundef 15, ptr noundef nonnull @array_prin1) #24
  %i.q = call ptr @get_user_type_hooks(i64 noundef 15) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr @array_fast_print, ptr %i.r, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr @array_fast_read, ptr %i.s, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr @array_equal, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr @array_sxhash, ptr %i.u, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @set_gc_hooks(i64 noundef 16, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.b) #24
  call void @set_print_hooks(i64 noundef 16, ptr noundef nonnull @array_prin1) #24
  %i.v = call ptr @get_user_type_hooks(i64 noundef 16) #24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @array_fast_print, ptr %i.w, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr @array_fast_read, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr @array_equal, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr @array_sxhash, ptr %i.z, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @set_gc_hooks(i64 noundef 18, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.a) #24
  call void @set_print_hooks(i64 noundef 18, ptr noundef nonnull @array_prin1) #24
  %i.aa = call ptr @get_user_type_hooks(i64 noundef 18) #24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr @array_fast_print, ptr %i.ab, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr @array_fast_read, ptr %i.ac, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store ptr @array_equal, ptr %i.ad, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr @array_sxhash, ptr %i.ae, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare void @gc_protect(ptr noundef) local_unnamed_addr #2

declare ptr @newcell(i64 noundef) local_unnamed_addr #2

declare void @gc_fatal_error() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @gc_relocate(ptr noundef) local_unnamed_addr #2

declare void @gc_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @gput_st(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5
end_hunk_0
begin_hunk_1_@aset1:bb.a

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @err(ptr noundef nonnull @.str.21, ptr noundef nonnull %1) #24 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !16
  switch i16 %i.m, label %.thread [
    i16 13, label %bb.g
    i16 18, label %bb.g
    i16 14, label %bb.l
    i16 15, label %bb.q
    i16 16, label %bb.v
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.n = icmp eq ptr %2, null
  br i1 %i.n, label %.critedge57, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !16
  %i.q = icmp eq i16 %i.p, 2
  br i1 %i.q, label %bb.i, label %.critedge57

.critedge57:                                      ; preds = %bb.g, %bb.h
  %i.r = tail call ptr @err(ptr noundef nonnull @.str.19, ptr noundef %2) #24 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge57, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19
  %.not55 = icmp sgt i64 %i.t, %i.h
  br i1 %.not55, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @err(ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #24 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !19
  %i.x = fptosi double %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.h
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !19
  br label %bb.y

bb.l:                                             ; preds = %bb.f
  %i.ab = icmp eq ptr %2, null
  br i1 %i.ab, label %.critedge59, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !16
  %i.ae = icmp eq i16 %i.ad, 2
  br i1 %i.ae, label %bb.n, label %.critedge59

.critedge59:                                      ; preds = %bb.l, %bb.m
  %i.af = tail call ptr @err(ptr noundef nonnull @.str.19, ptr noundef %2) #24 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.critedge59, %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19
  %.not53 = icmp sgt i64 %i.ah, %i.h
  br i1 %.not53, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @err(ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #24 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.h
  store double %i.ak, ptr %i.an, align 8, !tbaa !26
  br label %bb.y

bb.q:                                             ; preds = %bb.f
  %i.ao = icmp eq ptr %2, null
  br i1 %i.ao, label %.critedge61, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !16
  %i.ar = icmp eq i16 %i.aq, 2
  br i1 %i.ar, label %bb.s, label %.critedge61

.critedge61:                                      ; preds = %bb.q, %bb.r
  %i.as = tail call ptr @err(ptr noundef nonnull @.str.19, ptr noundef %2) #24 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge61, %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19
  %.not51 = icmp sgt i64 %i.au, %i.h
  br i1 %.not51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = tail call ptr @err(ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #24 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !19
  %i.ay = fptosi double %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.h
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !29
  br label %bb.y

bb.v:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !19
  %.not49 = icmp sgt i64 %i.bd, %i.h
  br i1 %.not49, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = tail call ptr @err(ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #24 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.h
  store ptr %2, ptr %i.bh, align 8, !tbaa !14
  br label %bb.y

.thread:                                          ; preds = %bb.e, %bb.f
  %i.bi = tail call ptr @err(ptr noundef nonnull @.str.22, ptr noundef %0) #24
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.x, %bb.u, %bb.p, %bb.k
  %.0 = phi ptr [ %i.bi, %.thread ], [ %2, %bb.k ], [ %2, %bb.p ], [ %2, %bb.u ], [ %2, %bb.x ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @arcons(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.b = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 12 uses
  switch i64 %0, label %bb.f [
    i64 14, label %bb.b
    i64 15, label %bb.c
    i64 13, label %bb.d
    i64 18, label %.loopexit63
    i64 16, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !19
  %i.d = shl i64 %1, 3
  %i.e = tail call ptr @must_malloc(i64 noundef %i.d) #24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  %.not57 = icmp ne i64 %2, 0
  %i.g = icmp sgt i64 %1, 0
  %or.cond = and i1 %.not57, %i.g
  br i1 %or.cond, label %.lr.ph73.preheader, label %.loopexit

.lr.ph73.preheader:                               ; preds = %bb.b
  %xtraiter112 = and i64 %1, 3                    ; 3 uses
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %.lr.ph73.epil.preheader, label %.lr.ph73.preheader.new

.lr.ph73.preheader.new:                           ; preds = %.lr.ph73.preheader
  %unroll_iter116 = and i64 %1, 9223372036854775804
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73, %.lr.ph73.preheader.new
  %.072 = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %i.t, %.lr.ph73 ] ; 5 uses
  %niter117 = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %niter117.next.3, %.lr.ph73 ]
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.072
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !26
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.072
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !26
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.072
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.072
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !26
  %i.t = add nuw nsw i64 %.072, 4                 ; 2 uses
  %niter117.next.3 = add nuw nsw i64 %niter117, 4 ; 2 uses
  %niter117.ncmp.3 = icmp eq i64 %niter117.next.3, %unroll_iter116
  br i1 %niter117.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph73, !llvm.loop !50

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.u, align 8, !tbaa !19
  %i.v = shl i64 %1, 3
  %i.w = tail call ptr @must_malloc(i64 noundef %i.v) #24
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !19
  %.not56 = icmp ne i64 %2, 0
  %i.y = icmp sgt i64 %1, 0
  %or.cond74 = and i1 %.not56, %i.y
  br i1 %or.cond74, label %.lr.ph71.preheader, label %.loopexit

.lr.ph71.preheader:                               ; preds = %bb.c
  %xtraiter106 = and i64 %1, 3                    ; 3 uses
  %i.z = icmp ult i64 %1, 4
  br i1 %i.z, label %.lr.ph71.epil.preheader, label %.lr.ph71.preheader.new

.lr.ph71.preheader.new:                           ; preds = %.lr.ph71.preheader
  %unroll_iter110 = and i64 %1, 9223372036854775804
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71, %.lr.ph71.preheader.new
  %.170 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %i.al, %.lr.ph71 ] ; 5 uses
  %niter111 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %niter111.next.3, %.lr.ph71 ]
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.170
  store i64 0, ptr %i.ab, align 8, !tbaa !29
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.170
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !29
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.170
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.ah, align 8, !tbaa !29
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.170
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 0, ptr %i.ak, align 8, !tbaa !29
  %i.al = add nuw nsw i64 %.170, 4                ; 2 uses
  %niter111.next.3 = add nuw nsw i64 %niter111, 4 ; 2 uses
  %niter111.ncmp.3 = icmp eq i64 %niter111.next.3, %unroll_iter110
  br i1 %niter111.ncmp.3, label %.loopexit.loopexit90.unr-lcssa, label %.lr.ph71, !llvm.loop !51

bb.d:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.am, align 8, !tbaa !19
  %i.an = add nsw i64 %1, 1
  %i.ao = tail call ptr @must_malloc(i64 noundef %i.an) #24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !19
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %1
  store i8 0, ptr %i.aq, align 1, !tbaa !19
  %.not = icmp ne i64 %2, 0
  %i.ar = icmp sgt i64 %1, 0
  %or.cond75 = and i1 %.not, %i.ar
  br i1 %or.cond75, label %.lr.ph67.preheader, label %.loopexit63

.lr.ph67.preheader:                               ; preds = %bb.d
  %xtraiter94 = and i64 %1, 3                     ; 3 uses
  %i.as = icmp ult i64 %1, 4
  br i1 %i.as, label %.lr.ph67.epil.preheader, label %.lr.ph67.preheader.new

.lr.ph67.preheader.new:                           ; preds = %.lr.ph67.preheader
  %unroll_iter98 = and i64 %1, 9223372036854775804
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67, %.lr.ph67.preheader.new
  %.266 = phi i64 [ 0, %.lr.ph67.preheader.new ], [ %i.be, %.lr.ph67 ] ; 5 uses
  %niter99 = phi i64 [ 0, %.lr.ph67.preheader.new ], [ %niter99.next.3, %.lr.ph67 ]
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.266
  store i8 32, ptr %i.au, align 1, !tbaa !19
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.266
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 32, ptr %i.ax, align 1, !tbaa !19
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.266
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 32, ptr %i.ba, align 1, !tbaa !19
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.266
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  store i8 32, ptr %i.bd, align 1, !tbaa !19
  %i.be = add nuw nsw i64 %.266, 4                ; 2 uses
  %niter99.next.3 = add nuw nsw i64 %niter99, 4   ; 2 uses
  %niter99.ncmp.3 = icmp eq i64 %niter99.next.3, %unroll_iter98
  br i1 %niter99.ncmp.3, label %.loopexit63.loopexit.unr-lcssa, label %.lr.ph67, !llvm.loop !52

.loopexit63.loopexit.unr-lcssa:                   ; preds = %.lr.ph67
  %lcmp.mod96.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod96.not, label %.loopexit63, label %.lr.ph67.epil.preheader

.lr.ph67.epil.preheader:                          ; preds = %.loopexit63.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.epil.init = phi i64 [ 0, %.lr.ph67.preheader ], [ %i.be, %.loopexit63.loopexit.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter94, 0
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %.lr.ph67.epil

.lr.ph67.epil:                                    ; preds = %.lr.ph67.epil, %.lr.ph67.epil.preheader
  %.266.epil = phi i64 [ %i.bh, %.lr.ph67.epil ], [ %.266.epil.init, %.lr.ph67.epil.preheader ] ; 2 uses
  %epil.iter95 = phi i64 [ %epil.iter95.next, %.lr.ph67.epil ], [ 0, %.lr.ph67.epil.preheader ]
  %i.bf = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.266.epil
  store i8 32, ptr %i.bg, align 1, !tbaa !19
  %i.bh = add nuw nsw i64 %.266.epil, 1
  %epil.iter95.next = add i64 %epil.iter95, 1     ; 2 uses
  %epil.iter95.cmp.not = icmp eq i64 %epil.iter95.next, %xtraiter94
  br i1 %epil.iter95.cmp.not, label %.loopexit63, label %.lr.ph67.epil, !llvm.loop !53

.loopexit63:                                      ; preds = %.loopexit63.loopexit.unr-lcssa, %.lr.ph67.epil, %bb.a, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.bi, align 8, !tbaa !19
  %i.bj = tail call ptr @must_malloc(i64 noundef %1) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !19
  %.not55 = icmp ne i64 %2, 0
  %i.bl = icmp sgt i64 %1, 0
  %or.cond76 = and i1 %.not55, %i.bl
  br i1 %or.cond76, label %.lr.ph69.preheader, label %.loopexit

.lr.ph69.preheader:                               ; preds = %.loopexit63
  %xtraiter100 = and i64 %1, 3                    ; 3 uses
  %i.bm = icmp ult i64 %1, 4
  br i1 %i.bm, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter104 = and i64 %1, 9223372036854775804
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69, %.lr.ph69.preheader.new
  %.368 = phi i64 [ 0, %.lr.ph69.preheader.new ], [ %i.by, %.lr.ph69 ] ; 5 uses
  %niter105 = phi i64 [ 0, %.lr.ph69.preheader.new ], [ %niter105.next.3, %.lr.ph69 ]
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.368
  store i8 0, ptr %i.bo, align 1, !tbaa !19
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.368
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 0, ptr %i.br, align 1, !tbaa !19
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.368
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i8 0, ptr %i.bu, align 1, !tbaa !19
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.368
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 0, ptr %i.bx, align 1, !tbaa !19
  %i.by = add nuw nsw i64 %.368, 4                ; 2 uses
  %niter105.next.3 = add nuw nsw i64 %niter105, 4 ; 2 uses
  %niter105.ncmp.3 = icmp eq i64 %niter105.next.3, %unroll_iter104
  br i1 %niter105.ncmp.3, label %.loopexit.loopexit91.unr-lcssa, label %.lr.ph69, !llvm.loop !55

bb.e:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.bz, align 8, !tbaa !19
  %i.ca = shl i64 %1, 3
  %i.cb = tail call ptr @must_malloc(i64 noundef %i.ca) #24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !19
  %i.cd = icmp sgt i64 %1, 0
  br i1 %i.cd, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.ce = icmp ult i64 %1, 4
  br i1 %i.ce, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, 9223372036854775804
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.465 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cq, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.465
  store ptr null, ptr %i.cg, align 8, !tbaa !14
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.465
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr null, ptr %i.cj, align 8, !tbaa !14
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.465
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr null, ptr %i.cm, align 8, !tbaa !14
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.465
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr null, ptr %i.cp, align 8, !tbaa !14
  %i.cq = add nuw nsw i64 %.465, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit92.unr-lcssa, label %.lr.ph, !llvm.loop !56

bb.f:                                             ; preds = %bb.a
  %i.cr = tail call ptr @errswitch() #24          ; 0 uses
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph73
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod114.not, label %.loopexit, label %.lr.ph73.epil.preheader

.lr.ph73.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph73.preheader
  %.072.epil.init = phi i64 [ 0, %.lr.ph73.preheader ], [ %i.t, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter112, 0
  tail call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph73.epil

.lr.ph73.epil:                                    ; preds = %.lr.ph73.epil, %.lr.ph73.epil.preheader
  %.072.epil = phi i64 [ %i.cu, %.lr.ph73.epil ], [ %.072.epil.init, %.lr.ph73.epil.preheader ] ; 2 uses
  %epil.iter113 = phi i64 [ %epil.iter113.next, %.lr.ph73.epil ], [ 0, %.lr.ph73.epil.preheader ]
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.072.epil
  store double 0.000000e+00, ptr %i.ct, align 8, !tbaa !26
  %i.cu = add nuw nsw i64 %.072.epil, 1
  %epil.iter113.next = add i64 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i64 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %.loopexit, label %.lr.ph73.epil, !llvm.loop !57

.loopexit.loopexit90.unr-lcssa:                   ; preds = %.lr.ph71
  %lcmp.mod108.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %.loopexit, label %.lr.ph71.epil.preheader

.lr.ph71.epil.preheader:                          ; preds = %.loopexit.loopexit90.unr-lcssa, %.lr.ph71.preheader
  %.170.epil.init = phi i64 [ 0, %.lr.ph71.preheader ], [ %i.al, %.loopexit.loopexit90.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter106, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph71.epil

.lr.ph71.epil:                                    ; preds = %.lr.ph71.epil, %.lr.ph71.epil.preheader
  %.170.epil = phi i64 [ %i.cx, %.lr.ph71.epil ], [ %.170.epil.init, %.lr.ph71.epil.preheader ] ; 2 uses
  %epil.iter107 = phi i64 [ %epil.iter107.next, %.lr.ph71.epil ], [ 0, %.lr.ph71.epil.preheader ]
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.170.epil
  store i64 0, ptr %i.cw, align 8, !tbaa !29
  %i.cx = add nuw nsw i64 %.170.epil, 1
  %epil.iter107.next = add i64 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i64 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %.loopexit, label %.lr.ph71.epil, !llvm.loop !58

.loopexit.loopexit91.unr-lcssa:                   ; preds = %.lr.ph69
  %lcmp.mod102.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod102.not, label %.loopexit, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.loopexit.loopexit91.unr-lcssa, %.lr.ph69.preheader
  %.368.epil.init = phi i64 [ 0, %.lr.ph69.preheader ], [ %i.by, %.loopexit.loopexit91.unr-lcssa ]
  %lcmp.mod103 = icmp ne i64 %xtraiter100, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %.lr.ph69.epil

.lr.ph69.epil:                                    ; preds = %.lr.ph69.epil, %.lr.ph69.epil.preheader
  %.368.epil = phi i64 [ %i.da, %.lr.ph69.epil ], [ %.368.epil.init, %.lr.ph69.epil.preheader ] ; 2 uses
  %epil.iter101 = phi i64 [ %epil.iter101.next, %.lr.ph69.epil ], [ 0, %.lr.ph69.epil.preheader ]
  %i.cy = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.368.epil
  store i8 0, ptr %i.cz, align 1, !tbaa !19
  %i.da = add nuw nsw i64 %.368.epil, 1
  %epil.iter101.next = add i64 %epil.iter101, 1   ; 2 uses
  %epil.iter101.cmp.not = icmp eq i64 %epil.iter101.next, %xtraiter100
  br i1 %epil.iter101.cmp.not, label %.loopexit, label %.lr.ph69.epil, !llvm.loop !59

.loopexit.loopexit92.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit92.unr-lcssa, %.lr.ph.preheader
  %.465.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cq, %.loopexit.loopexit92.unr-lcssa ]
  %lcmp.mod93 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.465.epil = phi i64 [ %i.dd, %.lr.ph.epil ], [ %.465.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.db = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.465.epil
  store ptr null, ptr %i.dc, align 8, !tbaa !14
  %i.dd = add nuw nsw i64 %.465.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !60

.loopexit:                                        ; preds = %.loopexit.loopexit92.unr-lcssa, %.lr.ph.epil, %.loopexit.loopexit91.unr-lcssa, %.lr.ph69.epil, %.loopexit.loopexit90.unr-lcssa, %.lr.ph71.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph73.epil, %bb.e, %.loopexit63, %bb.c, %bb.b, %bb.f
  %i.de = trunc i64 %0 to i16
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !16
  %i.dg = tail call i64 @no_interrupt(i64 noundef %i.a) #24 ; 0 uses
  ret ptr %i.b
}

declare ptr @errswitch() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mallocl(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 3
  %i.b = and i64 %1, 7
  %.not = icmp ne i64 %i.b, 0
  %i.c = zext i1 %.not to i64
  %spec.select = add nuw nsw i64 %i.a, %i.c       ; 2 uses
  %i.d = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.e = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %spec.select, ptr %i.f, align 8, !tbaa !19
  %i.g = shl i64 %spec.select, 3
  %i.h = tail call ptr @must_malloc(i64 noundef %i.g) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 15, ptr %i.j, align 2, !tbaa !16
  %i.k = tail call i64 @no_interrupt(i64 noundef %i.d) #24 ; 0 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !19
  store ptr %i.l, ptr %0, align 8, !tbaa !61
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cons_array(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  %i.d = icmp eq i16 %i.c, 2
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %i.g = fcmp olt double %i.f, 0.000000e+00
  br i1 %i.g, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %i.h = tail call ptr @err(ptr noundef nonnull @.str.23, ptr noundef %0) #24
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.i = fptosi double %i.f to i64                ; 31 uses
  %i.j = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.k = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 16 uses
  %i.l = tail call ptr @cintern(ptr noundef nonnull @.str.24) #24
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 14, ptr %i.n, align 2, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.o, align 8, !tbaa !19
  %i.p = shl i64 %i.i, 3
  %i.q = tail call ptr @must_malloc(i64 noundef %i.p) #24
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !19
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %.lr.ph83.preheader, label %.loopexit

.lr.ph83.preheader:                               ; preds = %bb.e
  %xtraiter126 = and i64 %i.i, 3                  ; 3 uses
  %i.t = icmp ult i64 %i.i, 4
  br i1 %i.t, label %.lr.ph83.epil.preheader, label %.lr.ph83.preheader.new

.lr.ph83.preheader.new:                           ; preds = %.lr.ph83.preheader
  %unroll_iter130 = and i64 %i.i, 9223372036854775804
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83, %.lr.ph83.preheader.new
  %.082 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %i.af, %.lr.ph83 ] ; 5 uses
  %niter131 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %niter131.next.3, %.lr.ph83 ]
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.082
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !26
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.082
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !26
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.082
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !26
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.082
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !26
  %i.af = add nuw nsw i64 %.082, 4                ; 2 uses
  %niter131.next.3 = add nuw nsw i64 %niter131, 4 ; 2 uses
  %niter131.ncmp.3 = icmp eq i64 %niter131.next.3, %unroll_iter130
  br i1 %niter131.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph83, !llvm.loop !63

bb.f:                                             ; preds = %bb.d
  %i.ag = tail call ptr @cintern(ptr noundef nonnull @.str.25) #24
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 15, ptr %i.ai, align 2, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.aj, align 8, !tbaa !19
  %i.ak = shl i64 %i.i, 3
  %i.al = tail call ptr @must_malloc(i64 noundef %i.ak) #24
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !19
  %i.an = icmp sgt i64 %i.i, 0
  br i1 %i.an, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %bb.g
  %xtraiter120 = and i64 %i.i, 3                  ; 3 uses
  %i.ao = icmp ult i64 %i.i, 4
  br i1 %i.ao, label %.lr.ph81.epil.preheader, label %.lr.ph81.preheader.new

.lr.ph81.preheader.new:                           ; preds = %.lr.ph81.preheader
  %unroll_iter124 = and i64 %i.i, 9223372036854775804
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81, %.lr.ph81.preheader.new
  %.180 = phi i64 [ 0, %.lr.ph81.preheader.new ], [ %i.ba, %.lr.ph81 ] ; 5 uses
  %niter125 = phi i64 [ 0, %.lr.ph81.preheader.new ], [ %niter125.next.3, %.lr.ph81 ]
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.180
  store i64 0, ptr %i.aq, align 8, !tbaa !29
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.180
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !29
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.180
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 0, ptr %i.aw, align 8, !tbaa !29
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.180
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 0, ptr %i.az, align 8, !tbaa !29
  %i.ba = add nuw nsw i64 %.180, 4                ; 2 uses
  %niter125.next.3 = add nuw nsw i64 %niter125, 4 ; 2 uses
  %niter125.ncmp.3 = icmp eq i64 %niter125.next.3, %unroll_iter124
  br i1 %niter125.ncmp.3, label %.loopexit.loopexit103.unr-lcssa, label %.lr.ph81, !llvm.loop !64

bb.h:                                             ; preds = %bb.f
  %i.bb = tail call ptr @cintern(ptr noundef nonnull @.str.26) #24
  %i.bc = icmp eq ptr %i.bb, %1
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 13, ptr %i.bd, align 2, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.be, align 8, !tbaa !19
  %i.bf = add nsw i64 %i.i, 1
  %i.bg = tail call ptr @must_malloc(i64 noundef %i.bf) #24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !19
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %i.i
  store i8 0, ptr %i.bi, align 1, !tbaa !19
  %i.bj = icmp sgt i64 %i.i, 0
  br i1 %i.bj, label %.lr.ph79.preheader, label %.loopexit

.lr.ph79.preheader:                               ; preds = %bb.i
  %xtraiter114 = and i64 %i.i, 3                  ; 3 uses
  %i.bk = icmp ult i64 %i.i, 4
  br i1 %i.bk, label %.lr.ph79.epil.preheader, label %.lr.ph79.preheader.new

.lr.ph79.preheader.new:                           ; preds = %.lr.ph79.preheader
  %unroll_iter118 = and i64 %i.i, 9223372036854775804
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79, %.lr.ph79.preheader.new
  %.278 = phi i64 [ 0, %.lr.ph79.preheader.new ], [ %i.bw, %.lr.ph79 ] ; 5 uses
  %niter119 = phi i64 [ 0, %.lr.ph79.preheader.new ], [ %niter119.next.3, %.lr.ph79 ]
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.278
  store i8 32, ptr %i.bm, align 1, !tbaa !19
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.278
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 32, ptr %i.bp, align 1, !tbaa !19
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.278
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 32, ptr %i.bs, align 1, !tbaa !19
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.278
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 32, ptr %i.bv, align 1, !tbaa !19
  %i.bw = add nuw nsw i64 %.278, 4                ; 2 uses
  %niter119.next.3 = add nuw nsw i64 %niter119, 4 ; 2 uses
  %niter119.ncmp.3 = icmp eq i64 %niter119.next.3, %unroll_iter118
  br i1 %niter119.ncmp.3, label %.loopexit.loopexit104.unr-lcssa, label %.lr.ph79, !llvm.loop !65

bb.j:                                             ; preds = %bb.h
  %i.bx = tail call ptr @cintern(ptr noundef nonnull @.str.27) #24
  %i.by = icmp eq ptr %i.bx, %1
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 18, ptr %i.bz, align 2, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.ca, align 8, !tbaa !19
  %i.cb = tail call ptr @must_malloc(i64 noundef %i.i) #24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !19
  %i.cd = icmp sgt i64 %i.i, 0
  br i1 %i.cd, label %.lr.ph77.preheader, label %.loopexit

.lr.ph77.preheader:                               ; preds = %bb.k
  %xtraiter108 = and i64 %i.i, 3                  ; 3 uses
  %i.ce = icmp ult i64 %i.i, 4
  br i1 %i.ce, label %.lr.ph77.epil.preheader, label %.lr.ph77.preheader.new

.lr.ph77.preheader.new:                           ; preds = %.lr.ph77.preheader
  %unroll_iter112 = and i64 %i.i, 9223372036854775804
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77, %.lr.ph77.preheader.new
  %.376 = phi i64 [ 0, %.lr.ph77.preheader.new ], [ %i.cq, %.lr.ph77 ] ; 5 uses
  %niter113 = phi i64 [ 0, %.lr.ph77.preheader.new ], [ %niter113.next.3, %.lr.ph77 ]
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.376
  store i8 0, ptr %i.cg, align 1, !tbaa !19
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.376
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 0, ptr %i.cj, align 1, !tbaa !19
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.376
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i8 0, ptr %i.cm, align 1, !tbaa !19
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.376
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  store i8 0, ptr %i.cp, align 1, !tbaa !19
  %i.cq = add nuw nsw i64 %.376, 4                ; 2 uses
  %niter113.next.3 = add nuw nsw i64 %niter113, 4 ; 2 uses
  %niter113.ncmp.3 = icmp eq i64 %niter113.next.3, %unroll_iter112
  br i1 %niter113.ncmp.3, label %.loopexit.loopexit105.unr-lcssa, label %.lr.ph77, !llvm.loop !66

bb.l:                                             ; preds = %bb.j
  %i.cr = tail call ptr @cintern(ptr noundef nonnull @.str.28) #24
  %i.cs = icmp eq ptr %i.cr, %1
  %i.ct = icmp eq ptr %1, null
  %or.cond = or i1 %i.ct, %i.cs
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 16, ptr %i.cu, align 2, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.cv, align 8, !tbaa !19
  %i.cw = shl i64 %i.i, 3
  %i.cx = tail call ptr @must_malloc(i64 noundef %i.cw) #24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !19
  %i.cz = icmp sgt i64 %i.i, 0
  br i1 %i.cz, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.m
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.da = icmp ult i64 %i.i, 4
  br i1 %i.da, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 9223372036854775804
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.475 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dm, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.475
  store ptr null, ptr %i.dc, align 8, !tbaa !14
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.475
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr null, ptr %i.df, align 8, !tbaa !14
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.475
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr null, ptr %i.di, align 8, !tbaa !14
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.475
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr null, ptr %i.dl, align 8, !tbaa !14
  %i.dm = add nuw nsw i64 %.475, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit106.unr-lcssa, label %.lr.ph, !llvm.loop !67

bb.n:                                             ; preds = %bb.l
  %i.dn = tail call ptr @err(ptr noundef nonnull @.str.29, ptr noundef nonnull %1) #24 ; 0 uses
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph83
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod128.not, label %.loopexit, label %.lr.ph83.epil.preheader

.lr.ph83.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph83.preheader
  %.082.epil.init = phi i64 [ 0, %.lr.ph83.preheader ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod129 = icmp ne i64 %xtraiter126, 0
  tail call void @llvm.assume(i1 %lcmp.mod129)
  br label %.lr.ph83.epil

.lr.ph83.epil:                                    ; preds = %.lr.ph83.epil, %.lr.ph83.epil.preheader
  %.082.epil = phi i64 [ %i.dq, %.lr.ph83.epil ], [ %.082.epil.init, %.lr.ph83.epil.preheader ] ; 2 uses
  %epil.iter127 = phi i64 [ %epil.iter127.next, %.lr.ph83.epil ], [ 0, %.lr.ph83.epil.preheader ]
  %i.do = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.082.epil
  store double 0.000000e+00, ptr %i.dp, align 8, !tbaa !26
  %i.dq = add nuw nsw i64 %.082.epil, 1
  %epil.iter127.next = add i64 %epil.iter127, 1   ; 2 uses
  %epil.iter127.cmp.not = icmp eq i64 %epil.iter127.next, %xtraiter126
  br i1 %epil.iter127.cmp.not, label %.loopexit, label %.lr.ph83.epil, !llvm.loop !68

.loopexit.loopexit103.unr-lcssa:                  ; preds = %.lr.ph81
  %lcmp.mod122.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %.loopexit, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %.loopexit.loopexit103.unr-lcssa, %.lr.ph81.preheader
  %.180.epil.init = phi i64 [ 0, %.lr.ph81.preheader ], [ %i.ba, %.loopexit.loopexit103.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter120, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph81.epil

.lr.ph81.epil:                                    ; preds = %.lr.ph81.epil, %.lr.ph81.epil.preheader
  %.180.epil = phi i64 [ %i.dt, %.lr.ph81.epil ], [ %.180.epil.init, %.lr.ph81.epil.preheader ] ; 2 uses
  %epil.iter121 = phi i64 [ %epil.iter121.next, %.lr.ph81.epil ], [ 0, %.lr.ph81.epil.preheader ]
  %i.dr = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.180.epil
  store i64 0, ptr %i.ds, align 8, !tbaa !29
  %i.dt = add nuw nsw i64 %.180.epil, 1
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %.loopexit, label %.lr.ph81.epil, !llvm.loop !69

.loopexit.loopexit104.unr-lcssa:                  ; preds = %.lr.ph79
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %.loopexit, label %.lr.ph79.epil.preheader

.lr.ph79.epil.preheader:                          ; preds = %.loopexit.loopexit104.unr-lcssa, %.lr.ph79.preheader
  %.278.epil.init = phi i64 [ 0, %.lr.ph79.preheader ], [ %i.bw, %.loopexit.loopexit104.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %.lr.ph79.epil

.lr.ph79.epil:                                    ; preds = %.lr.ph79.epil, %.lr.ph79.epil.preheader
  %.278.epil = phi i64 [ %i.dw, %.lr.ph79.epil ], [ %.278.epil.init, %.lr.ph79.epil.preheader ] ; 2 uses
  %epil.iter115 = phi i64 [ %epil.iter115.next, %.lr.ph79.epil ], [ 0, %.lr.ph79.epil.preheader ]
  %i.du = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %.278.epil
  store i8 32, ptr %i.dv, align 1, !tbaa !19
  %i.dw = add nuw nsw i64 %.278.epil, 1
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %.loopexit, label %.lr.ph79.epil, !llvm.loop !70

.loopexit.loopexit105.unr-lcssa:                  ; preds = %.lr.ph77
  %lcmp.mod110.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %.loopexit, label %.lr.ph77.epil.preheader

.lr.ph77.epil.preheader:                          ; preds = %.loopexit.loopexit105.unr-lcssa, %.lr.ph77.preheader
  %.376.epil.init = phi i64 [ 0, %.lr.ph77.preheader ], [ %i.cq, %.loopexit.loopexit105.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter108, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph77.epil

.lr.ph77.epil:                                    ; preds = %.lr.ph77.epil, %.lr.ph77.epil.preheader
  %.376.epil = phi i64 [ %i.dz, %.lr.ph77.epil ], [ %.376.epil.init, %.lr.ph77.epil.preheader ] ; 2 uses
  %epil.iter109 = phi i64 [ %epil.iter109.next, %.lr.ph77.epil ], [ 0, %.lr.ph77.epil.preheader ]
  %i.dx = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.376.epil
  store i8 0, ptr %i.dy, align 1, !tbaa !19
  %i.dz = add nuw nsw i64 %.376.epil, 1
  %epil.iter109.next = add i64 %epil.iter109, 1   ; 2 uses
  %epil.iter109.cmp.not = icmp eq i64 %epil.iter109.next, %xtraiter108
  br i1 %epil.iter109.cmp.not, label %.loopexit, label %.lr.ph77.epil, !llvm.loop !71

.loopexit.loopexit106.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit106.unr-lcssa, %.lr.ph.preheader
  %.475.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dm, %.loopexit.loopexit106.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.475.epil = phi i64 [ %i.ec, %.lr.ph.epil ], [ %.475.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ea = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.475.epil
  store ptr null, ptr %i.eb, align 8, !tbaa !14
  %i.ec = add nuw nsw i64 %.475.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !72

.loopexit:                                        ; preds = %.loopexit.loopexit106.unr-lcssa, %.lr.ph.epil, %.loopexit.loopexit105.unr-lcssa, %.lr.ph77.epil, %.loopexit.loopexit104.unr-lcssa, %.lr.ph79.epil, %.loopexit.loopexit103.unr-lcssa, %.lr.ph81.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph83.epil, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.n
  %i.ed = tail call i64 @no_interrupt(i64 noundef %i.j) #24 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.critedge
  %.067 = phi ptr [ %i.h, %.critedge ], [ %i.k, %.loopexit ]
  ret ptr %.067
}

declare ptr @cintern(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @string_append(ptr noundef %0) #0 {
bb.a:
  %.not15 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.017 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %.01316 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = tail call ptr @car(ptr noundef nonnull %.01316) #24
  %i.b = tail call ptr @get_c_string(ptr noundef %i.a) #24
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.d = add i64 %i.c, %.017                      ; 2 uses
  %i.e = tail call ptr @cdr(ptr noundef nonnull %.01316) #24 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.f = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.g = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i16 13, ptr %i.h, align 2, !tbaa !16
  %i.i = icmp eq i64 %.0.lcssa, -1
  br i1 %i.i, label %bb.b, label %strcons.exit

bb.b:                                             ; preds = %._crit_edge
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) null) #25
  br label %strcons.exit

strcons.exit:                                     ; preds = %._crit_edge, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.k = add nsw i64 %.0.i, 1
  %i.l = tail call ptr @must_malloc(i64 noundef %i.k) #24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !19
  store i64 %.0.i, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %.0.i
  store i8 0, ptr %i.o, align 1, !tbaa !19
  %i.p = tail call i64 @no_interrupt(i64 noundef %i.f) #24 ; 0 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  store i8 0, ptr %i.q, align 1, !tbaa !19
  br i1 %.not15, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %strcons.exit, %.lr.ph20
  %.119 = phi ptr [ %i.u, %.lr.ph20 ], [ %0, %strcons.exit ] ; 2 uses
  %i.r = tail call ptr @car(ptr noundef nonnull %.119) #24
  %i.s = tail call ptr @get_c_string(ptr noundef %i.r) #24
  %i.t = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.s) #24 ; 0 uses
  %i.u = tail call ptr @cdr(ptr noundef nonnull %.119) #24 ; 2 uses
  %.not14 = icmp eq ptr %i.u, null
  br i1 %.not14, label %._crit_edge21, label %.lr.ph20, !llvm.loop !74

._crit_edge21:                                    ; preds = %.lr.ph20, %strcons.exit
  ret ptr %i.g
}

declare ptr @car(ptr noundef) local_unnamed_addr #2

declare ptr @cdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @bytes_append(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.not18 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.020 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %.01619 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = call ptr @car(ptr noundef nonnull %.01619) #24
end_hunk_1
begin_hunk_2_@string_trim:bb.a
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define dso_local ptr @string_trim_left(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @get_c_string(ptr noundef %0) #24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19    ; 2 uses
  %.not12 = icmp eq i8 %i.b, 0
  br i1 %.not12, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi i8 [ %i.h, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %.013 = phi ptr [ %i.g, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = zext nneg i8 %i.c to i64
  %memchr.bounds = icmp ugt i8 %i.c, 63
  %i.e = shl nuw i64 1, %i.d
  %i.f = and i64 %i.e, 4294977025
  %memchr.bits = icmp eq i64 %i.f, 0
  %memchr10.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr10.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 1 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19    ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !79

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.g, %bb.b ], [ %.013, %.lr.ph ] ; 3 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa) #25 ; 2 uses
  %i.j = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.k = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 13, ptr %i.l, align 2, !tbaa !16
  %i.m = icmp eq i64 %i.i, -1
  br i1 %i.m, label %bb.c, label %strcons.exit

bb.c:                                             ; preds = %.critedge
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.lcssa) #25
  br label %strcons.exit

strcons.exit:                                     ; preds = %bb.c, %.critedge
  %.0.i = phi i64 [ %i.n, %bb.c ], [ %i.i, %.critedge ] ; 4 uses
  %i.o = add nsw i64 %.0.i, 1
  %i.p = tail call ptr @must_malloc(i64 noundef %i.o) #24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !19
  store i64 %.0.i, ptr %i.q, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull readonly align 1 %.0.lcssa, i64 %.0.i, i1 false)
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr inbounds i8, ptr %.pre.i, i64 %.0.i
  store i8 0, ptr %i.s, align 1, !tbaa !19
  %i.t = tail call i64 @no_interrupt(i64 noundef %i.j) #24 ; 0 uses
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define dso_local ptr @string_trim_right(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @get_c_string(ptr noundef %0) #24 ; 6 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp ugt ptr %i.e, %i.a
  br i1 %i.d, label %.lr.ph, label %.critedge, !llvm.loop !80

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.012 = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.012, i64 -1 ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19    ; 2 uses
  %i.g = zext nneg i8 %i.f to i64
  %memchr.bounds = icmp ugt i8 %i.f, 63
  %i.h = shl nuw i64 1, %i.g
  %i.i = and i64 %i.h, 4294977025
  %memchr.bits = icmp eq i64 %i.i, 0
  %memchr10.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr10.not, label %..critedge_crit_edge13, label %bb.b, !llvm.loop !80

..critedge_crit_edge13:                           ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !80

.critedge:                                        ; preds = %bb.b, %..critedge_crit_edge13, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.012, %..critedge_crit_edge13 ], [ %i.e, %bb.b ]
  %i.j = ptrtoint ptr %.0.lcssa to i64
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.n = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i16 13, ptr %i.o, align 2, !tbaa !16
  %i.p = icmp eq i64 %i.l, -1
  br i1 %i.p, label %bb.c, label %strcons.exit

bb.c:                                             ; preds = %.critedge
  %i.q = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #25
  br label %strcons.exit

strcons.exit:                                     ; preds = %bb.c, %.critedge
  %.0.i = phi i64 [ %i.q, %bb.c ], [ %i.l, %.critedge ] ; 4 uses
  %i.r = add nsw i64 %.0.i, 1
  %i.s = tail call ptr @must_malloc(i64 noundef %i.r) #24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !tbaa !19
  store i64 %.0.i, ptr %i.t, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull readonly align 1 %i.a, i64 %.0.i, i1 false)
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.v = getelementptr inbounds i8, ptr %.pre.i, i64 %.0.i
  store i8 0, ptr %i.v, align 1, !tbaa !19
  %i.w = tail call i64 @no_interrupt(i64 noundef %i.m) #24 ; 0 uses
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define dso_local ptr @string_upcase(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @get_c_string(ptr noundef %0) #24 ; 3 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 6 uses
  %i.c = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.d = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 13, ptr %i.e, align 2, !tbaa !16
  %i.f = icmp eq i64 %i.b, -1
  br i1 %i.f, label %bb.b, label %strcons.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #25
  br label %strcons.exit

strcons.exit:                                     ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.h = add nsw i64 %.0.i, 1
  %i.i = tail call ptr @must_malloc(i64 noundef %i.h) #24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !19
  store i64 %.0.i, ptr %i.j, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull readonly align 1 %i.a, i64 %.0.i, i1 false)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds i8, ptr %.pre.i, i64 %.0.i
  store i8 0, ptr %i.l, align 1, !tbaa !19
  %i.m = tail call i64 @no_interrupt(i64 noundef %i.c) #24 ; 0 uses
  %i.n = tail call ptr @get_c_string(ptr noundef nonnull %i.d) #24 ; 5 uses
  %i.o = icmp sgt i64 %i.b, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %strcons.exit
  %i.p = tail call ptr @__ctype_toupper_loc() #26 ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.q = icmp ult i64 %i.b, 4
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.014 = phi i64 [ 0, %.lr.ph.new ], [ %i.aw, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.s, align 1, !tbaa !19
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.aa, align 1, !tbaa !19
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.ai, align 1, !tbaa !19
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.as = sext i8 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.aq, align 1, !tbaa !19
  %i.aw = add nuw nsw i64 %.014, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !83

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.014.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.014.epil = phi i64 [ %.014.epil.init, %.epil.preheader ], [ %i.be, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014.epil ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19
  %i.ba = sext i8 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !19
  %i.be = add nuw nsw i64 %.014.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !84

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %strcons.exit
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @string_downcase(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @get_c_string(ptr noundef %0) #24 ; 3 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 6 uses
  %i.c = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.d = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 13, ptr %i.e, align 2, !tbaa !16
  %i.f = icmp eq i64 %i.b, -1
  br i1 %i.f, label %bb.b, label %strcons.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #25
  br label %strcons.exit

strcons.exit:                                     ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.h = add nsw i64 %.0.i, 1
  %i.i = tail call ptr @must_malloc(i64 noundef %i.h) #24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !19
  store i64 %.0.i, ptr %i.j, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull readonly align 1 %i.a, i64 %.0.i, i1 false)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds i8, ptr %.pre.i, i64 %.0.i
  store i8 0, ptr %i.l, align 1, !tbaa !19
  %i.m = tail call i64 @no_interrupt(i64 noundef %i.c) #24 ; 0 uses
  %i.n = tail call ptr @get_c_string(ptr noundef nonnull %i.d) #24 ; 5 uses
  %i.o = icmp sgt i64 %i.b, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %strcons.exit
  %i.p = tail call ptr @__ctype_tolower_loc() #26 ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.q = icmp ult i64 %i.b, 4
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.014 = phi i64 [ 0, %.lr.ph.new ], [ %i.aw, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.s, align 1, !tbaa !19
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.aa, align 1, !tbaa !19
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.ai, align 1, !tbaa !19
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.as = sext i8 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.aq, align 1, !tbaa !19
  %i.aw = add nuw nsw i64 %.014, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !85

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.014.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.014.epil = phi i64 [ %.014.epil.init, %.epil.preheader ], [ %i.be, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014.epil ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19
  %i.ba = sext i8 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !19
  %i.be = add nuw nsw i64 %.014.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !86

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %strcons.exit
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @lreadstring(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @tkbuffer, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %.025 = phi i32 [ 0, %bb.a ], [ %i.aa, %bb.q ]  ; 3 uses
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.ae, %bb.q ] ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !42
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.f = tail call i32 %i.d(ptr noundef %i.e) #24 ; 2 uses
  switch i32 %i.f, label %bb.o [
    i32 -1, label %bb.r
    i32 34, label %bb.r
    i32 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.i = tail call i32 %i.g(ptr noundef %i.h) #24 ; 2 uses
  switch i32 %i.i, label %bb.o [
    i32 -1, label %bb.d
    i32 110, label %bb.e
    i32 116, label %bb.f
    i32 114, label %bb.g
    i32 100, label %bb.h
    i32 78, label %bb.i
    i32 115, label %bb.j
    i32 48, label %.preheader
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @err(ptr noundef nonnull @.str.33, ptr noundef null) #24 ; 0 uses
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  br label %bb.o

bb.h:                                             ; preds = %bb.c
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  br label %bb.o

.preheader:                                       ; preds = %bb.c, %bb.m
  %.023 = phi i32 [ %i.x, %bb.m ], [ 0, %bb.c ]   ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !42
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.m = tail call i32 %i.k(ptr noundef %i.l) #24 ; 4 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.o = tail call ptr @err(ptr noundef nonnull @.str.34, ptr noundef null) #24 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader
  %i.p = tail call ptr @__ctype_b_loc() #26
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.r = sext i32 %i.m to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !89
  %i.u = and i16 %i.t, 2048
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = shl nsw i32 %.023, 3
  %i.w = add i32 %i.v, -48
  %i.x = add i32 %i.w, %i.m
  br label %.preheader

bb.n:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !45
  tail call void %i.y(i32 noundef %i.m, ptr noundef %i.z) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.n
  %.024 = phi i32 [ -1, %bb.d ], [ 10, %bb.e ], [ 9, %bb.f ], [ 13, %bb.g ], [ 4, %bb.h ], [ 0, %bb.i ], [ 32, %bb.j ], [ %.023, %bb.n ], [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  %i.aa = add nuw nsw i32 %.025, 1
  %i.ab = icmp samesign ugt i32 %.025, 5118
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = tail call ptr @err(ptr noundef nonnull @.str.35, ptr noundef null) #24 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = trunc i32 %.024 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.ad, ptr %.0, align 1, !tbaa !19
  br label %bb.b, !llvm.loop !90

bb.r:                                             ; preds = %bb.b, %bb.b
  store i8 0, ptr %.0, align 1, !tbaa !19
  %i.af = zext nneg i32 %.025 to i64              ; 4 uses
  %i.ag = load ptr, ptr @tkbuffer, align 8, !tbaa !24 ; 2 uses
  %i.ah = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.ai = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i16 13, ptr %i.aj, align 2, !tbaa !16
  %i.ak = add nuw nsw i64 %i.af, 1
  %i.al = tail call ptr @must_malloc(i64 noundef %i.ak) #24 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !19
  store i64 %i.af, ptr %i.am, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %strcons.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull readonly align 1 %i.ag, i64 %i.af, i1 false)
  %.pre.i = load ptr, ptr %i.an, align 8, !tbaa !19
  br label %strcons.exit

strcons.exit:                                     ; preds = %bb.r, %bb.s
  %i.ao = phi ptr [ %.pre.i, %bb.s ], [ %i.al, %bb.r ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.af
  store i8 0, ptr %i.ap, align 1, !tbaa !19
  %i.aq = tail call i64 @no_interrupt(i64 noundef %i.ah) #24 ; 0 uses
  ret ptr %i.ai
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @lreadsharp(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = tail call i32 %i.a(ptr noundef %i.c) #24 ; 2 uses
  %i.e = add i32 %i.d, -40                        ; 2 uses
  %i.f = tail call i32 @llvm.fshl.i32(i32 %i.e, i32 %i.e, i32 31)
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 31, label %.loopexit
    i32 38, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !45
  tail call void %i.h(i32 noundef %i.d, ptr noundef %i.i) #24
  %i.j = tail call ptr @lreadr(ptr noundef nonnull %0) #24 ; 2 uses
  %i.k = tail call i64 @nlength(ptr noundef %i.j) ; 7 uses
  %i.l = tail call i64 @no_interrupt(i64 noundef 1) #24 ; 2 uses
  %i.m = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.k, ptr %i.n, align 8, !tbaa !19
  %i.o = shl i64 %i.k, 3
  %i.p = tail call ptr @must_malloc(i64 noundef %i.o) #24
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !19
  %i.r = icmp sgt i64 %i.k, 0
  br i1 %i.r, label %.lr.ph.i.preheader, label %arcons.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %i.s = icmp ult i64 %i.k, 4
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.k, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.465.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.465.i
  store ptr null, ptr %i.u, align 8, !tbaa !14
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.465.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !14
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.465.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr null, ptr %i.aa, align 8, !tbaa !14
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.465.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr null, ptr %i.ad, align 8, !tbaa !14
  %i.ae = add nuw nsw i64 %.465.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !56

arcons.exit:                                      ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 16, ptr %i.af, align 2, !tbaa !16
  %i.ag = tail call i64 @no_interrupt(i64 noundef %i.l) #24 ; 0 uses
  br label %.loopexit

.lr.ph.preheader.unr-lcssa:                       ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.465.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ae, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.465.i.epil = phi i64 [ %i.aj, %.lr.ph.i.epil ], [ %.465.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.465.i.epil
  store ptr null, ptr %i.ai, align 8, !tbaa !14
  %i.aj = add nuw nsw i64 %.465.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.lr.ph.i.epil, !llvm.loop !91

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.epil, %.lr.ph.preheader.unr-lcssa
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 16, ptr %i.ak, align 2, !tbaa !16
  %i.al = tail call i64 @no_interrupt(i64 noundef %i.l) #24 ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02023 = phi i64 [ %i.aq, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02122 = phi ptr [ %i.ap, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.am = tail call ptr @car(ptr noundef %.02122) #24
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.02023
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !14
  %i.ap = tail call ptr @cdr(ptr noundef %.02122) #24
  %i.aq = add nuw nsw i64 %.02023, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.k
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !92

bb.c:                                             ; preds = %bb.a
  %i.ar = tail call ptr @lreadr(ptr noundef nonnull %0) #24
  %i.as = tail call ptr @leval(ptr noundef %i.ar, ptr noundef null) #24
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.at = tail call ptr @flocons(double noundef 1.000000e+00) #24
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.au = tail call ptr @err(ptr noundef nonnull @.str.36, ptr noundef null) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %arcons.exit, %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.au, %bb.e ], [ %i.at, %bb.d ], [ %i.as, %bb.c ], [ null, %bb.a ], [ %i.m, %arcons.exit ], [ %i.m, %.lr.ph ]
  ret ptr %.0
}

declare ptr @lreadr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @nlength(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  switch i16 %i.c, label %bb.i [
    i16 13, label %bb.c
    i16 18, label %bb.d
    i16 14, label %bb.e
    i16 15, label %bb.f
    i16 16, label %bb.g
    i16 0, label %.thread
    i16 1, label %.preheader
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #25
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  br label %.thread

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  br label %.thread

.preheader:                                       ; preds = %bb.b, %bb.h
  %.021 = phi i64 [ %i.t, %bb.h ], [ 0, %bb.b ]   ; 2 uses
  %.01620 = phi ptr [ %i.s, %bb.h ], [ %0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !16
  %i.q = icmp eq i16 %i.p, 1
  br i1 %i.q, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.01620, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %i.t = add nuw nsw i64 %.021, 1                 ; 2 uses
  %cond = icmp eq ptr %i.s, null
  br i1 %cond, label %.thread, label %.preheader, !llvm.loop !93

.critedge:                                        ; preds = %.preheader
  %i.u = tail call ptr @err(ptr noundef nonnull @.str.46, ptr noundef nonnull %0) #24 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.b
  %i.v = tail call ptr @err(ptr noundef nonnull @.str.47, ptr noundef nonnull %0) #24 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.a, %.critedge, %bb.b, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.017 = phi i64 [ 0, %bb.i ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.021, %.critedge ], [ %i.t, %bb.h ]
  ret i64 %.017
}

declare ptr @leval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @c_sxhash(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !14
  %i.b = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.c = icmp ult ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pr, %bb.b ], [ %0, %bb.a ]   ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !16   ; 2 uses
  switch i16 %i.g, label %bb.j [
    i16 0, label %.thread
    i16 1, label %bb.e
    i16 3, label %bb.g
    i16 4, label %bb.h
    i16 5, label %bb.h
    i16 6, label %bb.h
    i16 7, label %bb.h
    i16 19, label %bb.h
    i16 20, label %bb.h
    i16 8, label %bb.h
    i16 9, label %bb.h
    i16 10, label %bb.h
    i16 2, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = call i64 @c_sxhash(ptr noundef %i.i, i64 noundef %1) ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !14
  %.029.in50 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.02951 = load ptr, ptr %.029.in50, align 8, !tbaa !19 ; 2 uses
  %i.l = icmp eq ptr %.02951, null
  br i1 %i.l, label %.critedge, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.e, %bb.f
  %.02953 = phi ptr [ %.029, %bb.f ], [ %.02951, %bb.e ] ; 4 uses
  %.03152 = phi i64 [ %i.v, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02953, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !16
  %i.o = icmp eq i16 %i.n, 1
  br i1 %i.o, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph54
end_hunk_2
begin_hunk_3_@nconc:bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.last.exit.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !120

.last.exit.loopexit_crit_edge:                    ; preds = %.lr.ph
  br label %last.exit, !llvm.loop !120

last.exit:                                        ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %.last.exit.loopexit_crit_edge, %bb.d
  %.010.lcssa.i = phi ptr [ %0, %bb.d ], [ %0, %.lr.ph.i.preheader ], [ %.015.i7, %.last.exit.loopexit_crit_edge ], [ %.015.i7, %.lr.ph.i ]
  %i.s = tail call ptr @setcdr(ptr noundef nonnull %.010.lcssa.i, ptr noundef %1) #24 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %last.exit
  %.0 = phi ptr [ %0, %last.exit ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @funcall1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !16
  switch i16 %i.d, label %.critedge [
    i16 5, label %bb.c
    i16 11, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.f = icmp ult ptr %i.a, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pre8 = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %.pre8, %bb.d ], [ %0, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = call ptr %i.i(ptr noundef %1) #24
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !16
  %i.p = icmp eq i16 %i.o, 6
  br i1 %i.p, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.r = icmp ult ptr %i.a, %i.q
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre7 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %.pre7, %bb.i ], [ %i.l, %bb.h ]
  %i.t = phi ptr [ %.pre, %bb.i ], [ %0, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.y = call ptr %i.w(ptr noundef %i.x, ptr noundef %1) #24
  br label %bb.k

.critedge:                                        ; preds = %bb.a, %bb.f, %bb.g, %bb.b
  %i.z = tail call ptr @cons(ptr noundef %1, ptr noundef null) #24
  %i.aa = tail call ptr @lapply(ptr noundef %0, ptr noundef %i.z) #24
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j, %bb.e
  %.0 = phi ptr [ %i.aa, %.critedge ], [ %i.j, %bb.e ], [ %i.y, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @funcall2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !16
  switch i16 %i.d, label %.thread [
    i16 6, label %bb.c
    i16 21, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.f = icmp ult ptr %i.a, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %.pre, %bb.d ], [ %0, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = call ptr %i.i(ptr noundef %1, ptr noundef %2) #24
  br label %bb.f

.thread:                                          ; preds = %bb.a, %bb.b
  %i.k = tail call ptr @cons(ptr noundef %2, ptr noundef null) #24
  %i.l = tail call ptr @cons(ptr noundef %1, ptr noundef %i.k) #24
  %i.m = tail call ptr @lapply(ptr noundef %0, ptr noundef %i.l) #24
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %.0 = phi ptr [ %i.m, %.thread ], [ %i.j, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lqsort(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %cond59 = icmp eq ptr %0, null
  br i1 %cond59, label %nconc.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04461 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.04660 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.04461, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  %i.d = icmp eq i16 %i.c, 1
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.04461, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = add nuw nsw i32 %.04660, 1               ; 2 uses
  %cond = icmp eq ptr %i.f, null
  br i1 %cond, label %.loopexit.thread90, label %.lr.ph, !llvm.loop !121

.loopexit:                                        ; preds = %.lr.ph
  %i.h = tail call ptr @err(ptr noundef nonnull @.str.79, ptr noundef nonnull %0) #24 ; 0 uses
  %i.i = icmp eq i32 %.04660, 0
  br i1 %i.i, label %nconc.exit, label %.loopexit.thread90

.loopexit.thread90:                               ; preds = %bb.b, %.loopexit
  %.0465892 = phi i32 [ %.04660, %.loopexit ], [ %i.g, %bb.b ]
  %i.j = tail call i32 @rand() #24
  %i.k = srem i32 %i.j, %.0465892                 ; 5 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph64.preheader, label %._crit_edge

.lr.ph64.preheader:                               ; preds = %.loopexit.thread90
  %xtraiter = and i32 %i.k, 7                     ; 3 uses
  %i.m = icmp ult i32 %i.k, 8
  br i1 %i.m, label %.lr.ph64.epil.preheader, label %.lr.ph64.preheader.new

.lr.ph64.preheader.new:                           ; preds = %.lr.ph64.preheader
  %unroll_iter = and i32 %i.k, 2147483640
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64, %.lr.ph64.preheader.new
  %.14563 = phi ptr [ %0, %.lr.ph64.preheader.new ], [ %i.ac, %.lr.ph64 ]
  %niter = phi i32 [ 0, %.lr.ph64.preheader.new ], [ %niter.next.7, %.lr.ph64 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.14563, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph64, !llvm.loop !122

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph64
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph64.epil.preheader

.lr.ph64.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph64.preheader
  %.14563.epil.init = phi ptr [ %0, %.lr.ph64.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod103 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %.lr.ph64.epil

.lr.ph64.epil:                                    ; preds = %.lr.ph64.epil, %.lr.ph64.epil.preheader
  %.14563.epil = phi ptr [ %i.ae, %.lr.ph64.epil ], [ %.14563.epil.init, %.lr.ph64.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph64.epil ], [ 0, %.lr.ph64.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.14563.epil, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph64.epil, !llvm.loop !123

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph64.epil, %.loopexit.thread90
  %.145.lcssa = phi ptr [ %0, %.loopexit.thread90 ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph64.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %.145.lcssa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19 ; 3 uses
  %i.ah = icmp eq ptr %2, null
  %i.ai = icmp eq ptr %1, null
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.l
  %.070 = phi ptr [ null, %._crit_edge ], [ %.1, %bb.l ] ; 3 uses
  %.04169 = phi ptr [ null, %._crit_edge ], [ %.142, %bb.l ] ; 3 uses
  %.268 = phi ptr [ %0, %._crit_edge ], [ %i.bf, %bb.l ] ; 3 uses
  %.24867 = phi i32 [ 0, %._crit_edge ], [ %i.bg, %bb.l ] ; 2 uses
  %.not53 = icmp eq i32 %i.k, %.24867
  br i1 %.not53, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.268, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = call ptr @funcall1(ptr noundef nonnull %2, ptr noundef %i.al)
  %i.an = call ptr @funcall1(ptr noundef nonnull %2, ptr noundef %i.ag)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.ao = phi ptr [ %i.am, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %i.ap = phi ptr [ %i.an, %bb.e ], [ %i.ag, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !14
  br i1 %i.ai, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.aq = load i16, ptr %i.aj, align 2, !tbaa !16
  switch i16 %i.aq, label %.thread.i [
    i16 6, label %bb.g
    i16 21, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ar = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.as = icmp ult ptr %i.a, %i.ar
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %.pre.i, %bb.h ], [ %1, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.aw = call ptr %i.av(ptr noundef %i.ao, ptr noundef %i.ap) #24, !inline_history !124
  br label %funcall2.exit

.thread.i:                                        ; preds = %bb.f, %.thread
  %i.ax = call ptr @cons(ptr noundef %i.ap, ptr noundef null) #24
  %i.ay = call ptr @cons(ptr noundef %i.ao, ptr noundef %i.ax) #24
  %i.az = call ptr @lapply(ptr noundef %1, ptr noundef %i.ay) #24
  br label %funcall2.exit

funcall2.exit:                                    ; preds = %bb.i, %.thread.i
  %.0.i = phi ptr [ %i.az, %.thread.i ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not54 = icmp eq ptr %.0.i, null
  %i.ba = getelementptr inbounds nuw i8, ptr %.268, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %funcall2.exit
  %i.bc = call ptr @cons(ptr noundef %i.bb, ptr noundef %.04169) #24
  br label %bb.l

bb.k:                                             ; preds = %funcall2.exit
  %i.bd = call ptr @cons(ptr noundef %i.bb, ptr noundef %.070) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.j
  %.142 = phi ptr [ %i.bc, %bb.j ], [ %.04169, %bb.k ], [ %.04169, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %.070, %bb.j ], [ %i.bd, %bb.k ], [ %.070, %bb.c ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.268, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bg = add nuw nsw i32 %.24867, 1
  %.not52 = icmp eq ptr %i.bf, null
  br i1 %.not52, label %._crit_edge73, label %bb.c, !llvm.loop !125

._crit_edge73:                                    ; preds = %bb.l
  %i.bh = call ptr @lqsort(ptr noundef %.142, ptr noundef %1, ptr noundef %2) ; 7 uses
  %i.bi = call ptr @lqsort(ptr noundef %.1, ptr noundef %1, ptr noundef %2)
  %i.bj = call ptr @cons(ptr noundef %i.ag, ptr noundef %i.bi) #24 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, null
  br i1 %i.bk, label %nconc.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge73
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !16
  %i.bn = icmp eq i16 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19
  br label %bb.o

.critedge.i.i:                                    ; preds = %bb.m
  %i.bq = call ptr @err(ptr noundef nonnull @.str.76, ptr noundef nonnull %i.bh) #24
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i.i, %bb.n
  %i.br = phi ptr [ %i.bp, %bb.n ], [ %i.bq, %.critedge.i.i ] ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %last.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !16
  %i.bv = icmp eq i16 %i.bu, 1
  br i1 %i.bv, label %.lr.ph.i, label %last.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !16
  %i.by = icmp eq i16 %i.bx, 1
  br i1 %i.by, label %.lr.ph.i, label %last.exit.i, !llvm.loop !120

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.015.i7.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.br, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i7.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.last.exit.loopexit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !120

.last.exit.loopexit_crit_edge.i:                  ; preds = %.lr.ph.i
  br label %last.exit.i, !llvm.loop !120

last.exit.i:                                      ; preds = %.lr.ph.i.i, %.last.exit.loopexit_crit_edge.i, %.lr.ph.i.preheader.i, %bb.o
  %.010.lcssa.i.i = phi ptr [ %i.bh, %bb.o ], [ %i.bh, %.lr.ph.i.preheader.i ], [ %.015.i7.i, %.last.exit.loopexit_crit_edge.i ], [ %.015.i7.i, %.lr.ph.i.i ]
  %i.cc = call ptr @setcdr(ptr noundef nonnull %.010.lcssa.i.i, ptr noundef %i.bj) #24 ; 0 uses
  br label %nconc.exit

nconc.exit:                                       ; preds = %bb.a, %last.exit.i, %._crit_edge73, %.loopexit
  %.043 = phi ptr [ null, %.loopexit ], [ %i.bh, %last.exit.i ], [ %i.bj, %._crit_edge73 ], [ null, %bb.a ]
  ret ptr %.043
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local ptr @string_lessp(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @get_c_string(ptr noundef %0) #24
  %i.b = tail call ptr @get_c_string(ptr noundef %1) #24
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.d = icmp slt i32 %i.c, 0
  %i.e = load ptr, ptr @sym_t, align 8
  %.0 = select i1 %i.d, ptr %i.e, ptr null
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @benchmark_funcall1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  %i.d = icmp eq i16 %i.c, 2
  br i1 %i.d, label %get_c_long.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @err(ptr noundef nonnull @.str.44, ptr noundef %0) #24 ; 0 uses
  br label %get_c_long.exit
end_hunk_3
