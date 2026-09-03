Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sliba?download=true
inline.NumInlined: 128
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@array_equal:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23
  %.not41 = icmp eq i64 %i.o, %i.q
  br i1 %.not41, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = shl i64 %i.o, 3
  %bcmp = tail call i32 @bcmp(ptr %i.s, ptr %i.u, i64 %i.v)
  %i.w = icmp eq i32 %bcmp, 0
  %i.x = load ptr, ptr @sym_t, align 8
  %spec.select44 = select i1 %i.w, ptr %i.x, ptr null
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %.not40 = icmp eq i64 %i.z, %i.ab
  br i1 %.not40, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.g
  %i.ac = icmp sgt i64 %i.z, 0
  br i1 %i.ac, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.ah = add nuw nsw i64 %.048, 1                ; 2 uses
  %exitcond52.not = icmp eq i64 %i.ah, %i.z
  br i1 %exitcond52.not, label %._crit_edge50, label %bb.i, !llvm.loop !53

bb.i:                                             ; preds = %.lr.ph49, %bb.h
  %.048 = phi i64 [ 0, %.lr.ph49 ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.048
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.048
  %i.al = load double, ptr %i.ak, align 8, !tbaa !28
  %i.am = fcmp une double %i.aj, %i.al
  br i1 %i.am, label %.loopexit, label %bb.h

._crit_edge50:                                    ; preds = %bb.h, %.preheader
  %i.an = load ptr, ptr @sym_t, align 8, !tbaa !19
  br label %.loopexit

bb.j:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !23 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !54

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.147 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.k ] ; 3 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.147
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.147
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bc = tail call ptr @equal(ptr noundef %i.ay, ptr noundef %i.bb)
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.loopexit, label %bb.k

._crit_edge:                                      ; preds = %bb.k, %.preheader45
  %i.be = load ptr, ptr @sym_t, align 8, !tbaa !19
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
  %i.c = load i16, ptr %i.b, align 2, !tbaa !22
  switch i16 %i.c, label %.thread [
    i16 13, label %bb.c
    i16 18, label %bb.c
    i16 15, label %bb.d
    i16 14, label %bb.e
    i16 16, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph71.preheader, label %.loopexit

.lr.ph71.preheader:                               ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %xtraiter106.a = and i64 %i.e, 1
  %i.i = icmp eq i64 %i.e, 1
  br i1 %i.i, label %.lr.ph71.epil.preheader, label %.lr.ph71.preheader.new

.lr.ph71.preheader.new:                           ; preds = %.lr.ph71.preheader
  %unroll_iter110.a = and i64 %i.e, 9223372036854775806
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71, %.lr.ph71.preheader.new
  %.04570 = phi ptr [ %i.h, %.lr.ph71.preheader.new ], [ %i.w, %.lr.ph71 ] ; 3 uses
  %.04669 = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %i.v, %.lr.ph71 ]
  %niter111.a = phi i64 [ 0, %.lr.ph71.preheader.new ], [ %niter111.next.1.a, %.lr.ph71 ]
  %i.j = mul nsw i64 %.04669, 17
  %i.k = add nsw i64 %i.j, 1
  %i.l = load i8, ptr %.04570, align 1, !tbaa !23
  %i.m = zext i8 %i.l to i64
  %i.n = xor i64 %i.k, %i.m
  %i.o = srem i64 %i.n, %1
  %i.p = getelementptr inbounds nuw i8, ptr %.04570, i64 1
  %i.q = mul nsw i64 %i.o, 17
  %i.r = add nsw i64 %i.q, 1
  %i.s = load i8, ptr %i.p, align 1, !tbaa !23
  %i.t = zext i8 %i.s to i64
  %i.u = xor i64 %i.r, %i.t
  %i.v = srem i64 %i.u, %1                        ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04570, i64 2 ; 2 uses
  %niter111.next.1.a = add nuw nsw i64 %niter111.a, 2 ; 2 uses
  %niter111.ncmp.1.a = icmp eq i64 %niter111.next.1.a, %unroll_iter110.a
  br i1 %niter111.ncmp.1.a, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph71, !llvm.loop !55

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23   ; 5 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph66.preheader, label %.loopexit

