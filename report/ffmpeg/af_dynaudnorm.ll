Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_dynaudnorm?download=true
inline.NumInlined: 92
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@filter_frame:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2444 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !80
  %.not.i56 = icmp eq i32 %i.bz, 0
  br i1 %.not.i56, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 2496
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !166
  %i.cc = fcmp nsz ogt double %i.cb, f0x3CB0000000000000
  br i1 %i.cc, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l, %.critedge
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.ce = call i32 @av_frame_is_writable(ptr noundef %i.cd) #14
  %.not93.i = icmp eq i32 %i.ce, 0
  br i1 %.not93.i, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !78
  %i.ci = call ptr @ff_get_audio_buffer(ptr noundef %i.h, i32 noundef %i.ch) #14 ; 5 uses
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !37
  %.not94.i = icmp eq ptr %i.ci, null
  br i1 %.not94.i, label %analyze_frame.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.ck = call i32 @av_frame_copy_props(ptr noundef nonnull %i.ci, ptr noundef %i.cj) #14 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @av_frame_free(ptr noundef nonnull %i.b) #14
  br label %analyze_frame.exit

bb.q:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.cn = call i32 @av_frame_copy(ptr noundef nonnull %i.ci, ptr noundef %i.cm) #14 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  call void @av_frame_free(ptr noundef nonnull %i.b) #14
  br i1 %i.co, label %analyze_frame.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.ci, ptr %i.b, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.m, %bb.l
  %i.cp = load i32, ptr %i.by, align 4, !tbaa !80
  %.not95.i = icmp eq i32 %i.cp, 0
  br i1 %.not95.i, label %perform_dc_correction.exit.i, label %bb.s

bb.s:                                             ; preds = %.thread.i
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !37  ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 112 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !78
  %i.ct = sitofp nsz i32 %i.cs to double
  %i.cu = fdiv nsz double 1.000000e+00, %i.ct     ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 2600
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !41
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %.val.i.i = load i32, ptr %i.cy, align 8, !tbaa !53
  %i.cz = icmp sgt i32 %.val.i.i, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.bx, i64 2544 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !33
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph52.i.i, label %perform_dc_correction.exit.i

.lr.ph52.i.i:                                     ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 384
  %i.de = getelementptr inbounds nuw i8, ptr %i.bx, i64 2568
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 96
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bx, i64 2520
  br label %bb.t

