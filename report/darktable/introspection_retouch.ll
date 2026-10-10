Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@process:bb.a
  %bc.resume.val = phi i64 [ %i.bz, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec199 = and i64 %i.bx, 9223372036854775804  ; 3 uses
  %i.cb = shl i64 %n.vec199, 2
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i64> %broadcast.splat, <i64 0, i64 4, i64 8, i64 12>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index200 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next204, %vec.epilog.vector.body ]
  %vec.ind201 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next205, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep202 = getelementptr inbounds nuw [4 x i8], ptr %i.x, <4 x i64> %vec.ind201
  %wide.gep203 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep202, i64 12
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %wide.gep203, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next204 = add nuw i64 %index200, 4       ; 2 uses
  %vec.ind.next205 = add nuw <4 x i64> %vec.ind201, splat (i64 16)
  %i.cc = icmp eq i64 %index.next204, %n.vec199
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !319

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n206 = icmp eq i64 %i.bx, %n.vec199
  br i1 %cmp.n206, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0112171.ph = phi i64 [ 0, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.cd = load i32, ptr %i.bm, align 4, !tbaa !189
  %.not125 = icmp eq i32 %i.cd, 0
  %i.ce = select i1 %.not125, i32 128, i32 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 628
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !330
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre, i64 632
  store i32 1, ptr %i.cg, align 8, !tbaa !331
  store i32 1, ptr %i.ab, align 8, !tbaa !255
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0112171 = phi i64 [ %i.cj, %.lr.ph ], [ %.0112171.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0112171
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !12
  %i.cj = add nuw i64 %.0112171, 4                ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.v
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !320

bb.r:                                             ; preds = %bb.o, %._crit_edge, %bb.q, %bb.p, %bb.n
  %i.cl = phi ptr [ %i.bi, %bb.o ], [ %.pre, %._crit_edge ], [ %.pre, %bb.q ], [ %.pre, %bb.p ], [ %i.bi, %bb.n ]
  %i.cm = getelementptr i8, ptr %i.cl, i64 644
  %.val133 = load i32, ptr %i.cm, align 4, !tbaa !328
  %i.cn = and i32 %.val133, 2
  %.not126 = icmp eq i32 %i.cn, 0
  br i1 %.not126, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = call i32 @dt_iop_has_focus(ptr noundef nonnull %0) #27
  %.not127 = icmp eq i32 %i.co, 0
  br i1 %.not127, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = call i32 @dwt_get_max_scale(ptr noundef nonnull %i.bf) #27 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !261
  %i.cs = icmp sgt i32 %i.cr, %i.cp
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ct = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #27
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ct, i32 noundef %i.cp) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  br i1 %i.k, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cu = call i32 @dt_dwt_first_scale_visible(ptr noundef nonnull %i.bf) #27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !214
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.r
  call void @dwt_decompose(ptr noundef nonnull %i.bf, ptr noundef nonnull @rt_process_forms) #27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 13216
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cy = load <2 x float>, ptr %i.cw, align 4, !tbaa !12
  store <2 x float> %i.cy, ptr %i.b, align 16, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 13224
  %i.db = load float, ptr %i.da, align 4, !tbaa !12
  store float %i.db, ptr %i.cz, align 8, !tbaa !12
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %.ptr, align 4, !tbaa !12
  br i1 %i.k, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.dc = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.dd = getelementptr i8, ptr %i.dc, i64 644
  %.val = load i32, ptr %i.dd, align 4, !tbaa !328
  %i.de = and i32 %.val, 2
  %.not130 = icmp eq i32 %i.de, 0
  br i1 %.not130, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.dg = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.df) #27 ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !215
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !116
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  %i.dm = load atomic i32, ptr %i.dl seq_cst, align 4
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 -1, ptr %i.dh, align 4, !tbaa !215
  %i.do = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.df) #27 ; 0 uses
  store float 0.000000e+00, ptr %i.cz, align 8, !tbaa !12
  store <2 x float> zeroinitializer, ptr %i.b, align 16, !tbaa !12
  %.val136 = load ptr, ptr %i.bh, align 8, !tbaa !243
  call fastcc void @rt_process_stats(ptr %.val136, ptr noundef %i.x, i32 noundef %i.q, i32 noundef %i.t, ptr noundef %i.b)
  call fastcc void @rt_clamp_minmax(ptr noundef %i.b, ptr noundef %i.b)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dp, ptr noundef nonnull align 16 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa !12
  %i.dq = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.df) #27 ; 0 uses
  store i32 2, ptr %i.dh, align 4, !tbaa !215
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dr = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.df) #27 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y, %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !262 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %bb.ae, label %rt_adjust_levels.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !261
  %.not131 = icmp sgt i32 %i.dt, %i.dw
  br i1 %.not131, label %rt_adjust_levels.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val137 = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.dx = shl i32 %i.q, 2
  %i.dy = mul i32 %i.dx, %i.t                     ; 2 uses
  %i.dz = call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %.val137) #27 ; 20 uses
  %i.ea = load float, ptr %i.b, align 16, !tbaa !12 ; 5 uses
  %i.eb = load float, ptr %i.cx, align 4, !tbaa !12 ; 2 uses
  %i.ec = load float, ptr %i.cz, align 8, !tbaa !12 ; 2 uses
  %i.ed = fcmp reassoc nsz arcp contract afn oeq float %i.ea, -3.000000e+00
  %i.ee = fcmp reassoc nsz arcp contract afn oeq float %i.eb, 0.000000e+00
  %or.cond.i = select i1 %i.ed, i1 %i.ee, i1 false
  %i.ef = fcmp reassoc nsz arcp contract afn oeq float %i.ec, 3.000000e+00
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ef, i1 false
  br i1 %or.cond3.i, label %rt_adjust_levels.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = fsub reassoc nsz arcp contract afn float %i.ec, %i.ea ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, 5.000000e-01 ; 2 uses
  %i.ei = fadd reassoc nsz arcp contract afn float %i.ea, %i.eh
  %i.ej = fsub reassoc nsz arcp contract afn float %i.eb, %i.ei
  %i.ek = fdiv reassoc nsz arcp contract afn float %i.ej, %i.eh
  %i.el = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.000000e+01, float %i.ek)
  %i.em = icmp sgt i32 %i.dy, 0
  br i1 %i.em, label %.lr.ph.i, label %rt_adjust_levels.exit

