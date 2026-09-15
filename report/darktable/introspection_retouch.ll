Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@process:bb.a
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
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i ; 14 uses
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fj = load i32, ptr %i.eq, align 64, !tbaa !264
  %i.fk = load i32, ptr %i.er, align 4, !tbaa !265
  call fastcc void @dt_ioppr_rgb_matrix_to_lab(ptr noundef %i.fi, ptr noundef %i.fi, ptr noundef %i.en, ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.fj, i32 noundef %i.fk)
  %.promoted.pre.i = load float, ptr %i.fi, align 16, !tbaa !12
  br label %bb.av

bb.aj:                                            ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !12 ; 4 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, f0x3E1283AB
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fn, 6.061690e-02
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fn, f0x3F36D410
  %7 = load <2 x float>, ptr %i.fi, align 16, !tbaa !12 ; 2 uses
  %i.fr = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fs = fmul reassoc nsz arcp contract afn <4 x float> %i.fr, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ft = fmul reassoc nsz arcp contract afn <4 x float> %8, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.fu = fadd reassoc nsz arcp contract afn <4 x float> %i.ft, %i.fs ; 4 uses
  %i.fv = extractelement <4 x float> %i.fu, i64 0
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, %i.fo ; 2 uses
  %i.fx = extractelement <4 x float> %i.fu, i64 1
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fx, %i.fp ; 3 uses
  %i.fz = extractelement <4 x float> %i.fu, i64 2
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fq ; 2 uses
  %i.gb = extractelement <4 x float> %i.fu, i64 3
  %i.gc = fadd reassoc nsz arcp contract afn float %i.gb, %i.fn
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fw, f0x3F84C0A6 ; 2 uses
  %i.ge = fcmp reassoc nsz arcp contract afn ogt float %i.gd, f0x3C111AA7
  br i1 %i.ge, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gf = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gd) #29
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.gg = fmul reassoc nsz arcp contract afn float %i.fw, f0x410137F7
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, f0x3E0D3DCB
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gi = phi reassoc nsz arcp contract afn float [ %i.gf, %bb.ak ], [ %i.gh, %bb.al ]
  %i.gj = fcmp reassoc nsz arcp contract afn ogt float %i.fy, f0x3C111AA7
  br i1 %i.gj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gk = fmul reassoc nsz arcp contract afn float %i.fy, f0x40F92F69
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, f0x3E0D3DCB
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gm = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.fy) #29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gn = phi reassoc nsz arcp contract afn float [ %i.gm, %bb.ao ], [ %i.gl, %bb.an ] ; 3 uses
  %i.go = fmul reassoc nsz arcp contract afn float %i.ga, f0x3F9B2B9B ; 2 uses
  %i.gp = fcmp reassoc nsz arcp contract afn ogt float %i.go, f0x3C111AA7
  br i1 %i.gp, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gq = fmul reassoc nsz arcp contract afn float %i.ga, f0x41170A26
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, f0x3E0D3DCB
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gs = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.go) #29
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gt = phi reassoc nsz arcp contract afn float [ %i.gs, %bb.ar ], [ %i.gr, %bb.aq ]
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gc, 0.000000e+00 ; 3 uses
  %i.gv = fcmp reassoc nsz arcp contract afn ogt float %i.gu, f0x3C111AA7
  br i1 %i.gv, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gw = fadd reassoc nsz arcp contract afn float %i.gu, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i

bb.au:                                            ; preds = %bb.as
  %i.gx = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gu) #29
  br label %dt_XYZ_to_Lab.exit.i

dt_XYZ_to_Lab.exit.i:                             ; preds = %bb.au, %bb.at
  %i.gy = phi reassoc nsz arcp contract afn float [ %i.gx, %bb.au ], [ %i.gw, %bb.at ]
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gn, 1.160000e+02
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gz, -1.600000e+01
  %i.hb = fsub reassoc nsz arcp contract afn float %i.gi, %i.gn
  %i.hc = fmul reassoc nsz arcp contract afn float %i.hb, 5.000000e+02
  store float %i.hc, ptr %i.fl, align 4, !tbaa !12
  %i.hd = fsub reassoc nsz arcp contract afn float %i.gt, %i.gn
  %i.he = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.gy, i64 1
  %i.hg = fmul reassoc nsz arcp contract afn <2 x float> %i.hf, <float -2.000000e+02, float 0.000000e+00>
  store <2 x float> %i.hg, ptr %i.fm, align 8, !tbaa !12
  br label %bb.av

