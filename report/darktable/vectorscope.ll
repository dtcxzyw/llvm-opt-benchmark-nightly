inline.NumInlined: 103
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_vec_process:bb.a
  %i.am = fpext <2 x float> %i.al to <2 x double> ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = extractelement <2 x double> %i.am, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.an, double noundef %i.ao) #18
  %i.ap = extractelement <2 x float> %i.jf, i64 0
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double ; 2 uses
  %i.ar = fpext reassoc nsz arcp contract afn float %i.jc to double ; 2 uses
  %i.as = extractelement <2 x float> %i.jf, i64 1
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 0, double noundef %i.aq, double noundef %i.ar, double noundef %i.at) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 1, double noundef %i.aq, double noundef %i.ar, double noundef %i.at) #18
  %i.au = extractelement <2 x float> %i.kh, i64 0
  %i.av = fpext reassoc nsz arcp contract afn float %i.au to double ; 2 uses
  %i.aw = fpext reassoc nsz arcp contract afn float %.sroa.5.2235.i to double ; 2 uses
  %i.ax = extractelement <2 x float> %i.kh, i64 1
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 2, double noundef %i.av, double noundef %i.aw, double noundef %i.ay) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 3, double noundef %i.av, double noundef %i.aw, double noundef %i.ay) #18
  tail call void @cairo_mesh_pattern_end_patch(ptr noundef %i.aa) #18
  %i.az = load i32, ptr %i.i, align 4, !tbaa !106 ; 5 uses
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.az to float ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ba, float noundef %i.ba) #19
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bd = fpext reassoc nsz arcp contract afn float %i.ji to double ; 3 uses
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
  %i.bo = fmul reassoc nsz arcp contract afn float %i.ji, f0x3E968904 ; 6 uses
  %i.bp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ji
  br label %bb.ak

