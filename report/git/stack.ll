Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/stack?download=true
inline.NumInlined: 39
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@stack_compact_range:bb.a
  br i1 %i.et, label %stack_filename.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !41
  %i.ew = call i32 @tmpfile_rename(ptr noundef nonnull %10, ptr noundef %i.ev) #16 ; 2 uses
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %stack_filename.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread261
  %.not323 = icmp eq i64 %.1165, 0
  br i1 %.not323, label %._crit_edge314, label %.lr.ph313

bb.ai:                                            ; preds = %bb.aj
  %i.ey = add nuw i64 %.2159311, 1                ; 2 uses
  %exitcond346.not = icmp eq i64 %i.ey, %.1165
  br i1 %exitcond346.not, label %._crit_edge314, label %.lr.ph313, !llvm.loop !134

.lr.ph313:                                        ; preds = %bb.ah, %bb.ai
  %.2159311 = phi i64 [ %i.ey, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.2159311
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !38
  %i.fc = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef %i.fb) #16 ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %stack_filename.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph313
  %i.fe = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #16 ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %stack_filename.exit.thread, label %bb.ai

._crit_edge314:                                   ; preds = %bb.ai, %bb.ah
  br i1 %i.bj, label %bb.ak, label %.preheader

bb.ak:                                            ; preds = %._crit_edge314
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !41
  %i.fi = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef %i.fh) #16 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %stack_filename.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fk = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #16 ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 0
  br i1 %i.fl, label %stack_filename.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.al, %._crit_edge314
  br label %bb.am