bb.av:                                            ; preds = %dt_XYZ_to_Lab.exit.i, %bb.ai
  %.promoted.i = phi float [ %i.ha, %dt_XYZ_to_Lab.exit.i ], [ %.promoted.pre.i, %bb.ai ]
  %i.hh = fmul reassoc nsz arcp contract afn float %.promoted.i, f0x3C23D70A ; 2 uses
  %i.hi = fcmp reassoc nsz arcp contract afn ugt float %i.hh, %i.ea
  br i1 %i.hi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hj = fsub reassoc nsz arcp contract afn float %i.hh, %i.ea
  %i.hk = fmul reassoc nsz arcp contract afn float %i.hj, %i.fh
  %i.hl = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hk, float %i.el)
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, 1.000000e+02
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hn = phi float [ %i.hm, %bb.aw ], [ 0.000000e+00, %bb.av ] ; 2 uses
  store float %i.hn, ptr %i.fi, align 16, !tbaa !12
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, 8.620690e-03
  %i.hp = fadd reassoc nsz arcp contract afn float %i.ho, f0x3E0D3DCB ; 7 uses
  %i.hq = fcmp reassoc nsz arcp contract afn ogt float %i.hp, f0x3E53DCB1
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hp, %i.hp
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, %i.hp
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hp, f0x3E038026
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, f0xBC911AA6
  %i.hv = select reassoc nsz arcp contract afn i1 %i.hq, float %i.hs, float %i.hu ; 6 uses
  br i1 %.not.i, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hw = load i32, ptr %i.er, align 4, !tbaa !265
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.hy = load <2 x float>, ptr %i.hx, align 4, !tbaa !12
  %i.hz = fmul reassoc nsz arcp contract afn <2 x float> %i.hy, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.ia = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ic = fadd reassoc nsz arcp contract afn <2 x float> %i.ib, %i.hz
  %i.id = fsub reassoc nsz arcp contract afn <2 x float> %i.ib, %i.hz
  %i.ie = shufflevector <2 x float> %i.ic, <2 x float> %i.id, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.if = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ie, splat (float f0x3E53DCB1)
  %i.ig = fmul reassoc nsz arcp contract afn <2 x float> %i.ie, %i.ie
  %i.ih = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, %i.ie
  %i.ii = fmul reassoc nsz arcp contract afn <2 x float> %i.ie, splat (float f0x3E038026)
  %i.ij = fadd reassoc nsz arcp contract afn <2 x float> %i.ii, splat (float f0xBC911AA6)
  %i.ik = select <2 x i1> %i.if, <2 x float> %i.ih, <2 x float> %i.ij
  %i.il = fmul reassoc nsz arcp contract afn <2 x float> %i.ik, <float 9.642000e-01, float f0x3F532CA5> ; 4 uses
  %.not.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.im = load i32, ptr %i.eq, align 64, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.in = load <4 x float>, ptr %i.es, align 64, !tbaa !12
  %i.io = shufflevector <2 x float> %i.il, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ip = fmul reassoc nsz arcp contract afn <4 x float> %i.in, %i.io
  %i.iq = load <4 x float>, ptr %i.ev, align 16, !tbaa !12
  %i.ir = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = fmul reassoc nsz arcp contract afn <4 x float> %i.iq, %i.is
  %i.iu = fadd reassoc nsz arcp contract afn <4 x float> %i.it, %i.ip
  %i.iv = load <4 x float>, ptr %i.ew, align 32, !tbaa !12
  %i.iw = shufflevector <2 x float> %i.il, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ix = fmul reassoc nsz arcp contract afn <4 x float> %i.iv, %i.iw
  %i.iy = fadd reassoc nsz arcp contract afn <4 x float> %i.iu, %i.ix
  store <4 x float> %i.iy, ptr %i.a, align 16, !tbaa !12
  call fastcc void @dt_ioppr_apply_trc(ptr noundef %i.a, ptr noundef nonnull %i.fi, ptr noundef nonnull readonly %i.eu, ptr noundef nonnull readonly %i.et, i32 noundef %i.im)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.ja = load float, ptr %i.es, align 4, !tbaa !12
  %i.jb = extractelement <2 x float> %i.il, i64 0 ; 4 uses
  %i.jc = fmul reassoc nsz arcp contract afn float %i.ja, %i.jb
  %i.jd = load float, ptr %i.ev, align 4, !tbaa !12
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %i.hv
  %i.jf = fadd reassoc nsz arcp contract afn float %i.je, %i.jc
  %i.jg = load float, ptr %i.ew, align 4, !tbaa !12
  %i.jh = extractelement <2 x float> %i.il, i64 1 ; 4 uses
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jg, %i.jh
  %i.jj = fadd reassoc nsz arcp contract afn float %i.jf, %i.ji
  store float %i.jj, ptr %i.fi, align 16, !tbaa !12
  %i.jk = load float, ptr %i.ex, align 4, !tbaa !12
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jk, %i.jb
  %i.jm = load float, ptr %i.ey, align 4, !tbaa !12
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, %i.hv
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jn, %i.jl
  %i.jp = load float, ptr %i.ez, align 4, !tbaa !12
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, %i.jh
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jo, %i.jq
  store float %i.jr, ptr %i.hx, align 4, !tbaa !12
  %i.js = load float, ptr %i.fa, align 4, !tbaa !12
  %i.jt = fmul reassoc nsz arcp contract afn float %i.js, %i.jb
  %i.ju = load float, ptr %i.fb, align 4, !tbaa !12
  %i.jv = fmul reassoc nsz arcp contract afn float %i.ju, %i.hv
  %i.jw = fadd reassoc nsz arcp contract afn float %i.jv, %i.jt
  %i.jx = load float, ptr %i.fc, align 4, !tbaa !12
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, %i.jh
  %i.jz = fadd reassoc nsz arcp contract afn float %i.jw, %i.jy
  store float %i.jz, ptr %i.iz, align 8, !tbaa !12
  %i.ka = load float, ptr %i.fd, align 4, !tbaa !12
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, %i.jb
  %i.kc = load float, ptr %i.fe, align 4, !tbaa !12
  %i.kd = fmul reassoc nsz arcp contract afn float %i.kc, %i.hv
  %i.ke = fadd reassoc nsz arcp contract afn float %i.kd, %i.kb
  %i.kf = load float, ptr %i.ff, align 4, !tbaa !12
  %i.kg = fmul reassoc nsz arcp contract afn float %i.kf, %i.jh
  %i.kh = fadd reassoc nsz arcp contract afn float %i.ke, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store float %i.kh, ptr %i.ki, align 4, !tbaa !12
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