bb.t:                                             ; preds = %.critedge.i.i, %.lr.ph52.i.i
  %indvars.iv60.i.i = phi i64 [ 0, %.lr.ph52.i.i ], [ %indvars.iv.next61.i.i, %.critedge.i.i ] ; 6 uses
  %i.dh = shl nuw nsw i64 %indvars.iv60.i.i, 3
  %i.di = trunc nuw nsw i64 %indvars.iv60.i.i to i32
  %i.dj = call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.dd, i32 noundef %i.di) #14
  %i.dk = call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.de, i32 noundef %i.dj) #14
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !77
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv60.i.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 11 uses
  %i.do = load i32, ptr %i.cr, align 8, !tbaa !78 ; 6 uses
  %i.dp = icmp sgt i32 %i.do, 0                   ; 2 uses
  br i1 %i.dp, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %wide.trip.count.i.i = zext nneg i32 %i.do to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.dq = icmp ult i32 %i.do, 4
  br i1 %i.dq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.03943.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.ei, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %.03943.i.i.epil = phi double [ %.03943.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.dt, %.lr.ph.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i.i.epil
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !49
  %i.dt = call nsz double @llvm.fmuladd.f64(double %i.ds, double %i.cu, double %.03943.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !144

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.t
  %.039.lcssa.i.i = phi double [ 0.000000e+00, %bb.t ], [ %i.ei, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.dt, %.lr.ph.i.i.epil ] ; 3 uses
  %.pre.i.i = load ptr, ptr %i.dg, align 8, !tbaa !84 ; 3 uses
  br i1 %i.cz, label %bb.u, label %bb.v

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.03943.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i.new ], [ %i.ei, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i.i
  %i.dv = load double, ptr %i.du, align 8, !tbaa !49
  %i.dw = call nsz double @llvm.fmuladd.f64(double %i.dv, double %i.cu, double %.03943.i.i)
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !49
  %i.ea = call nsz double @llvm.fmuladd.f64(double %i.dz, double %i.cu, double %i.dw)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !49
  %i.ee = call nsz double @llvm.fmuladd.f64(double %i.ed, double %i.cu, double %i.ea)
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !49
  %i.ei = call nsz double @llvm.fmuladd.f64(double %i.eh, double %i.cu, double %i.ee) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !145

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv60.i.i
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !49 ; 2 uses
  %i.el = fmul nsz double %i.ek, 9.000000e-01
  %i.em = call nsz double @llvm.fmuladd.f64(double %.039.lcssa.i.i, double 1.000000e-01, double %i.el)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i
  %i.en = phi double [ %i.ek, %bb.u ], [ %.039.lcssa.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.eo = phi nsz double [ %i.em, %bb.u ], [ %.039.lcssa.i.i, %._crit_edge.i.i ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv60.i.i ; 6 uses
  store double %i.eo, ptr %i.ep, align 8, !tbaa !49
  %.fr.i.i = freeze i32 %i.dk
  %.not42.i.i = icmp sgt i32 %.fr.i.i, -1
  %or.cond46.i.i = and i1 %.not42.i.i, %i.dp
  br i1 %or.cond46.i.i, label %.lr.ph49.split.preheader.i.i, label %.critedge.i.i

.lr.ph49.split.preheader.i.i:                     ; preds = %bb.v
  %i.eq = uitofp nneg i32 %i.do to double
  %i.er = fdiv nsz double -1.000000e+00, %i.eq    ; 4 uses
  %wide.trip.count58.i.i = zext nneg i32 %i.do to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.do, 2
  br i1 %min.iters.check, label %.lr.ph49.split.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.split.preheader.i.i
  %i.es = shl nuw nsw i64 %wide.trip.count58.i.i, 3
  %scevgep = getelementptr i8, ptr %i.dn, i64 %i.es
  %i.et = getelementptr i8, ptr %.pre.i.i, i64 %i.dh
  %scevgep50 = getelementptr i8, ptr %i.et, i64 8
  %bound0 = icmp ult ptr %i.dn, %scevgep50
  %bound1 = icmp ult ptr %i.ep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph49.split.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count58.i.i, 2147483646 ; 3 uses
  %i.eu = load double, ptr %i.ep, align 8, !tbaa !49, !alias.scope !167
  %broadcast.splatinsert53 = insertelement <2 x double> poison, double %i.eu, i64 0
  %broadcast.splat54 = shufflevector <2 x double> %broadcast.splatinsert53, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.er, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat52 = shufflevector <2 x double> %broadcast.splatinsert51, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ev = uitofp <2 x i32> %vec.ind to <2 x double>
  %i.ew = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ev, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.ex = fsub nsz <2 x double> splat (double 1.000000e+00), %i.ew
  %i.ey = fmul nsz <2 x double> %broadcast.splat54, %i.ex
  %i.ez = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %broadcast.splat52, <2 x double> %i.ey)
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fa, align 8, !tbaa !49, !alias.scope !168, !noalias !167
  %i.fb = fsub nsz <2 x double> %wide.load, %i.ez
  store <2 x double> %i.fb, ptr %i.fa, align 8, !tbaa !49, !alias.scope !168, !noalias !167
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count58.i.i
  br i1 %cmp.n, label %.critedge.i.i, label %.lr.ph49.split.i.i.preheader

.lr.ph49.split.i.i.preheader:                     ; preds = %vector.memcheck, %.lr.ph49.split.preheader.i.i, %middle.block
  %indvars.iv55.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph49.split.preheader.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter61 = and i64 %wide.trip.count58.i.i, 1
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph49.split.i.i.prol.loopexit, label %.lr.ph49.split.i.i.prol

.lr.ph49.split.i.i.prol:                          ; preds = %.lr.ph49.split.i.i.preheader
  %i.fd = load double, ptr %i.ep, align 8, !tbaa !49
  %indvars.iv.next56.i.i.prol = or disjoint i64 %indvars.iv55.i.i.ph, 1 ; 2 uses
  %i.fe = trunc nuw nsw i64 %indvars.iv.next56.i.i.prol to i32
  %i.ff = uitofp nneg i32 %i.fe to double
  %i.fg = call nsz double @llvm.fmuladd.f64(double %i.er, double %i.ff, double 1.000000e+00) ; 2 uses
  %i.fh = fsub nsz double 1.000000e+00, %i.fg
  %i.fi = fmul nsz double %i.fd, %i.fh
  %i.fj = call nsz double @llvm.fmuladd.f64(double %i.fg, double %i.en, double %i.fi)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv55.i.i.ph ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !49
  %i.fm = fsub nsz double %i.fl, %i.fj
  store double %i.fm, ptr %i.fk, align 8, !tbaa !49
  br label %.lr.ph49.split.i.i.prol.loopexit

.lr.ph49.split.i.i.prol.loopexit:                 ; preds = %.lr.ph49.split.i.i.prol, %.lr.ph49.split.i.i.preheader
  %indvars.iv55.i.i.unr = phi i64 [ %indvars.iv55.i.i.ph, %.lr.ph49.split.i.i.preheader ], [ %indvars.iv.next56.i.i.prol, %.lr.ph49.split.i.i.prol ]
  %i.fn = add nsw i64 %wide.trip.count58.i.i, -1
  %i.fo = icmp eq i64 %indvars.iv55.i.i.ph, %i.fn
  br i1 %i.fo, label %.critedge.i.i, label %.lr.ph49.split.i.i

.critedge.i.i:                                    ; preds = %.lr.ph49.split.i.i.prol.loopexit, %.lr.ph49.split.i.i, %middle.block, %bb.v
  %indvars.iv.next61.i.i = add nuw nsw i64 %indvars.iv60.i.i, 1 ; 2 uses
  %i.fp = load i32, ptr %i.da, align 8, !tbaa !33
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next61.i.i, %i.fq
  br i1 %i.fr, label %bb.t, label %perform_dc_correction.exit.i, !llvm.loop !150

.lr.ph49.split.i.i:                               ; preds = %.lr.ph49.split.i.i.prol.loopexit, %.lr.ph49.split.i.i
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i.1, %.lr.ph49.split.i.i ], [ %indvars.iv55.i.i.unr, %.lr.ph49.split.i.i.prol.loopexit ] ; 3 uses
  %i.fs = load double, ptr %i.ep, align 8, !tbaa !49
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.ft = trunc nuw nsw i64 %indvars.iv.next56.i.i to i32
  %i.fu = uitofp i32 %i.ft to double
  %i.fv = call nsz double @llvm.fmuladd.f64(double %i.er, double %i.fu, double 1.000000e+00) ; 2 uses
  %i.fw = fsub nsz double 1.000000e+00, %i.fv
  %i.fx = fmul nsz double %i.fs, %i.fw
  %i.fy = call nsz double @llvm.fmuladd.f64(double %i.fv, double %i.en, double %i.fx)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv55.i.i ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !49
  %i.gb = fsub nsz double %i.ga, %i.fy
  store double %i.gb, ptr %i.fz, align 8, !tbaa !49
  %i.gc = load double, ptr %i.ep, align 8, !tbaa !49
  %indvars.iv.next56.i.i.1 = add nuw nsw i64 %indvars.iv55.i.i, 2 ; 3 uses
  %i.gd = trunc nuw nsw i64 %indvars.iv.next56.i.i.1 to i32
  %i.ge = uitofp i32 %i.gd to double
  %i.gf = call nsz double @llvm.fmuladd.f64(double %i.er, double %i.ge, double 1.000000e+00) ; 2 uses
  %i.gg = fsub nsz double 1.000000e+00, %i.gf
  %i.gh = fmul nsz double %i.gc, %i.gg
  %i.gi = call nsz double @llvm.fmuladd.f64(double %i.gf, double %i.en, double %i.gh)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next56.i.i ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !49
  %i.gl = fsub nsz double %i.gk, %i.gi
  store double %i.gl, ptr %i.gj, align 8, !tbaa !49
  %exitcond59.not.i.i.1 = icmp eq i64 %indvars.iv.next56.i.i.1, %wide.trip.count58.i.i
  br i1 %exitcond59.not.i.i.1, label %.critedge.i.i, label %.lr.ph49.split.i.i, !llvm.loop !151

perform_dc_correction.exit.i:                     ; preds = %.critedge.i.i, %bb.s, %.thread.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bx, i64 2496 ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !166 ; 2 uses
  %i.go = fcmp nsz ogt double %i.gn, f0x3CB0000000000000
  br i1 %i.go, label %bb.w, label %perform_compression.exit.i

bb.w:                                             ; preds = %perform_dc_correction.exit.i
  %i.gp = load ptr, ptr %i.b, align 8, !tbaa !37  ; 9 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bx, i64 2600
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !40
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !41
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  %.val.i99.i = load i32, ptr %i.gt, align 8, !tbaa !53
  %i.gu = icmp sgt i32 %.val.i99.i, 0             ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bx, i64 2448
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !169
  %.not.i.i = icmp eq i32 %i.gw, 0
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bx, i64 2544 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !33 ; 3 uses
  %i.gz = icmp sgt i32 %i.gy, 0                   ; 3 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.x

.preheader.i.i:                                   ; preds = %bb.w
  br i1 %i.gz, label %.lr.ph154.i.i, label %perform_compression.exit.i

.lr.ph154.i.i:                                    ; preds = %.preheader.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 384
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bx, i64 2568
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gp, i64 112
  %i.he = getelementptr inbounds nuw i8, ptr %i.bx, i64 2528
  br label %bb.ag

bb.x:                                             ; preds = %bb.w
  br i1 %i.gz, label %.lr.ph43.i.i.i, label %.preheader.._crit_edge44_crit_edge.i.i.i

.preheader.._crit_edge44_crit_edge.i.i.i:         ; preds = %bb.x
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 112
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !78
  br label %compute_frame_std_dev.exit.i.i

.lr.ph43.i.i.i:                                   ; preds = %bb.x
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !77
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 112
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !78 ; 5 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph38.us.preheader.i.i.i, label %compute_frame_std_dev.exit.i.i

.lr.ph38.us.preheader.i.i.i:                      ; preds = %.lr.ph43.i.i.i
  %wide.trip.count59.i.i.i = zext nneg i32 %i.gy to i64
  %wide.trip.count54.i.i.i = zext nneg i32 %i.hi to i64 ; 2 uses
  %xtraiter63 = and i64 %wide.trip.count54.i.i.i, 3 ; 3 uses
  %i.hk = icmp ult i32 %i.hi, 4
  %unroll_iter68 = and i64 %wide.trip.count54.i.i.i, 2147483644
  %lcmp.mod65.not = icmp eq i64 %xtraiter63, 0
  %lcmp.mod67 = icmp ne i64 %xtraiter63, 0
  br label %.lr.ph38.us.i.i.i

.lr.ph38.us.i.i.i:                                ; preds = %._crit_edge39.us.i.i.i, %.lr.ph38.us.preheader.i.i.i
  %indvars.iv56.i.i.i = phi i64 [ 0, %.lr.ph38.us.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i, %._crit_edge39.us.i.i.i ] ; 2 uses
  %.02741.us.i.i.i = phi double [ 0.000000e+00, %.lr.ph38.us.preheader.i.i.i ], [ %.lcssa56, %._crit_edge39.us.i.i.i ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv56.i.i.i
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !81 ; 5 uses
  br i1 %i.hk, label %.epil.preheader, label %.lr.ph38.us.i.i.i.new

.lr.ph38.us.i.i.i.new:                            ; preds = %.lr.ph38.us.i.i.i, %.lr.ph38.us.i.i.i.new
  %indvars.iv51.i.i.i = phi i64 [ %indvars.iv.next52.i.i.i.3, %.lr.ph38.us.i.i.i.new ], [ 0, %.lr.ph38.us.i.i.i ] ; 5 uses
  %.135.us.i.i.i = phi double [ %i.if, %.lr.ph38.us.i.i.i.new ], [ %.02741.us.i.i.i, %.lr.ph38.us.i.i.i ]
  %niter69 = phi i64 [ %niter69.next.3, %.lr.ph38.us.i.i.i.new ], [ 0, %.lr.ph38.us.i.i.i ]
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv51.i.i.i
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !49 ; 2 uses
  %i.hp = fmul nsz double %i.ho, %i.ho
  %i.hq = fadd nsz double %.135.us.i.i.i, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv51.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !49 ; 2 uses
  %i.hu = fmul nsz double %i.ht, %i.ht
  %i.hv = fadd nsz double %i.hq, %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv51.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !49 ; 2 uses
  %i.hz = fmul nsz double %i.hy, %i.hy
  %i.ia = fadd nsz double %i.hv, %i.hz
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv51.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load double, ptr %i.ic, align 8, !tbaa !49 ; 2 uses
  %i.ie = fmul nsz double %i.id, %i.id
  %i.if = fadd nsz double %i.ia, %i.ie            ; 3 uses
  %indvars.iv.next52.i.i.i.3 = add nuw nsw i64 %indvars.iv51.i.i.i, 4 ; 2 uses
  %niter69.next.3 = add i64 %niter69, 4           ; 2 uses
  %niter69.ncmp.3 = icmp eq i64 %niter69.next.3, %unroll_iter68
  br i1 %niter69.ncmp.3, label %._crit_edge39.us.i.i.i.unr-lcssa, label %.lr.ph38.us.i.i.i.new, !llvm.loop !152

._crit_edge39.us.i.i.i.unr-lcssa:                 ; preds = %.lr.ph38.us.i.i.i.new
  br i1 %lcmp.mod65.not, label %._crit_edge39.us.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge39.us.i.i.i.unr-lcssa, %.lr.ph38.us.i.i.i
  %indvars.iv51.i.i.i.epil.init = phi i64 [ 0, %.lr.ph38.us.i.i.i ], [ %indvars.iv.next52.i.i.i.3, %._crit_edge39.us.i.i.i.unr-lcssa ]
  %.135.us.i.i.i.epil.init = phi double [ %.02741.us.i.i.i, %.lr.ph38.us.i.i.i ], [ %i.if, %._crit_edge39.us.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv51.i.i.i.epil = phi i64 [ %indvars.iv51.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next52.i.i.i.epil, %bb.y ] ; 2 uses
  %.135.us.i.i.i.epil = phi double [ %.135.us.i.i.i.epil.init, %.epil.preheader ], [ %i.ij, %bb.y ]
  %epil.iter64 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter64.next, %bb.y ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv51.i.i.i.epil
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !49 ; 2 uses
  %i.ii = fmul nsz double %i.ih, %i.ih
  %i.ij = fadd nsz double %.135.us.i.i.i.epil, %i.ii ; 2 uses
  %indvars.iv.next52.i.i.i.epil = add nuw nsw i64 %indvars.iv51.i.i.i.epil, 1
  %epil.iter64.next = add i64 %epil.iter64, 1     ; 2 uses
  %epil.iter64.cmp.not = icmp eq i64 %epil.iter64.next, %xtraiter63
  br i1 %epil.iter64.cmp.not, label %._crit_edge39.us.i.i.i, label %bb.y, !llvm.loop !153

._crit_edge39.us.i.i.i:                           ; preds = %bb.y, %._crit_edge39.us.i.i.i.unr-lcssa
  %.lcssa56 = phi double [ %i.if, %._crit_edge39.us.i.i.i.unr-lcssa ], [ %i.ij, %bb.y ] ; 2 uses
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %compute_frame_std_dev.exit.i.i, label %.lr.ph38.us.i.i.i, !llvm.loop !154

compute_frame_std_dev.exit.i.i:                   ; preds = %._crit_edge39.us.i.i.i, %.lr.ph43.i.i.i, %.preheader.._crit_edge44_crit_edge.i.i.i
  %i.ik = phi i32 [ %.pre.i.i.i, %.preheader.._crit_edge44_crit_edge.i.i.i ], [ %i.hi, %.lr.ph43.i.i.i ], [ %i.hi, %._crit_edge39.us.i.i.i ]
  %.027.lcssa.i.i.i = phi double [ 0.000000e+00, %.preheader.._crit_edge44_crit_edge.i.i.i ], [ 0.000000e+00, %.lr.ph43.i.i.i ], [ %.lcssa56, %._crit_edge39.us.i.i.i ]
  %i.il = mul nsw i32 %i.ik, %i.gy
  %i.im = add nsw i32 %i.il, -1
  %i.in = sitofp nsz i32 %i.im to double
  %i.io = fdiv nsz double %.027.lcssa.i.i.i, %i.in
  %i.ip = call nsz double @llvm.sqrt.f64(double %i.io)
end_hunk_0
begin_hunk_1_@filter_frame:bb.a
  %i.td = phi i16 [ %.pre.i, %bb.aw ], [ %.val.i, %bb.av ] ; 2 uses
  %i.te = load i16, ptr %i.n, align 8, !tbaa !36
  %i.tf = zext i16 %i.te to i32
  %i.tg = add i16 %i.td, 1
  store i16 %i.tg, ptr %i.j, align 2, !tbaa !35
  %i.th = zext i16 %i.td to i32
  %i.ti = add nuw nsw i32 %i.tf, %i.th
  %i.tj = urem i32 %i.ti, 302
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.tk
  store ptr %i.st, ptr %i.tl, align 8, !tbaa !37
  %i.tm = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.16.val, i64 104
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !173
  %.not51 = icmp eq i32 %i.to, 0
  %i.tp = uitofp i1 %.not51 to double
  %i.tq = load ptr, ptr %i.tm, align 8, !tbaa !54
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 16 ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !53 ; 2 uses
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.tq, i64 %i.tt
  store double %i.tp, ptr %i.tu, align 8, !tbaa !49
  %i.tv = add nsw i32 %i.ts, 1
  store i32 %i.tv, ptr %i.tr, align 8, !tbaa !53
  br label %.loopexit5

bb.ax:                                            ; preds = %.loopexit
  call void @av_frame_free(ptr noundef nonnull %i.b) #14
  br label %.loopexit5

.loopexit5:                                       ; preds = %bb.k, %analyze_frame.exit, %.thread, %ff_bufqueue_add.exit, %bb.ax
  %.2 = phi i32 [ -12, %.thread ], [ %.079.ph.i, %analyze_frame.exit ], [ 1, %bb.ax ], [ 1, %ff_bufqueue_add.exit ], [ %i.bv, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.2
}

declare i32 @ff_inlink_check_available_samples(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #4

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #4

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @amplify_channels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2544
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h                      ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !92
  %i.s = load ptr, ptr %1, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 384 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 2568 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2616 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %.fr21 = freeze i32 %i.r
  %.not = icmp eq i32 %.fr21, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2512 ; 2 uses
  %sext31 = shl i64 %i.i, 32                      ; 2 uses
  %i.ac = ashr exact i64 %sext31, 32              ; 2 uses
  br i1 %.not, label %amplify_channel.exit.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ad = ashr exact i64 %sext31, 29
  br label %.lr.ph.split

amplify_channel.exit.us:                          ; preds = %.lr.ph, %amplify_channel.exit.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %amplify_channel.exit.us ], [ %i.ac, %.lr.ph ] ; 4 uses
  %i.ae = trunc nsw i64 %indvars.iv24 to i32
  %i.af = tail call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.v, i32 noundef %i.ae) #14
  %i.ag = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.w, i32 noundef %i.af) #14 ; 0 uses
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !53
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.am, i64 %i.ar, i1 false)
  %i.as = load i32, ptr %i.an, align 8, !tbaa !53
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.an, align 8, !tbaa !53
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !86
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv24
  store double %i.al, ptr %i.av, align 8, !tbaa !49
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1 ; 2 uses
  %lftr.wideiv27 = trunc i64 %indvars.iv.next25 to i32
  %exitcond28.not = icmp eq i32 %lftr.wideiv27, %i.o
  br i1 %exitcond28.not, label %._crit_edge, label %amplify_channel.exit.us, !llvm.loop !174

._crit_edge:                                      ; preds = %amplify_channel.exit, %amplify_channel.exit.us, %bb.a
  ret i32 0

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %amplify_channel.exit
  %indvar = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvar.next, %amplify_channel.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph.split.preheader ], [ %indvars.iv.next, %amplify_channel.exit ] ; 7 uses
  %i.aw = shl nuw nsw i64 %indvar, 3
  %i.ax = trunc nsw i64 %indvars.iv to i32
  %i.ay = tail call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.v, i32 noundef %i.ax) #14
  %i.az = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.w, i32 noundef %i.ay) #14
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !81 ; 6 uses
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81 ; 7 uses
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !54 ; 3 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !49 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !53
  %i.bo = add nsw i32 %i.bn, -1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 8 %i.bl, i64 %i.bq, i1 false)
  %i.br = load i32, ptr %i.bm, align 8, !tbaa !53
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr %i.bm, align 8, !tbaa !53
  %i.bt = load i32, ptr %i.aa, align 8, !tbaa !78 ; 4 uses
  %.fr.i = freeze i32 %i.az
  %.not.i = icmp sgt i32 %.fr.i, -1
  %i.bu = icmp sgt i32 %i.bt, 0
  %or.cond2629.i = and i1 %.not.i, %i.bu
  %i.bv = load ptr, ptr %i.ab, align 8, !tbaa !86 ; 3 uses
  br i1 %or.cond2629.i, label %.lr.ph.split.preheader.i, label %amplify_channel.exit

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.split
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %indvars.iv ; 5 uses
  %i.bx = uitofp nneg i32 %i.bt to double
  %i.by = fdiv nsz double -1.000000e+00, %i.bx    ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.bt to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.bt, 2
  br i1 %min.iters.check, label %.lr.ph.split.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader.i
  %i.bz = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bf, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bv, i64 %i.ad
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %scevgep34 = getelementptr i8, ptr %i.cb, i64 %i.aw
  %scevgep35 = getelementptr i8, ptr %i.bc, i64 %i.bz
  %bound0 = icmp ult ptr %i.bf, %scevgep34
  %bound1 = icmp ult ptr %i.bw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp ult ptr %i.bf, %scevgep35
  %bound137 = icmp ult ptr %i.bc, %scevgep
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx = or i1 %found.conflict, %found.conflict38
  br i1 %conflict.rdx, label %.lr.ph.split.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %i.cc = load double, ptr %i.bw, align 8, !tbaa !49, !alias.scope !181
  %broadcast.splatinsert41 = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat42 = shufflevector <2 x double> %broadcast.splatinsert41, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat40 = shufflevector <2 x double> %broadcast.splatinsert39, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cd = uitofp <2 x i32> %vec.ind to <2 x double>
  %i.ce = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.cd, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.cf = fsub nsz <2 x double> splat (double 1.000000e+00), %i.ce
  %i.cg = fmul nsz <2 x double> %broadcast.splat40, %i.cf
  %i.ch = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %broadcast.splat42, <2 x double> %i.cg)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index
  %wide.load = load <2 x double>, ptr %i.ci, align 8, !tbaa !49, !alias.scope !182
  %i.cj = fmul nsz <2 x double> %wide.load, %i.ch
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index
  store <2 x double> %i.cj, ptr %i.ck, align 8, !tbaa !49, !alias.scope !183, !noalias !184
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %amplify_channel.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.cm = load double, ptr %i.bw, align 8, !tbaa !49
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1 ; 2 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv.next.i.prol to i32
  %i.co = uitofp nneg i32 %i.cn to double
  %i.cp = tail call nsz double @llvm.fmuladd.f64(double %i.by, double %i.co, double 1.000000e+00) ; 2 uses
  %i.cq = fsub nsz double 1.000000e+00, %i.cp
  %i.cr = fmul nsz double %i.bk, %i.cq
  %i.cs = tail call nsz double @llvm.fmuladd.f64(double %i.cp, double %i.cm, double %i.cr)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.ph
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !49
  %i.cv = fmul nsz double %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.ph
  store double %i.cv, ptr %i.cw, align 8, !tbaa !49
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.split.i.prol ]
  %i.cx = add nsw i64 %wide.trip.count.i, -1
  %i.cy = icmp eq i64 %indvars.iv.i.ph, %i.cx
  br i1 %i.cy, label %amplify_channel.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ %indvars.iv.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %i.cz = load double, ptr %i.bw, align 8, !tbaa !49
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.da = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.db = uitofp i32 %i.da to double
  %i.dc = tail call nsz double @llvm.fmuladd.f64(double %i.by, double %i.db, double 1.000000e+00) ; 2 uses
  %i.dd = fsub nsz double 1.000000e+00, %i.dc
  %i.de = fmul nsz double %i.bk, %i.dd
  %i.df = tail call nsz double @llvm.fmuladd.f64(double %i.dc, double %i.cz, double %i.de)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !49
  %i.di = fmul nsz double %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  store double %i.di, ptr %i.dj, align 8, !tbaa !49
  %i.dk = load double, ptr %i.bw, align 8, !tbaa !49
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.dm = uitofp i32 %i.dl to double
  %i.dn = tail call nsz double @llvm.fmuladd.f64(double %i.by, double %i.dm, double 1.000000e+00) ; 2 uses
  %i.do = fsub nsz double 1.000000e+00, %i.dn
  %i.dp = fmul nsz double %i.bk, %i.do
  %i.dq = tail call nsz double @llvm.fmuladd.f64(double %i.dn, double %i.dk, double %i.dp)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !49
  %i.dt = fmul nsz double %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i
  store double %i.dt, ptr %i.du, align 8, !tbaa !49
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %amplify_channel.exit, label %.lr.ph.split.i, !llvm.loop !180

