inline.NumInlined: 128
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@run_thread:bb.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.c = call i32 @sigemptyset(ptr noundef nonnull %1) #22 ; 0 uses
  %i.d = call i32 @sigaddset(ptr noundef nonnull %1, i32 noundef 13) #22 ; 0 uses
  %i.e = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #22
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.69) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.a
  %i.g = load i32, ptr @async_key, align 4, !tbaa !23
  %i.h = call i32 @pthread_setspecific(i32 noundef %i.g, ptr noundef nonnull %0) #22 ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = call i32 %i.i(i32 noundef %i.k, i32 noundef %i.m, ptr noundef %i.o) #22
  %i.q = sext i32 %i.p to i64
  %i.r = inttoptr i64 %i.q to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi ptr [ %i.r, %bb.d ], [ inttoptr (i64 -1 to ptr), %bb.c ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @finish_async(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !83
  %i.d = call i32 @pthread_join(i64 noundef %i.c, ptr noundef nonnull %i.a) #22
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13) #22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @invalidate_lstat_cache() #22
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %i.h
}

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @async_with_fork() local_unnamed_addr #14 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @pipe_command(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca [3 x %struct.io_pump], align 16     ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.a, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not47 = icmp eq ptr %3, null                  ; 3 uses
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1, ptr %i.b, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not48 = icmp eq ptr %5, null                  ; 3 uses
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 -1, ptr %i.c, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.d = tail call i32 @start_command(ptr noundef %0)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.ag, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  %i.h = tail call i32 @enable_pipe_nonblock(i32 noundef %i.g) #22
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 (ptr, ...) @error_errno(ptr noundef nonnull @.str.14) #22 ; 0 uses
  %i.k = load i32, ptr %i.f, align 8, !tbaa !24
  %i.l = tail call i32 @close(i32 noundef %i.k) #22 ; 0 uses
  br i1 %.not47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = tail call i32 @close(i32 noundef %i.n) #22 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not48, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !31
  %i.r = tail call i32 @close(i32 noundef %i.q) #22 ; 0 uses
  br label %bb.ag

bb.n:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.f, align 8, !tbaa !24
  store i32 %i.s, ptr %7, align 16, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 4, ptr %i.t, align 4, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %i.v, align 16, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.0 = phi i32 [ 1, %bb.n ], [ 0, %bb.h ]        ; 3 uses
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.x = load i32, ptr %i.w, align 4, !tbaa !30
  %i.y = zext nneg i32 %.0 to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %i.y ; 4 uses
  store i32 %i.x, ptr %i.z, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.aa, align 4, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %3, ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %4, ptr %i.ac, align 8, !tbaa !16
  %i.ad = add nuw nsw i32 %.0, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1 = phi i32 [ %i.ad, %bb.p ], [ %.0, %bb.o ]  ; 4 uses
  br i1 %.not48, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !31
  %i.ag = zext nneg i32 %.1 to i64
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %i.ag ; 4 uses
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %5, ptr %i.aj, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %6, ptr %i.ak, align 8, !tbaa !16
  %i.al = add nuw nsw i32 %.1, 1
  br label %.lr.ph.preheader.i

bb.r:                                             ; preds = %bb.q
  %.not.i = icmp eq i32 %.1, 0
  br i1 %.not.i, label %._crit_edge.i._crit_edge.thread.i, label %.lr.ph.preheader.i

._crit_edge.i._crit_edge.thread.i:                ; preds = %bb.r
  %i.am = tail call ptr @xmalloc(i64 noundef 0) #22
  tail call void @free(ptr noundef %i.am) #22
  br label %pump_io.exit

.lr.ph.preheader.i:                               ; preds = %.thread, %bb.r
  %.251 = phi i32 [ %i.al, %.thread ], [ %.1, %bb.r ] ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.251 to i64 ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.an = icmp ult i32 %.251, 8
  br i1 %i.an, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 0, ptr %i.ap, align 8, !tbaa !88
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i32 0, ptr %i.ar, align 16, !tbaa !88
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  store i32 0, ptr %i.at, align 8, !tbaa !88
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  store i32 0, ptr %i.av, align 16, !tbaa !88
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 184
  store i32 0, ptr %i.ax, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  store i32 0, ptr %i.az, align 16, !tbaa !88
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 264
  store i32 0, ptr %i.bb, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 304
  store i32 0, ptr %i.bd, align 16, !tbaa !88
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.preheader.preheader.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !89

