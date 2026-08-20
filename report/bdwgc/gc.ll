inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_enumerate_reachable_objects_inner:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.u, label %bb.e, label %GC_find_header.exit.i, !llvm.loop !13

GC_find_header.exit.i:                            ; preds = %bb.e
  %i.w = inttoptr i64 %i.l to ptr                 ; 4 uses
  %i.x = and i64 %.01720.i, 1023
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i64, ptr %i.aa, align 8            ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ad = load volatile i64, ptr %i.ac, align 8
  %.not.i2 = icmp eq i64 %i.ad, 0
  br i1 %.not.i2, label %GC_do_enumerate_reachable_objects.exit, label %bb.f

bb.f:                                             ; preds = %GC_find_header.exit.i
  %i.ae = icmp ugt i64 %i.ab, 2048
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 4096
  %i.ag = sub nsw i64 0, %i.ab
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %.0.i3 = select i1 %i.ae, ptr %i.w, ptr %i.ah   ; 2 uses
  %.not2224.i = icmp ult ptr %.0.i3, %i.w
  br i1 %.not2224.i, label %GC_do_enumerate_reachable_objects.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.aj = lshr i64 %i.ab, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %.01926.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.an, %bb.i ] ; 2 uses
  %.02025.i = phi i64 [ 0, %.lr.ph.i ], [ %i.am, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.02025.i
  %i.al = load i8, ptr %i.ak, align 1
  %.not23.i = icmp eq i8 %i.al, 0
  br i1 %.not23.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %0(ptr noundef %.01926.i, i64 noundef %i.ab, ptr noundef %1) #45, !inline_history !131
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = add i64 %.02025.i, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %.01926.i, i64 %i.ab ; 2 uses
  %.not22.i4 = icmp ugt ptr %i.an, %.0.i3
  br i1 %.not22.i4, label %GC_do_enumerate_reachable_objects.exit, label %bb.g, !llvm.loop !132

GC_do_enumerate_reachable_objects.exit:           ; preds = %bb.i, %bb.f, %GC_find_header.exit.i, %bb.c
  %i.ao = add nsw i64 %.01720.i, -1
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  %i.ap = icmp eq ptr %i.c, null
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i64 %.01720.i, -1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ar = sub nsw i64 %.01720.i, %i.d
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %GC_do_enumerate_reachable_objects.exit
  %.1.i = phi i64 [ %i.aq, %bb.k ], [ %i.ar, %bb.l ], [ %i.ao, %GC_do_enumerate_reachable_objects.exit ] ; 2 uses
  %i.as = icmp sgt i64 %.1.i, -1
  br i1 %i.as, label %bb.b, label %bb.n, !llvm.loop !17

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.023.i, i64 8192
  %.0.i = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %GC_apply_to_all_blocks.exit, label %.preheader.i, !llvm.loop !18

GC_apply_to_all_blocks.exit:                      ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @GC_make_descriptor(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 408) acquire, align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %.b46 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b46, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not47 = icmp eq i32 %i.b, 0
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @GC_lock()
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.c = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 408), align 8
  %.not48 = icmp eq i64 %i.c, 0
  br i1 %.not48, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @GC_init_explicit_typing()
  store atomic volatile i64 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 408) release, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.b = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  %i.e = icmp sgt i64 %1, 0
  br i1 %i.e, label %.lr.ph95, label %.critedge.thread

bb.j:                                             ; preds = %.lr.ph95
  %i.f = icmp sgt i64 %.041.in93, 1
  br i1 %i.f, label %.lr.ph95, label %.critedge.thread, !llvm.loop !133

.lr.ph95:                                         ; preds = %bb.i, %bb.j
  %.041.in93 = phi i64 [ %.041, %bb.j ], [ %1, %bb.i ] ; 9 uses
  %indvars.iv.in92 = phi i64 [ %indvars.iv, %bb.j ], [ %1, %bb.i ]
  %indvars.iv = add i64 %indvars.iv.in92, -1      ; 4 uses
  %.041 = add nsw i64 %.041.in93, -1              ; 4 uses
  %i.g = lshr i64 %.041, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %.041, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not49 = icmp eq i64 %i.l, 0
  br i1 %.not49, label %bb.j, label %.critedge.preheader, !llvm.loop !133