amplify_channel.exit:                             ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %middle.block, %.lr.ph.split
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %indvars.iv
  store double %i.bk, ptr %i.dv, align 8, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !174
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #10

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @av_channel_layout_channel_from_index(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @av_channel_layout_index_from_channel(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @av_frame_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare i32 @av_samples_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc { double, double } @get_max_local_gain(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 6 uses
  %i.b = icmp eq i32 %2, -1                       ; 2 uses
  br i1 %i.b, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.d = load i32, ptr %i.c, align 4, !tbaa !94   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph33.i, label %find_peak_magnitude.exit

.lr.ph33.i:                                       ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph29.us.preheader.i, label %find_peak_magnitude.exit

.lr.ph29.us.preheader.i:                          ; preds = %.lr.ph33.i
  %wide.trip.count47.i = zext nneg i32 %i.d to i64
  %wide.trip.count42.i = zext nneg i32 %i.i to i64 ; 3 uses
  %min.iters.check57 = icmp ult i32 %i.i, 4
  %n.vec59 = and i64 %wide.trip.count42.i, 2147483644 ; 3 uses
  %cmp.n69 = icmp ne i64 %n.vec59, %wide.trip.count42.i
  br label %.lr.ph29.us.i

.lr.ph29.us.i:                                    ; preds = %._crit_edge.us.i, %.lr.ph29.us.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %.lr.ph29.us.preheader.i ], [ %indvars.iv.next45.i, %._crit_edge.us.i ] ; 2 uses
  %.02231.us.i = phi double [ f0x3CB0000000000000, %.lr.ph29.us.preheader.i ], [ %.lcssa52, %._crit_edge.us.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv44.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81   ; 2 uses
  br i1 %min.iters.check57, label %scalar.ph56.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %.lr.ph29.us.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.02231.us.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph58
  %index61 = phi i64 [ 0, %vector.ph58 ], [ %index.next66, %vector.body60 ] ; 3 uses
  %vec.phi62 = phi <2 x double> [ %broadcast.splat, %vector.ph58 ], [ %i.q, %vector.body60 ] ; 2 uses
  %vec.phi63 = phi <2 x double> [ %broadcast.splat, %vector.ph58 ], [ %i.r, %vector.body60 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index61 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load64 = load <2 x double>, ptr %i.m, align 8, !tbaa !49
  %wide.load65 = load <2 x double>, ptr %i.n, align 8, !tbaa !49
  %wide.load64.fr = freeze <2 x double> %wide.load64
  %i.o = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load64.fr) ; 2 uses
  %wide.load65.fr = freeze <2 x double> %wide.load65
  %i.p = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load65.fr) ; 2 uses
  %i.q = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi62, <2 x double> %i.o) ; 2 uses
  %i.r = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi63, <2 x double> %i.p) ; 2 uses
  %index.next66 = add nuw i64 %index61, 4         ; 2 uses
  %i.s = fcmp uno <2 x double> %i.o, %i.p
  %i.t = bitcast <2 x i1> %i.s to i2
  %i.u = icmp ne i2 %i.t, 0                       ; 5 uses
  %i.v = icmp eq i64 %index.next66, %n.vec59
  %i.w = or i1 %i.u, %i.v
  br i1 %i.w, label %middle.block67, label %vector.body60, !llvm.loop !185