.lr.ph66.preheader:                               ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %xtraiter.a = and i64 %i.y, 1
  %i.ac = icmp eq i64 %i.y, 1
  br i1 %i.ac, label %.lr.ph66.epil.preheader, label %.lr.ph66.preheader.new

.lr.ph66.preheader.new:                           ; preds = %.lr.ph66.preheader
  %unroll_iter.a = and i64 %i.y, 9223372036854775806
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66, %.lr.ph66.preheader.new
  %.04465 = phi ptr [ %i.ab, %.lr.ph66.preheader.new ], [ %i.aq, %.lr.ph66 ] ; 3 uses
  %.164 = phi i64 [ 0, %.lr.ph66.preheader.new ], [ %i.ap, %.lr.ph66 ]
  %niter.a = phi i64 [ 0, %.lr.ph66.preheader.new ], [ %niter.next.1.a, %.lr.ph66 ]
  %i.ad = mul nsw i64 %.164, 17
  %i.ae = add nsw i64 %i.ad, 1
  %i.af = load i64, ptr %.04465, align 8, !tbaa !30
  %i.ag = urem i64 %i.af, %1
  %i.ah = xor i64 %i.ag, %i.ae
  %i.ai = urem i64 %i.ah, %1
  %i.aj = getelementptr inbounds nuw i8, ptr %.04465, i64 8
  %i.ak = mul nsw i64 %i.ai, 17
  %i.al = add nsw i64 %i.ak, 1
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.an = urem i64 %i.am, %1
  %i.ao = xor i64 %i.an, %i.al
  %i.ap = urem i64 %i.ao, %1                      ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04465, i64 16 ; 2 uses
  %niter.next.1.a = add nuw nsw i64 %niter.a, 2   ; 2 uses
  %niter.ncmp.1.a = icmp eq i64 %niter.next.1.a, %unroll_iter.a
  br i1 %niter.ncmp.1.a, label %.loopexit.loopexit98.unr-lcssa, label %.lr.ph66, !llvm.loop !56

bb.e:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !23 ; 5 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph61.preheader, label %.loopexit

.lr.ph61.preheader:                               ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !23 ; 2 uses
  %xtraiter = and i64 %i.as, 1
  %2 = icmp eq i64 %i.as, 1
  br i1 %2, label %.lr.ph61.epil.preheader, label %.lr.ph61.preheader.new

.lr.ph61.preheader.new:                           ; preds = %.lr.ph61.preheader
  %unroll_iter = and i64 %i.as, 9223372036854775806
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61, %.lr.ph61.preheader.new
  %.060 = phi ptr [ %i.av, %.lr.ph61.preheader.new ], [ %i.be, %.lr.ph61 ] ; 3 uses
  %.259 = phi i64 [ 0, %.lr.ph61.preheader.new ], [ %9, %.lr.ph61 ]
  %.24958 = phi i64 [ 0, %.lr.ph61.preheader.new ], [ %niter.next.1, %.lr.ph61 ]
  %i.aw = mul nsw i64 %.259, 17
  %i.ax = add nsw i64 %i.aw, 1
  %i.ay = load double, ptr %.060, align 8, !tbaa !28
  %i.az = fptoui double %i.ay to i64
  %i.ba = urem i64 %i.az, %1
  %i.bb = xor i64 %i.ba, %i.ax
  %i.bc = urem i64 %i.bb, %1
  %3 = getelementptr inbounds nuw i8, ptr %.060, i64 8
  %4 = mul nsw i64 %i.bc, 17
  %i.bd = add nsw i64 %4, 1
  %5 = load double, ptr %3, align 8, !tbaa !28
  %6 = fptoui double %5 to i64
  %7 = urem i64 %6, %1
  %8 = xor i64 %7, %i.bd
  %9 = urem i64 %8, %1                            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.060, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %.24958, 2      ; 2 uses
  %exitcond79.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %exitcond79.not, label %.loopexit.loopexit100.unr-lcssa, label %.lr.ph61, !llvm.loop !57