.critedge.preheader:                              ; preds = %.lr.ph95
  %.not72 = icmp eq i64 %.041.in93, 1
  br i1 %.not72, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.preheader, %.critedge
  %.03764 = phi i64 [ %i.s, %.critedge ], [ 0, %.critedge.preheader ] ; 4 uses
  %i.m = lshr i64 %.03764, 6
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %.03764, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.o, %i.q
  %.not50 = icmp eq i64 %i.r, 0
  br i1 %.not50, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.03764, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !134

._crit_edge:                                      ; preds = %.critedge, %.lr.ph
  %.037.lcssa = phi i64 [ %.03764, %.lr.ph ], [ %indvars.iv, %.critedge ]
  %.not51 = icmp eq i64 %.037.lcssa, %.041
  %i.t = shl i64 %.041.in93, 3                    ; 4 uses
  br i1 %.not51, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.u = icmp ult i64 %.041.in93, 63
  br i1 %i.u, label %.lr.ph69, label %bb.m

.lr.ph69:                                         ; preds = %bb.k
  %i.v = add nsw i64 %.041.in93, -2               ; 3 uses
  %i.w = load i64, ptr %0, align 8                ; 3 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.v, i64 0)
  %i.x = sub i64 %indvars.iv, %smin               ; 3 uses
  %xtraiter101 = and i64 %i.x, 1
  %i.y = icmp slt i64 %.041.in93, 3
  br i1 %i.y, label %.epil.preheader, label %.lr.ph69.new

.lr.ph69.new:                                     ; preds = %.lr.ph69
  %unroll_iter105 = and i64 %i.x, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph69.new
  %.067 = phi i64 [ %i.v, %.lr.ph69.new ], [ %i.ak, %bb.l ] ; 3 uses
  %.04266 = phi i64 [ -9223372036854775808, %.lr.ph69.new ], [ %spec.select.1, %bb.l ]
  %niter106 = phi i64 [ 0, %.lr.ph69.new ], [ %niter106.next.1, %bb.l ]
  %i.z = and i64 %.067, 63
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = and i64 %i.w, %i.aa
  %.not53 = icmp eq i64 %i.ab, 0
  %i.ac = add i64 %.067, 63
  %i.ad = lshr i64 %.04266, 2                     ; 2 uses
  %i.ae = or disjoint i64 %i.ad, 4611686018427387904
  %i.af = select i1 %.not53, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ag = and i64 %i.ac, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.w, %i.ah
  %.not53.1 = icmp eq i64 %i.ai, 0
  %i.aj = or disjoint i64 %i.af, -9223372036854775808
  %spec.select.1 = select i1 %.not53.1, i64 %i.af, i64 %i.aj ; 3 uses
  %i.ak = add nsw i64 %.067, -2                   ; 2 uses
  %niter106.next.1 = add nuw i64 %niter106, 2     ; 2 uses
  %niter106.ncmp.1.not = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1.not, label %._crit_edge70.loopexit.unr-lcssa, label %bb.l, !llvm.loop !135

._crit_edge70.loopexit.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %._crit_edge70.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge70.loopexit.unr-lcssa, %.lr.ph69
  %.067.epil.init = phi i64 [ %i.v, %.lr.ph69 ], [ %i.ak, %._crit_edge70.loopexit.unr-lcssa ]
  %.04266.epil.init = phi i64 [ -9223372036854775808, %.lr.ph69 ], [ %spec.select.1, %._crit_edge70.loopexit.unr-lcssa ]
  %lcmp.mod104 = trunc i64 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.al = lshr i64 %.04266.epil.init, 1           ; 2 uses
  %i.am = and i64 %.067.epil.init, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.w, %i.an
  %.not53.epil = icmp eq i64 %i.ao, 0
  %i.ap = or disjoint i64 %i.al, -9223372036854775808
  %spec.select.epil = select i1 %.not53.epil, i64 %i.al, i64 %i.ap
  br label %._crit_edge70.loopexit

