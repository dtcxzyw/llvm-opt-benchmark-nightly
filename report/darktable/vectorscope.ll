Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/vectorscope?download=true
inline.NumInlined: 103
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_vec_process:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !104  ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 2584 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !105  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2588 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !106  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 2368 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 64, !tbaa !107
  %i.q = icmp eq ptr %3, %i.p
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 2376
  %i.s = load i32, ptr %i.r, align 8, !tbaa !108
  %i.t = icmp eq i32 %i.n, %i.s
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 2380
  %i.v = load i32, ptr %i.u, align 4, !tbaa !109
  %i.w = icmp eq i32 %i.l, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 2384
  %i.y = load double, ptr %i.x, align 16, !tbaa !110 ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn une double %i.y, 0.000000e+00
  br i1 %i.z, label %_lib_histogram_vectorscope_bkgd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.aa = tail call ptr @cairo_pattern_create_mesh() #18 ; 21 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 2624
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 896 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 712 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 768 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 704 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 852 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  br label %.preheader169.i

bb.f:                                             ; preds = %bb.g
  tail call void @cairo_mesh_pattern_begin_patch(ptr noundef %i.aa) #18
  tail call void @cairo_mesh_pattern_move_to(ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  %i.aj = extractelement <2 x double> %i.kr, i64 0
  %i.ak = extractelement <2 x double> %i.kr, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.aj, double noundef %i.ak) #18
  %i.al = load <2 x float>, ptr %i.ai, align 64, !tbaa !111
  %i.am = fpext <2 x float> %i.al to <2 x double> ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = extractelement <2 x double> %i.am, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.an, double noundef %i.ao) #18
  %i.ap = extractelement <2 x float> %i.jq, i64 0
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double ; 2 uses
  %i.ar = fpext reassoc nsz arcp contract afn float %i.jn to double ; 2 uses
  %i.as = extractelement <2 x float> %i.jq, i64 1
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 0, double noundef %i.aq, double noundef %i.ar, double noundef %i.at) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 1, double noundef %i.aq, double noundef %i.ar, double noundef %i.at) #18
  %i.au = extractelement <2 x float> %i.ks, i64 0
  %i.av = fpext reassoc nsz arcp contract afn float %i.au to double ; 2 uses
  %i.aw = fpext reassoc nsz arcp contract afn float %.sroa.5.2235.i to double ; 2 uses
  %i.ax = extractelement <2 x float> %i.ks, i64 1
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 2, double noundef %i.av, double noundef %i.aw, double noundef %i.ay) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 3, double noundef %i.av, double noundef %i.aw, double noundef %i.ay) #18
  tail call void @cairo_mesh_pattern_end_patch(ptr noundef %i.aa) #18
  %i.az = load i32, ptr %i.i, align 4, !tbaa !104 ; 5 uses
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.az to float ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ba, float noundef %i.ba) #19
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bd = fpext reassoc nsz arcp contract afn float %i.jt to double ; 3 uses
  %i.be = fdiv reassoc nsz arcp contract afn double %i.bd, %i.bc ; 2 uses
  call void @cairo_matrix_init_scale(ptr noundef nonnull %4, double noundef %i.be, double noundef %i.be) #18
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.az to double
  %i.bg = fmul reassoc nnan nsz arcp contract afn double %i.bf, -5.000000e-01 ; 2 uses
  call void @cairo_matrix_translate(ptr noundef nonnull %4, double noundef %i.bg, double noundef %i.bg) #18
  call void @cairo_pattern_set_matrix(ptr noundef %i.aa, ptr noundef nonnull %4) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !112
  %i.bj = call i32 @cairo_format_stride_for_width(i32 noundef 1, i32 noundef %i.az) #18
  %i.bk = call ptr @cairo_image_surface_create_for_data(ptr noundef %i.bi, i32 noundef 1, i32 noundef %i.az, i32 noundef %i.az, i32 noundef %i.bj) #18 ; 2 uses
  %i.bl = call ptr @cairo_create(ptr noundef %i.bk) #18 ; 4 uses
  call void @cairo_set_operator(ptr noundef %i.bl, i32 noundef 1) #18
  call void @cairo_set_source(ptr noundef %i.bl, ptr noundef %i.aa) #18
  call void @cairo_paint(ptr noundef %i.bl) #18
  call void @cairo_surface_destroy(ptr noundef %i.bk) #18
  call void @cairo_pattern_destroy(ptr noundef %i.aa) #18
  call void @cairo_destroy(ptr noundef %i.bl) #18
  %i.bm = load i32, ptr %i.m, align 4, !tbaa !106 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.preheader166.i, label %.loopexit.i