bb.am:                                            ; preds = %.preheader, %bb.ao
  %.3160.in = phi i64 [ %.3160, %bb.ao ], [ %.1163, %.preheader ]
  %.3160 = add i64 %.3160.in, 1                   ; 2 uses
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.3160
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !38 ; 2 uses
  %.not220 = icmp eq ptr %i.fo, null
  br i1 %.not220, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef nonnull %i.fo) #16 ; 2 uses
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %stack_filename.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fr = call i32 @reftable_buf_addstr(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #16 ; 2 uses
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %stack_filename.exit.thread, label %bb.am, !llvm.loop !135

bb.ap:                                            ; preds = %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !140
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !41
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !63
  %i.fz = call fastcc i64 @reftable_write_data(i32 noundef %i.fu, ptr noundef %i.fw, i64 noundef %i.fy)
  %i.ga = and i64 %i.fz, 2147483648
  %.not221 = icmp eq i64 %i.ga, 0
  br i1 %.not221, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !41
  %i.gd = call i32 @unlink(ptr noundef %i.gc) #16 ; 0 uses
  br label %stack_filename.exit.thread

bb.ar:                                            ; preds = %bb.ap
  %i.ge = load i32, ptr %i.ft, align 8, !tbaa !140
  %i.gf = call i32 @reftable_fsync(i32 noundef %i.ge) #16
  %i.gg = icmp slt i32 %i.gf, 0
  br i1 %i.gg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !41
  %i.gj = call i32 @unlink(ptr noundef %i.gi) #16 ; 0 uses
  br label %stack_filename.exit.thread

bb.at:                                            ; preds = %bb.ar
  %i.gk = call i32 @flock_commit(ptr noundef nonnull %9) #16
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !41
  %i.go = call i32 @unlink(ptr noundef %i.gn) #16 ; 0 uses
  br label %stack_filename.exit.thread

bb.av:                                            ; preds = %bb.at
  %i.gp = icmp ult i64 %.0154, %2
  %i.gq = zext i1 %i.gp to i32
  %i.gr = call fastcc i32 @reftable_stack_reload_maybe_reuse(ptr noundef nonnull %0, i32 noundef %i.gq) ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, -1
  %i.gt = icmp ne i64 %.0155416, 0
  %or.cond320 = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond320, label %.lr.ph316, label %stack_filename.exit.thread

.lr.ph316:                                        ; preds = %bb.av, %bb.ax
  %.4161315 = phi i64 [ %i.hb, %bb.ax ], [ 0, %bb.av ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.4161315
  call void @reftable_buf_reset(ptr noundef nonnull %8) #16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !139 ; 2 uses
  %i.gw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gv) #18
  %i.gx = add i64 %i.gw, -5
  %i.gy = call i32 @reftable_buf_add(ptr noundef nonnull %8, ptr noundef nonnull %i.gv, i64 noundef %i.gx) #16 ; 2 uses
  %.not222 = icmp eq i32 %i.gy, 0
  br i1 %.not222, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph316
  %i.gz = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.ha = call i32 @unlink(ptr noundef %i.gz) #16 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph316, %bb.aw
  %i.hb = add nuw i64 %.4161315, 1                ; 2 uses
  %exitcond347.not = icmp eq i64 %i.hb, %.0155416
  br i1 %exitcond347.not, label %stack_filename.exit.thread, label %.lr.ph316, !llvm.loop !136

stack_filename.exit.thread:                       ; preds = %bb.m, %.lr.ph423, %bb.i, %stack_filename.exit, %bb.aa, %bb.x, %bb.y, %bb.z, %.lr.ph310, %.lr.ph313, %bb.aj, %bb.an, %bb.ao, %bb.ax, %.preheader275, %bb.u, %bb.t, %._crit_edge308, %.thread, %bb.n, %bb.ab, %bb.q, %.loopexit, %bb.g, %bb.e, %bb.a, %bb.b, %bb.av, %bb.ak, %bb.al, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.r, %bb.o, %bb.k, %bb.l, %bb.d, %bb.c, %bb.au, %bb.as, %bb.aq
  %.1174 = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.a ], [ %i.s, %bb.aa ], [ null, %bb.b ], [ %i.s, %bb.n ], [ %i.s, %bb.o ], [ %i.s, %.loopexit ], [ %i.s, %bb.r ], [ %i.s, %bb.t ], [ %i.s, %bb.ax ], [ %i.s, %bb.u ], [ %i.s, %.preheader275 ], [ %i.s, %bb.aq ], [ %i.s, %bb.as ], [ %i.s, %bb.au ], [ %i.s, %bb.av ], [ %i.s, %.lr.ph310 ], [ %i.s, %bb.ak ], [ %i.s, %bb.al ], [ %i.s, %bb.ad ], [ %i.s, %bb.ae ], [ %i.s, %bb.af ], [ %i.s, %bb.ag ], [ %i.s, %bb.an ], [ %i.s, %bb.x ], [ %i.s, %bb.q ], [ null, %bb.g ], [ %i.s, %bb.l ], [ %i.s, %bb.k ], [ %i.s, %._crit_edge308 ], [ %i.s, %bb.ab ], [ null, %.thread ], [ %i.s, %.lr.ph313 ], [ %i.s, %bb.ao ], [ %i.s, %bb.aj ], [ %i.s, %bb.z ], [ %i.s, %bb.y ], [ %i.s, %stack_filename.exit ], [ %i.s, %bb.i ], [ %i.s, %.lr.ph423 ], [ %i.s, %bb.m ]
  %.7 = phi i32 [ -12, %bb.e ], [ %i.k, %bb.c ], [ %i.m, %bb.d ], [ 0, %bb.a ], [ -12, %bb.aa ], [ 0, %bb.b ], [ %i.bi, %bb.n ], [ %i.bm, %bb.o ], [ -2, %.loopexit ], [ %i.bt, %bb.r ], [ -2, %bb.t ], [ %i.gy, %bb.ax ], [ %i.by, %bb.u ], [ -12, %.preheader275 ], [ -2, %bb.aq ], [ -2, %bb.as ], [ -2, %bb.au ], [ %i.gr, %bb.av ], [ -13, %.lr.ph310 ], [ %i.fi, %bb.ak ], [ %i.fk, %bb.al ], [ %i.em, %bb.ad ], [ %i.eo, %bb.ae ], [ %i.es, %bb.af ], [ %i.ew, %bb.ag ], [ %i.fp, %bb.an ], [ -12, %bb.x ], [ -2, %bb.q ], [ -13, %bb.g ], [ -5, %bb.l ], [ %i.ay, %bb.k ], [ -12, %._crit_edge308 ], [ -13, %bb.ab ], [ -13, %.thread ], [ %i.fc, %.lr.ph313 ], [ %i.fr, %bb.ao ], [ %i.fe, %bb.aj ], [ -12, %bb.z ], [ -12, %bb.y ], [ %i.au, %stack_filename.exit ], [ %i.be, %bb.m ], [ %i.aq, %.lr.ph423 ], [ %i.as, %bb.i ] ; 2 uses
  %.1156 = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ], [ %.0155416, %bb.aa ], [ 0, %bb.b ], [ %.0155416, %bb.n ], [ %.0155416, %bb.o ], [ %.0155416, %.loopexit ], [ %.0155416, %bb.r ], [ %.0155416, %bb.t ], [ %.0155416, %bb.ax ], [ %.0155416, %bb.u ], [ %.0155416, %.preheader275 ], [ %.0155416, %bb.aq ], [ %.0155416, %bb.as ], [ %.0155416, %bb.au ], [ %.0155416, %bb.av ], [ %.0155416, %.lr.ph310 ], [ %.0155416, %bb.ak ], [ %.0155416, %bb.al ], [ %.0155416, %bb.ad ], [ %.0155416, %bb.ae ], [ %.0155416, %bb.af ], [ %.0155416, %bb.ag ], [ %.0155416, %bb.an ], [ %.0155416, %bb.x ], [ %.0155416, %bb.q ], [ 0, %bb.g ], [ %.0155422, %bb.l ], [ %.0155422, %bb.k ], [ %.0155416, %._crit_edge308 ], [ %.0155416, %bb.ab ], [ 0, %.thread ], [ %.0155416, %.lr.ph313 ], [ %.0155416, %bb.ao ], [ %.0155416, %bb.aj ], [ %.0155416, %bb.z ], [ %.0155416, %bb.y ], [ %.0155422, %stack_filename.exit ], [ %i.bd, %bb.m ], [ %.0155422, %.lr.ph423 ], [ %.0155422, %bb.i ] ; 2 uses
  %.1174.fr = freeze ptr %.1174                   ; 3 uses
  %i.hc = call i32 @flock_release(ptr noundef nonnull %9) #16 ; 0 uses
  %i.hd = icmp ne ptr %.1174.fr, null
  %i.he = icmp ne i64 %.1156, 0
  %i.hf = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %i.hf, label %.lr.ph318.split, label %._crit_edge319