.lr.ph.i:                                         ; preds = %bb.ag
  %.not.i = icmp eq ptr %i.dz, null               ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 896
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 712
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 768
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 704 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 852 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 960 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dz, i64 816
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dz, i64 736
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 976 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dz, i64 992 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 964
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dz, i64 980
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 996
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dz, i64 968
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dz, i64 984
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dz, i64 1000
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dz, i64 972
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dz, i64 988
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dz, i64 1004
  %i.fg = zext nneg i32 %i.dy to i64
  %i.fh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eg
  br label %bb.ah

bb.ah:                                            ; preds = %dt_ioppr_lab_to_rgb_matrix.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %dt_ioppr_lab_to_rgb_matrix.exit.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i ; 15 uses
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fj = load i32, ptr %i.eq, align 64, !tbaa !264
  %i.fk = load i32, ptr %i.er, align 4, !tbaa !265
  call fastcc void @dt_ioppr_rgb_matrix_to_lab(ptr noundef %i.fi, ptr noundef %i.fi, ptr noundef %i.en, ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.fj, i32 noundef %i.fk)
  %.promoted.pre.i = load float, ptr %i.fi, align 16, !tbaa !12
  br label %bb.av

bb.aj:                                            ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !12 ; 4 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, f0x3E1283AB
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fn, 6.061690e-02
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fn, f0x3F36D410
  %i.fr = load float, ptr %i.fi, align 16, !tbaa !12
  %i.fs = load float, ptr %i.fl, align 4, !tbaa !12
  %i.ft = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %i.fu, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.fw = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fy = fmul reassoc nsz arcp contract afn <4 x float> %i.fx, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.fz = fadd reassoc nsz arcp contract afn <4 x float> %i.fy, %i.fv ; 4 uses
  %i.ga = extractelement <4 x float> %i.fz, i64 0
  %i.gb = fadd reassoc nsz arcp contract afn float %i.ga, %i.fo ; 2 uses
  %i.gc = extractelement <4 x float> %i.fz, i64 1
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.fp ; 3 uses
  %i.ge = extractelement <4 x float> %i.fz, i64 2
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.fq ; 2 uses
  %i.gg = extractelement <4 x float> %i.fz, i64 3
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, %i.fn
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gb, f0x3F84C0A6 ; 2 uses
  %i.gj = fcmp reassoc nsz arcp contract afn ogt float %i.gi, f0x3C111AA7
  br i1 %i.gj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gk = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gi) #29
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gb, f0x410137F7
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gl, f0x3E0D3DCB
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gn = phi reassoc nsz arcp contract afn float [ %i.gk, %bb.ak ], [ %i.gm, %bb.al ]
  %i.go = fcmp reassoc nsz arcp contract afn ogt float %i.gd, f0x3C111AA7
  br i1 %i.go, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = fmul reassoc nsz arcp contract afn float %i.gd, f0x40F92F69
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gp, f0x3E0D3DCB
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gr = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gd) #29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gs = phi reassoc nsz arcp contract afn float [ %i.gr, %bb.ao ], [ %i.gq, %bb.an ] ; 2 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gf, f0x3F9B2B9B ; 2 uses
  %i.gu = fcmp reassoc nsz arcp contract afn ogt float %i.gt, f0x3C111AA7
  br i1 %i.gu, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gf, f0x41170A26
  %i.gw = fadd reassoc nsz arcp contract afn float %i.gv, f0x3E0D3DCB
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gx = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gt) #29
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gy = phi reassoc nsz arcp contract afn float [ %i.gx, %bb.ar ], [ %i.gw, %bb.aq ]
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gh, 0.000000e+00 ; 3 uses
  %i.ha = fcmp reassoc nsz arcp contract afn ogt float %i.gz, f0x3C111AA7
  br i1 %i.ha, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hb = fadd reassoc nsz arcp contract afn float %i.gz, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i

