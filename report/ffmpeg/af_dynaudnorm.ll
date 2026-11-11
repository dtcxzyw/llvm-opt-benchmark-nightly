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
  %i.dh = trunc nuw nsw i64 %indvars.iv60.i.i to i32
  %i.di = call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.dd, i32 noundef %i.dh) #14
  %i.dj = call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.de, i32 noundef %i.di) #14
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !77
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv60.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !81 ; 11 uses
  %i.dn = load i32, ptr %i.cr, align 8, !tbaa !78 ; 6 uses
  %i.do = icmp sgt i32 %i.dn, 0                   ; 2 uses
  br i1 %i.do, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %wide.trip.count.i.i = zext nneg i32 %i.dn to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.dp = icmp ult i32 %i.dn, 4
  br i1 %i.dp, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.03943.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.eh, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %.03943.i.i.epil = phi double [ %.03943.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.ds, %.lr.ph.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i.i.epil
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !49
  %i.ds = call nsz double @llvm.fmuladd.f64(double %i.dr, double %i.cu, double %.03943.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !144

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.t
  %.039.lcssa.i.i = phi double [ 0.000000e+00, %bb.t ], [ %i.eh, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.ds, %.lr.ph.i.i.epil ] ; 3 uses
  %.pre.i.i = load ptr, ptr %i.dg, align 8, !tbaa !84 ; 3 uses
  br i1 %i.cz, label %bb.u, label %bb.v

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.03943.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i.new ], [ %i.eh, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i.i
  %i.du = load double, ptr %i.dt, align 8, !tbaa !49
  %i.dv = call nsz double @llvm.fmuladd.f64(double %i.du, double %i.cu, double %.03943.i.i)
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !49
  %i.dz = call nsz double @llvm.fmuladd.f64(double %i.dy, double %i.cu, double %i.dv)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !49
  %i.ed = call nsz double @llvm.fmuladd.f64(double %i.ec, double %i.cu, double %i.dz)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !49
  %i.eh = call nsz double @llvm.fmuladd.f64(double %i.eg, double %i.cu, double %i.ed) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !145

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv60.i.i
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !49 ; 2 uses
  %i.ek = fmul nsz double %i.ej, 9.000000e-01
  %i.el = call nsz double @llvm.fmuladd.f64(double %.039.lcssa.i.i, double 1.000000e-01, double %i.ek)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i
  %i.em = phi double [ %i.ej, %bb.u ], [ %.039.lcssa.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.en = phi nsz double [ %i.el, %bb.u ], [ %.039.lcssa.i.i, %._crit_edge.i.i ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv60.i.i ; 6 uses
  store double %i.en, ptr %i.eo, align 8, !tbaa !49
  %.fr.i.i = freeze i32 %i.dj
  %.not42.i.i = icmp sgt i32 %.fr.i.i, -1
  %or.cond46.i.i = and i1 %.not42.i.i, %i.do
  br i1 %or.cond46.i.i, label %.lr.ph49.split.preheader.i.i, label %.critedge.i.i

.lr.ph49.split.preheader.i.i:                     ; preds = %bb.v
  %i.ep = uitofp nneg i32 %i.dn to double
  %i.eq = fdiv nsz double -1.000000e+00, %i.ep    ; 4 uses
  %wide.trip.count58.i.i = zext nneg i32 %i.dn to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.dn, 2
  br i1 %min.iters.check, label %.lr.ph49.split.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.split.preheader.i.i
  %i.er = shl nuw nsw i64 %wide.trip.count58.i.i, 3
  %i.es = getelementptr i8, ptr %i.dm, i64 %i.er
  %i.et = shl nuw nsw i64 %indvars.iv60.i.i, 3
  %i.eu = getelementptr i8, ptr %.pre.i.i, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %bound0 = icmp ult ptr %i.dm, %i.ev
  %bound1 = icmp ult ptr %i.eo, %i.es
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph49.split.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count58.i.i, 2147483646 ; 3 uses
  %i.ew = load double, ptr %i.eo, align 8, !tbaa !49, !alias.scope !167
  %broadcast.splatinsert53 = insertelement <2 x double> poison, double %i.ew, i64 0
  %broadcast.splat54 = shufflevector <2 x double> %broadcast.splatinsert53, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.eq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <2 x double> poison, double %i.em, i64 0
  %broadcast.splat52 = shufflevector <2 x double> %broadcast.splatinsert51, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = trunc <2 x i64> %vec.ind to <2 x i32>
  %3 = add <2 x i32> %2, splat (i32 1)
  %i.ex = uitofp nneg <2 x i32> %3 to <2 x double>
  %i.ey = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ex, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.ez = fsub nsz <2 x double> splat (double 1.000000e+00), %i.ey
  %i.fa = fmul nsz <2 x double> %broadcast.splat54, %i.ez
  %i.fb = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %broadcast.splat52, <2 x double> %i.fa)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fc, align 8, !tbaa !49, !alias.scope !168, !noalias !167
  %i.fd = fsub nsz <2 x double> %wide.load, %i.fb
  store <2 x double> %i.fd, ptr %i.fc, align 8, !tbaa !49, !alias.scope !168, !noalias !167
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count58.i.i
  br i1 %cmp.n, label %.critedge.i.i, label %.lr.ph49.split.i.i.preheader

.lr.ph49.split.i.i.preheader:                     ; preds = %vector.memcheck, %.lr.ph49.split.preheader.i.i, %middle.block
  %indvars.iv55.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph49.split.preheader.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter61 = and i64 %wide.trip.count58.i.i, 1
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph49.split.i.i.prol.loopexit, label %.lr.ph49.split.i.i.prol

.lr.ph49.split.i.i.prol:                          ; preds = %.lr.ph49.split.i.i.preheader
  %i.ff = load double, ptr %i.eo, align 8, !tbaa !49
  %indvars.iv.next56.i.i.prol = or disjoint i64 %indvars.iv55.i.i.ph, 1 ; 2 uses
  %i.fg = trunc nuw nsw i64 %indvars.iv.next56.i.i.prol to i32
  %i.fh = uitofp nneg i32 %i.fg to double
  %i.fi = call nsz double @llvm.fmuladd.f64(double %i.eq, double %i.fh, double 1.000000e+00) ; 2 uses
  %i.fj = fsub nsz double 1.000000e+00, %i.fi
  %i.fk = fmul nsz double %i.ff, %i.fj
  %i.fl = call nsz double @llvm.fmuladd.f64(double %i.fi, double %i.em, double %i.fk)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv55.i.i.ph ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !49
  %i.fo = fsub nsz double %i.fn, %i.fl
  store double %i.fo, ptr %i.fm, align 8, !tbaa !49
  br label %.lr.ph49.split.i.i.prol.loopexit

.lr.ph49.split.i.i.prol.loopexit:                 ; preds = %.lr.ph49.split.i.i.prol, %.lr.ph49.split.i.i.preheader
  %indvars.iv55.i.i.unr = phi i64 [ %indvars.iv55.i.i.ph, %.lr.ph49.split.i.i.preheader ], [ %indvars.iv.next56.i.i.prol, %.lr.ph49.split.i.i.prol ]
  %i.fp = add nsw i64 %wide.trip.count58.i.i, -1
  %i.fq = icmp eq i64 %indvars.iv55.i.i.ph, %i.fp
  br i1 %i.fq, label %.critedge.i.i, label %.lr.ph49.split.i.i

.critedge.i.i:                                    ; preds = %.lr.ph49.split.i.i.prol.loopexit, %.lr.ph49.split.i.i, %middle.block, %bb.v
  %indvars.iv.next61.i.i = add nuw nsw i64 %indvars.iv60.i.i, 1 ; 2 uses
  %i.fr = load i32, ptr %i.da, align 8, !tbaa !33
  %i.fs = sext i32 %i.fr to i64
  %i.ft = icmp slt i64 %indvars.iv.next61.i.i, %i.fs
  br i1 %i.ft, label %bb.t, label %perform_dc_correction.exit.i, !llvm.loop !150

.lr.ph49.split.i.i:                               ; preds = %.lr.ph49.split.i.i.prol.loopexit, %.lr.ph49.split.i.i
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i.1, %.lr.ph49.split.i.i ], [ %indvars.iv55.i.i.unr, %.lr.ph49.split.i.i.prol.loopexit ] ; 3 uses
  %i.fu = load double, ptr %i.eo, align 8, !tbaa !49
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.fv = trunc nuw nsw i64 %indvars.iv.next56.i.i to i32
  %i.fw = uitofp nneg i32 %i.fv to double
  %i.fx = call nsz double @llvm.fmuladd.f64(double %i.eq, double %i.fw, double 1.000000e+00) ; 2 uses
  %i.fy = fsub nsz double 1.000000e+00, %i.fx
  %i.fz = fmul nsz double %i.fu, %i.fy
  %i.ga = call nsz double @llvm.fmuladd.f64(double %i.fx, double %i.em, double %i.fz)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv55.i.i ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !49
  %i.gd = fsub nsz double %i.gc, %i.ga
  store double %i.gd, ptr %i.gb, align 8, !tbaa !49
  %i.ge = load double, ptr %i.eo, align 8, !tbaa !49
  %indvars.iv.next56.i.i.1 = add nuw nsw i64 %indvars.iv55.i.i, 2 ; 3 uses
  %i.gf = trunc nuw nsw i64 %indvars.iv.next56.i.i.1 to i32
  %i.gg = uitofp nneg i32 %i.gf to double
  %i.gh = call nsz double @llvm.fmuladd.f64(double %i.eq, double %i.gg, double 1.000000e+00) ; 2 uses
  %i.gi = fsub nsz double 1.000000e+00, %i.gh
  %i.gj = fmul nsz double %i.ge, %i.gi
  %i.gk = call nsz double @llvm.fmuladd.f64(double %i.gh, double %i.em, double %i.gj)
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next56.i.i ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !49
  %i.gn = fsub nsz double %i.gm, %i.gk
  store double %i.gn, ptr %i.gl, align 8, !tbaa !49
  %exitcond59.not.i.i.1 = icmp eq i64 %indvars.iv.next56.i.i.1, %wide.trip.count58.i.i
  br i1 %exitcond59.not.i.i.1, label %.critedge.i.i, label %.lr.ph49.split.i.i, !llvm.loop !151

perform_dc_correction.exit.i:                     ; preds = %.critedge.i.i, %bb.s, %.thread.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.bx, i64 2496 ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !166 ; 2 uses
  %i.gq = fcmp nsz ogt double %i.gp, f0x3CB0000000000000
  br i1 %i.gq, label %bb.w, label %perform_compression.exit.i

bb.w:                                             ; preds = %perform_dc_correction.exit.i
  %i.gr = load ptr, ptr %i.b, align 8, !tbaa !37  ; 9 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bx, i64 2600
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !40
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !41
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %.val.i99.i = load i32, ptr %i.gv, align 8, !tbaa !53
  %i.gw = icmp sgt i32 %.val.i99.i, 0             ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bx, i64 2448
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !169
  %.not.i.i = icmp eq i32 %i.gy, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bx, i64 2544 ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !33 ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 0                   ; 3 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.x

.preheader.i.i:                                   ; preds = %bb.w
  br i1 %i.hb, label %.lr.ph154.i.i, label %perform_compression.exit.i

.lr.ph154.i.i:                                    ; preds = %.preheader.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 384
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bx, i64 2568
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 96
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 112
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bx, i64 2528
  br label %bb.ag

bb.x:                                             ; preds = %bb.w
  br i1 %i.hb, label %.lr.ph43.i.i.i, label %.preheader.._crit_edge44_crit_edge.i.i.i

.preheader.._crit_edge44_crit_edge.i.i.i:         ; preds = %bb.x
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 112
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !78
  br label %compute_frame_std_dev.exit.i.i

.lr.ph43.i.i.i:                                   ; preds = %bb.x
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 96
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !77
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gr, i64 112
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !78 ; 5 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph38.us.preheader.i.i.i, label %compute_frame_std_dev.exit.i.i

.lr.ph38.us.preheader.i.i.i:                      ; preds = %.lr.ph43.i.i.i
  %wide.trip.count59.i.i.i = zext nneg i32 %i.ha to i64
  %wide.trip.count54.i.i.i = zext nneg i32 %i.hk to i64 ; 2 uses
  %xtraiter63 = and i64 %wide.trip.count54.i.i.i, 3 ; 3 uses
  %i.hm = icmp ult i32 %i.hk, 4
  %unroll_iter68 = and i64 %wide.trip.count54.i.i.i, 2147483644
  %lcmp.mod65.not = icmp eq i64 %xtraiter63, 0
  %lcmp.mod67 = icmp ne i64 %xtraiter63, 0
  br label %.lr.ph38.us.i.i.i

.lr.ph38.us.i.i.i:                                ; preds = %._crit_edge39.us.i.i.i, %.lr.ph38.us.preheader.i.i.i
  %indvars.iv56.i.i.i = phi i64 [ 0, %.lr.ph38.us.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i, %._crit_edge39.us.i.i.i ] ; 2 uses
  %.02741.us.i.i.i = phi double [ 0.000000e+00, %.lr.ph38.us.preheader.i.i.i ], [ %.lcssa56, %._crit_edge39.us.i.i.i ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv56.i.i.i
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !81 ; 5 uses
  br i1 %i.hm, label %.epil.preheader, label %.lr.ph38.us.i.i.i.new

.lr.ph38.us.i.i.i.new:                            ; preds = %.lr.ph38.us.i.i.i, %.lr.ph38.us.i.i.i.new
  %indvars.iv51.i.i.i = phi i64 [ %indvars.iv.next52.i.i.i.3, %.lr.ph38.us.i.i.i.new ], [ 0, %.lr.ph38.us.i.i.i ] ; 5 uses
  %.135.us.i.i.i = phi double [ %i.ih, %.lr.ph38.us.i.i.i.new ], [ %.02741.us.i.i.i, %.lr.ph38.us.i.i.i ]
  %niter69 = phi i64 [ %niter69.next.3, %.lr.ph38.us.i.i.i.new ], [ 0, %.lr.ph38.us.i.i.i ]
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv51.i.i.i
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !49 ; 2 uses
  %i.hr = fmul nsz double %i.hq, %i.hq
  %i.hs = fadd nsz double %.135.us.i.i.i, %i.hr
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv51.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !49 ; 2 uses
  %i.hw = fmul nsz double %i.hv, %i.hv
  %i.hx = fadd nsz double %i.hs, %i.hw
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv51.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !49 ; 2 uses
  %i.ib = fmul nsz double %i.ia, %i.ia
  %i.ic = fadd nsz double %i.hx, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv51.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load double, ptr %i.ie, align 8, !tbaa !49 ; 2 uses
  %i.ig = fmul nsz double %i.if, %i.if
  %i.ih = fadd nsz double %i.ic, %i.ig            ; 3 uses
  %indvars.iv.next52.i.i.i.3 = add nuw nsw i64 %indvars.iv51.i.i.i, 4 ; 2 uses
  %niter69.next.3 = add i64 %niter69, 4           ; 2 uses
  %niter69.ncmp.3 = icmp eq i64 %niter69.next.3, %unroll_iter68
  br i1 %niter69.ncmp.3, label %._crit_edge39.us.i.i.i.unr-lcssa, label %.lr.ph38.us.i.i.i.new, !llvm.loop !152

._crit_edge39.us.i.i.i.unr-lcssa:                 ; preds = %.lr.ph38.us.i.i.i.new
  br i1 %lcmp.mod65.not, label %._crit_edge39.us.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge39.us.i.i.i.unr-lcssa, %.lr.ph38.us.i.i.i
  %indvars.iv51.i.i.i.epil.init = phi i64 [ 0, %.lr.ph38.us.i.i.i ], [ %indvars.iv.next52.i.i.i.3, %._crit_edge39.us.i.i.i.unr-lcssa ]
  %.135.us.i.i.i.epil.init = phi double [ %.02741.us.i.i.i, %.lr.ph38.us.i.i.i ], [ %i.ih, %._crit_edge39.us.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv51.i.i.i.epil = phi i64 [ %indvars.iv51.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next52.i.i.i.epil, %bb.y ] ; 2 uses
  %.135.us.i.i.i.epil = phi double [ %.135.us.i.i.i.epil.init, %.epil.preheader ], [ %i.il, %bb.y ]
  %epil.iter64 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter64.next, %bb.y ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv51.i.i.i.epil
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !49 ; 2 uses
  %i.ik = fmul nsz double %i.ij, %i.ij
  %i.il = fadd nsz double %.135.us.i.i.i.epil, %i.ik ; 2 uses
  %indvars.iv.next52.i.i.i.epil = add nuw nsw i64 %indvars.iv51.i.i.i.epil, 1
  %epil.iter64.next = add i64 %epil.iter64, 1     ; 2 uses
  %epil.iter64.cmp.not = icmp eq i64 %epil.iter64.next, %xtraiter63
  br i1 %epil.iter64.cmp.not, label %._crit_edge39.us.i.i.i, label %bb.y, !llvm.loop !153

._crit_edge39.us.i.i.i:                           ; preds = %bb.y, %._crit_edge39.us.i.i.i.unr-lcssa
  %.lcssa56 = phi double [ %i.ih, %._crit_edge39.us.i.i.i.unr-lcssa ], [ %i.il, %bb.y ] ; 2 uses
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %compute_frame_std_dev.exit.i.i, label %.lr.ph38.us.i.i.i, !llvm.loop !154

compute_frame_std_dev.exit.i.i:                   ; preds = %._crit_edge39.us.i.i.i, %.lr.ph43.i.i.i, %.preheader.._crit_edge44_crit_edge.i.i.i
  %i.im = phi i32 [ %.pre.i.i.i, %.preheader.._crit_edge44_crit_edge.i.i.i ], [ %i.hk, %.lr.ph43.i.i.i ], [ %i.hk, %._crit_edge39.us.i.i.i ]
  %.027.lcssa.i.i.i = phi double [ 0.000000e+00, %.preheader.._crit_edge44_crit_edge.i.i.i ], [ 0.000000e+00, %.lr.ph43.i.i.i ], [ %.lcssa56, %._crit_edge39.us.i.i.i ]
  %i.in = mul nsw i32 %i.im, %i.ha
  %i.io = add nsw i32 %i.in, -1
  %i.ip = sitofp nsz i32 %i.io to double
  %i.iq = fdiv nsz double %.027.lcssa.i.i.i, %i.ip
  %i.ir = call nsz double @llvm.sqrt.f64(double %i.iq)
end_hunk_0
begin_hunk_1_@filter_frame:bb.a
  %i.tf = phi i16 [ %.pre.i, %bb.aw ], [ %.val.i, %bb.av ] ; 2 uses
  %i.tg = load i16, ptr %i.n, align 8, !tbaa !36
  %i.th = zext i16 %i.tg to i32
  %i.ti = add i16 %i.tf, 1
  store i16 %i.ti, ptr %i.j, align 2, !tbaa !35
  %i.tj = zext i16 %i.tf to i32
  %i.tk = add nuw nsw i32 %i.th, %i.tj
  %i.tl = urem i32 %i.tk, 302
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.tm
  store ptr %i.sv, ptr %i.tn, align 8, !tbaa !37
  %i.to = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.16.val, i64 104
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !173
  %.not51 = icmp eq i32 %i.tq, 0
  %i.tr = uitofp i1 %.not51 to double
  %i.ts = load ptr, ptr %i.to, align 8, !tbaa !54
  %i.tt = getelementptr inbounds nuw i8, ptr %i.to, i64 16 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !53 ; 2 uses
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.ts, i64 %i.tv
  store double %i.tr, ptr %i.tw, align 8, !tbaa !49
  %i.tx = add nsw i32 %i.tu, 1
  store i32 %i.tx, ptr %i.tt, align 8, !tbaa !53
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
  %i.aw = trunc nsw i64 %indvars.iv to i32
  %i.ax = tail call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.v, i32 noundef %i.aw) #14
  %i.ay = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.w, i32 noundef %i.ax) #14
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !81 ; 6 uses
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !81 ; 7 uses
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !41 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !54 ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !49 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !53
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bk, i64 %i.bp, i1 false)
  %i.bq = load i32, ptr %i.bl, align 8, !tbaa !53
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.bl, align 8, !tbaa !53
  %i.bs = load i32, ptr %i.aa, align 8, !tbaa !78 ; 4 uses
  %.fr.i = freeze i32 %i.ay
  %.not.i = icmp sgt i32 %.fr.i, -1
  %i.bt = icmp sgt i32 %i.bs, 0
  %or.cond2629.i = and i1 %.not.i, %i.bt
  %i.bu = load ptr, ptr %i.ab, align 8, !tbaa !86 ; 3 uses
  br i1 %or.cond2629.i, label %.lr.ph.split.preheader.i, label %amplify_channel.exit

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.split
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %indvars.iv ; 5 uses
  %i.bw = uitofp nneg i32 %i.bs to double
  %i.bx = fdiv nsz double -1.000000e+00, %i.bw    ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.bs to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.bs, 2
  br i1 %min.iters.check, label %.lr.ph.split.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader.i
  %i.by = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.bz = getelementptr i8, ptr %i.be, i64 %i.by  ; 2 uses
  %i.ca = shl nuw nsw i64 %indvar, 3
  %i.cb = getelementptr i8, ptr %i.bu, i64 %i.ad
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.ca
  %i.ce = getelementptr i8, ptr %i.bb, i64 %i.by
  %bound0 = icmp ult ptr %i.be, %i.cd
  %bound1 = icmp ult ptr %i.bv, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  %bound039 = icmp ult ptr %i.be, %i.ce
  %bound140 = icmp ult ptr %i.bb, %i.bz
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx = or i1 %found.conflict, %found.conflict41
  br i1 %conflict.rdx, label %.lr.ph.split.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %i.cf = load double, ptr %i.bv, align 8, !tbaa !49, !alias.scope !181
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat45 = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %i.bj, i64 0
  %broadcast.splat43 = shufflevector <2 x double> %broadcast.splatinsert42, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %4 = trunc <2 x i64> %vec.ind to <2 x i32>
  %5 = add <2 x i32> %4, splat (i32 1)
  %i.cg = uitofp nneg <2 x i32> %5 to <2 x double>
  %i.ch = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.cg, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.ci = fsub nsz <2 x double> splat (double 1.000000e+00), %i.ch
  %i.cj = fmul nsz <2 x double> %broadcast.splat43, %i.ci
  %i.ck = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %broadcast.splat45, <2 x double> %i.cj)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load = load <2 x double>, ptr %i.cl, align 8, !tbaa !49, !alias.scope !182
  %i.cm = fmul nsz <2 x double> %wide.load, %i.ck
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  store <2 x double> %i.cm, ptr %i.cn, align 8, !tbaa !49, !alias.scope !183, !noalias !184
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %amplify_channel.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.cp = load double, ptr %i.bv, align 8, !tbaa !49
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1 ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv.next.i.prol to i32
  %i.cr = uitofp nneg i32 %i.cq to double
  %i.cs = tail call nsz double @llvm.fmuladd.f64(double %i.bx, double %i.cr, double 1.000000e+00) ; 2 uses
  %i.ct = fsub nsz double 1.000000e+00, %i.cs
  %i.cu = fmul nsz double %i.bj, %i.ct
  %i.cv = tail call nsz double @llvm.fmuladd.f64(double %i.cs, double %i.cp, double %i.cu)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i.ph
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !49
  %i.cy = fmul nsz double %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.ph
  store double %i.cy, ptr %i.cz, align 8, !tbaa !49
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.split.i.prol ]
  %i.da = add nsw i64 %wide.trip.count.i, -1
  %i.db = icmp eq i64 %indvars.iv.i.ph, %i.da
  br i1 %i.db, label %amplify_channel.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ %indvars.iv.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %i.dc = load double, ptr %i.bv, align 8, !tbaa !49
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.de = uitofp nneg i32 %i.dd to double
  %i.df = tail call nsz double @llvm.fmuladd.f64(double %i.bx, double %i.de, double 1.000000e+00) ; 2 uses
  %i.dg = fsub nsz double 1.000000e+00, %i.df
  %i.dh = fmul nsz double %i.bj, %i.dg
  %i.di = tail call nsz double @llvm.fmuladd.f64(double %i.df, double %i.dc, double %i.dh)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !49
  %i.dl = fmul nsz double %i.dk, %i.di
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i
  store double %i.dl, ptr %i.dm, align 8, !tbaa !49
  %i.dn = load double, ptr %i.bv, align 8, !tbaa !49
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.do = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.dp = uitofp nneg i32 %i.do to double
  %i.dq = tail call nsz double @llvm.fmuladd.f64(double %i.bx, double %i.dp, double 1.000000e+00) ; 2 uses
  %i.dr = fsub nsz double 1.000000e+00, %i.dq
  %i.ds = fmul nsz double %i.bj, %i.dr
  %i.dt = tail call nsz double @llvm.fmuladd.f64(double %i.dq, double %i.dn, double %i.ds)
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i
  %i.dv = load double, ptr %i.du, align 8, !tbaa !49
  %i.dw = fmul nsz double %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i
  store double %i.dw, ptr %i.dx, align 8, !tbaa !49
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %amplify_channel.exit, label %.lr.ph.split.i, !llvm.loop !180

amplify_channel.exit:                             ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %middle.block, %.lr.ph.split
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %indvars.iv
  store double %i.bj, ptr %i.dy, align 8, !tbaa !49
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
