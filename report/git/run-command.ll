Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/run-command?download=true
inline.NumInlined: 128
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pipe_command:bb.a
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
  br i1 %i.di, label %8, label %bb.ag

8:                                                ; preds = %pump_io.exit
  br label %bb.ag

bb.ag:                                            ; preds = %8, %pump_io.exit, %bb.l, %bb.m, %bb.g
  %.043 = phi i32 [ -1, %bb.l ], [ -1, %bb.g ], [ -1, %bb.m ], [ -1, %8 ], [ %i.dn, %pump_io.exit ]
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
  %i.f = select i1 %i.d, i1 %i.e, i1 false        ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !104
  tail call void (ptr, i32, ptr, ptr, ptr, ptr, ...) @trace2_region_enter_printf_fl(ptr noundef nonnull @.str, i32 noundef 1908, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull @.str.15, i64 noundef %i.h) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !104  ; 6 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 1574, ptr noundef nonnull @.str.72) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @trace_default_key, i64 8), align 8, !tbaa !46
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @trace_default_key, i64 12), align 4
  %.not2731.i = trunc i8 %i.l to i1
  %.not27.i = select i1 %.not.i.i, i1 %.not2731.i, i1 false
  br i1 %.not27.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ...) @trace_printf_key_fl(ptr noundef nonnull @.str, i32 noundef 1577, ptr noundef nonnull @trace_default_key, ptr noundef nonnull @.str.73, i64 noundef %i.j) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %.not28.i = icmp eq ptr %i.n, null
  br i1 %.not28.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 1580, ptr noundef nonnull @.str.74) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.o = tail call ptr @xcalloc(i64 noundef %i.j, i64 noundef 176) #22 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 32 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, 1
  %.not29.i = icmp eq i8 %i.s, 0
  br i1 %.not29.i, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.split.us.preheader

bb.j:                                             ; preds = %bb.i
  %i.u = shl i64 %i.j, 1
  %i.v = tail call ptr @xcalloc(i64 noundef %i.u, i64 noundef 8) #22
  %i.w = freeze ptr %i.v                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !109
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not30.i = icmp eq ptr %i.w, null
  br i1 %.not30.i, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %.thread, %bb.j
  %i.z = phi ptr [ %i.t, %.thread ], [ %i.y, %bb.j ]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.split.us
  %.032.i.us = phi i64 [ %i.ad, %.split.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [176 x i8], ptr %i.o, i64 %.032.i.us ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  tail call void @strbuf_init(ptr noundef nonnull %i.ab, i64 noundef 0) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef nonnull align 8 dereferenceable(136) @__const.run_auto_maintenance.maint, i64 136, i1 false)
  %i.ad = add nuw i64 %.032.i.us, 1               ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ad, %i.j
  br i1 %exitcond.not.i.us, label %pp_init.exit, label %.split.us, !llvm.loop !110

.split:                                           ; preds = %bb.j, %.split
  %.032.i = phi i64 [ %i.aj, %.split ], [ 0, %bb.j ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [176 x i8], ptr %i.o, i64 %.032.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  tail call void @strbuf_init(ptr noundef nonnull %i.af, i64 noundef 0) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ag, ptr noundef nonnull align 8 dereferenceable(136) @__const.run_auto_maintenance.maint, i64 136, i1 false)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.032.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i16 17, ptr %i.ai, align 4, !tbaa !95
  store i32 -1, ptr %i.ah, align 4, !tbaa !92
  %i.aj = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.j
  br i1 %exitcond.not.i, label %pp_init.exit, label %.split, !llvm.loop !110

pp_init.exit:                                     ; preds = %.split, %.split.us
  %i.ak = phi ptr [ %i.z, %.split.us ], [ %i.y, %.split ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.al, align 8, !tbaa !111
  store ptr %0, ptr %1, align 8, !tbaa !115
  store ptr %1, ptr @pp_for_signal, align 8, !tbaa !116
  call void @sigchain_push_common(ptr noundef nonnull @handle_children_on_signal) #22
  %i.am = call i32 @sigchain_push(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #22 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %kill_children.exit67

kill_children.exit67:                             ; preds = %kill_children.exit67.backedge, %pp_init.exit
  %.0100 = phi i32 [ 0, %pp_init.exit ], [ %.0100.be, %kill_children.exit67.backedge ]
  %i.aw = load i8, ptr %i.an, align 8
  %i.ax = and i8 %i.aw, 1
  %.not = icmp eq i8 %i.ax, 0
  br i1 %.not, label %bb.k, label %.critedgethread-pre-split

bb.k:                                             ; preds = %kill_children.exit67
  %i.ay = load i64, ptr %2, align 8, !tbaa !118   ; 2 uses
  %i.az = load i64, ptr %i.i, align 8, !tbaa !104 ; 2 uses
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %bb.k
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !106
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %.05773.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bf, %bb.m ] ; 12 uses
  %i.bc = getelementptr inbounds nuw [176 x i8], ptr %i.bb, i64 %.05773.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !119
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nuw i64 %.05773.i, 1                ; 2 uses
  %exitcond.not.i36 = icmp eq i64 %i.bf, %i.az
  br i1 %exitcond.not.i36, label %._crit_edge.thread.i, label %bb.l, !llvm.loop !121

._crit_edge.thread.i:                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 1640, ptr noundef nonnull @.str.75) #24
  unreachable

._crit_edge.i:                                    ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 112 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = or i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 8
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.bl = getelementptr inbounds nuw [176 x i8], ptr %i.bk, i64 %.05773.i ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.q, align 8
  %i.bo = and i8 %i.bn, 1
  %.not.i37 = icmp eq i8 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %spec.select.i = select i1 %.not.i37, ptr %i.bp, ptr null
  %i.bq = load ptr, ptr %i.ao, align 8, !tbaa !122
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 168
  %i.bs = call i32 %i.bj(ptr noundef nonnull %i.bm, ptr noundef %spec.select.i, ptr noundef %i.bq, ptr noundef nonnull %i.br) #22, !inline_history !123
  %.not61.i = icmp eq i32 %i.bs, 0
  %i.bt = load i8, ptr %i.q, align 8
  %i.bu = and i8 %i.bt, 1
  %.not62.i = icmp eq i8 %i.bu, 0                 ; 2 uses
  br i1 %.not61.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %._crit_edge.i
  br i1 %.not62.i, label %bb.o, label %.critedgethread-pre-split

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.bw = getelementptr inbounds nuw [176 x i8], ptr %i.bv, i64 %.05773.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  call void @strbuf_addbuf(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bx) #22
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.bz = getelementptr inbounds nuw [176 x i8], ptr %i.by, i64 %.05773.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
end_hunk_0