bb.au:                                            ; preds = %bb.as
  %i.hc = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gz) #29
  br label %dt_XYZ_to_Lab.exit.i

dt_XYZ_to_Lab.exit.i:                             ; preds = %bb.au, %bb.at
  %i.hd = phi reassoc nsz arcp contract afn float [ %i.hc, %bb.au ], [ %i.hb, %bb.at ]
  %i.he = fmul reassoc nsz arcp contract afn float %i.gs, 1.160000e+02
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, -1.600000e+01
  %7 = insertelement <2 x float> poison, float %i.gn, i64 0
  %8 = insertelement <2 x float> %7, float %i.gy, i64 1
  %9 = insertelement <2 x float> poison, float %i.gs, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fsub reassoc nsz arcp contract afn <2 x float> %8, %10
  %12 = fmul reassoc nsz arcp contract afn <2 x float> %11, <float 5.000000e+02, float -2.000000e+02>
  store <2 x float> %12, ptr %i.fl, align 4, !tbaa !12
  %13 = fmul reassoc nsz arcp contract afn float %i.hd, 0.000000e+00
  %14 = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store float %13, ptr %14, align 4, !tbaa !12
  br label %bb.av

bb.av:                                            ; preds = %dt_XYZ_to_Lab.exit.i, %bb.ai
  %.promoted.i = phi float [ %i.hf, %dt_XYZ_to_Lab.exit.i ], [ %.promoted.pre.i, %bb.ai ]
  %i.hg = fmul reassoc nsz arcp contract afn float %.promoted.i, f0x3C23D70A ; 2 uses
  %i.hh = fcmp reassoc nsz arcp contract afn ugt float %i.hg, %i.ea
  br i1 %i.hh, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hi = fsub reassoc nsz arcp contract afn float %i.hg, %i.ea
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, %i.fh
  %i.hk = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hj, float %i.el)
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, 1.000000e+02
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hm = phi float [ %i.hl, %bb.aw ], [ 0.000000e+00, %bb.av ] ; 2 uses
  store float %i.hm, ptr %i.fi, align 16, !tbaa !12
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, 8.620690e-03
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hn, f0x3E0D3DCB ; 7 uses
  %i.hp = fcmp reassoc nsz arcp contract afn ogt float %i.ho, f0x3E53DCB1
  %i.hq = fmul reassoc nsz arcp contract afn float %i.ho, %i.ho
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, %i.ho
  %i.hs = fmul reassoc nsz arcp contract afn float %i.ho, f0x3E038026
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, f0xBC911AA6
  %i.hu = select reassoc nsz arcp contract afn i1 %i.hp, float %i.hr, float %i.ht ; 6 uses
  br i1 %.not.i, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hv = load i32, ptr %i.er, align 4, !tbaa !265
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.hx = load <2 x float>, ptr %i.hw, align 4, !tbaa !12
  %i.hy = fmul reassoc nsz arcp contract afn <2 x float> %i.hx, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.hz = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ib = fadd reassoc nsz arcp contract afn <2 x float> %i.ia, %i.hy
  %i.ic = fsub reassoc nsz arcp contract afn <2 x float> %i.ia, %i.hy
  %i.id = shufflevector <2 x float> %i.ib, <2 x float> %i.ic, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ie = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.id, splat (float f0x3E53DCB1)
  %i.if = fmul reassoc nsz arcp contract afn <2 x float> %i.id, %i.id
  %i.ig = fmul reassoc nsz arcp contract afn <2 x float> %i.if, %i.id
  %i.ih = fmul reassoc nsz arcp contract afn <2 x float> %i.id, splat (float f0x3E038026)
  %i.ii = fadd reassoc nsz arcp contract afn <2 x float> %i.ih, splat (float f0xBC911AA6)
  %i.ij = select <2 x i1> %i.ie, <2 x float> %i.ig, <2 x float> %i.ii
  %i.ik = fmul reassoc nsz arcp contract afn <2 x float> %i.ij, <float 9.642000e-01, float f0x3F532CA5> ; 4 uses
  %.not.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.il = load i32, ptr %i.eq, align 64, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.im = load <4 x float>, ptr %i.es, align 64, !tbaa !12
  %i.in = shufflevector <2 x float> %i.ik, <2 x float> poison, <4 x i32> zeroinitializer
  %i.io = fmul reassoc nsz arcp contract afn <4 x float> %i.im, %i.in
  %i.ip = load <4 x float>, ptr %i.ev, align 16, !tbaa !12
  %i.iq = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = fmul reassoc nsz arcp contract afn <4 x float> %i.ip, %i.ir
  %i.it = fadd reassoc nsz arcp contract afn <4 x float> %i.is, %i.io
  %i.iu = load <4 x float>, ptr %i.ew, align 32, !tbaa !12
  %i.iv = shufflevector <2 x float> %i.ik, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iw = fmul reassoc nsz arcp contract afn <4 x float> %i.iu, %i.iv
  %i.ix = fadd reassoc nsz arcp contract afn <4 x float> %i.it, %i.iw
  store <4 x float> %i.ix, ptr %i.a, align 16, !tbaa !12
  call fastcc void @dt_ioppr_apply_trc(ptr noundef %i.a, ptr noundef nonnull %i.fi, ptr noundef nonnull readonly %i.eu, ptr noundef nonnull readonly %i.et, i32 noundef %i.il)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.iz = load float, ptr %i.es, align 4, !tbaa !12
  %i.ja = extractelement <2 x float> %i.ik, i64 0 ; 4 uses
  %i.jb = fmul reassoc nsz arcp contract afn float %i.iz, %i.ja
  %i.jc = load float, ptr %i.ev, align 4, !tbaa !12
  %i.jd = fmul reassoc nsz arcp contract afn float %i.jc, %i.hu
  %i.je = fadd reassoc nsz arcp contract afn float %i.jd, %i.jb
  %i.jf = load float, ptr %i.ew, align 4, !tbaa !12
  %i.jg = extractelement <2 x float> %i.ik, i64 1 ; 4 uses
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jf, %i.jg
  %i.ji = fadd reassoc nsz arcp contract afn float %i.je, %i.jh
  store float %i.ji, ptr %i.fi, align 16, !tbaa !12
  %i.jj = load float, ptr %i.ex, align 4, !tbaa !12
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, %i.ja
  %i.jl = load float, ptr %i.ey, align 4, !tbaa !12
  %i.jm = fmul reassoc nsz arcp contract afn float %i.jl, %i.hu
  %i.jn = fadd reassoc nsz arcp contract afn float %i.jm, %i.jk
  %i.jo = load float, ptr %i.ez, align 4, !tbaa !12
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, %i.jg
  %i.jq = fadd reassoc nsz arcp contract afn float %i.jn, %i.jp
  store float %i.jq, ptr %i.hw, align 4, !tbaa !12
  %i.jr = load float, ptr %i.fa, align 4, !tbaa !12
  %i.js = fmul reassoc nsz arcp contract afn float %i.jr, %i.ja
  %i.jt = load float, ptr %i.fb, align 4, !tbaa !12
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, %i.hu
  %i.jv = fadd reassoc nsz arcp contract afn float %i.ju, %i.js
  %i.jw = load float, ptr %i.fc, align 4, !tbaa !12
  %i.jx = fmul reassoc nsz arcp contract afn float %i.jw, %i.jg
  %i.jy = fadd reassoc nsz arcp contract afn float %i.jv, %i.jx
  store float %i.jy, ptr %i.iy, align 8, !tbaa !12
  %i.jz = load float, ptr %i.fd, align 4, !tbaa !12
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.ja
  %i.kb = load float, ptr %i.fe, align 4, !tbaa !12
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, %i.hu
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %i.ka
  %i.ke = load float, ptr %i.ff, align 4, !tbaa !12
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ke, %i.jg
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kd, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store float %i.kg, ptr %i.kh, align 4, !tbaa !12
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

