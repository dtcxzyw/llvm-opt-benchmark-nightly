Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_adeclick?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@av_audio_fifo_free

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @av_audio_fifo_size(ptr noundef) local_unnamed_addr #4

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #4

declare i32 @av_audio_fifo_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @filter_channel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 16 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = sext i32 %2 to i64                       ; 6 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60   ; 13 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.h
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60  ; 7 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60 ; 23 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !96 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.an = getelementptr inbounds [128 x i8], ptr %i.am, i64 %i.h ; 15 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !125 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 8 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !50 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !127 ; 19 uses
  %i.au = ptrtoaddr ptr %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !128 ; 10 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !129 ; 26 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  %i.ba = sext i32 %i.ap to i64
  %i.bb = shl nsw i64 %i.ba, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.bb, i1 false)
  %i.bc = sitofp nsz i32 %i.ar to double
  %i.bd = fdiv nnan nsz double 1.000000e+00, %i.bc
  %.not20.i.i = icmp slt i32 %i.ap, 0
  br i1 %.not20.i.i, label %autocorrelation.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  %i.be = sext i32 %i.ar to i64
  %i.bf = add nuw i32 %i.ap, 1
  %wide.trip.count27.i.i = zext i32 %i.bf to i64
  %wide.trip.count.i.i = zext i32 %i.ar to i64    ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 12 uses
  %i.bg = icmp slt i64 %indvars.iv.i.i, %i.be
  br i1 %i.bg, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.bh = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i.i
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv23.i.i.prol = phi i64 [ %indvars.iv.next24.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.019.i.i.prol = phi double [ %i.bn, %.lr.ph.i.i.prol ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv23.i.i.prol
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !66
  %i.bk = sub nuw nsw i64 %indvars.iv23.i.i.prol, %indvars.iv.i.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !66
  %i.bn = tail call nsz double @llvm.fmuladd.f64(double %i.bj, double %i.bm, double %.019.i.i.prol) ; 3 uses
  %indvars.iv.next24.i.i.prol = add nuw nsw i64 %indvars.iv23.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !147

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa328.unr = phi double [ poison, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %indvars.iv23.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i.preheader ], [ %indvars.iv.next24.i.i.prol, %.lr.ph.i.i.prol ]
  %.019.i.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %i.bo = sub nsw i64 %indvars.iv.i.i, %wide.trip.count.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv23.i.i = phi i64 [ %indvars.iv.next24.i.i.3, %.lr.ph.i.i ], [ %indvars.iv23.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.019.i.i = phi double [ %i.cn, %.lr.ph.i.i ], [ %.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv23.i.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !66
  %i.bs = sub nuw nsw i64 %indvars.iv23.i.i, %indvars.iv.i.i
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !66
  %i.bv = tail call nsz double @llvm.fmuladd.f64(double %i.br, double %i.bu, double %.019.i.i)
  %indvars.iv.next24.i.i = add nuw nsw i64 %indvars.iv23.i.i, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next24.i.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !66
  %i.by = sub nuw nsw i64 %indvars.iv.next24.i.i, %indvars.iv.i.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !66
  %i.cb = tail call nsz double @llvm.fmuladd.f64(double %i.bx, double %i.ca, double %i.bv)
  %indvars.iv.next24.i.i.1 = add nuw nsw i64 %indvars.iv23.i.i, 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next24.i.i.1
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !66
  %i.ce = sub nuw nsw i64 %indvars.iv.next24.i.i.1, %indvars.iv.i.i
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !66
  %i.ch = tail call nsz double @llvm.fmuladd.f64(double %i.cd, double %i.cg, double %i.cb)
  %indvars.iv.next24.i.i.2 = add nuw nsw i64 %indvars.iv23.i.i, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next24.i.i.2
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !66
  %i.ck = sub nuw nsw i64 %indvars.iv.next24.i.i.2, %indvars.iv.i.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !66
  %i.cn = tail call nsz double @llvm.fmuladd.f64(double %i.cj, double %i.cm, double %i.ch) ; 2 uses
  %indvars.iv.next24.i.i.3 = add nuw nsw i64 %indvars.iv23.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next24.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !148

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i.i ], [ %.lcssa328.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cn, %.lr.ph.i.i ]
  %i.co = fmul nsz double %i.bd, %.0.lcssa.i.i
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  store double %i.co, ptr %i.cp, align 8, !tbaa !66
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond28.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count27.i.i
  br i1 %exitcond28.not.i.i, label %autocorrelation.exit.i, label %.preheader.i.i, !llvm.loop !149

autocorrelation.exit.i:                           ; preds = %._crit_edge.i.i, %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !66
  %i.cs = fneg nsz double %i.cr
  %i.ct = load double, ptr %i.aw, align 8, !tbaa !66
  %i.cu = fdiv nsz double %i.cs, %i.ct            ; 4 uses
  store double %i.cu, ptr %i.ay, align 8, !tbaa !66
  store double %i.cu, ptr %i.at, align 8, !tbaa !66
  %i.cv = load double, ptr %i.aw, align 8, !tbaa !66
  %i.cw = fneg nsz double %i.cu
  %i.cx = tail call nsz double @llvm.fmuladd.f64(double %i.cw, double %i.cu, double 1.000000e+00)
  %i.cy = fmul nsz double %i.cx, %i.cv            ; 2 uses
  %i.cz = icmp sgt i32 %i.ap, 1
  br i1 %i.cz, label %.preheader71.preheader.i, label %._crit_edge.i

.preheader71.preheader.i:                         ; preds = %autocorrelation.exit.i
  %i.da = add nuw i32 %i.ap, 1
  %wide.trip.count102.i = zext i32 %i.da to i64
  %i.db = sub i64 %i.au, %i.az
  %diff.check = icmp ugt i64 %i.db, -32
  br label %.preheader71.i

.loopexit.i:                                      ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %i.dc = fneg nsz double %i.ep
  %i.dd = tail call nsz double @llvm.fmuladd.f64(double %i.dc, double %i.ep, double 1.000000e+00)
  %i.de = fmul nsz double %.06876.i, %i.dd        ; 2 uses
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count102.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond103.not.i, label %._crit_edge.i, label %.preheader71.i, !llvm.loop !150

.preheader71.i:                                   ; preds = %.loopexit.i, %.preheader71.preheader.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %.preheader71.preheader.i ] ; 2 uses
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i, %.loopexit.i ], [ 2, %.preheader71.preheader.i ] ; 6 uses
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %.loopexit.i ], [ 1, %.preheader71.preheader.i ] ; 19 uses
  %.06876.i = phi double [ %i.de, %.loopexit.i ], [ %i.cy, %.preheader71.preheader.i ] ; 2 uses
  %i.df = shl nuw nsw i64 %indvars.iv85.i, 3
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.df
  %xtraiter329 = and i64 %indvars.iv85.i, 3       ; 3 uses
  %i.dg = icmp ult i64 %indvar, 3
  br i1 %i.dg, label %.epil.preheader, label %.preheader71.i.new