.lr.ph.i.preheader.preheader.i.unr-lcssa:         ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.preheader.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i.preheader.preheader.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %.lr.ph.i.preheader.preheader.i.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i.epil
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 0, ptr %i.bf, align 8, !tbaa !88
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.preheader.preheader.i, label %.lr.ph.i.epil, !llvm.loop !90

.lr.ph.i.preheader.preheader.i:                   ; preds = %.lr.ph.i.epil, %.lr.ph.i.preheader.preheader.i.unr-lcssa
  %i.bg = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.bh = tail call ptr @xmalloc(i64 noundef %i.bg) #22 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.backedge, %.lr.ph.i.preheader.preheader.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.preheader.preheader.i ], [ %indvars.iv.i.i.be, %.lr.ph.i.i.backedge ] ; 2 uses
  %.05064.i.i = phi i32 [ 0, %.lr.ph.i.preheader.preheader.i ], [ %.05064.i.i.be, %.lr.ph.i.i.backedge ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv.i.i ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !84 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.bl = sext i32 %.05064.i.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bl ; 3 uses
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !92
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !87
  %i.bp = trunc i32 %i.bo to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i16 %i.bp, ptr %i.bq, align 4, !tbaa !95
  %i.br = add nsw i32 %.05064.i.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bm, ptr %i.bs, align 8, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.151.i.i = phi i32 [ %i.br, %bb.s ], [ %.05064.i.i, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %thread-pre-split.i.i.thread, %bb.t, %bb.v
  %indvars.iv.i.i.be = phi i64 [ %indvars.iv.next.i.i, %bb.t ], [ 0, %bb.v ], [ 0, %thread-pre-split.i.i.thread ]
  %.05064.i.i.be = phi i32 [ %.151.i.i, %bb.t ], [ 0, %bb.v ], [ 0, %thread-pre-split.i.i.thread ]
  br label %.lr.ph.i.i, !llvm.loop !97

._crit_edge.i.i:                                  ; preds = %bb.t
  %.not.i.i = icmp eq i32 %.151.i.i, 0
  br i1 %.not.i.i, label %._crit_edge.i._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.bt = sext i32 %.151.i.i to i64
  %i.bu = tail call i32 @poll(ptr noundef %i.bh, i64 noundef %i.bt, i32 noundef -1) #22
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.v, label %.lr.ph67.i.i

bb.v:                                             ; preds = %bb.u
  %i.bw = tail call ptr @__errno_location() #25
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !23
  %i.by = icmp eq i32 %i.bx, 4
  br i1 %i.by, label %.lr.ph.i.i.backedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.71) #24
  unreachable

.lr.ph67.i.i:                                     ; preds = %bb.u, %thread-pre-split.i.i.thread
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i, %thread-pre-split.i.i.thread ], [ 0, %bb.u ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv71.i.i ; 9 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !84 ; 4 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %thread-pre-split.i.i.thread, label %bb.x

bb.x:                                             ; preds = %.lr.ph67.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !96
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !98
  %i.cg = and i16 %i.cf, 61
  %.not59.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not59.i.i, label %thread-pre-split.i.i.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !87
  switch i32 %i.ci, label %thread-pre-split.i.i.thread [
    i32 4, label %bb.z
    i32 1, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !16 ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 8388608)
  %i.cn = tail call i64 @write(i32 noundef %i.ca, ptr noundef %i.ck, i64 noundef %spec.select.i.i) #22 ; 4 uses
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cp = tail call ptr @__errno_location() #25
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !23 ; 2 uses
  switch i32 %i.cq, label %thread-pre-split.i.i.thread.sink.split.sink.split [
    i32 4, label %thread-pre-split.i.i.thread
    i32 11, label %thread-pre-split.i.i.thread
    i32 28, label %thread-pre-split.i.i.thread
  ]

bb.ab:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cn
  store ptr %i.cr, ptr %i.cj, align 8, !tbaa !16
  %i.cs = sub i64 %i.cm, %i.cn
  store i64 %i.cs, ptr %i.cl, align 8, !tbaa !16
  %.not60.i.i = icmp eq i64 %i.cm, %i.cn
  br i1 %.not60.i.i, label %thread-pre-split.i.i.thread.sink.split, label %thread-pre-split.i.i.thread

bb.ac:                                            ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !16
  %i.cx = tail call i64 @strbuf_read_once(ptr noundef %i.cu, i32 noundef %i.ca, i64 noundef %i.cw) #22 ; 2 uses
  %i.cy = icmp slt i64 %i.cx, 0
  br i1 %i.cy, label %.thread.i.i, label %bb.ad

.thread.i.i:                                      ; preds = %bb.ac
  %i.cz = tail call ptr @__errno_location() #25
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !23
  br label %thread-pre-split.i.i.thread.sink.split.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.db = icmp eq i64 %i.cx, 0
  br i1 %i.db, label %thread-pre-split.i.i.thread.sink.split, label %thread-pre-split.i.i.thread

thread-pre-split.i.i.thread.sink.split.sink.split: ; preds = %bb.aa, %.thread.i.i
  %.sink = phi i32 [ %i.da, %.thread.i.i ], [ %i.cq, %bb.aa ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i32 %.sink, ptr %i.dc, align 8, !tbaa !88
  br label %thread-pre-split.i.i.thread.sink.split

thread-pre-split.i.i.thread.sink.split:           ; preds = %thread-pre-split.i.i.thread.sink.split.sink.split, %bb.ad, %bb.ab
  %i.dd = tail call i32 @close(i32 noundef %i.ca) #22 ; 0 uses
  store i32 -1, ptr %i.bz, align 8, !tbaa !84
  br label %thread-pre-split.i.i.thread

thread-pre-split.i.i.thread:                      ; preds = %thread-pre-split.i.i.thread.sink.split, %bb.y, %bb.ab, %bb.aa, %bb.aa, %bb.aa, %bb.ad, %bb.x, %.lr.ph67.i.i
  %indvars.iv.next72.i.i = add nuw nsw i64 %indvars.iv71.i.i, 1 ; 2 uses
  %exitcond75.not.i.i = icmp eq i64 %indvars.iv.next72.i.i, %wide.trip.count.i
  br i1 %exitcond75.not.i.i, label %.lr.ph.i.i.backedge, label %.lr.ph67.i.i, !llvm.loop !99

._crit_edge.i._crit_edge.i:                       ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.bh) #22
  br label %.lr.ph27.i

bb.ae:                                            ; preds = %.lr.ph27.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count.i
  br i1 %exitcond35.not.i, label %pump_io.exit, label %.lr.ph27.i, !llvm.loop !100

.lr.ph27.i:                                       ; preds = %bb.ae, %._crit_edge.i._crit_edge.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %bb.ae ], [ 0, %._crit_edge.i._crit_edge.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv31.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !88 ; 2 uses
  %.not20.i = icmp eq i32 %i.dg, 0
  br i1 %.not20.i, label %bb.ae, label %bb.af

bb.af:                                            ; preds = %.lr.ph27.i
  %i.dh = tail call ptr @__errno_location() #25
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !23
  br label %pump_io.exit

pump_io.exit:                                     ; preds = %bb.ae, %._crit_edge.i._crit_edge.thread.i, %bb.af
  %i.di = phi i1 [ true, %bb.af ], [ false, %._crit_edge.i._crit_edge.thread.i ], [ false, %bb.ae ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !50
  %i.dl = load ptr, ptr %0, align 8, !tbaa !32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !33
  %i.dn = tail call fastcc i32 @wait_or_whine(i32 noundef %i.dk, ptr noundef %i.dm, i32 noundef 0) ; 2 uses
  tail call void @trace2_child_exit_fl(ptr noundef nonnull @.str, i32 noundef 1007, ptr noundef nonnull %0, i32 noundef %i.dn) #22
  tail call void @strvec_clear(ptr noundef nonnull %0) #22
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @strvec_clear(ptr noundef nonnull %i.do) #22
  tail call void @invalidate_lstat_cache() #22
  %spec.select = select i1 %i.di, i32 -1, i32 %i.dn
  br label %bb.ag

bb.ag:                                            ; preds = %pump_io.exit, %bb.l, %bb.m, %bb.g
  %.043 = phi i32 [ -1, %bb.l ], [ -1, %bb.g ], [ -1, %bb.m ], [ %spec.select, %pump_io.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret i32 %.043
}

declare i32 @enable_pipe_nonblock(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @run_processes_parallel(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.parallel_processes_for_signal, align 8 ; 5 uses
  %2 = alloca %struct.parallel_processes, align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) @__const.run_processes_parallel.pp, i64 64, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 3 uses
  %i.d = icmp ne ptr %i.a, null
  %i.e = icmp ne ptr %i.c, null
end_hunk_0