._crit_edge70.loopexit:                           ; preds = %._crit_edge70.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i64 [ %spec.select.1, %._crit_edge70.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  %i.aq = or i64 %spec.select.lcssa, 1
  br label %.critedge.thread

bb.m:                                             ; preds = %bb.k
  %i.ar = add nuw i64 %.041.in93, 63              ; 2 uses
  %i.as = lshr i64 %i.ar, 6                       ; 5 uses
  %.b46.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b46.i, label %bb.n, label %GC_lock.exit.i

bb.n:                                             ; preds = %bb.m
  %i.at = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %GC_lock.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load i32, ptr @GC_nprocs, align 4
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ax = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit.i

bb.r:                                             ; preds = %bb.p
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit.i

GC_lock.exit.i:                                   ; preds = %bb.r, %bb.q, %bb.n, %bb.m
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 424), align 8 ; 2 uses
  %i.az = add i64 %i.ay, %i.as
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 416), align 8 ; 2 uses
  %.not4753.i = icmp ult i64 %i.az, %i.ba
  br i1 %.not4753.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ah, %GC_lock.exit.i
  %.lcssa.i = phi i64 [ %i.ay, %GC_lock.exit.i ], [ %.pre.i, %bb.ah ] ; 6 uses
  %i.bb = add nsw i64 %i.as, -1                   ; 6 uses
  %.not57.i = icmp eq i64 %i.bb, 0
  br i1 %.not57.i, label %._crit_edge.i, label %.lr.ph55.i.preheader

.lr.ph55.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i64 %i.bb, 1
  %i.bc = icmp eq i64 %i.as, 2
  br i1 %i.bc, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.i.preheader.new

.lr.ph55.i.preheader.new:                         ; preds = %.lr.ph55.i.preheader
  %unroll_iter = and i64 %i.bb, -2
  br label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %GC_lock.exit.i, %bb.ah
  %i.bd = phi i64 [ %i.bv, %bb.ah ], [ %i.ba, %GC_lock.exit.i ] ; 3 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph.i
  store ptr @GC_push_typed_structures_proc, ptr @GC_push_typed_structures, align 8
  %.b45.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b45.i, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bf = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph.i
  %.b44.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b44.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bh = shl i64 %i.bd, 1                        ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 72057594037927935
  br i1 %i.bi, label %.critedge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t, %bb.s
  %.036.i = phi i64 [ %i.bh, %bb.w ], [ 100, %bb.t ], [ 100, %bb.s ] ; 3 uses
  %i.bj = shl nuw nsw i64 %.036.i, 4
  %i.bk = tail call noalias ptr @GC_malloc_kind(i64 noundef %i.bj, i32 noundef 0) #53 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.critedge.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.b43.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b43.i, label %bb.z, label %GC_lock.exit51.i

bb.z:                                             ; preds = %bb.y
  %i.bm = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not48.i = icmp eq i32 %i.bm, 0
  br i1 %.not48.i, label %GC_lock.exit51.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = load i32, ptr @GC_nprocs, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load atomic i8, ptr @GC_collecting monotonic, align 4
  %.not.i50.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i50.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bq = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_lock.exit51.i

bb.ad:                                            ; preds = %bb.ab
  tail call fastcc void @GC_generic_lock(ptr noundef nonnull @GC_allocate_ml)
  br label %GC_lock.exit51.i

GC_lock.exit51.i:                                 ; preds = %bb.ad, %bb.ac, %bb.z, %bb.y
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 416), align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.bd, %i.br
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 424), align 8 ; 4 uses
  br i1 %i.bs, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %GC_lock.exit51.i
  %.not49.i = icmp eq i64 %.pre.i, 0
  br i1 %.not49.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.bu = shl i64 %.pre.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.bt, i64 %i.bu, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i64 %.036.i, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 416), align 8
  store ptr %i.bk, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %GC_lock.exit51.i
  %i.bv = phi i64 [ %i.br, %GC_lock.exit51.i ], [ %.036.i, %bb.ag ] ; 2 uses
  %i.bw = add i64 %.pre.i, %i.as
  %.not47.i = icmp ult i64 %i.bw, %i.bv
  br i1 %.not47.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !136

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.i.preheader.new
  %.03754.i = phi i64 [ 0, %.lr.ph55.i.preheader.new ], [ %i.co, %.lr.ph55.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph55.i.preheader.new ], [ %niter.next.1, %.lr.ph55.i ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03754.i
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.ca = add i64 %.03754.i, %.lcssa.i            ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.ca
  store i64 %i.by, ptr %i.cb, align 8
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 1, ptr %i.ce, align 8
  %i.cf = or disjoint i64 %.03754.i, 1            ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cj = add i64 %i.cf, %.lcssa.i                ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cj
  store i64 %i.ch, ptr %i.ck, align 8
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 1, ptr %i.cn, align 8
  %i.co = add nuw nsw i64 %.03754.i, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph55.i, !llvm.loop !137

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph55.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph55.i.epil.preheader

.lr.ph55.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph55.i.preheader
  %.03754.i.epil.init = phi i64 [ 0, %.lr.ph55.i.preheader ], [ %i.co, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod100 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03754.i.epil.init
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cs = add i64 %.03754.i.epil.init, %.lcssa.i  ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cs
  store i64 %i.cq, ptr %i.ct, align 8
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 1, ptr %i.cw, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph55.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = and i64 %i.ar, -64
  %i.da = sub i64 %i.cz, %.041.in93
  %i.db = lshr i64 -1, %i.da
  %i.dc = and i64 %i.cy, %i.db
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.de = add i64 %.lcssa.i, %i.bb                ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  store i64 %i.dc, ptr %i.df, align 8
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 0, ptr %i.di, align 8
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 424), align 8
  %i.dk = add i64 %i.dj, %i.as
  store i64 %i.dk, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 424), align 8
  %.b.i = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b.i, label %bb.ai, label %GC_add_ext_descriptor.exit

