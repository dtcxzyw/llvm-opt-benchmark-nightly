inline.NumInlined: 103
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_vec_process:bb.a
  %i.ar = fpext reassoc nsz arcp contract afn float %i.jl to double ; 2 uses
  %i.as = extractelement <2 x float> %i.jo, i64 1
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 0, double noundef %i.aq, double noundef %i.ar, double noundef %i.at) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 1, double noundef %i.aq, double noundef %i.ar, double noundef %i.at) #18
  %i.au = extractelement <2 x float> %i.kq, i64 0
  %i.av = fpext reassoc nsz arcp contract afn float %i.au to double ; 2 uses
  %i.aw = fpext reassoc nsz arcp contract afn float %.sroa.5.2235.i to double ; 2 uses
  %i.ax = extractelement <2 x float> %i.kq, i64 1
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 2, double noundef %i.av, double noundef %i.aw, double noundef %i.ay) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 3, double noundef %i.av, double noundef %i.aw, double noundef %i.ay) #18
  tail call void @cairo_mesh_pattern_end_patch(ptr noundef %i.aa) #18
  %i.az = load i32, ptr %i.i, align 4, !tbaa !106 ; 5 uses
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.az to float ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ba, float noundef %i.ba) #19
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bd = fpext reassoc nsz arcp contract afn float %i.jr to double ; 3 uses
  %i.be = fdiv reassoc nsz arcp contract afn double %i.bd, %i.bc ; 2 uses
  call void @cairo_matrix_init_scale(ptr noundef nonnull %4, double noundef %i.be, double noundef %i.be) #18
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.az to double
  %i.bg = fmul reassoc nnan nsz arcp contract afn double %i.bf, -5.000000e-01 ; 2 uses
  call void @cairo_matrix_translate(ptr noundef nonnull %4, double noundef %i.bg, double noundef %i.bg) #18
  call void @cairo_pattern_set_matrix(ptr noundef %i.aa, ptr noundef nonnull %4) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !114
  %i.bj = call i32 @cairo_format_stride_for_width(i32 noundef 1, i32 noundef %i.az) #18
  %i.bk = call ptr @cairo_image_surface_create_for_data(ptr noundef %i.bi, i32 noundef 1, i32 noundef %i.az, i32 noundef %i.az, i32 noundef %i.bj) #18 ; 2 uses
  %i.bl = call ptr @cairo_create(ptr noundef %i.bk) #18 ; 4 uses
  call void @cairo_set_operator(ptr noundef %i.bl, i32 noundef 1) #18
  call void @cairo_set_source(ptr noundef %i.bl, ptr noundef %i.aa) #18
  call void @cairo_paint(ptr noundef %i.bl) #18
  call void @cairo_surface_destroy(ptr noundef %i.bk) #18
  call void @cairo_pattern_destroy(ptr noundef %i.aa) #18
  call void @cairo_destroy(ptr noundef %i.bl) #18
  %i.bm = load i32, ptr %i.m, align 4, !tbaa !108 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.preheader166.i, label %.loopexit.i

.preheader166.i:                                  ; preds = %bb.f
  %i.bo = fmul reassoc nsz arcp contract afn float %i.jr, f0x3E968904 ; 6 uses
  %i.bp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jr
  br label %bb.ak

.preheader169.i:                                  ; preds = %bb.g, %bb.e
  %.sroa.6222.0.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.jl, %bb.g ]
  %.sroa.5.0233.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %.sroa.5.2235.i, %bb.g ]
  %indvars.iv206.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next207.i, %bb.g ] ; 4 uses
  %.0139199.i = phi float [ 0.000000e+00, %bb.e ], [ %i.jr, %bb.g ]
  %i.bq = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.jo, %bb.g ]
  %i.br = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.kq, %bb.g ]
  %i.bs = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.kp, %bb.g ]
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 3 uses
  %i.bt = icmp eq i64 %indvars.iv.next207.i, 6    ; 2 uses
  %i.bu = select i1 %i.bt, i64 0, i64 %indvars.iv.next207.i
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr @__const._lib_histogram_vectorscope_bkgd.vertex_rgb, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr @__const._lib_histogram_vectorscope_bkgd.vertex_rgb, i64 %indvars.iv206.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load float, ptr %i.bx, align 8, !tbaa !113
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !113 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bv, align 16, !tbaa !113
  %i.cc = load <2 x float>, ptr %i.bw, align 16, !tbaa !113
  %i.cd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.by, i64 2
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ca, i64 2
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cj = fsub reassoc nsz arcp contract afn <4 x float> %i.cf, %i.ci
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float f0x3CAAAAAB, float f0x3CAAAAAB, float f0x3CAAAAAB, float 1.000000e+00>
  %i.cl = trunc nuw nsw i64 %indvars.iv206.i to i32 ; 2 uses
  %i.cm = uitofp nneg i32 %i.cl to float
  %i.cn = getelementptr inbounds nuw [384 x i8], ptr %i.ai, i64 %indvars.iv206.i
  %i.co = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ca, i64 2
  %i.cp = shufflevector <4 x float> %i.ch, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.h

bb.g:                                             ; preds = %.loopexit168.i
  br i1 %i.bt, label %bb.f, label %.preheader169.i