.preheader169.i:                                  ; preds = %bb.g, %bb.e
  %.sroa.6222.0.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.jc, %bb.g ]
  %.sroa.5.0233.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %.sroa.5.2235.i, %bb.g ]
  %indvars.iv206.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next207.i, %bb.g ] ; 4 uses
  %.0139199.i = phi float [ 0.000000e+00, %bb.e ], [ %i.ji, %bb.g ]
  %i.bq = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.jf, %bb.g ]
  %i.br = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.kh, %bb.g ]
  %i.bs = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.kg, %bb.g ]
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
  %.sroa.6222.1.i = phi nsz float [ %.sroa.6222.0.i, %.preheader169.i ], [ %i.jc, %.loopexit168.i ] ; 2 uses
  %.sroa.5.1234.i = phi nsz float [ %.sroa.5.0233.i, %.preheader169.i ], [ %.sroa.5.2235.i, %.loopexit168.i ]
  %indvars.iv.i = phi i64 [ 0, %.preheader169.i ], [ %indvars.iv.next.i, %.loopexit168.i ] ; 3 uses
  %.1195.i = phi float [ %.0139199.i, %.preheader169.i ], [ %i.ji, %.loopexit168.i ] ; 2 uses
  %i.cq = phi <2 x float> [ %i.bq, %.preheader169.i ], [ %i.jf, %.loopexit168.i ] ; 3 uses
  %i.cr = phi <2 x float> [ %i.br, %.preheader169.i ], [ %i.kh, %.loopexit168.i ]
  %i.cs = phi <2 x double> [ %i.bs, %.preheader169.i ], [ %i.kg, %.loopexit168.i ] ; 2 uses
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
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, %i.ey ; 3 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fg, 1.150000e+00
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fm, f0x3E199998
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fn, %i.fo ; 2 uses
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fg, f0x3EAE147A
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fi, %i.fq ; 2 uses
  %.reass185.i = fmul reassoc nsz arcp contract afn float %i.fp, -1.660080e-06
  %.reass183.i = fmul reassoc nsz arcp contract afn float %i.fr, 2.648000e-05
  %.reass184.i = fmul reassoc nsz arcp contract afn float %i.fm, f0x388C30BE
  %i.fs = fadd reassoc nsz arcp contract afn float %.reass185.i, %.reass184.i
  %5 = fadd reassoc nsz arcp contract afn float %i.fs, %.reass183.i
  %6 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %5, float 0.000000e+00)
  %7 = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %6, float f0x3E232000) ; 2 uses
  %.reass191.i = fmul reassoc nsz arcp contract afn float %7, f0x4196D000
  %8 = fadd reassoc nsz arcp contract afn float %.reass191.i, f0x3F560000
  %.reass190.i = fmul reassoc nsz arcp contract afn float %7, 1.868750e+01
  %i.ft = fadd reassoc nsz arcp contract afn float %.reass190.i, 1.000000e+00
  %9 = fdiv reassoc nsz arcp contract afn float %8, %i.ft
  %i.fu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %9, float f0x430608CD)
  %10 = insertelement <2 x float> poison, float %i.fp, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul reassoc nsz arcp contract afn <2 x float> %11, <float -2.015100e-05, float f0x382DF9B4>
  %13 = insertelement <2 x float> poison, float %i.fr, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul reassoc nsz arcp contract afn <2 x float> %14, <float f0x38EB0462, float f0x387344EC>
  %16 = insertelement <2 x float> poison, float %i.fm, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul reassoc nsz arcp contract afn <2 x float> %17, <float 5.310080e-06, float 1.464800e-06>
  %19 = fadd reassoc nsz arcp contract afn <2 x float> %12, %18
  %20 = fadd reassoc nsz arcp contract afn <2 x float> %19, %15
  %i.fv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %20, <2 x float> zeroinitializer)
  %i.fw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.fv, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.fx = fmul reassoc nsz arcp contract afn <2 x float> %i.fw, splat (float f0x4196D000)
  %i.fy = fadd reassoc nsz arcp contract afn <2 x float> %i.fx, splat (float f0x3F560000)
  %i.fz = fmul reassoc nsz arcp contract afn <2 x float> %i.fw, splat (float 1.868750e+01)
  %i.ga = fadd reassoc nsz arcp contract afn <2 x float> %i.fz, splat (float 1.000000e+00)
  %i.gb = fdiv reassoc nsz arcp contract afn <2 x float> %i.fy, %i.ga
  %i.gc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.gb, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn <2 x float> %i.gc, <float f0xC0822279, float 1.990760e-01>
  %i.ge = fmul reassoc nsz arcp contract afn <2 x float> %i.gc, <float f0x3F8C63E9, float 3.524000e+00>
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gg = fadd reassoc nsz arcp contract afn <2 x float> %i.gd, %i.gf
  %i.gh = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fmul reassoc nsz arcp contract afn <2 x float> %i.gi, <float 5.427080e-01, float f0xBFA5DF3B>
  %i.gk = fadd reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gj
  %i.gl = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, <float 7.194530e-02, float f0xBFCEF57D>
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, <float f0x40489119, float f0xBE6A7CB9>
  %i.go = fadd reassoc nsz arcp contract afn <2 x float> %i.gm, %i.gn
  %i.gp = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul reassoc nsz arcp contract afn <2 x float> %i.gq, <float f0xBEFB31D6, float f0x3FB3DEFE>
  %i.gs = fmul reassoc nsz arcp contract afn float %i.fb, f0xBF7A9091
  %i.gt = fmul reassoc nsz arcp contract afn float %i.fd, f0x3FF54420
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, %i.gs
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, %i.ez
  %i.gw = fadd reassoc nsz arcp contract afn <2 x float> %i.go, %i.gr
  br label %bb.y