bb.ai:                                            ; preds = %._crit_edge.i
  %i.dl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %GC_add_ext_descriptor.exit

GC_add_ext_descriptor.exit:                       ; preds = %._crit_edge.i, %bb.ai
  %.not52 = icmp eq i64 %.lcssa.i, -1
  br i1 %.not52, label %.critedge.thread, label %bb.aj

bb.aj:                                            ; preds = %GC_add_ext_descriptor.exit
  %i.dm = load i32, ptr @GC_typed_mark_proc_index, align 4
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl i64 %.lcssa.i, 8
  %i.dp = shl nuw nsw i64 %i.dn, 2
  %i.dq = or i64 %i.do, %i.dp
  %i.dr = or disjoint i64 %i.dq, 2
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %bb.w, %bb.x, %bb.i, %.critedge.preheader, %._crit_edge70.loopexit, %bb.aj, %GC_add_ext_descriptor.exit, %._crit_edge
  %.2 = phi i64 [ %i.t, %._crit_edge ], [ %i.t, %GC_add_ext_descriptor.exit ], [ %i.aq, %._crit_edge70.loopexit ], [ %i.dr, %bb.aj ], [ %i.t, %bb.w ], [ 8, %.critedge.preheader ], [ 0, %bb.i ], [ %i.t, %bb.x ], [ 0, %bb.j ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_init_explicit_typing() unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @GC_generic_malloc_inner(i64 noundef 1032, i32 noundef 0) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %GC_new_free_list_inner.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.c(ptr noundef nonnull @.str.104) #45, !inline_history !4
  tail call void @abort() #48
  unreachable

GC_new_free_list_inner.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.a, i8 0, i64 1032, i1 false)
  %i.d = load i32, ptr @GC_n_kinds, align 4       ; 4 uses
  %i.e = icmp ult i32 %i.d, 16
  br i1 %i.e, label %GC_new_kind_inner.exit, label %bb.c

bb.c:                                             ; preds = %GC_new_free_list_inner.exit
  %i.f = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.f(ptr noundef nonnull @.str.105) #45, !inline_history !5
  tail call void @abort() #48
  unreachable

GC_new_kind_inner.exit:                           ; preds = %GC_new_free_list_inner.exit
  %i.g = add nuw nsw i32 %i.d, 1
  store i32 %i.g, ptr @GC_n_kinds, align 4
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.h ; 7 uses
  store ptr %i.a, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 -5, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 1, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 0, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %i.o, align 8
  store i32 %i.d, ptr @GC_explicit_kind, align 4
  %i.p = load i32, ptr @GC_n_mark_procs, align 4  ; 6 uses
  %i.q = icmp ult i32 %i.p, 64
  br i1 %i.q, label %GC_new_proc_inner.exit, label %bb.d

bb.d:                                             ; preds = %GC_new_kind_inner.exit
  %i.r = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.r(ptr noundef nonnull @.str.106) #45, !inline_history !138
  tail call void @abort() #48
  unreachable