bb.h:                                             ; preds = %.loopexit168.i, %.preheader169.i
  %.sroa.6222.1.i = phi nsz float [ %.sroa.6222.0.i, %.preheader169.i ], [ %i.jl, %.loopexit168.i ] ; 2 uses
  %.sroa.5.1234.i = phi nsz float [ %.sroa.5.0233.i, %.preheader169.i ], [ %.sroa.5.2235.i, %.loopexit168.i ]
  %indvars.iv.i = phi i64 [ 0, %.preheader169.i ], [ %indvars.iv.next.i, %.loopexit168.i ] ; 3 uses
  %.1195.i = phi float [ %.0139199.i, %.preheader169.i ], [ %i.jr, %.loopexit168.i ] ; 2 uses
  %i.cq = phi <2 x float> [ %i.bq, %.preheader169.i ], [ %i.jo, %.loopexit168.i ] ; 3 uses
  %i.cr = phi <2 x float> [ %i.br, %.preheader169.i ], [ %i.kq, %.loopexit168.i ]
  %i.cs = phi <2 x double> [ %i.bs, %.preheader169.i ], [ %i.kp, %.loopexit168.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ct = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.cu = uitofp nneg i32 %i.ct to float          ; 2 uses
  %i.cv = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cu, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cx = fmul reassoc nsz arcp contract afn <4 x float> %i.cw, %i.ck
  %i.cy = fadd reassoc nsz arcp contract afn <4 x float> %i.cx, %i.cp ; 4 uses
  store <4 x float> %i.cy, ptr %i.a, align 16, !tbaa !113
  switch i32 %i.l, label %bb.y [
    i32 0, label %bb.i
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h
  %i.cz = load i32, ptr %i.af, align 64, !tbaa !115
  %i.da = load i32, ptr %i.ag, align 4, !tbaa !117
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i32 noundef %i.cz, i32 noundef %i.da)
  %.val.i = load <4 x float>, ptr %i.b, align 16  ; 6 uses
  %i.db = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x float> %i.db, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i.i = extractelement <4 x float> %i.db, i64 1 ; 5 uses
  %i.dc = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract4.i.i
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x float> %i.db, i64 2
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, %.sroa.0.8.vec.extract.i.i ; 3 uses
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.dd, 0.000000e+00 ; 2 uses
  %i.df = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %i.dd
  %i.dg = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, %i.dd
  %i.dh = select i1 %i.de, float %i.df, float 3.456700e-01 ; 2 uses
  %i.di = select i1 %i.de, float %i.dg, float 3.585000e-01 ; 2 uses
  %i.dj = fcmp reassoc nsz arcp contract afn ugt float %.sroa.0.4.vec.extract4.i.i, f0x3C111AA7
  %i.dk = extractelement <4 x float> %.val.i, i64 0
  br i1 %i.dj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dl = fmul reassoc nnan nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, f0x4461D2F8
  br label %dt_xyY_to_Luv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.dm = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %.sroa.0.4.vec.extract4.i.i) #19
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, 1.160000e+02
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, -1.600000e+01
  br label %dt_xyY_to_Luv.exit.i

dt_xyY_to_Luv.exit.i:                             ; preds = %bb.k, %bb.j
  %i.dp = phi reassoc nsz arcp contract afn float [ %i.dl, %bb.j ], [ %i.do, %bb.k ]
  %i.dq = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.di, i64 1
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dr, <float 4.000000e+00, float 9.000000e+00>
  %i.dt = fmul reassoc nsz arcp contract afn float %i.di, 1.200000e+01
  %i.du = fmul reassoc nsz arcp contract afn float %i.dh, 2.000000e+00
  %i.dv = fsub reassoc nsz arcp contract afn float %i.dt, %i.du
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, 3.000000e+00
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dp, 1.300000e+01
  %i.dy = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fdiv reassoc nsz arcp contract afn <2 x float> %i.ds, %i.dz
  %i.eb = fadd reassoc nsz arcp contract afn <2 x float> %i.ea, <float f0xBE562DD1, float f0xBEF9E502>
  %i.ec = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul reassoc nsz arcp contract afn <2 x float> %i.ed, %i.eb
  %i.ef = shufflevector <4 x float> %.val.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.eg = fmul reassoc nsz arcp contract afn <2 x float> %i.ef, <float f0x40489119, float f0xBE6A7CB9>
  %i.eh = shufflevector <4 x float> %.val.i, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ei = fmul reassoc nsz arcp contract afn <2 x float> %i.eh, <float f0xBFCEF57D, float 7.194530e-02>
  %i.ej = shufflevector <4 x float> %.val.i, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ek = fmul reassoc nsz arcp contract afn <2 x float> %i.ej, <float f0xBEFB31D6, float f0x3FB3DEFE>
  %i.el = fmul reassoc nsz arcp contract afn float %i.dk, f0xBF7A9091
  %i.em = shufflevector <4 x float> %.val.i, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.en = fmul reassoc nsz arcp contract afn <2 x float> %i.em, <float f0x3FF54420, float 3.345400e-02> ; 2 uses
  %i.eo = extractelement <2 x float> %i.en, i64 0
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.el
  %i.eq = extractelement <2 x float> %i.en, i64 1
  %i.er = fadd reassoc nsz arcp contract afn float %i.ep, %i.eq
  %i.es = fadd reassoc nsz arcp contract afn <2 x float> %i.ei, %i.eg
  %i.et = fadd reassoc nsz arcp contract afn <2 x float> %i.es, %i.ek
  br label %bb.y