bb.bb:                                            ; preds = %bb.ax
  %i.ki = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.kj = load <2 x float>, ptr %i.ki, align 4, !tbaa !12
  %i.kk = fmul reassoc nsz arcp contract afn <2 x float> %i.kj, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.kl = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kn = fadd reassoc nsz arcp contract afn <2 x float> %i.km, %i.kk
  %i.ko = fsub reassoc nsz arcp contract afn <2 x float> %i.km, %i.kk
  %i.kp = shufflevector <2 x float> %i.kn, <2 x float> %i.ko, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.kq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.kp, splat (float f0x3E53DCB1)
  %i.kr = fmul reassoc nsz arcp contract afn <2 x float> %i.kp, %i.kp
  %i.ks = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, %i.kp
  %i.kt = fmul reassoc nsz arcp contract afn <2 x float> %i.kp, splat (float f0x3E038026)
  %i.ku = fadd reassoc nsz arcp contract afn <2 x float> %i.kt, splat (float f0xBC911AA6)
  %i.kv = select <2 x i1> %i.kq, <2 x float> %i.ks, <2 x float> %i.ku ; 2 uses
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kx = shufflevector <2 x float> %i.kv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ky = shufflevector <4 x float> <float f0xBFCEF57D, float f0x3FF54420, float f0xBE6A7CB9, float poison>, <4 x float> %i.kx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kz = fmul reassoc nsz arcp contract afn <4 x float> %i.ky, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.la = fmul reassoc nsz arcp contract afn <4 x float> %i.kw, <float f0x404162F2, float f0xBF719831, float f0x3D8E11AE, float f0x3F532CA5>
  %i.lb = shufflevector <4 x float> %i.kx, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.lc = fmul reassoc nsz arcp contract afn <4 x float> %i.lb, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.ld = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.le = shufflevector <4 x float> %i.ld, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lf = fmul reassoc nsz arcp contract afn <4 x float> %i.le, %i.kz
  %i.lg = fadd reassoc nsz arcp contract afn <4 x float> %i.le, %i.kz
  %i.lh = shufflevector <4 x float> %i.lf, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.li = fadd reassoc nsz arcp contract afn <4 x float> %i.lh, %i.la ; 2 uses
  %i.lj = fadd reassoc nsz arcp contract afn <4 x float> %i.li, %i.lc
  %i.lk = fmul reassoc nsz arcp contract afn <4 x float> %i.li, %i.lc
  %i.ll = shufflevector <4 x float> %i.lj, <4 x float> %i.lk, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ll, ptr %i.fi, align 16, !tbaa !12
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