.preheader71.i.new:                               ; preds = %.preheader71.i
  %unroll_iter = and i64 %indvars.iv85.i, 9223372036854775804
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader71.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader71.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %.073.i = phi double [ 0.000000e+00, %.preheader71.i.new ], [ %i.ee, %bb.b ]
  %niter = phi i64 [ 0, %.preheader71.i.new ], [ %niter.next.3, %bb.b ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !66
  %i.dj = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv.i
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !66
  %i.dm = tail call nsz double @llvm.fmuladd.f64(double %i.di, double %i.dl, double %.073.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i
  %i.do = load double, ptr %i.dn, align 8, !tbaa !66
  %i.dp = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv.next.i
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !66
  %i.ds = tail call nsz double @llvm.fmuladd.f64(double %i.do, double %i.dr, double %i.dm)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.1
  %i.du = load double, ptr %i.dt, align 8, !tbaa !66
  %i.dv = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv.next.i.1
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !66
  %i.dy = tail call nsz double @llvm.fmuladd.f64(double %i.du, double %i.dx, double %i.ds)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.2
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !66
  %i.eb = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv.next.i.2
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !66
  %i.ee = tail call nsz double @llvm.fmuladd.f64(double %i.ea, double %i.ed, double %i.dy) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !151

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod330.not = icmp eq i64 %xtraiter329, 0
  br i1 %lcmp.mod330.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader71.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader71.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.073.i.epil.init = phi double [ 0.000000e+00, %.preheader71.i ], [ %i.ee, %.unr-lcssa ]
  %lcmp.mod332 = icmp ne i64 %xtraiter329, 0
  tail call void @llvm.assume(i1 %lcmp.mod332)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %.073.i.epil = phi double [ %.073.i.epil.init, %.epil.preheader ], [ %i.ek, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.epil
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !66
  %i.eh = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv.i.epil
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !66
  %i.ek = tail call nsz double @llvm.fmuladd.f64(double %i.eg, double %i.ej, double %.073.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter329
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !152

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa326 = phi double [ %i.ee, %.unr-lcssa ], [ %i.ek, %bb.c ]
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next86.i
  %i.em = load double, ptr %i.el, align 8, !tbaa !66
  %i.en = fadd nsz double %.lcssa326, %i.em
  %i.eo = fneg nsz double %i.en
  %i.ep = fdiv nsz double %i.eo, %.06876.i        ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv85.i ; 4 uses
  store double %i.ep, ptr %i.eq, align 8, !tbaa !66
  %min.iters.check232 = icmp samesign ult i64 %indvars.iv85.i, 4
  br i1 %min.iters.check232, label %scalar.ph231.preheader, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.epilog-lcssa
  %bound0 = icmp ult ptr %i.at, %scevgep
  %bound1 = icmp ult ptr %i.ay, %i.eq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph231.preheader, label %vector.ph233

vector.ph233:                                     ; preds = %vector.memcheck230
  %n.vec234 = and i64 %indvars.iv85.i, 9223372036854775804 ; 2 uses
  %i.er = and i64 %indvars.iv85.i, 3
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next244, %vector.body235 ] ; 3 uses
  %i.es = xor i64 %index236, -1
  %i.et = add i64 %indvars.iv85.i, %i.es          ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -8
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -24
  %wide.load237 = load <2 x double>, ptr %i.ev, align 8, !tbaa !66, !alias.scope !153
  %wide.load238 = load <2 x double>, ptr %i.ew, align 8, !tbaa !66, !alias.scope !153
  %reverse = shufflevector <2 x double> %wide.load237, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse239 = shufflevector <2 x double> %wide.load238, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ex = load double, ptr %i.eq, align 8, !tbaa !66, !alias.scope !156
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ex, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index236 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load240 = load <2 x double>, ptr %i.ey, align 8, !tbaa !66, !alias.scope !153
  %wide.load241 = load <2 x double>, ptr %i.ez, align 8, !tbaa !66, !alias.scope !153
  %i.fa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load240, <2 x double> %reverse)
  %i.fb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load241, <2 x double> %reverse239)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.et ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 -24
  %reverse242 = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse243 = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse242, ptr %i.fd, align 8, !tbaa !66, !alias.scope !158, !noalias !153
  store <2 x double> %reverse243, ptr %i.fe, align 8, !tbaa !66, !alias.scope !158, !noalias !153
  %index.next244 = add nuw i64 %index236, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next244, %n.vec234
  br i1 %i.ff, label %middle.block245, label %vector.body235, !llvm.loop !160

middle.block245:                                  ; preds = %vector.body235
  %cmp.n246 = icmp eq i64 %indvars.iv85.i, %n.vec234
  br i1 %cmp.n246, label %.preheader.i.preheader, label %scalar.ph231.preheader

scalar.ph231.preheader:                           ; preds = %vector.memcheck230, %.epilog-lcssa, %middle.block245
  %indvars.iv87.i.ph = phi i64 [ %indvars.iv85.i, %vector.memcheck230 ], [ %indvars.iv85.i, %.epilog-lcssa ], [ %i.er, %middle.block245 ]
  br label %scalar.ph231

scalar.ph231:                                     ; preds = %scalar.ph231.preheader, %scalar.ph231
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %scalar.ph231 ], [ %indvars.iv87.i.ph, %scalar.ph231.preheader ] ; 3 uses
  %indvars.iv.next88.i = add nsw i64 %indvars.iv87.i, -1 ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next88.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !66
  %i.fi = load double, ptr %i.eq, align 8, !tbaa !66
  %i.fj = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv87.i
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !66
  %i.fm = tail call nsz double @llvm.fmuladd.f64(double %i.fi, double %i.fl, double %i.fh)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next88.i
  store double %i.fm, ptr %i.fn, align 8, !tbaa !66
  %i.fo = icmp sgt i64 %indvars.iv87.i, 1
  br i1 %i.fo, label %scalar.ph231, label %.preheader.i.preheader, !llvm.loop !161