bb.l:                                             ; preds = %bb.h
  %i.eu = load i32, ptr %i.af, align 64, !tbaa !115
  %i.ev = load i32, ptr %i.ag, align 4, !tbaa !117
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i32 noundef %i.eu, i32 noundef %i.ev)
  %i.ew = load float, ptr %i.ah, align 8, !tbaa !113 ; 5 uses
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, 6.316360e-02
  %.reass.i = fmul reassoc nsz arcp contract afn float %i.ew, f0x3C632A5F
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ew, f0x3FAA3A7C
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ew, 3.345400e-02
  %i.fa = load <2 x float>, ptr %i.b, align 16, !tbaa !113 ; 4 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0 ; 4 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, f0x3F74A0AB
  %i.fd = extractelement <2 x float> %i.fa, i64 1 ; 4 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, 2.303930e-02
  %i.ff = fsub reassoc nsz arcp contract afn float %i.fc, %i.fe
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %i.ex ; 2 uses
  %.reass181.i = fmul reassoc nsz arcp contract afn float %i.fb, f0xBC98F413
  %.reass182.i = fmul reassoc nsz arcp contract afn float %i.fd, f0x3F2AA3C6
  %i.fh = fadd reassoc nsz arcp contract afn float %.reass182.i, %.reass181.i
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %.reass.i
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fb, 1.229820e-02
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fd, 2.048300e-02
  %i.fl = fsub reassoc nsz arcp contract afn float %i.fj, %i.fk
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, %i.ey ; 4 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fg, 1.150000e+00
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fm, f0x3E199998
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fn, %i.fo ; 3 uses
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fg, f0x3EAE147A
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fi, %i.fq ; 3 uses
  %.reass185.i = fmul reassoc nsz arcp contract afn float %i.fp, f0x3ED45F51
  %.reass183.i = fmul reassoc nsz arcp contract afn float %i.fr, 5.799990e-01
  %.reass184.i = fmul reassoc nsz arcp contract afn float %i.fm, 1.464800e-02
  %5 = fadd reassoc nsz arcp contract afn float %.reass185.i, %.reass184.i
  %i.fs = fadd reassoc nsz arcp contract afn float %5, %.reass183.i
  %.reass188.i = fmul reassoc nsz arcp contract afn float %i.fp, -2.015100e-01
  %.reass186.i = fmul reassoc nsz arcp contract afn float %i.fr, f0x3F8F716D
  %.reass187.i = fmul reassoc nsz arcp contract afn float %i.fm, 5.310080e-02
  %6 = fadd reassoc nsz arcp contract afn float %.reass188.i, %.reass187.i
  %i.ft = fadd reassoc nsz arcp contract afn float %6, %.reass186.i
  %.reass191.i = fmul reassoc nsz arcp contract afn float %i.fp, -1.660080e-02
  %.reass189.i = fmul reassoc nsz arcp contract afn float %i.fr, 2.648000e-01
  %.reass190.i = fmul reassoc nsz arcp contract afn float %i.fm, f0x3F2B2180
  %i.fu = fadd reassoc nsz arcp contract afn float %.reass191.i, %.reass190.i
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, %.reass189.i
  %i.fw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fv, float 0.000000e+00)
  %7 = fmul reassoc nnan nsz arcp contract afn float %i.fw, f0x38D1B717
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %7, float f0x3E232000) ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, f0x4196D000
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, f0x3F560000
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fx, 1.868750e+01
  %i.gb = fadd reassoc nsz arcp contract afn float %i.ga, 1.000000e+00
  %i.gc = fdiv reassoc nsz arcp contract afn float %i.fz, %i.gb
  %i.gd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gc, float f0x430608CD)
  %8 = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.ge = insertelement <2 x float> %8, float %i.fs, i64 1
  %9 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ge, <2 x float> zeroinitializer)
  %10 = fmul reassoc nnan nsz arcp contract afn <2 x float> %9, splat (float f0x38D1B717)
  %i.gf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %10, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.gg = fmul reassoc nsz arcp contract afn <2 x float> %i.gf, splat (float f0x4196D000)
  %i.gh = fadd reassoc nsz arcp contract afn <2 x float> %i.gg, splat (float f0x3F560000)
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gf, splat (float 1.868750e+01)
  %i.gj = fadd reassoc nsz arcp contract afn <2 x float> %i.gi, splat (float 1.000000e+00)
  %i.gk = fdiv reassoc nsz arcp contract afn <2 x float> %i.gh, %i.gj
  %i.gl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.gk, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, <float f0xC0822279, float 1.990760e-01>
  %i.gn = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, <float f0x3F8C63E9, float 3.524000e+00>
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gp = fadd reassoc nsz arcp contract afn <2 x float> %i.gm, %i.go
  %i.gq = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul reassoc nsz arcp contract afn <2 x float> %i.gr, <float 5.427080e-01, float f0xBFA5DF3B>
  %i.gt = fadd reassoc nsz arcp contract afn <2 x float> %i.gp, %i.gs
  %i.gu = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, <float 7.194530e-02, float f0xBFCEF57D>
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gw = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, <float f0x40489119, float f0xBE6A7CB9>
  %i.gx = fadd reassoc nsz arcp contract afn <2 x float> %i.gv, %i.gw
  %i.gy = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fmul reassoc nsz arcp contract afn <2 x float> %i.gz, <float f0xBEFB31D6, float f0x3FB3DEFE>
  %i.hb = fmul reassoc nsz arcp contract afn float %i.fb, f0xBF7A9091
  %i.hc = fmul reassoc nsz arcp contract afn float %i.fd, f0x3FF54420
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hc, %i.hb
  %i.he = fadd reassoc nsz arcp contract afn float %i.hd, %i.ez
  %i.hf = fadd reassoc nsz arcp contract afn <2 x float> %i.gx, %i.ha
  br label %bb.y

bb.m:                                             ; preds = %bb.h
  %i.hg = load ptr, ptr %i.ab, align 64, !tbaa !118
  %i.hh = extractelement <4 x float> %i.cy, i64 0 ; 5 uses
  %i.hi = extractelement <4 x float> %i.cy, i64 1 ; 5 uses
  %i.hj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hh, float %i.hi)
  %i.hk = extractelement <4 x float> %i.cy, i64 2 ; 4 uses
  %i.hl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hj, float %i.hk)
  %i.hm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hh, float %i.hi)
  %i.hn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hm, float %i.hk) ; 14 uses
  %i.ho = fsub reassoc nsz arcp contract afn float %i.hn, %i.hl ; 5 uses
  %i.hp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hn)
  %i.hq = fcmp reassoc nsz arcp contract afn ogt float %i.hp, f0x358637BD
  %i.hr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ho)
  %i.hs = fcmp reassoc nsz arcp contract afn ogt float %i.hr, f0x358637BD
  %or.cond.i.i.i = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %dt_RGB_2_HSV.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ht = fdiv reassoc nsz arcp contract afn float %i.ho, %i.hn
  %i.hu = fcmp reassoc nsz arcp contract afn oeq float %i.hh, %i.hn
  br i1 %i.hu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hv = fsub reassoc nsz arcp contract afn float %i.hi, %i.hk
  %i.hw = fdiv reassoc nsz arcp contract afn float %i.hv, %i.ho
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.hx = fcmp reassoc nsz arcp contract afn oeq float %i.hi, %i.hn
  br i1 %i.hx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hy = fsub reassoc nsz arcp contract afn float %i.hk, %i.hh
  %i.hz = fdiv reassoc nsz arcp contract afn float %i.hy, %i.ho
  %i.ia = fadd reassoc nsz arcp contract afn float %i.hz, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ib = fsub reassoc nsz arcp contract afn float %i.hh, %i.hi
  %i.ic = fdiv reassoc nsz arcp contract afn float %i.ib, %i.ho
  %i.id = fadd reassoc nsz arcp contract afn float %i.ic, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