bb.bb:                                            ; preds = %bb.ax
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.kk = load <2 x float>, ptr %i.kj, align 4, !tbaa !12
  %i.kl = fmul reassoc nsz arcp contract afn <2 x float> %i.kk, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.km = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ko = fadd reassoc nsz arcp contract afn <2 x float> %i.kn, %i.kl
  %i.kp = fsub reassoc nsz arcp contract afn <2 x float> %i.kn, %i.kl
  %i.kq = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.kr = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.kq, splat (float f0x3E53DCB1)
  %i.ks = fmul reassoc nsz arcp contract afn <2 x float> %i.kq, %i.kq
  %i.kt = fmul reassoc nsz arcp contract afn <2 x float> %i.ks, %i.kq
end_hunk_0
begin_hunk_1_@_retouch_fill:bb.a
  store float %i.bw, ptr %gep.1, align 4, !tbaa !12
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8 ; 2 uses
  %i.bx = load float, ptr %gep.2, align 4, !tbaa !12 ; 2 uses
  %i.by = load float, ptr %i.q, align 4, !tbaa !12
  %i.bz = fsub reassoc nsz arcp contract afn float %i.by, %i.bx
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bm, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.bx
  store float %i.cb, ptr %gep.2, align 4, !tbaa !12
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12 ; 2 uses
  %i.cc = load float, ptr %gep.3, align 4, !tbaa !12 ; 2 uses
  %i.cd = load float, ptr %i.r, align 4, !tbaa !12
  %i.ce = fsub reassoc nsz arcp contract afn float %i.cd, %i.cc
  %i.cf = fmul reassoc nsz arcp contract afn float %i.bm, %i.ce
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.cc
  store float %i.cg, ptr %gep.3, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !384
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @rt_copy_mask_to_alpha(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, float noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !247  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph37, label %._crit_edge38.split

.lr.ph37:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !249  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !249
  %i.h = icmp sgt i32 %i.e, 0
  %i.i = sext i32 %2 to i64                       ; 5 uses
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge38.split

.lr.ph.preheader:                                 ; preds = %.lr.ph37
  %i.j = load <2 x i32>, ptr %4, align 4, !tbaa !13
  %i.k = load <2 x i32>, ptr %1, align 4, !tbaa !13
  %i.l = sub <2 x i32> %i.j, %i.k                 ; 2 uses
  %i.m = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.n = extractelement <2 x i32> %i.l, i64 0
  %i.o = extractelement <2 x i32> %i.l, i64 1
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.p = icmp ult i32 %i.e, 4
  %unroll_iter = and i32 %i.e, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod46 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph

._crit_edge38.split:                              ; preds = %._crit_edge, %.lr.ph37, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = mul nuw nsw i64 %indvars.iv, %i.m
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %i.o, %i.r
  %i.s = mul nsw i32 %.reass, %i.g
  %.reass40 = add i32 %i.s, %i.n
  %i.t = mul nsw i32 %.reass40, %2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.q ; 2 uses
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %bb.l
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.02733.epil.init = phi ptr [ %i.w, %.lr.ph ], [ %i.bf, %._crit_edge.unr-lcssa ]
  %.02832.epil.init = phi ptr [ %i.v, %.lr.ph ], [ %i.be, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.epil.preheader
  %.02733.epil = phi ptr [ %.02733.epil.init, %.epil.preheader ], [ %i.ad, %bb.d ] ; 2 uses
  %.02832.epil = phi ptr [ %.02832.epil.init, %.epil.preheader ], [ %i.ac, %bb.d ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.x = load float, ptr %.02733.epil, align 4, !tbaa !12
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02832.epil, i64 12 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = fcmp reassoc nsz arcp contract afn ogt float %i.y, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.y, ptr %i.z, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds [4 x i8], ptr %.02832.epil, i64 %i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.02733.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !389

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.unr-lcssa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond42.not, label %._crit_edge38.split, label %.lr.ph

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.l
  %.02733 = phi ptr [ %i.bf, %bb.l ], [ %i.w, %.lr.ph ] ; 5 uses
  %.02832 = phi ptr [ %i.be, %bb.l ], [ %i.v, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %bb.l ], [ 0, %.lr.ph ]
  %i.ae = load float, ptr %.02733, align 4, !tbaa !12
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02832, i64 12 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.new
  store float %i.af, ptr %i.ag, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.new
  %i.aj = getelementptr inbounds [4 x i8], ptr %.02832, i64 %i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02733, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.am, ptr %i.an, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02733, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !12
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.at, ptr %i.au, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02733, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %i.ba, ptr %i.bb, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02733, i64 16 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph.new
}

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @dt_heal(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gaussian_blur_4c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bilateral_init(i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #3

declare void @dt_ioppr_transform_image_colorspace(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @image_rgb2lab(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %dt_XYZ_to_Lab.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %dt_XYZ_to_Lab.exit
  %.08 = phi i64 [ %i.ba, %dt_XYZ_to_Lab.exit ], [ 0, %bb.a ] ; 2 uses
  %.idx = shl i64 %.08, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !12 ; 4 uses
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, f0x3E1283AB
  %i.h = fmul reassoc nsz arcp contract afn float %i.f, 6.061690e-02
  %i.i = fmul reassoc nsz arcp contract afn float %i.f, f0x3F36D410
  %3 = load <2 x float>, ptr %i.d, align 4, !tbaa !12 ; 2 uses
  %i.j = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> zeroinitializer
  %i.k = fmul reassoc nsz arcp contract afn <4 x float> %i.j, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.l = fmul reassoc nsz arcp contract afn <4 x float> %4, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.m = fadd reassoc nsz arcp contract afn <4 x float> %i.l, %i.k ; 4 uses
  %i.n = extractelement <4 x float> %i.m, i64 0
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.g ; 2 uses
  %i.p = extractelement <4 x float> %i.m, i64 1
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, %i.h ; 3 uses
  %i.r = extractelement <4 x float> %i.m, i64 2
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.i ; 2 uses
  %i.t = extractelement <4 x float> %i.m, i64 3
  %i.u = fadd reassoc nsz arcp contract afn float %i.t, %i.f
  %i.v = fmul reassoc nsz arcp contract afn float %i.o, f0x3F84C0A6 ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, f0x3C111AA7
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.x = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.v) #29
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.y = fmul reassoc nsz arcp contract afn float %i.o, f0x410137F7
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, f0x3E0D3DCB
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi reassoc nsz arcp contract afn float [ %i.x, %bb.b ], [ %i.z, %bb.c ]
  %i.ab = fcmp reassoc nsz arcp contract afn ogt float %i.q, f0x3C111AA7
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = fmul reassoc nsz arcp contract afn float %i.q, f0x40F92F69
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, f0x3E0D3DCB
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.q) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi reassoc nsz arcp contract afn float [ %i.ae, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.s, f0x3F9B2B9B ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, f0x3C111AA7
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = fmul reassoc nsz arcp contract afn float %i.s, f0x41170A26
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, f0x3E0D3DCB
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ag) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi reassoc nsz arcp contract afn float [ %i.ak, %bb.i ], [ %i.aj, %bb.h ]
  %i.am = fmul reassoc nsz arcp contract afn float %i.u, 0.000000e+00 ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, f0x3C111AA7
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = fadd reassoc nsz arcp contract afn float %i.am, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.am) #29
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.k, %bb.l
  %i.aq = phi reassoc nsz arcp contract afn float [ %i.ap, %bb.l ], [ %i.ao, %bb.k ]
  %i.ar = fmul reassoc nsz arcp contract afn float %i.af, 1.160000e+02
  %i.as = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.aa, i64 1
  %i.au = insertelement <4 x float> %i.at, float %i.al, i64 2
  %i.av = insertelement <4 x float> %i.au, float %i.aq, i64 3
  %i.aw = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.af, i64 1
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ay = fsub reassoc nsz arcp contract afn <4 x float> %i.av, %i.ax
  %i.az = fmul reassoc nsz arcp contract afn <4 x float> %i.ay, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.az, ptr %i.d, align 4, !tbaa !12
  %i.ba = add nuw i64 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

declare void @dt_bilateral_splat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_blur(ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_slice(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bilateral_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @image_lab2rgb(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 9
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.ph

.lr.ph.preheader20:                               ; preds = %vector.body, %.lr.ph.preheader
  %.017.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.d = and i64 %i.c, 7                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 8, i64 %i.d
  %n.vec = sub i64 %i.c, %i.f                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec18 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec19 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec18, splat (float 2.000000e-03)
  %i.j = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 8.620690e-03)
  %i.k = fadd reassoc nsz arcp contract afn <8 x float> %i.j, splat (float f0x3E0D3DCB) ; 7 uses
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec19, splat (float 5.000000e-03)
  %i.m = fadd reassoc nsz arcp contract afn <8 x float> %i.k, %i.i ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.m, splat (float f0x3E53DCB1)
  %i.o = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %i.m
  %i.p = fmul reassoc nsz arcp contract afn <8 x float> %i.o, %i.m
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.m, splat (float f0x3E038026)
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %i.q, splat (float f0xBC911AA6)
  %i.s = select reassoc nsz arcp contract afn <8 x i1> %i.n, <8 x float> %i.p, <8 x float> %i.r ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.k, splat (float f0x3E53DCB1)
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %i.k, %i.k
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %i.u, %i.k
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.k, splat (float f0x3E038026)
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %i.w, splat (float f0xBC911AA6)
  %i.y = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> %i.v, <8 x float> %i.x ; 3 uses
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> %i.k, %i.l ; 5 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.z, splat (float f0x3E53DCB1)
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %i.z
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %i.z
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.z, splat (float f0x3E038026)
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, splat (float f0xBC911AA6)
  %i.af = select reassoc nsz arcp contract afn <8 x i1> %i.aa, <8 x float> %i.ac, <8 x float> %i.ae ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.s, splat (float 9.642000e-01)
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float f0x3F532CA5)
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.s, splat (float f0x3D8E11AE)
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.y, splat (float f0xBE6A7CB9)
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float f0x3F94602A)
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.ak, %i.al
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %i.ag
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.an, %i.ah
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, zeroinitializer
  %i.aq = shufflevector <8 x float> %i.s, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ar = fmul reassoc nsz arcp contract afn <16 x float> %i.aq, <float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831>
  %i.as = shufflevector <8 x float> %i.y, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.at = fmul reassoc nsz arcp contract afn <16 x float> %i.as, <float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420>
  %i.au = fadd reassoc nsz arcp contract afn <16 x float> %i.ar, %i.at
  %i.av = shufflevector <8 x float> %i.af, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = fmul reassoc nsz arcp contract afn <16 x float> %i.av, <float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F>
  %i.ax = fadd reassoc nsz arcp contract afn <16 x float> %i.au, %i.aw
  %i.ay = shufflevector <8 x float> %i.am, <8 x float> %i.ap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ax, <16 x float> %i.ay, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.h, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %.lr.ph.preheader20, label %vector.body, !llvm.loop !390

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %.017 = phi i64 [ %i.cs, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader20 ] ; 2 uses
  %.idx = shl i64 %.017, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bc, 2.000000e-03
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bd, 8.620690e-03
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, f0x3E0D3DCB ; 4 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bf, 5.000000e-03
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bi, %i.bg ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bi, %i.bj
  %i.bm = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1 ; 5 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, splat (float f0x3E53DCB1)
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bn
  %i.bq = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bk, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bl, i64 3 ; 4 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn <4 x float> %i.bs, %i.bs
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bn
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, splat (float f0x3E038026)
  %i.bx = fmul reassoc nsz arcp contract afn <4 x float> %i.bt, splat (float f0x3E038026)
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.bw, splat (float f0xBC911AA6)
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bt, splat (float f0x3E53DCB1)
  %i.ca = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, %i.bs
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.cc = fadd reassoc nsz arcp contract afn <4 x float> %i.bx, splat (float f0xBC911AA6)
  %i.cd = select <2 x i1> %i.bo, <2 x float> %i.bv, <2 x float> %i.by
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.cf = select <4 x i1> %i.bz, <4 x float> %i.cb, <4 x float> %i.cc ; 2 uses
  %i.cg = shufflevector <4 x float> <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float poison>, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.cg, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, <float f0xBFCEF57D, float f0xBF719831, float f0xBE6A7CB9, float f0x3F532CA5>
  %i.cj = shufflevector <4 x float> %i.cf, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, %i.ch
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %i.ce, %i.ch
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.ci ; 2 uses
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.cr, ptr %i.ba, align 4, !tbaa !12
  %i.cs = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !391
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_rgb_matrix_to_lab(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #23 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call fastcc void @dt_ioppr_apply_trc(ptr noundef nonnull readonly %0, ptr noundef %i.a, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4, i32 noundef %5)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !12
  %i.g = load <4 x float>, ptr %i.a, align 16
  %i.h = load float, ptr %i.c, align 4, !tbaa !12
  %i.i = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.j = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = fmul reassoc nsz arcp contract afn <4 x float> %i.i, %i.j
  %i.l = load <4 x float>, ptr %i.b, align 4, !tbaa !12
  %i.m = insertelement <4 x float> poison, float %i.h, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <4 x float> %i.l, %i.n
  %i.p = fadd reassoc nsz arcp contract afn <4 x float> %i.o, %i.k
  %i.q = load <4 x float>, ptr %i.d, align 4, !tbaa !12
  %i.r = insertelement <4 x float> poison, float %i.f, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = fmul reassoc nsz arcp contract afn <4 x float> %i.q, %i.s
  %i.u = fadd reassoc nsz arcp contract afn <4 x float> %i.p, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !12
  %i.aa = load float, ptr %0, align 4, !tbaa !12
  %i.ab = load float, ptr %i.w, align 4, !tbaa !12
  %i.ac = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.ad = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = fmul reassoc nsz arcp contract afn <4 x float> %i.ac, %i.ae
  %i.ag = load <4 x float>, ptr %i.v, align 4, !tbaa !12
  %i.ah = insertelement <4 x float> poison, float %i.ab, i64 0
end_hunk_1