dt_ioppr_lab_to_rgb_matrix.exit.i:                ; preds = %bb.bb, %bb.ba, %bb.az
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.lm = icmp samesign ult i64 %indvars.iv.next.i, %i.fg
  br i1 %i.lm, label %bb.ah, label %rt_adjust_levels.exit

rt_adjust_levels.exit:                            ; preds = %dt_ioppr_lab_to_rgb_matrix.exit.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.ln = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 628
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !330
  %i.lq = trunc i32 %i.lp to i1
  %or.cond5 = and i1 %i.k, %i.lq
  br i1 %or.cond5, label %bb.bc, label %dt_iop_alpha_copy.exit

bb.bc:                                            ; preds = %rt_adjust_levels.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !189
  %.not132 = icmp ne i32 %i.ls, 0
  %.not.i138 = icmp eq i64 %i.v, 0
  %or.cond167 = or i1 %.not.i138, %.not132
  br i1 %or.cond167, label %dt_iop_alpha_copy.exit, label %.lr.ph.i139.preheader

.lr.ph.i139.preheader:                            ; preds = %bb.bc
  %i.lt = call i64 @llvm.umax.i64(i64 %i.v, i64 7)
  %i.lu = add i64 %i.lt, -4                       ; 3 uses
  %i.lv = lshr i64 %i.lu, 2
  %i.lw = add nuw nsw i64 %i.lv, 1                ; 2 uses
  %min.iters.check211 = icmp ult i64 %i.lu, 96
  br i1 %min.iters.check211, label %.lr.ph.i139.preheader222, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i139.preheader
  %i.lx = getelementptr i8, ptr %i.x, i64 12
  %i.ly = shl i64 %i.lu, 2
  %i.lz = and i64 %i.ly, -16
  %i.ma = add i64 %i.lz, 16                       ; 2 uses
  %i.mb = getelementptr i8, ptr %i.x, i64 %i.ma
  %i.mc = getelementptr i8, ptr %2, i64 12
  %i.md = getelementptr i8, ptr %2, i64 %i.ma
  %bound0 = icmp ult ptr %i.lx, %i.md
  %bound1 = icmp ult ptr %i.mc, %i.mb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i139.preheader222, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck
  %i.me = and i64 %i.lw, 7                        ; 2 uses
  %i.mf = icmp eq i64 %i.me, 0
  %i.mg = select i1 %i.mf, i64 8, i64 %i.me
  %n.vec213 = sub nsw i64 %i.lw, %i.mg            ; 2 uses
  %i.mh = shl i64 %n.vec213, 2
  %i.mi = or disjoint i64 %i.mh, 3
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next218, %vector.body214 ] ; 2 uses
  %vec.ind216 = phi <8 x i64> [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %vector.ph212 ], [ %vec.ind.next219, %vector.body214 ] ; 2 uses
  %.idx = shl nuw i64 %index215, 4
end_hunk_0