_dt_RGB_2_Hue.exit.i.i.i:                         ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i = phi nsz float [ %i.hw, %bb.o ], [ %i.ia, %bb.q ], [ %i.id, %bb.r ]
  %i.ie = fmul reassoc nsz arcp contract afn float %.0.i.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.if = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ie)
  %i.ig = fsub reassoc nsz arcp contract afn float %i.ie, %i.if
  br label %dt_RGB_2_HSV.exit.i.i

dt_RGB_2_HSV.exit.i.i:                            ; preds = %_dt_RGB_2_Hue.exit.i.i.i, %bb.m
  %.018.i.i.i = phi nsz float [ %i.ht, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %.0.i.i.i = phi nsz float [ %i.ig, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %i.ih = tail call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef 7, ptr noundef nonnull @dt_color_ryb_x_vtx, float noundef %.0.i.i.i, ptr noundef nonnull @rgb_y_vtx, ptr noundef %i.hg, i32 noundef 0) #18
  %i.ii = fmul reassoc nsz arcp contract afn float %.018.i.i.i, %i.hn ; 2 uses
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ih, 6.000000e+00 ; 2 uses
  %i.ik = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ij) ; 2 uses
  %i.il = fsub reassoc nsz arcp contract afn float %i.ij, %i.ik
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.ii ; 2 uses
  %i.in = fsub reassoc nsz arcp contract afn float %i.hn, %i.im ; 3 uses
  %i.io = fsub reassoc nsz arcp contract afn float %i.hn, %i.ii ; 7 uses
  %i.ip = fadd reassoc nsz arcp contract afn float %i.im, %i.io ; 3 uses
  %i.iq = fptoui float %i.ik to i64
  switch i64 %i.iq, label %bb.w [
    i64 0, label %_ryb2rgb.exit.i
    i64 1, label %bb.s
    i64 2, label %bb.t
    i64 3, label %bb.u
    i64 4, label %bb.v
  ]

bb.s:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

bb.t:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

bb.u:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

bb.v:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

bb.w:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

_ryb2rgb.exit.i:                                  ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %dt_RGB_2_HSV.exit.i.i
  %.sink54.i.i.i.i = phi float [ %i.in, %bb.s ], [ %i.io, %bb.u ], [ %i.hn, %bb.w ], [ %i.ip, %bb.v ], [ %i.io, %bb.t ], [ %i.hn, %dt_RGB_2_HSV.exit.i.i ]
  %.sink53.i.i.i.i = phi float [ %i.hn, %bb.s ], [ %i.in, %bb.u ], [ %i.io, %bb.w ], [ %i.io, %bb.v ], [ %i.hn, %bb.t ], [ %i.ip, %dt_RGB_2_HSV.exit.i.i ]
  %.sink.i.i.i.i = phi float [ %i.io, %bb.s ], [ %i.hn, %bb.u ], [ %i.in, %bb.w ], [ %i.hn, %bb.v ], [ %i.ip, %bb.t ], [ %i.io, %dt_RGB_2_HSV.exit.i.i ]
  %i.ir = fmul reassoc nnan nsz arcp contract afn float %i.cu, f0x3CAAAAAB
  %i.is = fadd reassoc nnan nsz arcp contract afn float %i.ir, %i.cm
  %i.it = fmul reassoc nnan nsz arcp contract afn float %i.is, f0x3F860A3A
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.it) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.iu = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.iv = insertelement <2 x float> %i.iu, float %sin.i, i64 1
  %i.iw = fpext <2 x float> %i.iv to <2 x double>
  %i.ix = fmul reassoc nsz arcp contract afn <2 x double> %i.iw, splat (double 1.000000e-02)
  %i.iy = fptrunc <2 x double> %i.ix to <2 x float>
  %i.iz = insertelement <2 x float> poison, float %.sink54.i.i.i.i, i64 0
  %i.ja = insertelement <2 x float> %i.iz, float %.sink.i.i.i.i, i64 1
  br label %bb.y

bb.x:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 292, ptr noundef nonnull @__FUNCTION__._lib_histogram_vectorscope_bkgd) #18
  unreachable

bb.y:                                             ; preds = %_ryb2rgb.exit.i, %bb.l, %dt_xyY_to_Luv.exit.i, %bb.h
  %.sroa.12.2.i = phi nsz float [ %.sroa.6222.1.i, %bb.h ], [ %i.er, %dt_xyY_to_Luv.exit.i ], [ %i.he, %bb.l ], [ %.sink53.i.i.i.i, %_ryb2rgb.exit.i ] ; 3 uses
  %i.jb = phi <2 x float> [ zeroinitializer, %bb.h ], [ %i.ee, %dt_xyY_to_Luv.exit.i ], [ %i.gt, %bb.l ], [ %i.iy, %_ryb2rgb.exit.i ] ; 4 uses
  %i.jc = phi <2 x float> [ %i.cq, %bb.h ], [ %i.et, %dt_xyY_to_Luv.exit.i ], [ %i.hf, %bb.l ], [ %i.ja, %_ryb2rgb.exit.i ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.je = extractelement <2 x float> %i.jb, i64 0 ; 3 uses
  %i.jf = extractelement <2 x float> %i.jb, i64 1 ; 3 uses
  store <2 x float> %i.jb, ptr %i.jd, align 8, !tbaa !113
  %i.jg = extractelement <2 x float> %i.jc, i64 0 ; 2 uses
  %i.jh = fcmp reassoc nsz arcp contract afn ogt float %i.jg, %.sroa.12.2.i
  %i.ji = select reassoc nsz arcp contract afn i1 %i.jh, float %i.jg, float %.sroa.12.2.i ; 2 uses
  %i.jj = extractelement <2 x float> %i.jc, i64 1 ; 2 uses
  %i.jk = fcmp reassoc nsz arcp contract afn ogt float %i.ji, %i.jj
  %..i = select reassoc nsz arcp contract afn i1 %i.jk, float %i.ji, float %i.jj ; 2 uses
  %i.jl = fdiv reassoc nsz arcp contract afn float %.sroa.12.2.i, %..i ; 5 uses
  %i.jm = insertelement <2 x float> poison, float %..i, i64 0
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fdiv reassoc nsz arcp contract afn <2 x float> %i.jc, %i.jn ; 7 uses
  %i.jp = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.je, float noundef %i.jf) #19 ; 4 uses
  %i.jq = fcmp reassoc nsz arcp contract afn ogt float %.1195.i, %i.jp
  %i.jr = select reassoc nsz arcp contract afn i1 %i.jq, float %.1195.i, float %i.jp ; 11 uses
  %i.js = or i32 %i.ct, %i.cl
  %or.cond.i = icmp eq i32 %i.js, 0
  br i1 %or.cond.i, label %.preheader167.preheader.i, label %bb.z