bb.m:                                             ; preds = %bb.h
  %i.gx = load ptr, ptr %i.ab, align 64, !tbaa !118
  %i.gy = extractelement <4 x float> %i.cy, i64 0 ; 5 uses
  %i.gz = extractelement <4 x float> %i.cy, i64 1 ; 5 uses
  %i.ha = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gy, float %i.gz)
  %i.hb = extractelement <4 x float> %i.cy, i64 2 ; 4 uses
  %i.hc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ha, float %i.hb)
  %i.hd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gy, float %i.gz)
  %i.he = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hd, float %i.hb) ; 14 uses
  %i.hf = fsub reassoc nsz arcp contract afn float %i.he, %i.hc ; 5 uses
  %i.hg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.he)
  %i.hh = fcmp reassoc nsz arcp contract afn ogt float %i.hg, f0x358637BD
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hf)
  %i.hj = fcmp reassoc nsz arcp contract afn ogt float %i.hi, f0x358637BD
  %or.cond.i.i.i = select i1 %i.hh, i1 %i.hj, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %dt_RGB_2_HSV.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.hk = fdiv reassoc nsz arcp contract afn float %i.hf, %i.he
  %i.hl = fcmp reassoc nsz arcp contract afn oeq float %i.gy, %i.he
  br i1 %i.hl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hm = fsub reassoc nsz arcp contract afn float %i.gz, %i.hb
  %i.hn = fdiv reassoc nsz arcp contract afn float %i.hm, %i.hf
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ho = fcmp reassoc nsz arcp contract afn oeq float %i.gz, %i.he
  br i1 %i.ho, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hp = fsub reassoc nsz arcp contract afn float %i.hb, %i.gy
  %i.hq = fdiv reassoc nsz arcp contract afn float %i.hp, %i.hf
  %i.hr = fadd reassoc nsz arcp contract afn float %i.hq, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.hs = fsub reassoc nsz arcp contract afn float %i.gy, %i.gz
  %i.ht = fdiv reassoc nsz arcp contract afn float %i.hs, %i.hf
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

_dt_RGB_2_Hue.exit.i.i.i:                         ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i = phi nsz float [ %i.hn, %bb.o ], [ %i.hr, %bb.q ], [ %i.hu, %bb.r ]
  %i.hv = fmul reassoc nsz arcp contract afn float %.0.i.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.hw = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hv)
  %i.hx = fsub reassoc nsz arcp contract afn float %i.hv, %i.hw
  br label %dt_RGB_2_HSV.exit.i.i

dt_RGB_2_HSV.exit.i.i:                            ; preds = %_dt_RGB_2_Hue.exit.i.i.i, %bb.m
  %.018.i.i.i = phi nsz float [ %i.hk, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %.0.i.i.i = phi nsz float [ %i.hx, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %i.hy = tail call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef 7, ptr noundef nonnull @dt_color_ryb_x_vtx, float noundef %.0.i.i.i, ptr noundef nonnull @rgb_y_vtx, ptr noundef %i.gx, i32 noundef 0) #18
  %i.hz = fmul reassoc nsz arcp contract afn float %.018.i.i.i, %i.he ; 2 uses
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hy, 6.000000e+00 ; 2 uses
  %i.ib = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ia) ; 2 uses
  %i.ic = fsub reassoc nsz arcp contract afn float %i.ia, %i.ib
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, %i.hz ; 2 uses
  %i.ie = fsub reassoc nsz arcp contract afn float %i.he, %i.id ; 3 uses
  %i.if = fsub reassoc nsz arcp contract afn float %i.he, %i.hz ; 7 uses
  %i.ig = fadd reassoc nsz arcp contract afn float %i.id, %i.if ; 3 uses
  %i.ih = fptoui float %i.ib to i64
  switch i64 %i.ih, label %bb.w [
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
  %.sink54.i.i.i.i = phi float [ %i.ie, %bb.s ], [ %i.if, %bb.u ], [ %i.he, %bb.w ], [ %i.ig, %bb.v ], [ %i.if, %bb.t ], [ %i.he, %dt_RGB_2_HSV.exit.i.i ]
  %.sink53.i.i.i.i = phi float [ %i.he, %bb.s ], [ %i.ie, %bb.u ], [ %i.if, %bb.w ], [ %i.if, %bb.v ], [ %i.he, %bb.t ], [ %i.ig, %dt_RGB_2_HSV.exit.i.i ]
  %.sink.i.i.i.i = phi float [ %i.if, %bb.s ], [ %i.he, %bb.u ], [ %i.ie, %bb.w ], [ %i.he, %bb.v ], [ %i.ig, %bb.t ], [ %i.if, %dt_RGB_2_HSV.exit.i.i ]
  %i.ii = fmul reassoc nnan nsz arcp contract afn float %i.cu, f0x3CAAAAAB
  %i.ij = fadd reassoc nnan nsz arcp contract afn float %i.ii, %i.cm
  %i.ik = fmul reassoc nnan nsz arcp contract afn float %i.ij, f0x3F860A3A
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ik) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.il = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.im = insertelement <2 x float> %i.il, float %sin.i, i64 1
  %i.in = fpext <2 x float> %i.im to <2 x double>
  %i.io = fmul reassoc nsz arcp contract afn <2 x double> %i.in, splat (double 1.000000e-02)
  %i.ip = fptrunc <2 x double> %i.io to <2 x float>
  %i.iq = insertelement <2 x float> poison, float %.sink54.i.i.i.i, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %.sink.i.i.i.i, i64 1
  br label %bb.y

