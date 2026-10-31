Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_avectorscope?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@activate:bb.a
  store i64 1, ptr %i.bx, align 8, !tbaa !66
  %i.by = call i32 @ff_inlink_make_frame_writable(ptr noundef nonnull %i.w, ptr noundef nonnull %i.aj) #14 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit230.i
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  br label %filter_frame.exit

bb.k:                                             ; preds = %.loopexit230.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !64
  %i.cc = call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.t) #16
  %..i = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cc)
  %i.cd = call i32 @ff_filter_execute(ptr noundef nonnull %i.t, ptr noundef nonnull @fade, ptr noundef null, ptr noundef null, i32 noundef %..i) #14 ; 0 uses
  %i.ce = fcmp nsz olt double %i.ai, 1.000000e+00
  br i1 %i.ce, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !67
  switch i32 %i.cg, label %.loopexit.i [
    i32 1, label %.preheader.i
    i32 3, label %.preheader228.i
  ]

.preheader228.i:                                  ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !68 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph234.preheader.i, label %.loopexit.i

.lr.ph234.preheader.i:                            ; preds = %.preheader228.i
  %i.ck = shl nuw i32 %i.ci, 1
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ck, i32 1) ; 3 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cl = icmp eq i32 %smax.i, 1
  br i1 %i.cl, label %.lr.ph234.i.epil.preheader, label %.lr.ph234.preheader.i.new

.lr.ph234.preheader.i.new:                        ; preds = %.lr.ph234.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph234.i

.preheader.i:                                     ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !68 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph237.preheader.i, label %.loopexit.i

.lr.ph237.preheader.i:                            ; preds = %.preheader.i
  %i.cp = shl nuw i32 %i.cn, 1
  %smax251.i = call i32 @llvm.smax.i32(i32 %i.cp, i32 1) ; 3 uses
  %wide.trip.count252.i = zext nneg i32 %smax251.i to i64 ; 2 uses
  %xtraiter65 = and i64 %wide.trip.count252.i, 1
  %i.cq = icmp eq i32 %smax251.i, 1
  br i1 %i.cq, label %.lr.ph237.i.epil.preheader, label %.lr.ph237.preheader.i.new

.lr.ph237.preheader.i.new:                        ; preds = %.lr.ph237.preheader.i
  %unroll_iter69 = and i64 %wide.trip.count252.i, 2147483646
  br label %.lr.ph237.i

.lr.ph237.i:                                      ; preds = %.lr.ph237.i, %.lr.ph237.preheader.i.new
  %indvars.iv248.i = phi i64 [ 0, %.lr.ph237.preheader.i.new ], [ %indvars.iv.next249.i.1, %.lr.ph237.i ] ; 3 uses
  %.0181235.i = phi float [ 0.000000e+00, %.lr.ph237.preheader.i.new ], [ %..0181.i.1, %.lr.ph237.i ] ; 2 uses
  %niter70 = phi i64 [ 0, %.lr.ph237.preheader.i.new ], [ %niter70.next.1, %.lr.ph237.i ]
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv248.i
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !70
  %i.ct = sitofp i16 %i.cs to float
  %i.cu = fdiv nsz float %i.ct, 3.276700e+04      ; 3 uses
  %i.cv = fcmp nsz oge float %i.cu, 0.000000e+00
  %i.cw = fneg nsz float %i.cu
  %i.cx = select nsz i1 %i.cv, float %i.cu, float %i.cw ; 2 uses
  %i.cy = fcmp nsz ogt float %i.cx, %.0181235.i
  %..0181.i = select nsz i1 %i.cy, float %i.cx, float %.0181235.i ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv248.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !70
  %i.dc = sitofp i16 %i.db to float
  %i.dd = fdiv nsz float %i.dc, 3.276700e+04      ; 3 uses
  %i.de = fcmp nsz oge float %i.dd, 0.000000e+00
  %i.df = fneg nsz float %i.dd
  %i.dg = select nsz i1 %i.de, float %i.dd, float %i.df ; 2 uses
  %i.dh = fcmp nsz ogt float %i.dg, %..0181.i
  %..0181.i.1 = select nsz i1 %i.dh, float %i.dg, float %..0181.i ; 3 uses
  %indvars.iv.next249.i.1 = add nuw nsw i64 %indvars.iv248.i, 2 ; 2 uses
  %niter70.next.1 = add i64 %niter70, 2           ; 2 uses
  %niter70.ncmp.1 = icmp eq i64 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph237.i, !llvm.loop !54