GC_new_proc_inner.exit:                           ; preds = %GC_new_kind_inner.exit
  %i.s = add nuw nsw i32 %i.p, 1                  ; 3 uses
  store i32 %i.s, ptr @GC_n_mark_procs, align 4
  %i.t = zext nneg i32 %i.p to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448), i64 %i.t
  store ptr @GC_typed_mark_proc, ptr %i.u, align 8
  store i32 %i.p, ptr @GC_typed_mark_proc_index, align 4
  %.not = icmp eq i32 %i.p, 63
  br i1 %.not, label %bb.e, label %GC_new_proc_inner.exit5

bb.e:                                             ; preds = %GC_new_proc_inner.exit
  %i.v = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.v(ptr noundef nonnull @.str.106) #45, !inline_history !138
  tail call void @abort() #48
  unreachable

GC_new_proc_inner.exit5:                          ; preds = %GC_new_proc_inner.exit
  %i.w = add nuw nsw i32 %i.p, 2
  store i32 %i.w, ptr @GC_n_mark_procs, align 4
  %i.x = zext nneg i32 %i.s to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448), i64 %i.x
  store ptr @GC_array_mark_proc, ptr %i.y, align 8
  store i32 %i.s, ptr @GC_array_mark_proc_index, align 4
  %i.z = tail call fastcc ptr @GC_generic_malloc_inner(i64 noundef 1032, i32 noundef 0) ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %GC_new_free_list_inner.exit6

bb.f:                                             ; preds = %GC_new_proc_inner.exit5
  %i.ab = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ab(ptr noundef nonnull @.str.104) #45, !inline_history !4
  tail call void @abort() #48
  unreachable

GC_new_free_list_inner.exit6:                     ; preds = %GC_new_proc_inner.exit5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.z, i8 0, i64 1032, i1 false)
  %i.ac = load i32, ptr @GC_n_kinds, align 4      ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 16
  br i1 %i.ad, label %GC_new_kind_inner.exit7, label %bb.g

bb.g:                                             ; preds = %GC_new_free_list_inner.exit6
  %i.ae = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ae(ptr noundef nonnull @.str.105) #45, !inline_history !5
  tail call void @abort() #48
  unreachable

GC_new_kind_inner.exit7:                          ; preds = %GC_new_free_list_inner.exit6
  %i.af = load i32, ptr @GC_array_mark_proc_index, align 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = or disjoint i64 %i.ah, 2
  %i.aj = add nuw nsw i32 %i.ac, 1
  store i32 %i.aj, ptr @GC_n_kinds, align 4
  %i.ak = zext nneg i32 %i.ac to i64
  %i.al = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.ak ; 7 uses
  store ptr %i.z, ptr %i.al, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.ai, ptr %i.an, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i32 1, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 0, ptr %i.aq, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr null, ptr %i.ar, align 8
  store i32 %i.ac, ptr @GC_array_kind, align 4
  store i64 1, ptr @GC_bm_table, align 16
  store i64 -9223372036854775807, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 8), align 8
  store i64 -4611686018427387903, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 16), align 16
  store i64 -2305843009213693951, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 24), align 8
  store i64 -1152921504606846975, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 32), align 16
  store i64 -576460752303423487, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 40), align 8
  store i64 -288230376151711743, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 48), align 16
  store i64 -144115188075855871, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 56), align 8
  store i64 -72057594037927935, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 64), align 16
  store i64 -36028797018963967, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 72), align 8
  store i64 -18014398509481983, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 80), align 16
  store i64 -9007199254740991, ptr getelementptr inbounds nuw (i8, ptr @GC_bm_table, i64 88), align 8
end_hunk_0
begin_hunk_1_@GC_register_dynlib_callback:bb.a
  br i1 %or.cond, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  %i.bn = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.bn(ptr noundef nonnull @.str.169, i64 noundef 0) #45
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.bo = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bo, label %.lr.ph65, label %.loopexit, !llvm.loop !305

.loopexit:                                        ; preds = %bb.s, %.thread, %bb.m, %bb.q, %bb.p, %.lr.ph69
  %i.bp = add nuw nsw i32 %.167, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.14966, i64 56
  %i.br = load i16, ptr %i.c, align 8
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp samesign ult i32 %i.bp, %i.bs
  br i1 %i.bt, label %.lr.ph69, label %._crit_edge70, !llvm.loop !306