bb.x:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 292, ptr noundef nonnull @__FUNCTION__._lib_histogram_vectorscope_bkgd) #18
  unreachable

bb.y:                                             ; preds = %_ryb2rgb.exit.i, %bb.l, %dt_xyY_to_Luv.exit.i, %bb.h
  %.sroa.12.2.i = phi nsz float [ %.sroa.6222.1.i, %bb.h ], [ %i.er, %dt_xyY_to_Luv.exit.i ], [ %i.gv, %bb.l ], [ %.sink53.i.i.i.i, %_ryb2rgb.exit.i ] ; 3 uses
  %i.is = phi <2 x float> [ zeroinitializer, %bb.h ], [ %i.ee, %dt_xyY_to_Luv.exit.i ], [ %i.gk, %bb.l ], [ %i.ip, %_ryb2rgb.exit.i ] ; 4 uses
  %i.it = phi <2 x float> [ %i.cq, %bb.h ], [ %i.et, %dt_xyY_to_Luv.exit.i ], [ %i.gw, %bb.l ], [ %i.ir, %_ryb2rgb.exit.i ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.iv = extractelement <2 x float> %i.is, i64 0 ; 3 uses
  %i.iw = extractelement <2 x float> %i.is, i64 1 ; 3 uses
  store <2 x float> %i.is, ptr %i.iu, align 8, !tbaa !113
  %i.ix = extractelement <2 x float> %i.it, i64 0 ; 2 uses
  %i.iy = fcmp reassoc nsz arcp contract afn ogt float %i.ix, %.sroa.12.2.i
  %i.iz = select reassoc nsz arcp contract afn i1 %i.iy, float %i.ix, float %.sroa.12.2.i ; 2 uses
  %i.ja = extractelement <2 x float> %i.it, i64 1 ; 2 uses
  %i.jb = fcmp reassoc nsz arcp contract afn ogt float %i.iz, %i.ja
  %..i = select reassoc nsz arcp contract afn i1 %i.jb, float %i.iz, float %i.ja ; 2 uses
  %i.jc = fdiv reassoc nsz arcp contract afn float %.sroa.12.2.i, %..i ; 5 uses
  %i.jd = insertelement <2 x float> poison, float %..i, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fdiv reassoc nsz arcp contract afn <2 x float> %i.it, %i.je ; 7 uses
  %i.jg = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.iv, float noundef %i.iw) #19 ; 4 uses
  %i.jh = fcmp reassoc nsz arcp contract afn ogt float %.1195.i, %i.jg
  %i.ji = select reassoc nsz arcp contract afn i1 %i.jh, float %.1195.i, float %i.jg ; 11 uses
  %i.jj = or i32 %i.ct, %i.cl
  %or.cond.i = icmp eq i32 %i.jj, 0
  br i1 %or.cond.i, label %.preheader167.preheader.i, label %bb.z