.preheader166.i:                                  ; preds = %bb.f
  %i.bo = fmul reassoc nsz arcp contract afn float %i.jt, f0x3E968904 ; 6 uses
  %i.bp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jt
  br label %bb.ak

.preheader169.i:                                  ; preds = %bb.g, %bb.e
  %.sroa.12.0.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.jn, %bb.g ]
  %.sroa.5.0233.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %.sroa.5.2235.i, %bb.g ]
  %indvars.iv206.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next207.i, %bb.g ] ; 4 uses
  %.0142199.i = phi float [ 0.000000e+00, %bb.e ], [ %i.jt, %bb.g ]
  %i.bq = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.jq, %bb.g ]
  %i.br = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.ks, %bb.g ]
  %i.bs = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.kr, %bb.g ]
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 3 uses
  %i.bt = icmp eq i64 %indvars.iv.next207.i, 6    ; 2 uses
  %i.bu = select i1 %i.bt, i64 0, i64 %indvars.iv.next207.i
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr @__const._lib_histogram_vectorscope_bkgd.vertex_rgb, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr @__const._lib_histogram_vectorscope_bkgd.vertex_rgb, i64 %indvars.iv206.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load float, ptr %i.bx, align 8, !tbaa !111
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !111 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bv, align 16, !tbaa !111
  %i.cc = load <2 x float>, ptr %i.bw, align 16, !tbaa !111
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
  %.sroa.12.1.i = phi nsz float [ %.sroa.12.0.i, %.preheader169.i ], [ %i.jn, %.loopexit168.i ] ; 2 uses
  %.sroa.5.1234.i = phi nsz float [ %.sroa.5.0233.i, %.preheader169.i ], [ %.sroa.5.2235.i, %.loopexit168.i ]
  %indvars.iv.i = phi i64 [ 0, %.preheader169.i ], [ %indvars.iv.next.i, %.loopexit168.i ] ; 3 uses
  %.1195.i = phi float [ %.0142199.i, %.preheader169.i ], [ %i.jt, %.loopexit168.i ] ; 2 uses
  %i.cq = phi <2 x float> [ %i.bq, %.preheader169.i ], [ %i.jq, %.loopexit168.i ] ; 3 uses
  %i.cr = phi <2 x float> [ %i.br, %.preheader169.i ], [ %i.ks, %.loopexit168.i ]
  %i.cs = phi <2 x double> [ %i.bs, %.preheader169.i ], [ %i.kr, %.loopexit168.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ct = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.cu = uitofp nneg i32 %i.ct to float          ; 2 uses
  %i.cv = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cu, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cx = fmul reassoc nsz arcp contract afn <4 x float> %i.cw, %i.ck
  %i.cy = fadd reassoc nsz arcp contract afn <4 x float> %i.cx, %i.cp ; 4 uses
  store <4 x float> %i.cy, ptr %i.a, align 16, !tbaa !111
  switch i32 %i.l, label %bb.y [
    i32 0, label %bb.i
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h
  %i.cz = load i32, ptr %i.af, align 64, !tbaa !114
  %i.da = load i32, ptr %i.ag, align 4, !tbaa !115
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
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dp, 1.300000e+01
  %5 = insertelement <2 x float> poison, float %i.dv, i64 0
  %6 = fadd reassoc nsz arcp contract afn <2 x float> %5, <float 3.000000e+00, float poison>
  %i.dx = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fdiv reassoc nsz arcp contract afn <2 x float> %i.ds, %i.dx
  %i.dz = fadd reassoc nsz arcp contract afn <2 x float> %i.dy, <float f0xBE562DD1, float f0xBEF9E502>
  %i.ea = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul reassoc nsz arcp contract afn <2 x float> %i.eb, %i.dz
  %i.ed = shufflevector <4 x float> %.val.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ee = fmul reassoc nsz arcp contract afn <2 x float> %i.ed, <float f0x40489119, float f0xBE6A7CB9>
  %i.ef = shufflevector <4 x float> %.val.i, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eg = fmul reassoc nsz arcp contract afn <2 x float> %i.ef, <float f0xBFCEF57D, float 7.194530e-02>
  %i.eh = shufflevector <4 x float> %.val.i, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ei = fmul reassoc nsz arcp contract afn <2 x float> %i.eh, <float f0xBEFB31D6, float f0x3FB3DEFE>
  %i.ej = fmul reassoc nsz arcp contract afn float %i.dk, f0xBF7A9091
  %i.ek = shufflevector <4 x float> %.val.i, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.ek, <float f0x3FF54420, float 3.345400e-02> ; 2 uses
  %i.em = extractelement <2 x float> %i.el, i64 0
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.ej
  %i.eo = extractelement <2 x float> %i.el, i64 1
  %i.ep = fadd reassoc nsz arcp contract afn float %i.en, %i.eo
  %i.eq = fadd reassoc nsz arcp contract afn <2 x float> %i.eg, %i.ee
  %i.er = fadd reassoc nsz arcp contract afn <2 x float> %i.eq, %i.ei
  br label %bb.y

bb.l:                                             ; preds = %bb.h
  %i.es = load i32, ptr %i.af, align 64, !tbaa !114
  %i.et = load i32, ptr %i.ag, align 4, !tbaa !115
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i32 noundef %i.es, i32 noundef %i.et)
  %i.eu = load float, ptr %i.ah, align 8, !tbaa !111 ; 5 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, 6.316360e-02
  %.reass.i = fmul reassoc nsz arcp contract afn float %i.eu, f0x3C632A5F
  %i.ew = fmul reassoc nsz arcp contract afn float %i.eu, f0x3FAA3A7C
  %i.ex = fmul reassoc nsz arcp contract afn float %i.eu, 3.345400e-02
  %i.ey = load <2 x float>, ptr %i.b, align 16, !tbaa !111 ; 4 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 0 ; 4 uses
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ez, f0x3F74A0AB
  %i.fb = extractelement <2 x float> %i.ey, i64 1 ; 4 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, 2.303930e-02
  %i.fd = fsub reassoc nsz arcp contract afn float %i.fa, %i.fc
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.ev ; 2 uses
  %.reass181.i = fmul reassoc nsz arcp contract afn float %i.ez, f0xBC98F413
  %.reass182.i = fmul reassoc nsz arcp contract afn float %i.fb, f0x3F2AA3C6
  %i.ff = fadd reassoc nsz arcp contract afn float %.reass182.i, %.reass181.i
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %.reass.i
  %i.fh = fmul reassoc nsz arcp contract afn float %i.ez, 1.229820e-02
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fb, 2.048300e-02
  %i.fj = fsub reassoc nsz arcp contract afn float %i.fh, %i.fi
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.ew ; 4 uses
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fe, 1.150000e+00
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fk, f0x3E199998
  %i.fn = fsub reassoc nsz arcp contract afn float %i.fl, %i.fm ; 3 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fe, f0x3EAE147A
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fg, %i.fo ; 3 uses
  %.reass185.i = fmul reassoc nsz arcp contract afn float %i.fn, f0x382DF9B4
  %.reass183.i = fmul reassoc nsz arcp contract afn float %i.fp, f0x387344EC
  %.reass184.i = fmul reassoc nsz arcp contract afn float %i.fk, 1.464800e-06
  %i.fq = fadd reassoc nsz arcp contract afn float %.reass185.i, %.reass184.i
  %.reass188.i = fmul reassoc nsz arcp contract afn float %i.fn, -2.015100e-05
  %.reass186.i = fmul reassoc nsz arcp contract afn float %i.fp, f0x38EB0462
  %.reass187.i = fmul reassoc nsz arcp contract afn float %i.fk, 5.310080e-06
  %i.fr = fadd reassoc nsz arcp contract afn float %.reass188.i, %.reass187.i
  %.reass191.i = fmul reassoc nsz arcp contract afn float %i.fn, -1.660080e-06
  %.reass189.i = fmul reassoc nsz arcp contract afn float %i.fp, 2.648000e-05
  %.reass190.i = fmul reassoc nsz arcp contract afn float %i.fk, f0x388C30BE
  %i.fs = fadd reassoc nsz arcp contract afn float %.reass191.i, %.reass190.i
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, %.reass189.i
  %i.fu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ft, float 0.000000e+00)
  %i.fv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.fu, float f0x3E232000) ; 2 uses
  %i.fw = fmul reassoc nnan nsz arcp contract afn float %i.fv, f0x4196D000
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fw, f0x3F560000
  %i.fy = fmul reassoc nnan nsz arcp contract afn float %i.fv, 1.868750e+01
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, 1.000000e+00
  %i.ga = fdiv reassoc nsz arcp contract afn float %i.fx, %i.fz
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ga, float f0x430608CD)
  %i.gc = fadd reassoc nsz arcp contract afn float %i.fr, %.reass186.i
  %i.gd = fadd reassoc nsz arcp contract afn float %i.fq, %.reass183.i
  %i.ge = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.gd, i64 1
  %i.gg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gf, <2 x float> zeroinitializer)
  %i.gh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.gg, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.gi = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.gh, splat (float f0x4196D000)
  %i.gj = fadd reassoc nsz arcp contract afn <2 x float> %i.gi, splat (float f0x3F560000)
  %i.gk = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.gh, splat (float 1.868750e+01)
  %i.gl = fadd reassoc nsz arcp contract afn <2 x float> %i.gk, splat (float 1.000000e+00)
  %i.gm = fdiv reassoc nsz arcp contract afn <2 x float> %i.gj, %i.gl
  %i.gn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.gm, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.go = fmul reassoc nsz arcp contract afn <2 x float> %i.gn, <float f0xC0822279, float 1.990760e-01>
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.gn, <float f0x3F8C63E9, float 3.524000e+00>
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gr = fadd reassoc nsz arcp contract afn <2 x float> %i.go, %i.gq
  %i.gs = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fmul reassoc nsz arcp contract afn <2 x float> %i.gt, <float 5.427080e-01, float f0xBFA5DF3B>
  %i.gv = fadd reassoc nsz arcp contract afn <2 x float> %i.gr, %i.gu
  %i.gw = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, <float 7.194530e-02, float f0xBFCEF57D>
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gy = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, <float f0x40489119, float f0xBE6A7CB9>
  %i.gz = fadd reassoc nsz arcp contract afn <2 x float> %i.gx, %i.gy
  %i.ha = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul reassoc nsz arcp contract afn <2 x float> %i.hb, <float f0xBEFB31D6, float f0x3FB3DEFE>
  %i.hd = fmul reassoc nsz arcp contract afn float %i.ez, f0xBF7A9091
  %i.he = fmul reassoc nsz arcp contract afn float %i.fb, f0x3FF54420
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, %i.hd
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, %i.ex
  %i.hh = fadd reassoc nsz arcp contract afn <2 x float> %i.gz, %i.hc
  br label %bb.y