middle.block67:                                   ; preds = %vector.body60
  %i.x = select i1 %i.u, <2 x double> %vec.phi62, <2 x double> %i.q
  %i.y = select i1 %i.u, <2 x double> %vec.phi63, <2 x double> %i.r
  %i.z = select i1 %i.u, i64 %index61, i64 %n.vec59
  %rdx.minmax68 = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.x, <2 x double> %i.y)
  %i.aa = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax68) ; 2 uses
  %.not73 = or i1 %cmp.n69, %i.u
  br i1 %.not73, label %scalar.ph56.preheader, label %._crit_edge.us.i

scalar.ph56.preheader:                            ; preds = %.lr.ph29.us.i, %middle.block67
  %indvars.iv39.i.ph = phi i64 [ 0, %.lr.ph29.us.i ], [ %i.z, %middle.block67 ]
  %.127.us.i.ph = phi double [ %.02231.us.i, %.lr.ph29.us.i ], [ %i.aa, %middle.block67 ]
  br label %scalar.ph56

scalar.ph56:                                      ; preds = %scalar.ph56.preheader, %scalar.ph56
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %scalar.ph56 ], [ %indvars.iv39.i.ph, %scalar.ph56.preheader ] ; 2 uses
  %.127.us.i = phi double [ %i.ae, %scalar.ph56 ], [ %.127.us.i.ph, %scalar.ph56.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv39.i
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !49
  %i.ad = tail call nsz double @llvm.fabs.f64(double %i.ac)
  %i.ae = tail call nsz double @llvm.maxnum.f64(double %.127.us.i, double %i.ad) ; 2 uses
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count42.i
  br i1 %exitcond43.not.i, label %._crit_edge.us.i, label %scalar.ph56, !llvm.loop !186

._crit_edge.us.i:                                 ; preds = %scalar.ph56, %middle.block67
  %.lcssa52 = phi double [ %i.aa, %middle.block67 ], [ %i.ae, %scalar.ph56 ] ; 2 uses
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %find_peak_magnitude.exit, label %.lr.ph29.us.i, !llvm.loop !187

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.ah = sext i32 %2 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
end_hunk_1
