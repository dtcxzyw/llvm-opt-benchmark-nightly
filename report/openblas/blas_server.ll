Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/blas_server?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@legacy_exec:bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = load double, ptr %i.j, align 8, !tbaa !65
  %i.l = load ptr, ptr %2, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !71
  tail call void %0(i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, double noundef %i.k, ptr noundef %i.l, i64 noundef %i.n, ptr noundef %i.p, i64 noundef %i.r, ptr noundef %i.t, i64 noundef %i.v, ptr noundef %3) #12
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !73
  %i.af = load ptr, ptr %2, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !71
  tail call void %0(i64 noundef %i.x, i64 noundef %i.z, i64 noundef %i.ab, float noundef %i.ae, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef %i.aj, i64 noundef %i.al, ptr noundef %i.an, i64 noundef %i.ap, ptr noundef %3) #12
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.h [
    i32 3, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = load i64, ptr %i.au, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !65
  %i.bb = load ptr, ptr %2, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !67
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !71
  tail call void %0(i64 noundef %i.ar, i64 noundef %i.at, i64 noundef %i.av, double noundef %i.ay, double noundef %i.ba, ptr noundef %i.bb, i64 noundef %i.bd, ptr noundef %i.bf, i64 noundef %i.bh, ptr noundef %i.bj, i64 noundef %i.bl, ptr noundef %3) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !63 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !73
  %i.bx = load ptr, ptr %2, align 8, !tbaa !66
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !67
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !70
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !71
  tail call void %0(i64 noundef %i.bn, i64 noundef %i.bp, i64 noundef %i.br, float noundef %i.bu, float noundef %i.bw, ptr noundef %i.bx, i64 noundef %i.bz, ptr noundef %i.cb, i64 noundef %i.cd, ptr noundef %i.cf, i64 noundef %i.ch, ptr noundef %3) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.f, %bb.g, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @goto_set_num_threads(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @blas_server_avail, align 128, !tbaa !10
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @blas_thread_init()        ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp slt i32 %0, 1
  %i.e = load i32, ptr @blas_num_threads, align 4 ; 2 uses
  %spec.select = select i1 %i.d, i32 %i.e, i32 %0
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 64) ; 5 uses
  %i.f = icmp sgt i32 %spec.store.select, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @server_lock) #12 ; 0 uses
  %i.h = load i32, ptr @blas_num_threads, align 4, !tbaa !10
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1) ; 3 uses
  %i.j = icmp slt i32 %i.i, %spec.store.select
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.k = add nsw i32 %spec.store.select, -1
  %i.l = add nsw i32 %i.i, -1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.i)
  %i.o = zext i32 %i.n to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01416 = phi i64 [ %i.y, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw [128 x i8], ptr @thread_status, i64 %.01416 ; 4 uses
  store atomic volatile ptr null, ptr %i.p release, align 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store volatile i64 4, ptr %i.q, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.r, ptr noundef null) #12 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.u = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.t, ptr noundef null) #12 ; 0 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @blas_threads, i64 %.01416
  %i.w = inttoptr i64 %.01416 to ptr
  %i.x = tail call i32 @pthread_create(ptr noundef nonnull %i.v, ptr noundef null, ptr noundef nonnull @blas_thread_server, ptr noundef %i.w) #12 ; 0 uses
  %i.y = add nuw nsw i64 %.01416, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  store i32 %spec.store.select, ptr @blas_num_threads, align 4, !tbaa !10
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @server_lock) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  store atomic i32 %spec.store.select, ptr @blas_cpu_number seq_cst, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define void @openblas_set_num_threads(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @goto_set_num_threads(i32 noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @gotoblas_pthread(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [64 x %struct.blas_queue], align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @blas_get_cpu_number() #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load i32, ptr @blas_server_avail, align 128, !tbaa !10
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @blas_thread_init()        ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.h = sext i32 %3 to i64                       ; 5 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.i = icmp ult i32 %0, 4
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.f ] ; 5 uses
  %.02224 = phi ptr [ %2, %.lr.ph.new ], [ %i.as, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.f ]
  %i.j = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store i32 16384, ptr %i.k, align 16, !tbaa !30
  store ptr %1, ptr %i.j, align 16, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %.02224, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %.02224, ptr %i.n, align 16, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.02224, ptr %i.o, align 8, !tbaa !32
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv.next
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.p, ptr %i.q, align 16, !tbaa !26
  %i.r = getelementptr inbounds i8, ptr %.02224, i64 %i.h ; 4 uses
  %i.s = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv.next ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  store i32 16384, ptr %i.t, align 8, !tbaa !30
  store ptr %1, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.r, ptr %i.u, align 16, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr %i.r, ptr %i.x, align 16, !tbaa !32
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.y = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv.next.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.y, ptr %i.z, align 8, !tbaa !26
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.h ; 4 uses
  %i.ab = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv.next.1 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  store i32 16384, ptr %i.ac, align 16, !tbaa !30
  store ptr %1, ptr %i.ab, align 16, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %i.af, align 16, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %i.aa, ptr %i.ag, align 8, !tbaa !32
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv.next.2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr %i.ah, ptr %i.ai, align 16, !tbaa !26
  %i.aj = getelementptr inbounds i8, ptr %i.aa, i64 %i.h ; 4 uses
  %i.ak = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv.next.2 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  store i32 16384, ptr %i.al, align 8, !tbaa !30
  store ptr %1, ptr %i.ak, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.aj, ptr %i.am, align 16, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %i.aj, ptr %i.ap, align 16, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.aq = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv.next.3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !26
  %i.as = getelementptr inbounds i8, ptr %i.aj, i64 %i.h ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.f, !llvm.loop !75

._crit_edge.unr-lcssa:                            ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.02224.epil.init = phi ptr [ %2, %.lr.ph ], [ %i.as, %._crit_edge.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod27)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 2 uses
  %.02224.epil = phi ptr [ %.02224.epil.init, %.epil.preheader ], [ %i.bb, %bb.g ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.at = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv.epil ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 160
  store i32 16384, ptr %i.au, align 8, !tbaa !30
  store ptr %1, ptr %i.at, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %.02224.epil, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store ptr %.02224.epil, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store ptr %.02224.epil, ptr %i.ay, align 8, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %indvars.iv.next.epil
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !26
  %i.bb = getelementptr inbounds i8, ptr %.02224.epil, i64 %i.h
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.g, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.g, %._crit_edge.unr-lcssa
  %5 = zext nneg i32 %0 to i64                    ; 2 uses
  %i.bc = getelementptr [168 x i8], ptr %4, i64 %5
  %i.bd = getelementptr i8, ptr %i.bc, i64 -104
  store ptr null, ptr %i.bd, align 8, !tbaa !26
  %i.be = call i32 @exec_blas(i64 noundef %5, ptr noundef nonnull %4) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 0
}

declare i32 @blas_get_cpu_number() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @blas_thread_shutdown_() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @server_lock) #12 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @blas_thread_buffer, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %.not20 = icmp eq ptr %i.c, null
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @blas_memory_free(ptr noundef nonnull %i.c) #12
  store ptr null, ptr %i.b, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !78

bb.e:                                             ; preds = %bb.d
  %i.d = load i32, ptr @blas_server_avail, align 128, !tbaa !10
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %.preheader22

.preheader22:                                     ; preds = %bb.e
  %i.e = load i32, ptr @blas_num_threads, align 4, !tbaa !10
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.preheader21:                                     ; preds = %.lr.ph
  %i.g = icmp sgt i32 %i.o, 1
  br i1 %i.g, label %.lr.ph26, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader22, %.lr.ph
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph ], [ 0, %.preheader22 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [128 x i8], ptr @thread_status, i64 %indvars.iv30 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #12 ; 0 uses
  store atomic volatile ptr inttoptr (i64 -1 to ptr), ptr %i.h release, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store volatile i64 4, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.m = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.l) #12 ; 0 uses
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #12 ; 0 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.o = load i32, ptr @blas_num_threads, align 4, !tbaa !10 ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next31, %i.q
  br i1 %i.r, label %.lr.ph, label %.preheader21, !llvm.loop !79