bb.m:                                             ; preds = %bb.h
  %i.hi = load ptr, ptr %i.ab, align 64, !tbaa !116
  %i.hj = extractelement <4 x float> %i.cy, i64 0 ; 5 uses
  %i.hk = extractelement <4 x float> %i.cy, i64 1 ; 5 uses
  %i.hl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hj, float %i.hk)
  %i.hm = extractelement <4 x float> %i.cy, i64 2 ; 4 uses
  %i.hn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hl, float %i.hm)
  %i.ho = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hj, float %i.hk)
  %i.hp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ho, float %i.hm) ; 14 uses
  %i.hq = fsub reassoc nsz arcp contract afn float %i.hp, %i.hn ; 5 uses
  %i.hr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hp)
  %i.hs = fcmp reassoc nsz arcp contract afn ogt float %i.hr, f0x358637BD
  %i.ht = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hq)
  %i.hu = fcmp reassoc nsz arcp contract afn ogt float %i.ht, f0x358637BD
  %or.cond.i.i.i = select i1 %i.hs, i1 %i.hu, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %dt_RGB_2_HSV.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.hv = fdiv reassoc nsz arcp contract afn float %i.hq, %i.hp
  %i.hw = fcmp reassoc nsz arcp contract afn oeq float %i.hj, %i.hp
  br i1 %i.hw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hx = fsub reassoc nsz arcp contract afn float %i.hk, %i.hm
  %i.hy = fdiv reassoc nsz arcp contract afn float %i.hx, %i.hq
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.hz = fcmp reassoc nsz arcp contract afn oeq float %i.hk, %i.hp
  br i1 %i.hz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ia = fsub reassoc nsz arcp contract afn float %i.hm, %i.hj
  %i.ib = fdiv reassoc nsz arcp contract afn float %i.ia, %i.hq
  %i.ic = fadd reassoc nsz arcp contract afn float %i.ib, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.id = fsub reassoc nsz arcp contract afn float %i.hj, %i.hk
  %i.ie = fdiv reassoc nsz arcp contract afn float %i.id, %i.hq
  %i.if = fadd reassoc nsz arcp contract afn float %i.ie, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