.lr.ph234.i:                                      ; preds = %.lr.ph234.i, %.lr.ph234.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph234.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph234.i ] ; 3 uses
  %.1232.i = phi float [ 0.000000e+00, %.lr.ph234.preheader.i.new ], [ %i.dw, %.lr.ph234.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph234.preheader.i.new ], [ %niter.next.1, %.lr.ph234.i ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !72 ; 4 uses
  %i.dk = fcmp nsz oge float %i.dj, 0.000000e+00
  %i.dl = fneg nsz float %i.dj
  %i.dm = call nsz float @llvm.fabs.f32(float %i.dj)
  %i.dn = fcmp nsz ule float %i.dm, %.1232.i
  %.1.mux.i = select i1 %i.dk, float %i.dj, float %i.dl
  %i.do = select i1 %i.dn, float %.1232.i, float %.1.mux.i ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !72 ; 4 uses
  %i.ds = fcmp nsz oge float %i.dr, 0.000000e+00
  %i.dt = fneg nsz float %i.dr
  %i.du = call nsz float @llvm.fabs.f32(float %i.dr)
  %i.dv = fcmp nsz ule float %i.du, %i.do
  %.1.mux.i.1 = select i1 %i.ds, float %i.dr, float %i.dt
  %i.dw = select i1 %i.dv, float %i.do, float %.1.mux.i.1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit61.unr-lcssa, label %.lr.ph234.i, !llvm.loop !55

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph237.i
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.loopexit.i, label %.lr.ph237.i.epil.preheader

.lr.ph237.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph237.preheader.i
  %indvars.iv248.i.epil.init = phi i64 [ 0, %.lr.ph237.preheader.i ], [ %indvars.iv.next249.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.0181235.i.epil.init = phi float [ 0.000000e+00, %.lr.ph237.preheader.i ], [ %..0181.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i32 %smax251.i to i1
  call void @llvm.assume(i1 %lcmp.mod68)
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv248.i.epil.init
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !70
  %i.dz = sitofp i16 %i.dy to float
  %i.ea = fdiv nsz float %i.dz, 3.276700e+04      ; 3 uses
  %i.eb = fcmp nsz oge float %i.ea, 0.000000e+00
  %i.ec = fneg nsz float %i.ea
  %i.ed = select nsz i1 %i.eb, float %i.ea, float %i.ec ; 2 uses
  %i.ee = fcmp nsz ogt float %i.ed, %.0181235.i.epil.init
  %..0181.i.epil = select nsz i1 %i.ee, float %i.ed, float %.0181235.i.epil.init
  br label %.loopexit.i

.loopexit.i.loopexit61.unr-lcssa:                 ; preds = %.lr.ph234.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph234.i.epil.preheader

.lr.ph234.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit61.unr-lcssa, %.lr.ph234.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph234.preheader.i ], [ %indvars.iv.next.i.1, %.loopexit.i.loopexit61.unr-lcssa ]
  %.1232.i.epil.init = phi float [ 0.000000e+00, %.lr.ph234.preheader.i ], [ %i.dw, %.loopexit.i.loopexit61.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i32 %smax.i to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.epil.init
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !72 ; 4 uses
  %i.eh = fcmp nsz oge float %i.eg, 0.000000e+00
  %i.ei = fneg nsz float %i.eg
  %i.ej = call nsz float @llvm.fabs.f32(float %i.eg)
  %i.ek = fcmp nsz ule float %i.ej, %.1232.i.epil.init
  %.1.mux.i.epil = select i1 %i.eh, float %i.eg, float %i.ei
  %i.el = select i1 %i.ek, float %.1232.i.epil.init, float %.1.mux.i.epil
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph234.i.epil.preheader, %.loopexit.i.loopexit61.unr-lcssa, %.lr.ph237.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.preheader.i, %.preheader228.i, %bb.l
  %.2.i = phi nsz float [ 0.000000e+00, %bb.l ], [ %..0181.i.epil, %.lr.ph237.i.epil.preheader ], [ 0.000000e+00, %.preheader.i ], [ 0.000000e+00, %.preheader228.i ], [ %..0181.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %i.dw, %.loopexit.i.loopexit61.unr-lcssa ], [ %i.el, %.lr.ph234.i.epil.preheader ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.en = load i32, ptr %i.em, align 8, !tbaa !73
  switch i32 %i.en, label %bb.p [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.m:                                             ; preds = %.loopexit.i
  %i.eo = call nsz float @llvm.sqrt.f32(float %.2.i)
  br label %bb.p

bb.n:                                             ; preds = %.loopexit.i
  %i.ep = call nsz float @cbrtf(float noundef %.2.i) #15
  br label %bb.p

bb.o:                                             ; preds = %.loopexit.i
  %i.eq = fadd nsz float %.2.i, 1.000000e+00
  %i.er = call nsz float @llvm.log.f32(float %i.eq)
  %i.es = fdiv nsz float %i.er, f0x3F317218
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.loopexit.i
  %.3.i = phi nsz float [ %.2.i, %.loopexit.i ], [ %i.eo, %bb.m ], [ %i.ep, %bb.n ], [ %i.es, %bb.o ] ; 2 uses
  %i.et = fcmp nsz ogt float %.3.i, 0.000000e+00
  %i.eu = fpext nsz float %.3.i to double
  %i.ev = fdiv nsz double 1.000000e+00, %i.eu
  %.0183.i = select nsz i1 %i.et, double %i.ev, double %i.ai
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.1184.i = phi nsz double [ %.0183.i, %bb.p ], [ %i.ai, %bb.k ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !68
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph242.i, label %._crit_edge.i

.lr.ph242.i:                                      ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %i.z, i64 92
  %i.fb = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.fc = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.fd = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = sitofp <2 x i32> %i.fd to <2 x double>  ; 3 uses
  %i.ff = sub nsw i32 0, %i.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 10 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.z, i64 44 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.z, i64 52 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 5 uses
  %i.fn = insertelement <2 x double> poison, double %.1184.i, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.r

._crit_edge.i.loopexit:                           ; preds = %draw_dot.exit.i
  %i.fp = shufflevector <2 x i32> %i.jk, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.q
  %i.fq = phi <2 x i32> [ undef, %bb.q ], [ %i.fp, %._crit_edge.i.loopexit ]
  store <2 x i32> %i.fq, ptr %i.ad, align 8, !tbaa !34
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  %i.fr = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.fs = call ptr @av_frame_clone(ptr noundef %i.fr) #14 ; 2 uses
  %.not209.i = icmp eq ptr %i.fs, null
  br i1 %.not209.i, label %filter_frame.exit, label %bb.bm

bb.r:                                             ; preds = %draw_dot.exit.i, %.lr.ph242.i
  %indvars.iv254.i = phi i64 [ 0, %.lr.ph242.i ], [ %indvars.iv.next255.i, %draw_dot.exit.i ] ; 3 uses
  %i.ft = phi ptr [ %i.r, %.lr.ph242.i ], [ %i.uv, %draw_dot.exit.i ]
  %.0185240.i = phi i32 [ %i.ag, %.lr.ph242.i ], [ %i.va, %draw_dot.exit.i ] ; 6 uses
  %.0186239.i = phi i32 [ %i.ae, %.lr.ph242.i ], [ %i.vb, %draw_dot.exit.i ] ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 116
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !67
  switch i32 %i.fv, label %bb.u [
    i32 1, label %bb.s
    i32 3, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %.idx266.i = shl nuw nsw i64 %indvars.iv254.i, 2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx266.i
  %i.fx = load <2 x i16>, ptr %i.fw, align 2, !tbaa !70
  %i.fy = sitofp <2 x i16> %i.fx to <2 x float>
  %i.fz = fdiv nsz <2 x float> %i.fy, splat (float 3.276700e+04)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.idx.i = shl nuw nsw i64 %indvars.iv254.i, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.gb = load <2 x float>, ptr %i.ga, align 4, !tbaa !72
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.gc = phi <2 x float> [ undef, %bb.r ], [ %i.fz, %bb.s ], [ %i.gb, %bb.t ] ; 9 uses
  %i.gd = load i32, ptr %i.ez, align 8, !tbaa !73
  switch i32 %i.gd, label %bb.y [
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.ge = fcmp nsz ogt <2 x float> %i.gc, zeroinitializer
  %i.gf = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gc)
  %i.gg = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gf) ; 2 uses
  %i.gh = fneg nsz <2 x float> %i.gg
  %i.gi = select <2 x i1> %i.ge, <2 x float> %i.gg, <2 x float> %i.gh
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.gj = fcmp nsz ogt <2 x float> %i.gc, zeroinitializer
  %i.gk = fcmp nsz oge <2 x float> %i.gc, zeroinitializer
  %i.gl = fneg nsz <2 x float> %i.gc
  %i.gm = select <2 x i1> %i.gk, <2 x float> %i.gc, <2 x float> %i.gl ; 2 uses
  %i.gn = extractelement <2 x float> %i.gm, i64 0
  %i.go = call nsz float @cbrtf(float noundef %i.gn) #15
  %i.gp = extractelement <2 x float> %i.gm, i64 1
  %i.gq = call nsz float @cbrtf(float noundef %i.gp) #15
  %i.gr = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.gq, i64 1 ; 2 uses
  %i.gt = fneg nsz <2 x float> %i.gs
  %i.gu = select <2 x i1> %i.gj, <2 x float> %i.gs, <2 x float> %i.gt
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.gv = fcmp nsz ogt <2 x float> %i.gc, zeroinitializer
  %i.gw = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gc)
  %i.gx = fadd nsz <2 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = call nsz <2 x float> @llvm.log.v2f32(<2 x float> %i.gx) ; 2 uses
  %i.gz = fneg nsz <2 x float> %i.gy
  %i.ha = select <2 x i1> %i.gv, <2 x float> %i.gy, <2 x float> %i.gz
  %i.hb = fdiv nsz <2 x float> %i.ha, splat (float f0x3F317218)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.hc = phi <2 x float> [ %i.gc, %bb.u ], [ %i.gi, %bb.v ], [ %i.gu, %bb.w ], [ %i.hb, %bb.x ] ; 2 uses
  %i.hd = load i32, ptr %i.fa, align 4, !tbaa !74
  %i.he = fneg nsz <2 x float> %i.hc
  %i.hf = insertelement <2 x i32> poison, i32 %i.hd, i64 0
  %i.hg = shufflevector <2 x i32> %i.hf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hh = and <2 x i32> %i.hg, <i32 1, i32 2>
  %i.hi = icmp eq <2 x i32> %i.hh, zeroinitializer
  %i.hj = select <2 x i1> %i.hi, <2 x float> %i.hc, <2 x float> %i.he ; 3 uses
  %i.hk = load i32, ptr %i.fb, align 8, !tbaa !75
  %.not212.i = icmp eq i32 %i.hk, 0
  %i.hl = insertelement <2 x i1> poison, i1 %.not212.i, i64 0
  %i.hm = shufflevector <2 x i1> %i.hl, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.hn = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ho = select <2 x i1> %i.hm, <2 x float> %i.hj, <2 x float> %i.hn ; 4 uses
  %i.hp = load i32, ptr %i.fc, align 8, !tbaa !47
  switch i32 %i.hp, label %bb.ab [
    i32 0, label %bb.z
    i32 1, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %shift = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x float> %shift, %i.ho
  %i.hq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hr = fpext nsz float %i.hq to double
  %i.hs = fmul nsz double %.1184.i, %i.hr
  %i.ht = fmul nsz double %i.hs, 5.000000e-01
  %i.hu = call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.hj)
  %i.hv = fpext nsz float %i.hu to double
  %i.hw = fmul nsz double %.1184.i, %i.hv
  %i.hx = fmul nsz double %i.hw, 5.000000e-01
  %i.hy = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ht, i64 1
  %i.hz = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.hx, i64 0
  %i.ia = fsub nsz <2 x double> %i.hy, %i.hz
  %i.ib = fmul nsz <2 x double> %i.ia, %i.fe
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ic = fpext <2 x float> %i.ho to <2 x double>
  %i.id = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.fo, <2 x double> splat (double 1.000000e+00))
  %i.ie = fmul nsz <2 x double> %i.id, %i.fe
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.if = fpext <2 x float> %i.ho to <2 x double>
  %i.ig = fmul nsz <2 x double> %i.fo, %i.if
  %i.ih = fptrunc <2 x double> %i.ig to <2 x float> ; 2 uses
  %i.ii = fpext <2 x float> %i.ih to <2 x double> ; 2 uses
  %i.ij = fmul nsz <2 x double> %i.ii, splat (double -5.000000e-01)
  %i.ik = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.ii, <2 x double> splat (double 1.000000e+00))
  %i.il = fptrunc <2 x double> %i.ik to <2 x float>
  %i.im = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.il)
  %i.in = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.io = fmul nsz <2 x float> %i.im, %i.in       ; 2 uses
  %i.ip = extractelement <2 x float> %i.io, i64 0 ; 2 uses
  %i.iq = extractelement <2 x float> %i.io, i64 1 ; 2 uses
  %i.ir = fadd nsz float %i.ip, %i.iq             ; 2 uses
  %i.is = fcmp nsz ogt float %i.ir, 0.000000e+00
  %i.it = select i1 %i.is, i32 %i.ac, i32 %i.ff
  %i.iu = sitofp nsz i32 %i.it to float
  %i.iv = fsub nsz float %i.ip, %i.iq
  %i.iw = fmul nsz float %i.iv, %i.iu
  %i.ix = fpext nsz float %i.iw to double
  %i.iy = load i32, ptr %i.fg, align 4, !tbaa !48 ; 2 uses
  %i.iz = sitofp nsz i32 %i.iy to double
  %i.ja = sitofp nsz i32 %i.iy to float
  %i.jb = call nsz float @llvm.fabs.f32(float %i.ir)
  %i.jc = fmul nsz float %i.jb, %i.ja
  %i.jd = fpext nsz float %i.jc to double
  %i.je = fneg nsz double %i.jd
  %i.jf = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jg = insertelement <2 x double> %i.jf, double %i.ix, i64 1
  %i.jh = insertelement <2 x double> %i.fe, double %i.iz, i64 0
  %i.ji = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> splat (double f0x3FE6666666666666), <2 x double> %i.jh)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.jj = phi <2 x double> [ %i.ib, %bb.z ], [ %i.ie, %bb.aa ], [ %i.ji, %bb.ab ]
  %i.jk = fptoui <2 x double> %i.jj to <2 x i32>  ; 11 uses
  %i.jl = load i32, ptr %i.fh, align 4, !tbaa !76
  switch i32 %i.jl, label %bb.ap [
    i32 0, label %bb.ad
    i32 1, label %bb.ai
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.jm = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !34
  %i.jp = sext i32 %i.jo to i64
  %i.jq = load double, ptr %i.ah, align 8, !tbaa !62
  %i.jr = fcmp nsz ogt double %i.jq, 1.000000e+00
  %i.js = load i32, ptr %i.fg, align 4, !tbaa !48 ; 2 uses
  br i1 %i.jr, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.jt = extractelement <2 x i32> %i.jk, i64 0   ; 2 uses
  %.not.i.i = icmp ugt i32 %i.js, %i.jt
  br i1 %.not.i.i, label %bb.af, label %draw_dot.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.ju = load i32, ptr %i.fi, align 8, !tbaa !49
  %i.jv = extractelement <2 x i32> %i.jk, i64 1   ; 2 uses
  %.not57.i.i = icmp ugt i32 %i.ju, %i.jv
  br i1 %.not57.i.i, label %bb.ah, label %draw_dot.exit.i

bb.ag:                                            ; preds = %bb.ad
  %i.jw = add nsw i32 %i.js, -1
  %i.jx = extractelement <2 x i32> %i.jk, i64 0
  %..i.i = call i32 @llvm.umin.i32(i32 %i.jx, i32 %i.jw)
  %i.jy = load i32, ptr %i.fi, align 8, !tbaa !49
  %i.jz = add nsw i32 %i.jy, -1
  %i.ka = extractelement <2 x i32> %i.jk, i64 1
  %i.kb = call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.jz)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.045.i.i = phi i32 [ %i.jt, %bb.af ], [ %..i.i, %bb.ag ]
  %.0.i.i = phi i32 [ %i.jv, %bb.af ], [ %i.kb, %bb.ag ]
  %i.kc = load ptr, ptr %i.jm, align 8, !tbaa !33
  %i.kd = zext i32 %.045.i.i to i64
  %i.ke = mul nsw i64 %i.kd, %i.jp
  %i.kf = getelementptr inbounds i8, ptr %i.kc, i64 %i.ke
  %i.kg = shl i32 %.0.i.i, 2
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kh ; 5 uses
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !50
  %i.kk = zext i8 %i.kj to i32
  %i.kl = load i32, ptr %i.fj, align 4, !tbaa !34
  %i.km = add nsw i32 %i.kl, %i.kk
  %.58.i.i = call i32 @llvm.smin.i32(i32 %i.km, i32 255)
  %i.kn = trunc i32 %.58.i.i to i8
  store i8 %i.kn, ptr %i.ki, align 1, !tbaa !50
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 1 ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !50
  %i.kq = zext i8 %i.kp to i32
  %i.kr = load i32, ptr %i.fk, align 8, !tbaa !34
  %i.ks = add nsw i32 %i.kr, %i.kq
  %i.kt = call i32 @llvm.smin.i32(i32 %i.ks, i32 255)
  %i.ku = trunc i32 %i.kt to i8
  store i8 %i.ku, ptr %i.ko, align 1, !tbaa !50
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ki, i64 2 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !50
  %i.kx = zext i8 %i.kw to i32
  %i.ky = load i32, ptr %i.fl, align 4, !tbaa !34
  %i.kz = add nsw i32 %i.ky, %i.kx
  %i.la = call i32 @llvm.smin.i32(i32 %i.kz, i32 255)
  %i.lb = trunc i32 %i.la to i8
  store i8 %i.lb, ptr %i.kv, align 1, !tbaa !50
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ki, i64 3 ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !50
  %i.le = zext i8 %i.ld to i32
  %i.lf = load i32, ptr %i.fm, align 8, !tbaa !34
  %i.lg = add nsw i32 %i.lf, %i.le
  %i.lh = call i32 @llvm.smin.i32(i32 %i.lg, i32 255)
  %i.li = trunc i32 %i.lh to i8
  store i8 %i.li, ptr %i.lc, align 1, !tbaa !50
  br label %draw_dot.exit.i

bb.ai:                                            ; preds = %bb.ac
  %i.lj = extractelement <2 x i32> %i.jk, i64 1   ; 3 uses
  %i.lk = sub nsw i32 %.0186239.i, %i.lj
  %i.ll = call i32 @llvm.abs.i32(i32 %i.lk, i1 true) ; 4 uses
  %i.lm = icmp sgt i32 %.0186239.i, %i.lj
  %i.ln = select i1 %i.lm, i32 1, i32 -1
  %i.lo = extractelement <2 x i32> %i.jk, i64 0   ; 3 uses
  %i.lp = sub nsw i32 %.0185240.i, %i.lo
  %i.lq = call i32 @llvm.abs.i32(i32 %i.lp, i1 true) ; 4 uses
  %i.lr = icmp sgt i32 %.0185240.i, %i.lo
  %i.ls = select i1 %i.lr, i32 1, i32 -1
  %i.lt = icmp samesign ugt i32 %i.ll, %i.lq
  %i.lu = sub nsw i32 0, %i.lq
  %i.lv = select i1 %i.lt, i32 %i.ll, i32 %i.lu
  %i.lw = sdiv i32 %i.lv, 2
  %i.lx = sub nsw i32 0, %i.ll
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %.041.i.i = phi i32 [ %i.lo, %bb.ai ], [ %.142.i.i, %bb.ao ] ; 5 uses
  %.039.i.i = phi i32 [ %i.lj, %bb.ai ], [ %.140.i.i, %bb.ao ] ; 5 uses
  %.0.i213.i = phi i32 [ %i.lw, %bb.ai ], [ %.2.i.i, %bb.ao ] ; 3 uses
  %i.ly = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !34
  %i.mb = sext i32 %i.ma to i64
  %i.mc = load double, ptr %i.ah, align 8, !tbaa !62
  %i.md = fcmp nsz ogt double %i.mc, 1.000000e+00
  %i.me = load i32, ptr %i.fg, align 4, !tbaa !48 ; 2 uses
  br i1 %i.md, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i = icmp ult i32 %.041.i.i, %i.me
  br i1 %.not.i.i.i, label %bb.al, label %draw_dot.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.mf = load i32, ptr %i.fi, align 8, !tbaa !49
  %.not57.i.i.i = icmp ult i32 %.039.i.i, %i.mf
  br i1 %.not57.i.i.i, label %bb.an, label %draw_dot.exit.i.i

bb.am:                                            ; preds = %bb.aj
  %i.mg = add nsw i32 %i.me, -1
  %..i.i.i = call i32 @llvm.umin.i32(i32 %.041.i.i, i32 %i.mg)
  %i.mh = load i32, ptr %i.fi, align 8, !tbaa !49
  %i.mi = add nsw i32 %i.mh, -1
  %i.mj = call i32 @llvm.umin.i32(i32 %.039.i.i, i32 %i.mi)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.045.i.i.i = phi i32 [ %.041.i.i, %bb.al ], [ %..i.i.i, %bb.am ]
  %.0.i.i.i = phi i32 [ %.039.i.i, %bb.al ], [ %i.mj, %bb.am ]
  %i.mk = load ptr, ptr %i.ly, align 8, !tbaa !33
  %i.ml = zext i32 %.045.i.i.i to i64
  %i.mm = mul nsw i64 %i.ml, %i.mb
  %i.mn = getelementptr inbounds i8, ptr %i.mk, i64 %i.mm
  %i.mo = shl i32 %.0.i.i.i, 2
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mp ; 5 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !50
  %i.ms = zext i8 %i.mr to i32
  %i.mt = load i32, ptr %i.fj, align 4, !tbaa !34
  %i.mu = add nsw i32 %i.mt, %i.ms
  %.58.i.i.i = call i32 @llvm.smin.i32(i32 %i.mu, i32 255)
  %i.mv = trunc i32 %.58.i.i.i to i8
  store i8 %i.mv, ptr %i.mq, align 1, !tbaa !50
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mq, i64 1 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !50
  %i.my = zext i8 %i.mx to i32
  %i.mz = load i32, ptr %i.fk, align 8, !tbaa !34
  %i.na = add nsw i32 %i.mz, %i.my
  %i.nb = call i32 @llvm.smin.i32(i32 %i.na, i32 255)
  %i.nc = trunc i32 %i.nb to i8
  store i8 %i.nc, ptr %i.mw, align 1, !tbaa !50
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mq, i64 2 ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !50
  %i.nf = zext i8 %i.ne to i32
  %i.ng = load i32, ptr %i.fl, align 4, !tbaa !34
  %i.nh = add nsw i32 %i.ng, %i.nf
  %i.ni = call i32 @llvm.smin.i32(i32 %i.nh, i32 255)
  %i.nj = trunc i32 %i.ni to i8
  store i8 %i.nj, ptr %i.nd, align 1, !tbaa !50
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mq, i64 3 ; 2 uses
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !50
  %i.nm = zext i8 %i.nl to i32
  %i.nn = load i32, ptr %i.fm, align 8, !tbaa !34
  %i.no = add nsw i32 %i.nn, %i.nm
  %i.np = call i32 @llvm.smin.i32(i32 %i.no, i32 255)
  %i.nq = trunc i32 %i.np to i8
  store i8 %i.nq, ptr %i.nk, align 1, !tbaa !50
  br label %draw_dot.exit.i.i

draw_dot.exit.i.i:                                ; preds = %bb.an, %bb.al, %bb.ak
end_hunk_0