._crit_edge70:                                    ; preds = %.loopexit, %bb.b, %._crit_edge
  store i32 1, ptr %2, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %._crit_edge70
  %.050 = phi i32 [ 0, %._crit_edge70 ], [ -1, %bb.a ]
  ret i32 %.050
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_start_reclaim(i32 noundef range(i32 0, 2) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 168), i8 0, i64 16, i1 false)
  %i.a = load i32, ptr @GC_n_kinds, align 4       ; 5 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not18 = icmp eq i32 %0, 0
  %wide.trip.count57 = zext i32 %i.a to i64       ; 3 uses
  br i1 %.not18, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count57, 1
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count57, 4294967294
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %indvars.iv54 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 16
  %.fr = freeze i64 %i.h
  %.not.us = icmp eq i64 %.fr, 0
  %i.i = load ptr, ptr %i.c, align 16             ; 7 uses
  br i1 %.not.us, label %vector.body, label %.split.us49

vector.body:                                      ; preds = %bb.b, %pred.store.continue92
  %index = phi i64 [ %index.next, %pred.store.continue92 ], [ 0, %bb.b ] ; 2 uses
  %i.j = shl nuw i64 %index, 3                    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x ptr>, ptr %i.k, align 8
  %wide.load86 = load <2 x ptr>, ptr %i.l, align 8
  %i.m = icmp ne <2 x ptr> %wide.load, splat (ptr null) ; 2 uses
  %i.n = icmp ne <2 x ptr> %wide.load86, splat (ptr null) ; 2 uses
  %i.o = extractelement <2 x i1> %i.m, i64 0
  br i1 %i.o, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store ptr null, ptr %i.k, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.p = extractelement <2 x i1> %i.m, i64 1
  br i1 %i.p, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.r, align 8
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue
  %i.s = extractelement <2 x i1> %i.n, i64 0
  br i1 %i.s, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr null, ptr %i.u, align 8
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %i.v = extractelement <2 x i1> %i.n, i64 1
  br i1 %i.v, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr null, ptr %i.x, align 8
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, 128
  br i1 %i.y, label %.split.us.us, label %vector.body, !llvm.loop !307

.split.us49:                                      ; preds = %bb.b, %GC_clear_fl_links.exit.us45.1
  %.0.idx39.us43 = phi i64 [ %.0.add.us46.1, %GC_clear_fl_links.exit.us45.1 ], [ 0, %bb.b ] ; 4 uses
  %.0.ptr40.us42 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0.idx39.us43 ; 2 uses
  %i.z = load ptr, ptr %.0.ptr40.us42, align 8    ; 2 uses
  %.not19.us44 = icmp eq ptr %i.z, null
  br i1 %.not19.us44, label %GC_clear_fl_links.exit.us45, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.split.us49, %.lr.ph.i.us
  %.09.i.us = phi ptr [ %.0.i.us, %.lr.ph.i.us ], [ %i.z, %.split.us49 ] ; 2 uses
  %.058.i.us = phi ptr [ %.09.i.us, %.lr.ph.i.us ], [ %.0.ptr40.us42, %.split.us49 ]
  store ptr null, ptr %.058.i.us, align 8
  %.0.i.us = load ptr, ptr %.09.i.us, align 8     ; 2 uses
  %.not.i.us = icmp eq ptr %.0.i.us, null
  br i1 %.not.i.us, label %GC_clear_fl_links.exit.us45, label %.lr.ph.i.us, !llvm.loop !308

GC_clear_fl_links.exit.us45:                      ; preds = %.lr.ph.i.us, %.split.us49
  %i.aa = icmp samesign ult i64 %.0.idx39.us43, 1024
  br i1 %i.aa, label %.split.us49.1, label %.loopexit.us

.split.us49.1:                                    ; preds = %GC_clear_fl_links.exit.us45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0.idx39.us43
  %.0.ptr40.us42.1 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %.0.ptr40.us42.1, align 8 ; 2 uses
  %.not19.us44.1 = icmp eq ptr %i.ac, null
  br i1 %.not19.us44.1, label %GC_clear_fl_links.exit.us45.1, label %.lr.ph.i.us.1