bb.f:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !23 ; 2 uses
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
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.35056
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.bo = tail call i64 @c_sxhash(ptr noundef %i.bn, i64 noundef %1)
  %i.bp = xor i64 %i.bo, %i.bk
  %i.bq = srem i64 %i.bp, %1                      ; 2 uses
  %i.br = add nuw nsw i64 %.35056, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.bg
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !58

.thread:                                          ; preds = %bb.a, %bb.b
  %i.bs = tail call ptr @errswitch() #24          ; 0 uses
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph71
  %lcmp.mod107.not.a = icmp eq i64 %xtraiter106.a, 0
  br i1 %lcmp.mod107.not.a, label %.loopexit, label %.lr.ph71.epil.preheader

.lr.ph71.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph71.preheader
  %.04570.epil.init = phi ptr [ %i.h, %.lr.ph71.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %.04669.epil.init = phi i64 [ 0, %.lr.ph71.preheader ], [ %i.v, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod109.a = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod109.a)
  %i.bt = mul nsw i64 %.04669.epil.init, 17
  %i.bu = add nsw i64 %i.bt, 1
  %i.bv = load i8, ptr %.04570.epil.init, align 1, !tbaa !23
  %i.bw = zext i8 %i.bv to i64
  %i.bx = xor i64 %i.bu, %i.bw
  %i.by = srem i64 %i.bx, %1
  br label %.loopexit

.loopexit.loopexit98.unr-lcssa:                   ; preds = %.lr.ph66
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.loopexit, label %.lr.ph66.epil.preheader

.lr.ph66.epil.preheader:                          ; preds = %.loopexit.loopexit98.unr-lcssa, %.lr.ph66.preheader
  %.04465.epil.init = phi ptr [ %i.ab, %.lr.ph66.preheader ], [ %i.aq, %.loopexit.loopexit98.unr-lcssa ]
  %.164.epil.init = phi i64 [ 0, %.lr.ph66.preheader ], [ %i.ap, %.loopexit.loopexit98.unr-lcssa ]
  %lcmp.mod105.a = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod105.a)
  %i.bz = mul nsw i64 %.164.epil.init, 17
  %i.ca = add nsw i64 %i.bz, 1
  %i.cb = load i64, ptr %.04465.epil.init, align 8, !tbaa !30
  %i.cc = urem i64 %i.cb, %1
  %i.cd = xor i64 %i.cc, %i.ca
  %i.ce = urem i64 %i.cd, %1
  br label %.loopexit

.loopexit.loopexit100.unr-lcssa:                  ; preds = %.lr.ph61
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph61.epil.preheader