.lr.ph318.split:                                  ; preds = %stack_filename.exit.thread, %.lr.ph318.split
  %.5317 = phi i64 [ %i.hi, %.lr.ph318.split ], [ 0, %stack_filename.exit.thread ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %.1174.fr, i64 %.5317
  %i.hh = call i32 @flock_release(ptr noundef nonnull %i.hg) #16 ; 0 uses
  %i.hi = add nuw i64 %.5317, 1                   ; 2 uses
  %exitcond348.not = icmp eq i64 %i.hi, %.1156
  br i1 %exitcond348.not, label %._crit_edge319, label %.lr.ph318.split, !llvm.loop !137

._crit_edge319:                                   ; preds = %.lr.ph318.split, %stack_filename.exit.thread
  call void @reftable_free(ptr noundef %.1174.fr) #16
  %i.hj = call i32 @tmpfile_delete(ptr noundef nonnull %10) #16 ; 0 uses
  call void @reftable_buf_release(ptr noundef nonnull %6) #16
  call void @reftable_buf_release(ptr noundef nonnull %7) #16
  call void @reftable_buf_release(ptr noundef nonnull %5) #16
  call void @reftable_buf_release(ptr noundef nonnull %8) #16
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @free_names(ptr noundef %i.hk) #16
  %i.hl = icmp eq i32 %.7, -5
  br i1 %i.hl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge319
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !141
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !141
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge319, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %.7
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @suggest_compaction_segment(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.segment) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ult i64 %2, 2
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i8 %3, 0
  %spec.store.select = select i1 %.not, i8 2, i8 %3
  %i.b = zext i8 %spec.store.select to i64        ; 4 uses
  %.051 = add i64 %2, -1
  br label %.lr.ph55

bb.b:                                             ; preds = %.lr.ph55
  %.0 = add i64 %.054, -1                         ; 2 uses
  %.not27 = icmp eq i64 %.0, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not27, label %.loopexit, label %.lr.ph55, !llvm.loop !1

.lr.ph55:                                         ; preds = %.preheader, %bb.b
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.054 = phi i64 [ %.051, %.preheader ], [ %.0, %bb.b ] ; 8 uses
  %.0.in53 = phi i64 [ %2, %.preheader ], [ %.054, %bb.b ] ; 2 uses
  %i.c = getelementptr [8 x i8], ptr %1, i64 %.0.in53
  %i.d = getelementptr i8, ptr %i.c, i64 -16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.054
  %i.g = load i64, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = mul i64 %i.g, %i.b
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %.lr.ph, label %bb.b, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0.in53, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = add i64 %2, -2
  %xtraiter = and i64 %.054, 1
  %i.m = icmp eq i64 %i.l, %indvar
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.054, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %i.n = phi i64 [ 0, %.lr.ph.new ], [ %spec.select.1, %bb.c ]
  %.136 = phi i64 [ %.054, %.lr.ph.new ], [ %i.v, %bb.c ] ; 2 uses
  %.12535 = phi i64 [ %i.g, %.lr.ph.new ], [ %i.y, %bb.c ] ; 2 uses
  %i.o = phi i64 [ 0, %.lr.ph.new ], [ %spec.select39.1, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.p = add i64 %.136, -1                        ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %i.s = add i64 %i.r, %.12535                    ; 3 uses
  %i.t = mul i64 %.12535, %i.b
  %i.u = icmp ult i64 %i.r, %i.t                  ; 2 uses
  %spec.select = select i1 %i.u, i64 %i.s, i64 %i.n
  %spec.select39 = select i1 %i.u, i64 %i.p, i64 %i.o
  %i.v = add i64 %.136, -2                        ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !43   ; 2 uses
  %i.y = add i64 %i.x, %i.s                       ; 3 uses
  %i.z = mul i64 %i.s, %i.b
  %i.aa = icmp ult i64 %i.x, %i.z                 ; 2 uses
  %spec.select.1 = select i1 %i.aa, i64 %i.y, i64 %spec.select ; 3 uses
  %spec.select39.1 = select i1 %i.aa, i64 %i.v, i64 %spec.select39 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.unr-lcssa, label %bb.c, !llvm.loop !2

..loopexit_crit_edge.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ 0, %.lr.ph ], [ %spec.select.1, %..loopexit_crit_edge.unr-lcssa ]
  %.136.epil.init = phi i64 [ %.054, %.lr.ph ], [ %i.v, %..loopexit_crit_edge.unr-lcssa ]
  %.12535.epil.init = phi i64 [ %i.g, %.lr.ph ], [ %i.y, %..loopexit_crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init61 = phi i64 [ 0, %.lr.ph ], [ %spec.select39.1, %..loopexit_crit_edge.unr-lcssa ]
  %lcmp.mod64 = trunc i64 %.054 to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.ab = add i64 %.136.epil.init, -1             ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %i.ae = add i64 %i.ad, %.12535.epil.init
  %i.af = mul i64 %.12535.epil.init, %i.b
  %i.ag = icmp ult i64 %i.ad, %i.af               ; 2 uses
  %spec.select.epil = select i1 %i.ag, i64 %i.ae, i64 %.epil.init
  %spec.select39.epil = select i1 %i.ag, i64 %i.ab, i64 %.epil.init61
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i64 [ %spec.select.1, %..loopexit_crit_edge.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  %spec.select39.lcssa = phi i64 [ %spec.select39.1, %..loopexit_crit_edge.unr-lcssa ], [ %spec.select39.epil, %.epil.preheader ]
  store i64 %spec.select.lcssa, ptr %i.k, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %..loopexit_crit_edge
  %.lcssa33 = phi i64 [ %spec.select39.lcssa, %..loopexit_crit_edge ], [ 0, %bb.b ]
  store i64 %.lcssa33, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -13, 1) i32 @reftable_stack_compaction_required(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.segment, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = call fastcc i32 @update_segment_if_compaction_required(ptr noundef %0, ptr noundef %3, i1 noundef zeroext %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -13, 1) i32 @update_segment_if_compaction_required(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48
  %i.e = icmp ugt i64 %i.d, 1                     ; 2 uses
  %brmerge.not = and i1 %i.e, %2
  br i1 %brmerge.not, label %bb.b, label %stack_segments_for_compaction.exit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = icmp eq i32 %i.g, 89
  %i.i = select i1 %i.h, i32 1, i32 2
  %i.j = tail call i64 @header_size(i32 noundef %i.i) #16
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = tail call ptr @reftable_calloc(i64 noundef %i.m, i64 noundef 8) #16 ; 8 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %stack_segments_for_compaction.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %.not24.i = icmp eq i64 %i.q, 0
  br i1 %.not24.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = shl i64 %i.j, 32
  %sext.i = add i64 %i.t, -4294967296
  %i.u = ashr exact i64 %sext.i, 32
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.d
  %i.v = icmp ult i64 %i.bd, 2
  br i1 %i.v, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 189
  %i.x = load i8, ptr %i.w, align 1, !tbaa !145   ; 2 uses
  %.not.i.i = icmp eq i8 %i.x, 0
  %spec.store.select.i.i = select i1 %.not.i.i, i8 2, i8 %i.x
  %i.y = zext i8 %spec.store.select.i.i to i64    ; 4 uses
  %.0.i.i33 = add i64 %i.bd, -1
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.0.i.i = add i64 %.0.i.i36, -1                 ; 2 uses
  %.not27.i.i = icmp eq i64 %.0.i.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.c
  %indvar = phi i64 [ 0, %.preheader.i.i ], [ %indvar.next, %bb.c ] ; 2 uses
  %.0.i.i36 = phi i64 [ %.0.i.i33, %.preheader.i.i ], [ %.0.i.i, %bb.c ] ; 8 uses
  %.0.in.i.i35 = phi i64 [ %i.bd, %.preheader.i.i ], [ %.0.i.i36, %bb.c ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.n, i64 %.0.in.i.i35
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !43, !noalias !146
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0.i.i36
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !43, !noalias !146 ; 3 uses
  %i.ae = mul i64 %i.ad, %i.y
  %i.af = icmp ult i64 %i.ab, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.preheader, label %bb.c, !llvm.loop !1

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.ag = add i64 %i.bd, -2
  %xtraiter = and i64 %.0.i.i36, 1
  %i.ah = icmp eq i64 %i.ag, %indvar
  br i1 %i.ah, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.0.i.i36, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.ai = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %spec.select.i.i.1, %.lr.ph.i.i ]
  %.136.i.i = phi i64 [ %.0.i.i36, %.lr.ph.i.i.preheader.new ], [ %i.aq, %.lr.ph.i.i ] ; 2 uses
  %.12535.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i ] ; 2 uses
  %i.aj = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %spec.select39.i.i.1, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ak = add i64 %.136.i.i, -1                   ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !43, !noalias !146 ; 2 uses
  %i.an = add i64 %i.am, %.12535.i.i              ; 3 uses
  %i.ao = mul i64 %.12535.i.i, %i.y
  %i.ap = icmp ult i64 %i.am, %i.ao               ; 2 uses
  %spec.select.i.i = select i1 %i.ap, i64 %i.an, i64 %i.ai
  %spec.select39.i.i = select i1 %i.ap, i64 %i.ak, i64 %i.aj
  %i.aq = add i64 %.136.i.i, -2                   ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43, !noalias !146 ; 2 uses
  %i.at = add i64 %i.as, %i.an                    ; 3 uses
  %i.au = mul i64 %i.an, %i.y
  %i.av = icmp ult i64 %i.as, %i.au               ; 2 uses
  %spec.select.i.i.1 = select i1 %i.av, i64 %i.at, i64 %spec.select.i.i ; 3 uses
  %spec.select39.i.i.1 = select i1 %i.av, i64 %i.aq, i64 %spec.select39.i.i ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.023.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %bb.d ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.023.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !83
  %i.ba = sub i64 %i.az, %i.u
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.023.i
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !43
  %i.bc = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !48  ; 5 uses
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.d, label %._crit_edge.i, !llvm.loop !144

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %spec.select.i.i.1, %.loopexit.loopexit.unr-lcssa ]
  %.136.i.i.epil.init = phi i64 [ %.0.i.i36, %.lr.ph.i.i.preheader ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ]
  %.12535.i.i.epil.init = phi i64 [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.at, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init45 = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %spec.select39.i.i.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %.0.i.i36 to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.bf = add i64 %.136.i.i.epil.init, -1         ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !43, !noalias !146 ; 2 uses
  %i.bi = add i64 %i.bh, %.12535.i.i.epil.init
  %i.bj = mul i64 %.12535.i.i.epil.init, %i.y
  %i.bk = icmp ult i64 %i.bh, %i.bj               ; 2 uses
  %spec.select.i.i.epil = select i1 %i.bk, i64 %i.bi, i64 %.epil.init
  %spec.select39.i.i.epil = select i1 %i.bk, i64 %i.bf, i64 %.epil.init45
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader.i, %._crit_edge.i
  %.sroa.0.0.i = phi i64 [ 0, %._crit_edge.i ], [ %spec.select39.i.i.epil, %.lr.ph.i.i.epil.preheader ], [ 0, %.preheader.i ], [ %spec.select39.i.i.1, %.loopexit.loopexit.unr-lcssa ], [ 0, %bb.c ]
  %.sroa.5.1.i = phi i64 [ 0, %._crit_edge.i ], [ %.0.in.i.i35, %.lr.ph.i.i.epil.preheader ], [ 0, %.preheader.i ], [ %.0.in.i.i35, %.loopexit.loopexit.unr-lcssa ], [ 0, %bb.c ]
  %.sroa.6.1.i = phi i64 [ 0, %._crit_edge.i ], [ %spec.select.i.i.epil, %.lr.ph.i.i.epil.preheader ], [ 0, %.preheader.i ], [ %spec.select.i.i.1, %.loopexit.loopexit.unr-lcssa ], [ 0, %bb.c ]
  store i64 %.sroa.0.0.i, ptr %1, align 8, !tbaa !43
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %1, i64 8 ; 2 uses
  store i64 %.sroa.5.1.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.6.1.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !43
  tail call void @reftable_free(ptr noundef nonnull %i.n) #16
  %.val = load i64, ptr %1, align 8, !tbaa !67
  %.val11 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !68
  %i.bl = sub i64 %.val11, %.val
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp sgt i32 %i.bm, 0
  br label %stack_segments_for_compaction.exit.sink.split

stack_segments_for_compaction.exit.sink.split:    ; preds = %bb.a, %.loopexit
  %.sink.in = phi i1 [ %i.bn, %.loopexit ], [ %i.e, %bb.a ]
  %.sink = zext i1 %.sink.in to i8
  store i8 %.sink, ptr %3, align 1, !tbaa !65
  br label %stack_segments_for_compaction.exit

stack_segments_for_compaction.exit:               ; preds = %stack_segments_for_compaction.exit.sink.split, %bb.b
  %.0 = phi i32 [ -13, %bb.b ], [ 0, %stack_segments_for_compaction.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @reftable_stack_compaction_stats(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reftable_stack_read_ref(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.reftable_iterator, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = call i32 @reftable_merged_table_init_ref_iterator(ptr noundef %i.b, ptr noundef nonnull %3) #16 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @reftable_iterator_seek_ref(ptr noundef nonnull %3, ptr noundef %1) #16 ; 2 uses
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @reftable_iterator_next_ref(ptr noundef nonnull %3, ptr noundef %2) #16 ; 2 uses
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !148
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %1) #18
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @reftable_ref_record_is_deletion(ptr noundef nonnull %2) #16
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @reftable_ref_record_release(ptr noundef nonnull %2) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ %i.c, %bb.a ], [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ 1, %bb.f ], [ 0, %bb.e ]
  call void @reftable_iterator_destroy(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %.0
}

declare i32 @reftable_merged_table_init_ref_iterator(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @reftable_iterator_seek_ref(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @reftable_iterator_next_ref(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @reftable_ref_record_is_deletion(ptr noundef) local_unnamed_addr #4

declare void @reftable_ref_record_release(ptr noundef) local_unnamed_addr #4

declare void @reftable_iterator_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @reftable_stack_read_log(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.reftable_iterator, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = call i32 @merged_table_init_iter(ptr noundef %i.b, ptr noundef nonnull %3, i8 noundef zeroext 103) #16 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @reftable_iterator_seek_log(ptr noundef nonnull %3, ptr noundef %1) #16 ; 2 uses
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @reftable_iterator_next_log(ptr noundef nonnull %3, ptr noundef %2) #16 ; 2 uses
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !150
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %1) #18
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @reftable_log_record_is_deletion(ptr noundef nonnull %2) #16
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  %.0.ph = phi i32 [ %i.c, %bb.a ], [ %i.e, %bb.c ], [ %i.d, %bb.b ], [ 1, %bb.e ], [ 1, %bb.d ]
  call void @reftable_log_record_release(ptr noundef %2) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.022 = phi i32 [ %.0.ph, %bb.f ], [ 0, %bb.e ]
  call void @reftable_iterator_destroy(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %.022
}

declare i32 @reftable_iterator_seek_log(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @reftable_iterator_next_log(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @reftable_log_record_is_deletion(ptr noundef) local_unnamed_addr #4

declare void @reftable_log_record_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @reftable_stack_clean(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.reftable_block_source, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.reftable_buf, align 8       ; 9 uses
  %i.b = tail call ptr @reftable_calloc(i64 noundef 1, i64 noundef 64) #16 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %reftable_addition_destroy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @reftable_stack_init_addition(ptr noundef %i.b, ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not10.i = icmp eq i32 %i.c, 0
  br i1 %.not10.i, label %reftable_stack_new_addition.exit.thread15, label %reftable_stack_new_addition.exit

reftable_stack_new_addition.exit:                 ; preds = %bb.b
  tail call void @reftable_free(ptr noundef nonnull %i.b) #16
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %reftable_addition_destroy.exit, label %reftable_stack_new_addition.exit.thread15

reftable_stack_new_addition.exit.thread15:        ; preds = %bb.b, %reftable_stack_new_addition.exit
  %.01118 = phi ptr [ null, %reftable_stack_new_addition.exit ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = tail call fastcc i32 @stack_uptodate(ptr noundef %0) ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %reftable_stack_reload.exit

bb.c:                                             ; preds = %reftable_stack_new_addition.exit.thread15
  %i.g = tail call fastcc i32 @reftable_stack_reload_maybe_reuse(ptr noundef %0, i32 noundef 1)
  br label %reftable_stack_reload.exit

reftable_stack_reload.exit:                       ; preds = %reftable_stack_new_addition.exit.thread15, %bb.c
  %.0.i7 = phi i32 [ %i.g, %bb.c ], [ %i.e, %reftable_stack_new_addition.exit.thread15 ] ; 2 uses
  %i.h = icmp slt i32 %.0.i7, 0
  br i1 %i.h, label %reftable_stack_clean_locked.exit, label %bb.d

bb.d:                                             ; preds = %reftable_stack_reload.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = tail call i64 @reftable_merged_table_max_update_index(ptr noundef %i.j) #16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = tail call noalias ptr @opendir(ptr noundef %i.m) ; 4 uses
  %.not.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i8, label %reftable_stack_clean_locked.exit, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.d
  %i.o = tail call ptr @readdir64(ptr noundef nonnull %i.n) #16 ; 2 uses
  %.not2028.i = icmp eq ptr %i.o, null
  br i1 %.not2028.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader26.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.critedge23.i, %.lr.ph.i
end_hunk_0