.preheader.i.preheader:                           ; preds = %scalar.ph231, %middle.block245
  %min.iters.check = icmp samesign ult i64 %indvars.iv97.i, 4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.i.preheader325, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %indvars.iv97.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load = load <2 x double>, ptr %i.fp, align 8, !tbaa !66
  %wide.load229 = load <2 x double>, ptr %i.fq, align 8, !tbaa !66
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <2 x double> %wide.load, ptr %i.fr, align 8, !tbaa !66
  store <2 x double> %wide.load229, ptr %i.fs, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv97.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.preheader.i.preheader325

.preheader.i.preheader325:                        ; preds = %.preheader.i.preheader, %middle.block
  %indvars.iv90.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.fu = sub nsw i64 %indvars.iv85.i, %indvars.iv90.i.ph
  %xtraiter333 = and i64 %indvars.iv97.i, 3       ; 2 uses
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader325, %.preheader.i.prol
  %indvars.iv90.i.prol = phi i64 [ %indvars.iv.next91.i.prol, %.preheader.i.prol ], [ %indvars.iv90.i.ph, %.preheader.i.preheader325 ] ; 3 uses
  %prol.iter335 = phi i64 [ %prol.iter335.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader325 ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv90.i.prol
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !66
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv90.i.prol
  store double %i.fw, ptr %i.fx, align 8, !tbaa !66
  %indvars.iv.next91.i.prol = add nuw nsw i64 %indvars.iv90.i.prol, 1 ; 2 uses
  %prol.iter335.next = add i64 %prol.iter335, 1   ; 2 uses
  %prol.iter335.cmp.not = icmp eq i64 %prol.iter335.next, %xtraiter333
  br i1 %prol.iter335.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !163

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader325
  %indvars.iv90.i.unr = phi i64 [ %indvars.iv90.i.ph, %.preheader.i.preheader325 ], [ %indvars.iv.next91.i.prol, %.preheader.i.prol ]
  %i.fy = icmp ult i64 %i.fu, 3
  br i1 %i.fy, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
end_hunk_0