_dt_RGB_2_Hue.exit.i.i.i:                         ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i = phi nsz float [ %i.hy, %bb.o ], [ %i.ic, %bb.q ], [ %i.if, %bb.r ]
  %i.ig = fmul reassoc nsz arcp contract afn float %.0.i.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.ih = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ig)
  %i.ii = fsub reassoc nsz arcp contract afn float %i.ig, %i.ih
  br label %dt_RGB_2_HSV.exit.i.i

dt_RGB_2_HSV.exit.i.i:                            ; preds = %_dt_RGB_2_Hue.exit.i.i.i, %bb.m
  %.018.i.i.i = phi nsz float [ %i.hv, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %.0.i.i.i = phi nsz float [ %i.ii, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %i.ij = tail call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef 7, ptr noundef nonnull @dt_color_ryb_x_vtx, float noundef %.0.i.i.i, ptr noundef nonnull @rgb_y_vtx, ptr noundef %i.hi, i32 noundef 0) #18
  %i.ik = fmul reassoc nsz arcp contract afn float %.018.i.i.i, %i.hp ; 2 uses
  %i.il = fmul reassoc nsz arcp contract afn float %i.ij, 6.000000e+00 ; 2 uses
  %i.im = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.il) ; 2 uses
  %i.in = fsub reassoc nsz arcp contract afn float %i.il, %i.im
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, %i.ik ; 2 uses
  %i.ip = fsub reassoc nsz arcp contract afn float %i.hp, %i.io ; 3 uses
  %i.iq = fsub reassoc nsz arcp contract afn float %i.hp, %i.ik ; 7 uses
  %i.ir = fadd reassoc nsz arcp contract afn float %i.io, %i.iq ; 3 uses
  %i.is = fptoui float %i.im to i64
  switch i64 %i.is, label %bb.w [
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
  %.sink54.i.i.i.i = phi float [ %i.ip, %bb.s ], [ %i.iq, %bb.u ], [ %i.hp, %bb.w ], [ %i.ir, %bb.v ], [ %i.iq, %bb.t ], [ %i.hp, %dt_RGB_2_HSV.exit.i.i ]
  %.sink53.i.i.i.i = phi float [ %i.hp, %bb.s ], [ %i.ip, %bb.u ], [ %i.iq, %bb.w ], [ %i.iq, %bb.v ], [ %i.hp, %bb.t ], [ %i.ir, %dt_RGB_2_HSV.exit.i.i ]
  %.sink.i.i.i.i = phi float [ %i.iq, %bb.s ], [ %i.hp, %bb.u ], [ %i.ip, %bb.w ], [ %i.hp, %bb.v ], [ %i.ir, %bb.t ], [ %i.iq, %dt_RGB_2_HSV.exit.i.i ]
  %i.it = fmul reassoc nnan nsz arcp contract afn float %i.cu, f0x3CAAAAAB
  %i.iu = fadd reassoc nnan nsz arcp contract afn float %i.it, %i.cm
  %i.iv = fmul reassoc nnan nsz arcp contract afn float %i.iu, f0x3F860A3A
end_hunk_0
begin_hunk_1_@_color_harmony_changed_record:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  tail call void @dt_image_cache_write_release_info(ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef nonnull @.str.53) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.t = getelementptr i8, ptr %i.s, i64 400
  %.val = load ptr, ptr %i.t, align 8, !tbaa !103
  tail call void @gtk_widget_queue_draw(ptr noundef %.val) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @dt_vec_set_harmony_changed_callback(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2672
  store ptr %1, ptr %i.c, align 16, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2680
  store ptr %2, ptr %i.d, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @dt_vec_set_vectorscope_type(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2584 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !105
  %i.e = icmp eq i32 %i.d, %1
  br i1 %i.e, label %dt_scopes_reprocess.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 8, !tbaa !105
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @dt_scopes_vec_vectorscope_type_names, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !148
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.22, ptr noundef %i.h) #18
  tail call void @_vec_update_buttons(ptr noundef nonnull %0)
  %i.i = tail call i32 @dt_view_get_current() #18
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !61
  tail call void @dt_dev_process_preview(ptr noundef %i.k) #18
  br label %dt_scopes_reprocess.exit

bb.d:                                             ; preds = %bb.b
  tail call void @dt_control_queue_redraw_center() #18
  br label %dt_scopes_reprocess.exit

dt_scopes_reprocess.exit:                         ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

declare void @dt_conf_set_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @dt_vec_get_sector_angles(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = add i32 %0, -10
  %or.cond.i = icmp ult i32 %i.a, -9
  br i1 %or.cond.i, label %bb.b, label %iter.check

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !117
  br label %dt_color_harmony_get_sector_angles.exit

iter.check:                                       ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [20 x i8], ptr @dt_color_harmony_get_sector_angles.table, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !212  ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !117
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
  %wide.load11 = load <4 x float>, ptr %i.j, align 4, !tbaa !111
  %i.k = fadd reassoc nsz arcp contract afn <4 x float> %wide.load11, %broadcast.splat9 ; 2 uses
  %i.l = tail call reassoc nsz arcp contract afn <4 x float> @llvm.floor.v4f32(<4 x float> %i.k)
  %i.m = fsub reassoc nsz arcp contract afn <4 x float> %i.k, %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index10
  store <4 x float> %i.m, ptr %i.n, align 4, !tbaa !111
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !209

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %n.vec7, %wide.trip.count.i
  br i1 %cmp.n13, label %dt_color_harmony_get_sector_angles.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec7, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.q = load float, ptr %i.p, align 4, !tbaa !111
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, %i.f ; 2 uses
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.r)
  %i.t = fsub reassoc nsz arcp contract afn float %i.r, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  store float %i.t, ptr %i.u, align 4, !tbaa !111
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %dt_color_harmony_get_sector_angles.exit, label %vec.epilog.scalar.ph, !llvm.loop !210

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
  %i.g = load i32, ptr %i.f, align 64, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.i = load i32, ptr %i.h, align 4, !tbaa !115
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.g, i32 noundef %i.i)
  %.val = load <4 x float>, ptr %i.a, align 16, !tbaa !136
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
  store float %i.z, ptr %1, align 4, !tbaa !111
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = fsub reassoc nsz arcp contract afn float %i.ac, %i.ae
  %i.ah = fmul reassoc nsz arcp contract afn float %i.z, 1.300000e+01
  %5 = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 1
  %6 = fadd reassoc nsz arcp contract afn <2 x float> %i.ai, <float poison, float 3.000000e+00>
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %8 = fdiv reassoc nsz arcp contract afn <2 x float> %i.aa, %7
  %9 = fadd reassoc nsz arcp contract afn <2 x float> %8, <float f0xBE562DD1, float f0xBEF9E502>
  %i.aj = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, %9
  store <2 x float> %i.ak, ptr %i.af, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 896
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 712
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 704
  %i.ap = load i32, ptr %i.ao, align 64, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !115
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i32 noundef %i.ap, i32 noundef %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load float, ptr %i.b, align 16, !tbaa !111 ; 3 uses
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, f0x3F74A0AB
  %i.aw = load float, ptr %i.as, align 4, !tbaa !111 ; 3 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, 2.303930e-02
  %i.ay = fsub reassoc nsz arcp contract afn float %i.av, %i.ax
  %i.az = load float, ptr %i.at, align 8, !tbaa !111 ; 3 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, 6.316360e-02
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ay, %i.ba ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.au, -2.828950e-02
  %i.bd = fmul reassoc nsz arcp contract afn float %i.aw, f0x3F8145C4
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.bc
  %i.bf = fmul reassoc nsz arcp contract afn float %i.az, 2.100770e-02
  %i.bg = fadd reassoc nsz arcp contract afn float %i.be, %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn float %i.au, 1.229820e-02
  %i.bi = fmul reassoc nsz arcp contract afn float %i.aw, 2.048300e-02
  %i.bj = fsub reassoc nsz arcp contract afn float %i.bh, %i.bi
  %i.bk = fmul reassoc nsz arcp contract afn float %i.az, f0x3FAA3A7C
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bj, %i.bk ; 3 uses
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bb, 1.150000e+00
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bl, f0x3E199998
  %i.bo = fsub reassoc nsz arcp contract afn float %i.bm, %i.bn ; 2 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bg, 6.600000e-01
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bb, f0x3EAE147A
  %i.br = fadd reassoc nsz arcp contract afn float %i.bp, %i.bq ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, <float f0x3ED45F51, float -2.015100e-01>
  %i.bv = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, <float 1.464800e-02, float 5.310080e-02>
  %i.by = fmul reassoc nsz arcp contract afn float %i.bo, -1.660080e-02
  %i.bz = fmul reassoc nsz arcp contract afn float %i.br, 2.648000e-01
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bl, f0x3F2B2180
  %i.cb = fadd reassoc nsz arcp contract afn float %i.by, %i.ca
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %i.bz
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, f0x38D1B717
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cd, float 0.000000e+00)
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ce, float f0x3E232000) ; 2 uses
  %i.cg = fmul reassoc nnan nsz arcp contract afn float %i.cf, f0x4196D000
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, f0x3F560000
  %i.ci = fmul reassoc nnan nsz arcp contract afn float %i.cf, 1.868750e+01
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, 1.000000e+00
  %i.ck = fdiv reassoc nsz arcp contract afn float %i.ch, %i.cj
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ck, float f0x430608CD) ; 2 uses
  %i.cm = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, <float 5.799990e-01, float f0x3F8F716D>
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bx
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.co
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, splat (float f0x38D1B717)
  %i.cs = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer)
  %i.ct = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.cs, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.cu = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ct, splat (float f0x4196D000)
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.cu, splat (float f0x3F560000)
  %i.cw = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ct, splat (float 1.868750e+01)
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, splat (float 1.000000e+00)
  %i.cy = fdiv reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cx
  %i.cz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.cy, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.cz) ; 2 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 5.000000e-01
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.cz, <float 1.990760e-01, float f0xC0822279>
  %i.dd = fmul reassoc nsz arcp contract afn float %i.da, 0.000000e+00
  %i.de = fmul reassoc nsz arcp contract afn float %i.cl, 0.000000e+00
  %i.df = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.cl, i64 1
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dh = fmul reassoc nsz arcp contract afn <4 x float> %i.dg, <float -0.000000e+00, float 5.427080e-01, float f0xBFA5DF3B, float 0.000000e+00>
  %i.di = fadd reassoc nsz arcp contract afn float %i.db, %i.de ; 2 uses
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, 4.400000e-01
  %i.dk = fmul reassoc nsz arcp contract afn float %i.di, 5.600000e-01
  %i.dl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dk
  %i.dm = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dl
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, -1.629550e-11
  %i.do = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dn, float 0.000000e+00)
  %i.dp = insertelement <4 x float> poison, float %i.do, i64 0
  %i.dq = fmul reassoc nsz arcp contract afn <2 x float> %i.cz, <float 3.524000e+00, float f0x3F8C63E9>
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.dt = fadd reassoc nsz arcp contract afn <4 x float> %i.dr, %i.ds
  %i.du = shufflevector <4 x float> %i.dp, <4 x float> %i.dt, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dv = insertelement <4 x float> %i.du, float %i.dd, i64 3
  %i.dw = fadd reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dh
  store <4 x float> %i.dw, ptr %1, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dy = load <4 x float>, ptr %0, align 4, !tbaa !111 ; 3 uses
  %i.dz = load float, ptr %i.dx, align 4, !tbaa !111 ; 2 uses
  %i.ea = extractelement <4 x float> %i.dy, i64 0 ; 2 uses
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, f0x3D9E8391
  %i.ec = fmul reassoc nsz arcp contract afn float %i.dz, f0x3D9E8391
  %i.ed = extractelement <4 x float> %i.dy, i64 2 ; 2 uses
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, f0x3D9E8391
  %i.ef = fmul reassoc nsz arcp contract afn <4 x float> %i.dy, splat (float f0x3F72A76F)
  %i.eg = fadd reassoc nsz arcp contract afn <4 x float> %i.ef, splat (float f0x3D55891A)
  %i.eh = bitcast <4 x float> %i.eg to <4 x i32>  ; 2 uses
  %i.ei = and <4 x i32> %i.eh, splat (i32 8388607)
  %i.ej = or disjoint <4 x i32> %i.ei, splat (i32 1065353216)
  %i.ek = bitcast <4 x i32> %i.ej to <4 x float>  ; 5 uses
  %i.el = lshr <4 x i32> %i.eh, splat (i32 23)
  %i.em = and <4 x i32> %i.el, splat (i32 255)
  %i.en = add nsw <4 x i32> %i.em, splat (i32 -127)
  %i.eo = sitofp <4 x i32> %i.en to <4 x float>
  %i.ep = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ek, splat (float f0x3D74552F)
  %i.eq = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ep, splat (float f0xBEEE7397)
  %i.er = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.eq, %i.ek
  %i.es = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.er, splat (float f0x3FBD96DD)
  %i.et = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.es, %i.ek
  %i.eu = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.et, splat (float f0xC02153F6)
  %i.ev = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.eu, %i.ek
  %i.ew = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ev, splat (float f0x4038D96C)
  %i.ex = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ek, splat (float -1.000000e+00)
  %i.ey = fmul reassoc nsz arcp contract afn <4 x float> %i.ew, %i.ex
  %i.ez = fadd reassoc nsz arcp contract afn <4 x float> %i.ey, %i.eo
  %i.fa = fmul reassoc nsz arcp contract afn <4 x float> %i.ez, splat (float 2.400000e+00)
  %i.fb = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fa, <4 x float> splat (float 1.290000e+02))
  %i.fc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fb, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.fd = fadd reassoc nsz arcp contract afn <4 x float> %i.fc, splat (float -5.000000e-01)
  %i.fe = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fd)
  %i.ff = sitofp reassoc nsz arcp contract afn <4 x i32> %i.fe to <4 x float> ; 3 uses
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.ff, i64 0
  %foldExtExtBinop39 = fsub reassoc nsz arcp contract afn <4 x float> %i.fc, %i.ff
  %i.fg = extractelement <4 x float> %foldExtExtBinop39, i64 0 ; 4 uses
  %i.fh = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.fi = shl i32 %i.fh, 23
  %i.fj = add i32 %i.fi, 1065353216
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fg, f0x3C5DBE69
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fk, f0x3D5509F9
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, %i.fg
  %i.fn = fadd reassoc nsz arcp contract afn float %i.fm, f0x3E773CC5
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.fg
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, f0x3F3168B3
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.fg
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, f0x3F800016
  %i.fs = bitcast i32 %i.fj to float
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fr, %i.fs
  %i.fu = shufflevector <4 x float> %i.fc, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.fv = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fw = fsub reassoc nsz arcp contract afn <2 x float> %i.fu, %i.fv ; 4 uses
  %i.fx = fptosi <2 x float> %i.fv to <2 x i32>
  %i.fy = shl <2 x i32> %i.fx, splat (i32 23)
  %i.fz = add <2 x i32> %i.fy, splat (i32 1065353216)
  %i.ga = fmul reassoc nsz arcp contract afn <2 x float> %i.fw, splat (float f0x3C5DBE69)
  %i.gb = fadd reassoc nsz arcp contract afn <2 x float> %i.ga, splat (float f0x3D5509F9)
  %i.gc = fmul reassoc nsz arcp contract afn <2 x float> %i.gb, %i.fw
  %i.gd = fadd reassoc nsz arcp contract afn <2 x float> %i.gc, splat (float f0x3E773CC5)
  %i.ge = fmul reassoc nsz arcp contract afn <2 x float> %i.gd, %i.fw
  %i.gf = fadd reassoc nsz arcp contract afn <2 x float> %i.ge, splat (float f0x3F3168B3)
  %i.gg = fmul reassoc nsz arcp contract afn <2 x float> %i.gf, %i.fw
  %i.gh = fadd reassoc nsz arcp contract afn <2 x float> %i.gg, splat (float f0x3F800016)
  %i.gi = bitcast <2 x i32> %i.fz to <2 x float>
  %i.gj = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, %i.gi ; 2 uses
  %i.gk = fcmp reassoc nsz arcp contract afn ugt float %i.ea, 4.045000e-02
  %.sroa.speculated33.i = select i1 %i.gk, float %i.ft, float %i.eb ; 5 uses
  %i.gl = fcmp reassoc nsz arcp contract afn ugt float %i.dz, 4.045000e-02
  %i.gm = extractelement <2 x float> %i.gj, i64 0
  %.sroa.speculated30.i = select i1 %i.gl, float %i.gm, float %i.ec ; 5 uses
  %i.gn = fcmp reassoc nsz arcp contract afn ugt float %i.ed, 4.045000e-02
  %i.go = extractelement <2 x float> %i.gj, i64 1
  %.sroa.speculated27.i = select i1 %i.gn, float %i.go, float %i.ee ; 4 uses
  %i.gp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.speculated33.i, float %.sroa.speculated30.i)
  %i.gq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gp, float %.sroa.speculated27.i)
  %i.gr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.speculated33.i, float %.sroa.speculated30.i)
  %i.gs = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gr, float %.sroa.speculated27.i) ; 14 uses
  %i.gt = fsub reassoc nsz arcp contract afn float %i.gs, %i.gq ; 5 uses
  %i.gu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gs)
  %i.gv = fcmp reassoc nsz arcp contract afn ogt float %i.gu, f0x358637BD
  %i.gw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gt)
  %i.gx = fcmp reassoc nsz arcp contract afn ogt float %i.gw, f0x358637BD
  %or.cond.i.i = select i1 %i.gv, i1 %i.gx, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %dt_RGB_2_HSV.exit.i

bb.g:                                             ; preds = %bb.f
  %i.gy = fdiv reassoc nsz arcp contract afn float %i.gt, %i.gs
  %i.gz = fcmp reassoc nsz arcp contract afn oeq float %.sroa.speculated33.i, %i.gs
  br i1 %i.gz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ha = fsub reassoc nsz arcp contract afn float %.sroa.speculated30.i, %.sroa.speculated27.i
  %i.hb = fdiv reassoc nsz arcp contract afn float %i.ha, %i.gt
  br label %_dt_RGB_2_Hue.exit.i.i

bb.i:                                             ; preds = %bb.g
end_hunk_1