.preheader167.preheader.i:                        ; preds = %bb.y
  %i.jt = fpext <2 x float> %i.jb to <2 x double>
  br label %.loopexit168.i

bb.z:                                             ; preds = %bb.y
  %i.ju = fcmp reassoc nsz arcp contract afn ult float %i.jp, f0x00800000 ; 2 uses
  %i.jv = fdiv reassoc nsz arcp contract afn float %i.jr, %i.jp ; 2 uses
  tail call void @cairo_mesh_pattern_begin_patch(ptr noundef %i.aa) #18
  tail call void @cairo_mesh_pattern_move_to(ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  %i.jw = extractelement <2 x double> %i.cs, i64 0
  %i.jx = extractelement <2 x double> %i.cs, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.jw, double noundef %i.jx) #18
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jv, %i.je
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jv, %i.jf
  %.sroa.5.1.i = select nsz i1 %i.ju, float %i.je, float %i.jy
  %.sroa.14.1.i = select nsz i1 %i.ju, float %i.jf, float %i.jz
  %i.ka = insertelement <2 x float> poison, float %.sroa.5.1.i, i64 0
  %i.kb = insertelement <2 x float> %i.ka, float %.sroa.14.1.i, i64 1
  %i.kc = fpext <2 x float> %i.kb to <2 x double> ; 3 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 0
  %i.ke = extractelement <2 x double> %i.kc, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.kd, double noundef %i.ke) #18
  %i.kf = extractelement <2 x float> %i.cq, i64 0
  %i.kg = fpext reassoc nsz arcp contract afn float %i.kf to double ; 2 uses
  %i.kh = fpext reassoc nsz arcp contract afn float %.sroa.6222.1.i to double ; 2 uses
  %i.ki = extractelement <2 x float> %i.cq, i64 1
  %i.kj = fpext reassoc nsz arcp contract afn float %i.ki to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 0, double noundef %i.kg, double noundef %i.kh, double noundef %i.kj) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 1, double noundef %i.kg, double noundef %i.kh, double noundef %i.kj) #18
  %i.kk = extractelement <2 x float> %i.jo, i64 0
  %i.kl = fpext reassoc nsz arcp contract afn float %i.kk to double ; 2 uses
  %i.km = fpext reassoc nsz arcp contract afn float %i.jl to double ; 2 uses
  %i.kn = extractelement <2 x float> %i.jo, i64 1
  %i.ko = fpext reassoc nsz arcp contract afn float %i.kn to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 2, double noundef %i.kl, double noundef %i.km, double noundef %i.ko) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 3, double noundef %i.kl, double noundef %i.km, double noundef %i.ko) #18
  tail call void @cairo_mesh_pattern_end_patch(ptr noundef %i.aa) #18
  br label %.loopexit168.i
end_hunk_0
begin_hunk_1_@dt_conf_set_string
declare void @dt_conf_set_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @dt_vec_get_sector_angles(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = add i32 %0, -10
  %or.cond.i = icmp ult i32 %i.a, -9
  br i1 %or.cond.i, label %bb.b, label %iter.check

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !182
  br label %dt_color_harmony_get_sector_angles.exit

iter.check:                                       ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [20 x i8], ptr @dt_color_harmony_get_sector_angles.table, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !212  ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !182
  %i.e = sitofp reassoc nsz arcp contract afn i32 %1 to float
  %i.f = fmul reassoc nnan nsz arcp contract afn float %i.e, f0x3B360B61 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 3 uses
  %i.h = shl nuw nsw i64 1, %i.b
  %i.i = and i64 %i.h, 247
  %min.iters.check.not = icmp eq i64 %i.i, 0
  br i1 %min.iters.check.not, label %vec.epilog.ph, label %vec.epilog.scalar.ph.preheader

vec.epilog.ph:                                    ; preds = %iter.check
  %n.vec7 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index10
  %wide.load11 = load <4 x float>, ptr %i.j, align 4, !tbaa !113
  %i.k = fadd reassoc nsz arcp contract afn <4 x float> %wide.load11, %broadcast.splat9 ; 2 uses
  %i.l = tail call reassoc nsz arcp contract afn <4 x float> @llvm.floor.v4f32(<4 x float> %i.k)
  %i.m = fsub reassoc nsz arcp contract afn <4 x float> %i.k, %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index10
  store <4 x float> %i.m, ptr %i.n, align 4, !tbaa !113
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !214

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %n.vec7, %wide.trip.count.i
  br i1 %cmp.n13, label %dt_color_harmony_get_sector_angles.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec7, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.q = load float, ptr %i.p, align 4, !tbaa !113
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, %i.f ; 2 uses
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.r)
  %i.t = fsub reassoc nsz arcp contract afn float %i.r, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  store float %i.t, ptr %i.u, align 4, !tbaa !113
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %dt_color_harmony_get_sector_angles.exit, label %vec.epilog.scalar.ph, !llvm.loop !215