.preheader:                                       ; preds = %.lr.ph26
  %i.s = icmp sgt i32 %i.w, 1
  br i1 %i.s, label %.lr.ph28, label %._crit_edge

.lr.ph26:                                         ; preds = %.preheader21, %.lr.ph26
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %.lr.ph26 ], [ 0, %.preheader21 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @blas_threads, i64 %indvars.iv33
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12
  %i.v = tail call i32 @pthread_join(i64 noundef %i.u, ptr noundef null) #12 ; 0 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %i.w = load i32, ptr @blas_num_threads, align 4, !tbaa !10 ; 2 uses
  %i.x = add nsw i32 %i.w, -1
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next34, %i.y
  br i1 %i.z, label %.lr.ph26, label %.preheader, !llvm.loop !80

.lr.ph28:                                         ; preds = %.preheader, %.lr.ph28
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph28 ], [ 0, %.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr @thread_status, i64 %indvars.iv36 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ab) #12 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ae = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ad) #12 ; 0 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.af = load i32, ptr @blas_num_threads, align 4, !tbaa !10
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next37, %i.ah
  br i1 %i.ai, label %.lr.ph28, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph28, %.preheader22, %.preheader21, %.preheader
  store i32 0, ptr @blas_server_avail, align 128, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.aj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @server_lock) #12 ; 0 uses
  ret i32 0
}

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #4

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i64.v4p0(<4 x i64>, <4 x ptr>, <4 x i1>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { cold nounwind }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTS10blas_queue", !14, i64 0}
!18 = !{!"", !17, i64 0, !11, i64 8, !6, i64 16, !6, i64 56}
!19 = !{!18, !11, i64 8}
!20 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!"blas_queue", !14, i64 0, !11, i64 8, !11, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !17, i64 64, !6, i64 72, !6, i64 112, !7, i64 160, !7, i64 164}
!24 = !{!23, !11, i64 8}
!25 = !{!23, !11, i64 16}
!26 = !{!23, !17, i64 64}
!27 = !{i64 2150370861}
!28 = !{i64 2150371003}
!29 = !{!23, !14, i64 0}
!30 = !{!23, !7, i64 160}
!31 = !{!23, !14, i64 24}
!32 = !{!23, !14, i64 56}
!33 = !{!23, !14, i64 32}
!34 = !{!23, !14, i64 40}
!35 = !{!23, !14, i64 48}
!36 = distinct !{!36, !16}
end_hunk_0