.lr.ph.i.us.1:                                    ; preds = %.split.us49.1, %.lr.ph.i.us.1
  %.09.i.us.1 = phi ptr [ %.0.i.us.1, %.lr.ph.i.us.1 ], [ %i.ac, %.split.us49.1 ] ; 2 uses
  %.058.i.us.1 = phi ptr [ %.09.i.us.1, %.lr.ph.i.us.1 ], [ %.0.ptr40.us42.1, %.split.us49.1 ]
  store ptr null, ptr %.058.i.us.1, align 8
  %.0.i.us.1 = load ptr, ptr %.09.i.us.1, align 8 ; 2 uses
  %.not.i.us.1 = icmp eq ptr %.0.i.us.1, null
  br i1 %.not.i.us.1, label %GC_clear_fl_links.exit.us45.1, label %.lr.ph.i.us.1, !llvm.loop !308

GC_clear_fl_links.exit.us45.1:                    ; preds = %.lr.ph.i.us.1, %.split.us49.1
  %.0.add.us46.1 = add nuw nsw i64 %.0.idx39.us43, 16
  br label %.split.us49

bb.c:                                             ; preds = %.loopexit.us, %.lr.ph.split.us
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !309

.loopexit.us:                                     ; preds = %.split.us.us, %bb.d, %GC_clear_fl_links.exit.us45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.e, i8 0, i64 1032, i1 false)
  br label %bb.c

.split.us.us:                                     ; preds = %pred.store.continue92
  %.0.ptr40.us.us = getelementptr inbounds nuw i8, ptr %i.i, i64 1024 ; 2 uses
  %i.ad = load ptr, ptr %.0.ptr40.us.us, align 8
  %.not19.us.us = icmp eq ptr %i.ad, null
  br i1 %.not19.us.us, label %.loopexit.us, label %bb.d

bb.d:                                             ; preds = %.split.us.us
  store ptr null, ptr %.0.ptr40.us.us, align 8
  br label %.loopexit.us

.lr.ph.split:                                     ; preds = %bb.g, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.lr.ph.split.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ag, i8 0, i64 1032, i1 false)
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split, %bb.e
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ak, i8 0, i64 1032, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit95.unr-lcssa, label %.lr.ph.split, !llvm.loop !309

._crit_edge.loopexit95.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit95.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit95.unr-lcssa ]
  %lcmp.mod96 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.am = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %indvars.iv.epil.init
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.epil.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ao, i8 0, i64 1032, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit95.unr-lcssa, %bb.h, %.lr.ph.split.epil.preheader, %bb.c, %bb.a
  %.021.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 104), align 8 ; 2 uses
  %.not22.i = icmp eq ptr %.021.i, null
  br i1 %.not22.i, label %GC_apply_to_all_blocks.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge
  %.not.i28 = icmp eq i32 %0, 0                   ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.bb
  %.023.i = phi ptr [ %.0.i20, %bb.bb ], [ %.021.i, %.preheader.i.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.023.i, i64 8208
  br label %bb.i

bb.i:                                             ; preds = %bb.ba, %.preheader.i
  %.01720.i = phi i64 [ 1023, %.preheader.i ], [ %.1.i, %bb.ba ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.023.i, i64 %.01720.i
  %i.as = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = icmp ult ptr %i.as, inttoptr (i64 4096 to ptr)
  br i1 %i.au, label %bb.ax, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 25
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = and i8 %i.aw, 4
  %.not19.i = icmp eq i8 %i.ax, 0
  br i1 %.not19.i, label %bb.k, label %GC_reclaim_block.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.aq, align 8
  %i.az = shl i64 %i.ay, 22
  %i.ba = shl i64 %.01720.i, 12
  %i.bb = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 22                      ; 4 uses
  %i.bd = and i64 %i.bc, 2047
  %i.be = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bd ; 3 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.in.i.i25 = phi ptr [ %i.be, %bb.k ], [ %i.bl, %bb.l ]
  %.0.i.i26 = load ptr, ptr %.0.in.i.i25, align 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i26, i64 8208
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = icmp ne i64 %i.bh, %i.bc
  %i.bj = icmp ne ptr %.0.i.i26, %i.bf
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i26, i64 8216
  br i1 %i.bk, label %bb.l, label %GC_find_header.exit.i27, !llvm.loop !13

GC_find_header.exit.i27:                          ; preds = %bb.l
  %i.bm = inttoptr i64 %i.bb to ptr               ; 9 uses
  %i.bn = and i64 %.01720.i, 1023                 ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i26, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8            ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8 ; 11 uses
  %i.bw = icmp ugt i64 %i.bv, 2048
  br i1 %i.bw, label %bb.m, label %bb.x

bb.m:                                             ; preds = %GC_find_header.exit.i27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8
  %.not53.i = icmp eq i8 %i.by, 0
  br i1 %.not53.i, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @GC_add_leaked(ptr noundef %i.bm)
  br label %GC_reclaim_block.exit

bb.p:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 25
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = and i8 %i.ca, 8
  %.not55.i = icmp eq i8 %i.cb, 0
  br i1 %.not55.i, label %bb.r, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 %i.cd(ptr noundef %i.bm) #45, !inline_history !310
  %.not56.i = icmp eq i32 %i.ce, 0
  br i1 %.not56.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cf = add i64 %i.bv, 4095                     ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 8191
  br i1 %i.cg, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.ch = and i64 %i.cf, -4096
  %i.ci = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  %i.cj = sub i64 %i.ci, %i.ch
  store i64 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %i.ck = load i64, ptr @GC_bytes_found, align 8
  %i.cl = add i64 %i.ck, %i.bv
  store i64 %i.cl, ptr @GC_bytes_found, align 8
  tail call fastcc void @GC_freehblk(ptr noundef %i.bm)
  br label %GC_reclaim_block.exit

bb.t:                                             ; preds = %bb.q
  store i8 1, ptr %i.bx, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.cn = load atomic volatile i64, ptr %i.cm monotonic, align 8
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 176), align 8
  %i.cq = add i64 %i.cp, %i.bv
  store i64 %i.cq, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 176), align 8
  br label %GC_reclaim_block.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 168), align 8
  %i.cs = add i64 %i.cr, %i.bv
  store i64 %i.cs, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 168), align 8
  br label %GC_reclaim_block.exit