dt_color_harmony_get_sector_angles.exit:          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %bb.b
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nounwind uwtable
define internal fastcc void @_get_chromaticity(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  switch i32 %2, label %bb.w [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 896
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 712
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 704
  %i.g = load i32, ptr %i.f, align 64, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.i = load i32, ptr %i.h, align 4, !tbaa !117
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.g, i32 noundef %i.i)
  %.val = load <4 x float>, ptr %i.a, align 16, !tbaa !150
  %i.j = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val, <4 x float> zeroinitializer) ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.j, i64 0
  %.sroa.0.4.vec.extract4.i = extractelement <4 x float> %i.j, i64 1 ; 4 uses
  %i.k = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract4.i
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.j, i64 2
  %i.l = fadd reassoc nsz arcp contract afn float %i.k, %.sroa.0.8.vec.extract.i ; 2 uses
  %i.m = fcmp reassoc nsz arcp contract afn ogt float %i.l, 0.000000e+00
  %i.n = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fdiv reassoc nsz arcp contract afn <2 x float> %i.n, %i.p
  %i.r = insertelement <2 x i1> poison, i1 %i.m, i64 0
  %i.s = shufflevector <2 x i1> %i.r, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.t = select <2 x i1> %i.s, <2 x float> %i.q, <2 x float> <float 3.456700e-01, float 3.585000e-01> ; 3 uses
  %i.u = fcmp reassoc nsz arcp contract afn ugt float %.sroa.0.4.vec.extract4.i, f0x3C111AA7
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = fmul reassoc nnan nsz arcp contract afn float %.sroa.0.4.vec.extract4.i, f0x4461D2F8
  br label %dt_xyY_to_Luv.exit

bb.d:                                             ; preds = %bb.b
  %i.w = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %.sroa.0.4.vec.extract4.i) #19
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, 1.160000e+02
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, -1.600000e+01
  br label %dt_xyY_to_Luv.exit