.preheader167.preheader.i:                        ; preds = %bb.y
  %i.jk = fpext <2 x float> %i.is to <2 x double>
  br label %.loopexit168.i

bb.z:                                             ; preds = %bb.y
  %i.jl = fcmp reassoc nsz arcp contract afn ult float %i.jg, f0x00800000 ; 2 uses
  %i.jm = fdiv reassoc nsz arcp contract afn float %i.ji, %i.jg ; 2 uses
  tail call void @cairo_mesh_pattern_begin_patch(ptr noundef %i.aa) #18
  tail call void @cairo_mesh_pattern_move_to(ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  %i.jn = extractelement <2 x double> %i.cs, i64 0
  %i.jo = extractelement <2 x double> %i.cs, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.jn, double noundef %i.jo) #18
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jm, %i.iv
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jm, %i.iw
  %.sroa.5.1.i = select nsz i1 %i.jl, float %i.iv, float %i.jp
  %.sroa.14.1.i = select nsz i1 %i.jl, float %i.iw, float %i.jq
  %i.jr = insertelement <2 x float> poison, float %.sroa.5.1.i, i64 0
  %i.js = insertelement <2 x float> %i.jr, float %.sroa.14.1.i, i64 1
  %i.jt = fpext <2 x float> %i.js to <2 x double> ; 3 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 0
  %i.jv = extractelement <2 x double> %i.jt, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.ju, double noundef %i.jv) #18
  %i.jw = extractelement <2 x float> %i.cq, i64 0
  %i.jx = fpext reassoc nsz arcp contract afn float %i.jw to double ; 2 uses
  %i.jy = fpext reassoc nsz arcp contract afn float %.sroa.6222.1.i to double ; 2 uses
  %i.jz = extractelement <2 x float> %i.cq, i64 1
  %i.ka = fpext reassoc nsz arcp contract afn float %i.jz to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 0, double noundef %i.jx, double noundef %i.jy, double noundef %i.ka) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 1, double noundef %i.jx, double noundef %i.jy, double noundef %i.ka) #18
  %i.kb = extractelement <2 x float> %i.jf, i64 0
  %i.kc = fpext reassoc nsz arcp contract afn float %i.kb to double ; 2 uses
  %i.kd = fpext reassoc nsz arcp contract afn float %i.jc to double ; 2 uses
  %i.ke = extractelement <2 x float> %i.jf, i64 1
  %i.kf = fpext reassoc nsz arcp contract afn float %i.ke to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 2, double noundef %i.kc, double noundef %i.kd, double noundef %i.kf) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 3, double noundef %i.kc, double noundef %i.kd, double noundef %i.kf) #18
  tail call void @cairo_mesh_pattern_end_patch(ptr noundef %i.aa) #18
  br label %.loopexit168.i

.loopexit168.i:                                   ; preds = %bb.z, %.preheader167.preheader.i
  %.sroa.5.2235.i = phi nsz float [ %i.jc, %.preheader167.preheader.i ], [ %.sroa.5.1234.i, %bb.z ] ; 3 uses
  %i.kg = phi <2 x double> [ %i.jk, %.preheader167.preheader.i ], [ %i.jt, %bb.z ] ; 4 uses
  %i.kh = phi <2 x float> [ %i.jf, %.preheader167.preheader.i ], [ %i.cr, %bb.z ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 48
  br i1 %exitcond.not.i, label %bb.g, label %bb.h

end_hunk_0