bb.x:                                             ; preds = %GC_find_header.exit.i27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 3 uses
  %i.cu = load volatile i64, ptr %i.ct, align 8
  br i1 %.not.i28, label %bb.am, label %.preheader63.i

.preheader63.i:                                   ; preds = %bb.x, %.preheader63.i
  %.0.in.i.i.i29 = phi ptr [ %i.da, %.preheader63.i ], [ %i.be, %bb.x ]
  %.0.i.i.i30 = load ptr, ptr %.0.in.i.i.i29, align 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i30, i64 8208
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = icmp ne i64 %i.cw, %i.bc
  %i.cy = icmp ne ptr %.0.i.i.i30, %i.bf
  %i.cz = select i1 %i.cx, i1 %i.cy, i1 false
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i30, i64 8216
  br i1 %i.cz, label %.preheader63.i, label %GC_find_header.exit.i.i, !llvm.loop !13

GC_find_header.exit.i.i:                          ; preds = %.preheader63.i
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i30, i64 %i.bn
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = load i64, ptr @GC_gc_no, align 8
  %i.de = trunc i64 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 26
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = sub nuw nsw i64 4096, %i.bv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dj = lshr i64 %i.bv, 4
  %GC_n_smashed.promoted = load i32, ptr @GC_n_smashed, align 4
  %GC_n_leaked.promoted = load i32, ptr @GC_n_leaked, align 4
  %.b.i = load i1, ptr @GC_findleak_delay_free, align 4
  br label %bb.y

bb.y:                                             ; preds = %GC_add_leaked.exit, %GC_find_header.exit.i.i
  %i.dk = phi i32 [ %GC_n_leaked.promoted, %GC_find_header.exit.i.i ], [ %i.hh, %GC_add_leaked.exit ] ; 8 uses
  %i.dl = phi i32 [ %GC_n_smashed.promoted, %GC_find_header.exit.i.i ], [ %i.hi, %GC_add_leaked.exit ] ; 10 uses
  %.015.i.i.i = phi ptr [ %i.bm, %GC_find_header.exit.i.i ], [ %i.hj, %GC_add_leaked.exit ] ; 9 uses
  %.01114.i.i.i = phi i64 [ 0, %GC_find_header.exit.i.i ], [ %i.hk, %GC_add_leaked.exit ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %.01114.i.i.i
  %i.dn = load i8, ptr %i.dm, align 1
  %.not12.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not12.i.i.i, label %bb.z, label %GC_add_leaked.exit

bb.z:                                             ; preds = %bb.y
  br i1 %.b.i, label %bb.aa, label %GC_check_leaked.exit.thread.i

bb.aa:                                            ; preds = %bb.z
end_hunk_1