dt_xyY_to_Luv.exit:                               ; preds = %bb.c, %bb.d
  %i.z = phi reassoc nsz arcp contract afn float [ %i.v, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn <2 x float> %i.t, <float 4.000000e+00, float 9.000000e+00>
  %i.ab = extractelement <2 x float> %i.t, i64 1
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, 1.200000e+01
  %i.ad = extractelement <2 x float> %i.t, i64 0
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, 2.000000e+00
  %i.af = fsub reassoc nsz arcp contract afn float %i.ac, %i.ae
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, 3.000000e+00
  store float %i.z, ptr %1, align 4, !tbaa !113
  %i.ah = fmul reassoc nsz arcp contract afn float %i.z, 1.300000e+01
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fdiv reassoc nsz arcp contract afn <2 x float> %i.aa, %i.ak
  %i.am = fadd reassoc nsz arcp contract afn <2 x float> %i.al, <float f0xBE562DD1, float f0xBEF9E502>
  %i.an = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, %i.am
  store <2 x float> %i.ap, ptr %i.ai, align 4, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 896
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 712
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 704
  %i.au = load i32, ptr %i.at, align 64, !tbaa !115
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !117
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au, i32 noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.az = load float, ptr %i.b, align 16, !tbaa !113 ; 3 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, f0x3F74A0AB
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !113 ; 3 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, 2.303930e-02
  %i.bd = fsub reassoc nsz arcp contract afn float %i.ba, %i.bc
  %i.be = load float, ptr %i.ay, align 8, !tbaa !113 ; 3 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, 6.316360e-02
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bd, %i.bf ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn float %i.az, -2.828950e-02
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bb, f0x3F8145C4
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bh
  %i.bk = fmul reassoc nsz arcp contract afn float %i.be, 2.100770e-02
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bj, %i.bk
  %i.bm = fmul reassoc nsz arcp contract afn float %i.az, 1.229820e-02
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bb, 2.048300e-02
  %i.bo = fsub reassoc nsz arcp contract afn float %i.bm, %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn float %i.be, f0x3FAA3A7C
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bo, %i.bp ; 3 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.bg, 1.150000e+00
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bq, f0x3E199998
  %i.bt = fsub reassoc nsz arcp contract afn float %i.br, %i.bs ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bl, 6.600000e-01
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bg, f0x3EAE147A
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bu, %i.bv ; 2 uses
  %i.bx = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.by, <float f0x3ED45F51, float -2.015100e-01>
  %i.ca = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, <float 1.464800e-02, float 5.310080e-02>
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bt, -1.660080e-02
  %i.ce = fmul reassoc nsz arcp contract afn float %i.bw, 2.648000e-01
  %i.cf = fmul reassoc nsz arcp contract afn float %i.bq, f0x3F2B2180
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cd, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.ce
  %5 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ch, float 0.000000e+00)
  %6 = fmul reassoc nnan nsz arcp contract afn float %5, f0x38D1B717
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %6, float f0x3E232000) ; 2 uses
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, f0x4196D000
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, f0x3F560000
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ci, 1.868750e+01
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, 1.000000e+00
  %i.cn = fdiv reassoc nsz arcp contract afn float %i.ck, %i.cm
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cn, float f0x430608CD) ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, <float 5.799990e-01, float f0x3F8F716D>
  %i.cs = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.cc
  %i.ct = fadd reassoc nsz arcp contract afn <2 x float> %i.cs, %i.cr
  %7 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ct, <2 x float> zeroinitializer)
  %8 = fmul reassoc nnan nsz arcp contract afn <2 x float> %7, splat (float f0x38D1B717)
  %i.cu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %8, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, splat (float f0x4196D000)
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, splat (float f0x3F560000)
  %i.cx = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, splat (float 1.868750e+01)
  %i.cy = fadd reassoc nsz arcp contract afn <2 x float> %i.cx, splat (float 1.000000e+00)
  %i.cz = fdiv reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cy
  %i.da = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.cz, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.da) ; 2 uses
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, 5.000000e-01
  %i.dd = fmul reassoc nsz arcp contract afn <2 x float> %i.da, <float 1.990760e-01, float f0xC0822279>
  %i.de = fmul reassoc nsz arcp contract afn float %i.db, 0.000000e+00
  %i.df = fmul reassoc nsz arcp contract afn float %i.co, 0.000000e+00
  %i.dg = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.co, i64 1
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.di = fmul reassoc nsz arcp contract afn <4 x float> %i.dh, <float -0.000000e+00, float 5.427080e-01, float f0xBFA5DF3B, float 0.000000e+00>
  %i.dj = fadd reassoc nsz arcp contract afn float %i.dc, %i.df ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, 4.400000e-01
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dj, 5.600000e-01
  %i.dm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dl
  %i.dn = fdiv reassoc nsz arcp contract afn float %i.dk, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, -1.629550e-11
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.do, float 0.000000e+00)
  %i.dq = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dr = fmul reassoc nsz arcp contract afn <2 x float> %i.da, <float 3.524000e+00, float f0x3F8C63E9>
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dt = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.du = fadd reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dt
  %i.dv = shufflevector <4 x float> %i.dq, <4 x float> %i.du, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dw = insertelement <4 x float> %i.dv, float %i.de, i64 3
  %i.dx = fadd reassoc nsz arcp contract afn <4 x float> %i.dw, %i.di
  store <4 x float> %i.dx, ptr %1, align 4, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dz = load <4 x float>, ptr %0, align 4, !tbaa !113 ; 3 uses
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !113 ; 2 uses
  %i.eb = extractelement <4 x float> %i.dz, i64 0 ; 2 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, f0x3D9E8391
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ea, f0x3D9E8391
  %i.ee = extractelement <4 x float> %i.dz, i64 2 ; 2 uses
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, f0x3D9E8391
  %i.eg = fmul reassoc nsz arcp contract afn <4 x float> %i.dz, splat (float f0x3F72A76F)
  %i.eh = fadd reassoc nsz arcp contract afn <4 x float> %i.eg, splat (float f0x3D55891A)
  %i.ei = bitcast <4 x float> %i.eh to <4 x i32>  ; 2 uses
  %i.ej = and <4 x i32> %i.ei, splat (i32 8388607)
  %i.ek = or disjoint <4 x i32> %i.ej, splat (i32 1065353216)
  %i.el = bitcast <4 x i32> %i.ek to <4 x float>  ; 5 uses
  %i.em = lshr <4 x i32> %i.ei, splat (i32 23)
  %i.en = and <4 x i32> %i.em, splat (i32 255)
  %i.eo = add nsw <4 x i32> %i.en, splat (i32 -127)
  %i.ep = sitofp <4 x i32> %i.eo to <4 x float>
  %i.eq = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.el, splat (float f0x3D74552F)
  %i.er = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.eq, splat (float f0xBEEE7397)
  %i.es = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.er, %i.el
  %i.et = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.es, splat (float f0x3FBD96DD)
  %i.eu = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.et, %i.el
  %i.ev = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.eu, splat (float f0xC02153F6)
  %i.ew = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ev, %i.el
  %i.ex = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ew, splat (float f0x4038D96C)
  %i.ey = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.el, splat (float -1.000000e+00)
  %i.ez = fmul reassoc nsz arcp contract afn <4 x float> %i.ex, %i.ey
  %i.fa = fadd reassoc nsz arcp contract afn <4 x float> %i.ez, %i.ep
  %i.fb = fmul reassoc nsz arcp contract afn <4 x float> %i.fa, splat (float 2.400000e+00)
  %i.fc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fb, <4 x float> splat (float 1.290000e+02))
  %i.fd = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fc, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.fe = fadd reassoc nsz arcp contract afn <4 x float> %i.fd, splat (float -5.000000e-01)
  %i.ff = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fe)
  %i.fg = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ff to <4 x float> ; 3 uses
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.fg, i64 0
  %foldExtExtBinop39 = fsub reassoc nsz arcp contract afn <4 x float> %i.fd, %i.fg
  %i.fh = extractelement <4 x float> %foldExtExtBinop39, i64 0 ; 4 uses
  %i.fi = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.fj = shl i32 %i.fi, 23
  %i.fk = add i32 %i.fj, 1065353216
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fh, f0x3C5DBE69
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, f0x3D5509F9
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, %i.fh
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fn, f0x3E773CC5
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fo, %i.fh
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, f0x3F3168B3
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, %i.fh
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, f0x3F800016
  %i.ft = bitcast i32 %i.fk to float
  %i.fu = fmul reassoc nsz arcp contract afn float %i.fs, %i.ft
  %i.fv = shufflevector <4 x float> %i.fd, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.fw = shufflevector <4 x float> %i.fg, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fx = fsub reassoc nsz arcp contract afn <2 x float> %i.fv, %i.fw ; 4 uses
  %i.fy = fptosi <2 x float> %i.fw to <2 x i32>
  %i.fz = shl <2 x i32> %i.fy, splat (i32 23)
  %i.ga = add <2 x i32> %i.fz, splat (i32 1065353216)
  %i.gb = fmul reassoc nsz arcp contract afn <2 x float> %i.fx, splat (float f0x3C5DBE69)
  %i.gc = fadd reassoc nsz arcp contract afn <2 x float> %i.gb, splat (float f0x3D5509F9)
  %i.gd = fmul reassoc nsz arcp contract afn <2 x float> %i.gc, %i.fx
  %i.ge = fadd reassoc nsz arcp contract afn <2 x float> %i.gd, splat (float f0x3E773CC5)
  %i.gf = fmul reassoc nsz arcp contract afn <2 x float> %i.ge, %i.fx
  %i.gg = fadd reassoc nsz arcp contract afn <2 x float> %i.gf, splat (float f0x3F3168B3)
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, %i.fx
  %i.gi = fadd reassoc nsz arcp contract afn <2 x float> %i.gh, splat (float f0x3F800016)
  %i.gj = bitcast <2 x i32> %i.ga to <2 x float>
  %i.gk = fmul reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gj ; 2 uses
  %i.gl = fcmp reassoc nsz arcp contract afn ugt float %i.eb, 4.045000e-02
  %.sroa.speculated33.i = select i1 %i.gl, float %i.fu, float %i.ec ; 5 uses
  %i.gm = fcmp reassoc nsz arcp contract afn ugt float %i.ea, 4.045000e-02
  %i.gn = extractelement <2 x float> %i.gk, i64 0
  %.sroa.speculated30.i = select i1 %i.gm, float %i.gn, float %i.ed ; 5 uses
  %i.go = fcmp reassoc nsz arcp contract afn ugt float %i.ee, 4.045000e-02
  %i.gp = extractelement <2 x float> %i.gk, i64 1
  %.sroa.speculated27.i = select i1 %i.go, float %i.gp, float %i.ef ; 4 uses
  %i.gq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.speculated33.i, float %.sroa.speculated30.i)
  %i.gr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gq, float %.sroa.speculated27.i)
  %i.gs = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.speculated33.i, float %.sroa.speculated30.i)
  %i.gt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gs, float %.sroa.speculated27.i) ; 14 uses
  %i.gu = fsub reassoc nsz arcp contract afn float %i.gt, %i.gr ; 5 uses
  %i.gv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gt)
  %i.gw = fcmp reassoc nsz arcp contract afn ogt float %i.gv, f0x358637BD
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gu)
  %i.gy = fcmp reassoc nsz arcp contract afn ogt float %i.gx, f0x358637BD
  %or.cond.i.i = select i1 %i.gw, i1 %i.gy, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %dt_RGB_2_HSV.exit.i