.lr.ph61.epil.preheader:                          ; preds = %.loopexit.loopexit100.unr-lcssa, %.lr.ph61.preheader
  %.060.epil.init = phi ptr [ %i.av, %.lr.ph61.preheader ], [ %i.be, %.loopexit.loopexit100.unr-lcssa ]
  %.259.epil.init = phi i64 [ 0, %.lr.ph61.preheader ], [ %9, %.loopexit.loopexit100.unr-lcssa ]
  %lcmp.mod105 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %10 = mul nsw i64 %.259.epil.init, 17
  %11 = add nsw i64 %10, 1
  %12 = load double, ptr %.060.epil.init, align 8, !tbaa !28
  %13 = fptoui double %12 to i64
  %14 = urem i64 %13, %1
  %15 = xor i64 %14, %11
  %16 = urem i64 %15, %1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.lr.ph61.epil.preheader, %.loopexit.loopexit100.unr-lcssa, %.lr.ph66.epil.preheader, %.loopexit.loopexit98.unr-lcssa, %.lr.ph71.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.f, %bb.e, %bb.d, %bb.c, %.thread
  %.051 = phi i64 [ 0, %.thread ], [ %i.ce, %.lr.ph66.epil.preheader ], [ %16, %.lr.ph61.epil.preheader ], [ %i.by, %.lr.ph71.epil.preheader ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.v, %.loopexit.loopexit.unr-lcssa ], [ %i.ap, %.loopexit.loopexit98.unr-lcssa ], [ %9, %.loopexit.loopexit100.unr-lcssa ], [ %i.bq, %bb.g ]
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
  store ptr %i.f, ptr @bashnum, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @set_gc_hooks(i64 noundef 13, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.e) #24
  call void @set_print_hooks(i64 noundef 13, ptr noundef nonnull @array_prin1) #24
  %i.g = call ptr @get_user_type_hooks(i64 noundef 13) #24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @array_fast_print, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr @array_fast_read, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr @array_equal, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr @array_sxhash, ptr %i.k, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @set_gc_hooks(i64 noundef 14, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.d) #24
  call void @set_print_hooks(i64 noundef 14, ptr noundef nonnull @array_prin1) #24
  %i.l = call ptr @get_user_type_hooks(i64 noundef 14) #24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr @array_fast_print, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr @array_fast_read, ptr %i.n, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr @array_equal, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr @array_sxhash, ptr %i.p, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @set_gc_hooks(i64 noundef 15, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.c) #24
  call void @set_print_hooks(i64 noundef 15, ptr noundef nonnull @array_prin1) #24
  %i.q = call ptr @get_user_type_hooks(i64 noundef 15) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr @array_fast_print, ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr @array_fast_read, ptr %i.s, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr @array_equal, ptr %i.t, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr @array_sxhash, ptr %i.u, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @set_gc_hooks(i64 noundef 16, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.b) #24
  call void @set_print_hooks(i64 noundef 16, ptr noundef nonnull @array_prin1) #24
  %i.v = call ptr @get_user_type_hooks(i64 noundef 16) #24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @array_fast_print, ptr %i.w, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr @array_fast_read, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr @array_equal, ptr %i.y, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr @array_sxhash, ptr %i.z, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @set_gc_hooks(i64 noundef 18, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %i.a) #24
  call void @set_print_hooks(i64 noundef 18, ptr noundef nonnull @array_prin1) #24
  %i.aa = call ptr @get_user_type_hooks(i64 noundef 18) #24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr @array_fast_print, ptr %i.ab, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr @array_fast_read, ptr %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store ptr @array_equal, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr @array_sxhash, ptr %i.ae, align 8, !tbaa !17
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @lprin1g(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @strcons(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.b = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 13, ptr %i.c, align 2, !tbaa !22
  %i.d = icmp eq i64 %0, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.e, %bb.b ], [ %0, %bb.a ]    ; 4 uses
  %i.f = add nsw i64 %.0, 1
  %i.g = tail call ptr @must_malloc(i64 noundef %i.f) #24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !23
  store i64 %.0, ptr %i.h, align 8, !tbaa !23
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %.0, i1 false)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %.pre, %bb.d ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.0
  store i8 0, ptr %i.k, align 1, !tbaa !23
  %i.l = tail call i64 @no_interrupt(i64 noundef %i.a) #24 ; 0 uses
  ret ptr %i.b
}

declare i64 @no_interrupt(i64 noundef) local_unnamed_addr #2

declare ptr @cons(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @must_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 256) i32 @rfs_getc(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23    ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.d, ptr %0, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rfs_ungetc(i8 zeroext %0, ptr nofree noundef captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !26
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -1
  store ptr %i.b, ptr %1, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @read_from_string(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.gen_readio, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.b = tail call ptr @get_c_string(ptr noundef %0) #24
  store ptr %i.b, ptr %i.a, align 8, !tbaa !26
  store ptr @rfs_getc, ptr %1, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @rfs_ungetc, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.a, ptr %i.d, align 8, !tbaa !34
end_hunk_0