bb.g:                                             ; preds = %bb.f
  %i.gz = fdiv reassoc nsz arcp contract afn float %i.gu, %i.gt
  %i.ha = fcmp reassoc nsz arcp contract afn oeq float %.sroa.speculated33.i, %i.gt
  br i1 %i.ha, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hb = fsub reassoc nsz arcp contract afn float %.sroa.speculated30.i, %.sroa.speculated27.i
  %i.hc = fdiv reassoc nsz arcp contract afn float %i.hb, %i.gu
  br label %_dt_RGB_2_Hue.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.hd = fcmp reassoc nsz arcp contract afn oeq float %.sroa.speculated30.i, %i.gt
  br i1 %i.hd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.he = fsub reassoc nsz arcp contract afn float %.sroa.speculated27.i, %.sroa.speculated33.i
  %i.hf = fdiv reassoc nsz arcp contract afn float %i.he, %i.gu
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.hh = fsub reassoc nsz arcp contract afn float %.sroa.speculated33.i, %.sroa.speculated30.i
  %i.hi = fdiv reassoc nsz arcp contract afn float %i.hh, %i.gu
  %i.hj = fadd reassoc nsz arcp contract afn float %i.hi, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

_dt_RGB_2_Hue.exit.i.i:                           ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i.i = phi nsz float [ %i.hc, %bb.h ], [ %i.hg, %bb.j ], [ %i.hj, %bb.k ]
  %i.hk = fmul reassoc nsz arcp contract afn float %.0.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.hl = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hk)
  %i.hm = fsub reassoc nsz arcp contract afn float %i.hk, %i.hl
  br label %dt_RGB_2_HSV.exit.i

dt_RGB_2_HSV.exit.i:                              ; preds = %_dt_RGB_2_Hue.exit.i.i, %bb.f
  %.018.i.i = phi nsz float [ %i.gz, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %bb.f ]
  %.0.i.i = phi nsz float [ %i.hm, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %bb.f ]
  %i.hn = tail call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef 7, ptr noundef nonnull @dt_color_ryb_x_vtx, float noundef %.0.i.i, ptr noundef nonnull @dt_color_ryb_y_vtx, ptr noundef %4, i32 noundef 0) #18
  %i.ho = fmul reassoc nsz arcp contract afn float %.018.i.i, %i.gt ; 2 uses
  %i.hp = fsub reassoc nsz arcp contract afn float %i.gt, %i.ho ; 7 uses
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hn, 6.000000e+00 ; 2 uses
  %i.hr = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hq) ; 2 uses
  %i.hs = fsub reassoc nsz arcp contract afn float %i.hq, %i.hr
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, %i.ho ; 2 uses
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %i.hp ; 3 uses
  %i.hv = fsub reassoc nsz arcp contract afn float %i.gt, %i.ht ; 3 uses
  %i.hw = fptoui float %i.hr to i64
  switch i64 %i.hw, label %bb.p [
    i64 0, label %_rgb2ryb.exit
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
  ]

bb.l:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

bb.m:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

bb.n:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

bb.o:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

bb.p:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

_rgb2ryb.exit:                                    ; preds = %dt_RGB_2_HSV.exit.i, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink54.i.i.i = phi float [ %i.hv, %bb.l ], [ %i.hp, %bb.n ], [ %i.gt, %bb.p ], [ %i.hu, %bb.o ], [ %i.hp, %bb.m ], [ %i.gt, %dt_RGB_2_HSV.exit.i ] ; 5 uses
  %.sink53.i.i.i = phi float [ %i.gt, %bb.l ], [ %i.hv, %bb.n ], [ %i.hp, %bb.p ], [ %i.hp, %bb.o ], [ %i.gt, %bb.m ], [ %i.hu, %dt_RGB_2_HSV.exit.i ] ; 5 uses
  %.sink.i.i.i = phi float [ %i.hp, %bb.l ], [ %i.gt, %bb.n ], [ %i.hv, %bb.p ], [ %i.gt, %bb.o ], [ %i.hu, %bb.m ], [ %i.hp, %dt_RGB_2_HSV.exit.i ] ; 4 uses
  %i.hx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sink54.i.i.i, float %.sink53.i.i.i)
  %i.hy = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hx, float %.sink.i.i.i)
  %i.hz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink54.i.i.i, float %.sink53.i.i.i)
  %i.ia = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hz, float %.sink.i.i.i) ; 4 uses
  %i.ib = fsub reassoc nsz arcp contract afn float %i.ia, %i.hy ; 5 uses
end_hunk_1
