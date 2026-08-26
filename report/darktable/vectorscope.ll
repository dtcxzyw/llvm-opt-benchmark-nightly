Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/vectorscope?download=true
inline.NumInlined: 103
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_vec_process:bb.a
  %i.aw = fpext reassoc nsz arcp contract afn float %.sroa.5.2235.i to double ; 2 uses
  %i.ax = extractelement <2 x float> %i.kz, i64 1
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 2, double noundef %i.av, double noundef %i.aw, double noundef %i.ay) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 3, double noundef %i.av, double noundef %i.aw, double noundef %i.ay) #18
  tail call void @cairo_mesh_pattern_end_patch(ptr noundef %i.aa) #18
  %i.az = load i32, ptr %i.i, align 4, !tbaa !106 ; 5 uses
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.az to float ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ba, float noundef %i.ba) #19
  %i.bc = fpext reassoc nsz arcp contract afn float %i.bb to double
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bd = fpext reassoc nsz arcp contract afn float %i.ka to double ; 3 uses
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
  %i.bo = fmul reassoc nsz arcp contract afn float %i.ka, f0x3E968904 ; 6 uses
  %i.bp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ka
  br label %bb.ak

.preheader169.i:                                  ; preds = %bb.g, %bb.e
  %.sroa.6222.0.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.ju, %bb.g ]
  %.sroa.5.0233.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %.sroa.5.2235.i, %bb.g ]
  %indvars.iv206.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next207.i, %bb.g ] ; 4 uses
  %.0139199.i = phi float [ 0.000000e+00, %bb.e ], [ %i.ka, %bb.g ]
  %i.bq = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.jx, %bb.g ]
  %i.br = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.kz, %bb.g ]
  %i.bs = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.ky, %bb.g ]
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
  %.sroa.6222.1.i = phi nsz float [ %.sroa.6222.0.i, %.preheader169.i ], [ %i.ju, %.loopexit168.i ] ; 2 uses
  %.sroa.5.1234.i = phi nsz float [ %.sroa.5.0233.i, %.preheader169.i ], [ %.sroa.5.2235.i, %.loopexit168.i ]
  %indvars.iv.i = phi i64 [ 0, %.preheader169.i ], [ %indvars.iv.next.i, %.loopexit168.i ] ; 3 uses
  %.1195.i = phi float [ %.0139199.i, %.preheader169.i ], [ %i.ka, %.loopexit168.i ] ; 2 uses
  %i.cq = phi <2 x float> [ %i.bq, %.preheader169.i ], [ %i.jx, %.loopexit168.i ] ; 3 uses
  %i.cr = phi <2 x float> [ %i.br, %.preheader169.i ], [ %i.kz, %.loopexit168.i ]
  %i.cs = phi <2 x double> [ %i.bs, %.preheader169.i ], [ %i.ky, %.loopexit168.i ] ; 2 uses
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
  %i.fh = fadd reassoc nsz arcp contract afn float %.reass181.i, %.reass182.i
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %.reass.i
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fb, 1.229820e-02
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fd, 2.048300e-02
  %i.fl = fsub reassoc nsz arcp contract afn float %i.fj, %i.fk
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, %i.ey ; 3 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fg, 1.150000e+00
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fm, f0x3E199998
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fn, %i.fo ; 2 uses
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fg, f0x3EAE147A
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, %i.fi ; 2 uses
  %.reass191.i = fmul reassoc nsz arcp contract afn float %i.fp, -1.660080e-06
  %.reass189.i = fmul reassoc nsz arcp contract afn float %i.fr, 2.648000e-05
  %.reass190.i = fmul reassoc nsz arcp contract afn float %i.fm, f0x388C30BE
  %i.fs = fadd reassoc nsz arcp contract afn float %.reass191.i, %.reass190.i
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, %.reass189.i
  %i.fu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ft, float 0.000000e+00)
  %i.fv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.fu, float f0x3E232000) ; 2 uses
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, f0x4196D000
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fw, f0x3F560000
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fv, 1.868750e+01
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, 1.000000e+00
  %i.ga = fdiv reassoc nsz arcp contract afn float %i.fx, %i.fz
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ga, float f0x430608CD)
  %i.gc = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fmul reassoc nsz arcp contract afn <2 x float> %i.gd, <float -2.015100e-05, float f0x382DF9B4>
  %i.gf = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, <float f0x38EB0462, float f0x387344EC>
  %i.gi = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul reassoc nsz arcp contract afn <2 x float> %i.gj, <float 5.310080e-06, float 1.464800e-06>
  %i.gl = fadd reassoc nsz arcp contract afn <2 x float> %i.ge, %i.gk
  %i.gm = fadd reassoc nsz arcp contract afn <2 x float> %i.gl, %i.gh
  %i.gn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gm, <2 x float> zeroinitializer)
  %i.go = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.gn, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.go, splat (float f0x4196D000)
  %i.gq = fadd reassoc nsz arcp contract afn <2 x float> %i.gp, splat (float f0x3F560000)
  %i.gr = fmul reassoc nsz arcp contract afn <2 x float> %i.go, splat (float 1.868750e+01)
  %i.gs = fadd reassoc nsz arcp contract afn <2 x float> %i.gr, splat (float 1.000000e+00)
  %i.gt = fdiv reassoc nsz arcp contract afn <2 x float> %i.gq, %i.gs
  %i.gu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.gt, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.gv = fmul reassoc nsz arcp contract afn <2 x float> %i.gu, <float f0xC0822279, float 1.990760e-01>
  %i.gw = fmul reassoc nsz arcp contract afn <2 x float> %i.gu, <float f0x3F8C63E9, float 3.524000e+00>
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gy = fadd reassoc nsz arcp contract afn <2 x float> %i.gv, %i.gx
  %i.gz = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fmul reassoc nsz arcp contract afn <2 x float> %i.ha, <float 5.427080e-01, float f0xBFA5DF3B>
  %i.hc = fadd reassoc nsz arcp contract afn <2 x float> %i.gy, %i.hb
  %i.hd = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, <float 7.194530e-02, float f0xBFCEF57D>
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hf = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, <float f0x40489119, float f0xBE6A7CB9>
  %i.hg = fadd reassoc nsz arcp contract afn <2 x float> %i.he, %i.hf
  %i.hh = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul reassoc nsz arcp contract afn <2 x float> %i.hi, <float f0xBEFB31D6, float f0x3FB3DEFE>
  %i.hk = fmul reassoc nsz arcp contract afn float %i.fb, f0xBF7A9091
  %i.hl = fmul reassoc nsz arcp contract afn float %i.fd, f0x3FF54420
  %i.hm = fadd reassoc nsz arcp contract afn float %i.hl, %i.hk
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hm, %i.ez
  %i.ho = fadd reassoc nsz arcp contract afn <2 x float> %i.hg, %i.hj
  br label %bb.y

bb.m:                                             ; preds = %bb.h
  %i.hp = load ptr, ptr %i.ab, align 64, !tbaa !118
  %i.hq = extractelement <4 x float> %i.cy, i64 0 ; 5 uses
  %i.hr = extractelement <4 x float> %i.cy, i64 1 ; 5 uses
  %i.hs = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hq, float %i.hr)
  %i.ht = extractelement <4 x float> %i.cy, i64 2 ; 4 uses
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hs, float %i.ht)
  %i.hv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hq, float %i.hr)
  %i.hw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hv, float %i.ht) ; 14 uses
  %i.hx = fsub reassoc nsz arcp contract afn float %i.hw, %i.hu ; 5 uses
  %i.hy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hw)
  %i.hz = fcmp reassoc nsz arcp contract afn ogt float %i.hy, f0x358637BD
  %i.ia = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hx)
  %i.ib = fcmp reassoc nsz arcp contract afn ogt float %i.ia, f0x358637BD
  %or.cond.i.i.i = select i1 %i.hz, i1 %i.ib, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %dt_RGB_2_HSV.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ic = fdiv reassoc nsz arcp contract afn float %i.hx, %i.hw
  %i.id = fcmp reassoc nsz arcp contract afn oeq float %i.hq, %i.hw
  br i1 %i.id, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ie = fsub reassoc nsz arcp contract afn float %i.hr, %i.ht
  %i.if = fdiv reassoc nsz arcp contract afn float %i.ie, %i.hx
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ig = fcmp reassoc nsz arcp contract afn oeq float %i.hr, %i.hw
  br i1 %i.ig, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ih = fsub reassoc nsz arcp contract afn float %i.ht, %i.hq
  %i.ii = fdiv reassoc nsz arcp contract afn float %i.ih, %i.hx
  %i.ij = fadd reassoc nsz arcp contract afn float %i.ii, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ik = fsub reassoc nsz arcp contract afn float %i.hq, %i.hr
  %i.il = fdiv reassoc nsz arcp contract afn float %i.ik, %i.hx
  %i.im = fadd reassoc nsz arcp contract afn float %i.il, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

_dt_RGB_2_Hue.exit.i.i.i:                         ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i = phi nsz float [ %i.if, %bb.o ], [ %i.ij, %bb.q ], [ %i.im, %bb.r ]
  %i.in = fmul reassoc nsz arcp contract afn float %.0.i.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.io = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.in)
  %i.ip = fsub reassoc nsz arcp contract afn float %i.in, %i.io
  br label %dt_RGB_2_HSV.exit.i.i

dt_RGB_2_HSV.exit.i.i:                            ; preds = %_dt_RGB_2_Hue.exit.i.i.i, %bb.m
  %.018.i.i.i = phi nsz float [ %i.ic, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %.0.i.i.i = phi nsz float [ %i.ip, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %i.iq = tail call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef 7, ptr noundef nonnull @dt_color_ryb_x_vtx, float noundef %.0.i.i.i, ptr noundef nonnull @rgb_y_vtx, ptr noundef %i.hp, i32 noundef 0) #18
  %i.ir = fmul reassoc nsz arcp contract afn float %.018.i.i.i, %i.hw ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn float %i.iq, 6.000000e+00 ; 2 uses
  %i.it = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.is) ; 2 uses
  %i.iu = fsub reassoc nsz arcp contract afn float %i.is, %i.it
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, %i.ir ; 2 uses
  %i.iw = fsub reassoc nsz arcp contract afn float %i.hw, %i.iv ; 3 uses
  %i.ix = fsub reassoc nsz arcp contract afn float %i.hw, %i.ir ; 7 uses
  %i.iy = fadd reassoc nsz arcp contract afn float %i.iv, %i.ix ; 3 uses
  %i.iz = fptoui float %i.it to i64
  switch i64 %i.iz, label %bb.w [
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
  %.sink54.i.i.i.i = phi float [ %i.iw, %bb.s ], [ %i.ix, %bb.u ], [ %i.hw, %bb.w ], [ %i.iy, %bb.v ], [ %i.ix, %bb.t ], [ %i.hw, %dt_RGB_2_HSV.exit.i.i ]
  %.sink53.i.i.i.i = phi float [ %i.hw, %bb.s ], [ %i.iw, %bb.u ], [ %i.ix, %bb.w ], [ %i.ix, %bb.v ], [ %i.hw, %bb.t ], [ %i.iy, %dt_RGB_2_HSV.exit.i.i ]
  %.sink.i.i.i.i = phi float [ %i.ix, %bb.s ], [ %i.hw, %bb.u ], [ %i.iw, %bb.w ], [ %i.hw, %bb.v ], [ %i.iy, %bb.t ], [ %i.ix, %dt_RGB_2_HSV.exit.i.i ]
  %i.ja = fmul reassoc nnan nsz arcp contract afn float %i.cu, f0x3CAAAAAB
  %i.jb = fadd reassoc nnan nsz arcp contract afn float %i.ja, %i.cm
  %i.jc = fmul reassoc nnan nsz arcp contract afn float %i.jb, f0x3F860A3A
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.jc) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.jd = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.je = insertelement <2 x float> %i.jd, float %sin.i, i64 1
  %i.jf = fpext <2 x float> %i.je to <2 x double>
  %i.jg = fmul reassoc nsz arcp contract afn <2 x double> %i.jf, splat (double 1.000000e-02)
  %i.jh = fptrunc <2 x double> %i.jg to <2 x float>
  %i.ji = insertelement <2 x float> poison, float %.sink54.i.i.i.i, i64 0
  %i.jj = insertelement <2 x float> %i.ji, float %.sink.i.i.i.i, i64 1
  br label %bb.y

bb.x:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 292, ptr noundef nonnull @__FUNCTION__._lib_histogram_vectorscope_bkgd) #18
  unreachable

bb.y:                                             ; preds = %_ryb2rgb.exit.i, %bb.l, %dt_xyY_to_Luv.exit.i, %bb.h
  %.sroa.12.2.i = phi nsz float [ %.sroa.6222.1.i, %bb.h ], [ %i.er, %dt_xyY_to_Luv.exit.i ], [ %i.hn, %bb.l ], [ %.sink53.i.i.i.i, %_ryb2rgb.exit.i ] ; 3 uses
  %i.jk = phi <2 x float> [ zeroinitializer, %bb.h ], [ %i.ee, %dt_xyY_to_Luv.exit.i ], [ %i.hc, %bb.l ], [ %i.jh, %_ryb2rgb.exit.i ] ; 4 uses
  %i.jl = phi <2 x float> [ %i.cq, %bb.h ], [ %i.et, %dt_xyY_to_Luv.exit.i ], [ %i.ho, %bb.l ], [ %i.jj, %_ryb2rgb.exit.i ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.jn = extractelement <2 x float> %i.jk, i64 0 ; 3 uses
  %i.jo = extractelement <2 x float> %i.jk, i64 1 ; 3 uses
  store <2 x float> %i.jk, ptr %i.jm, align 8, !tbaa !113
  %i.jp = extractelement <2 x float> %i.jl, i64 0 ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn ogt float %i.jp, %.sroa.12.2.i
  %i.jr = select reassoc nsz arcp contract afn i1 %i.jq, float %i.jp, float %.sroa.12.2.i ; 2 uses
  %i.js = extractelement <2 x float> %i.jl, i64 1 ; 2 uses
  %i.jt = fcmp reassoc nsz arcp contract afn ogt float %i.jr, %i.js
  %..i = select reassoc nsz arcp contract afn i1 %i.jt, float %i.jr, float %i.js ; 2 uses
  %i.ju = fdiv reassoc nsz arcp contract afn float %.sroa.12.2.i, %..i ; 5 uses
  %i.jv = insertelement <2 x float> poison, float %..i, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fdiv reassoc nsz arcp contract afn <2 x float> %i.jl, %i.jw ; 7 uses
  %i.jy = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.jn, float noundef %i.jo) #19 ; 4 uses
  %i.jz = fcmp reassoc nsz arcp contract afn ogt float %.1195.i, %i.jy
  %i.ka = select reassoc nsz arcp contract afn i1 %i.jz, float %.1195.i, float %i.jy ; 11 uses
  %i.kb = or i32 %i.ct, %i.cl
  %or.cond.i = icmp eq i32 %i.kb, 0
  br i1 %or.cond.i, label %.preheader167.preheader.i, label %bb.z

.preheader167.preheader.i:                        ; preds = %bb.y
  %i.kc = fpext <2 x float> %i.jk to <2 x double>
  br label %.loopexit168.i

bb.z:                                             ; preds = %bb.y
  %i.kd = fcmp reassoc nsz arcp contract afn ult float %i.jy, f0x00800000 ; 2 uses
  %i.ke = fdiv reassoc nsz arcp contract afn float %i.ka, %i.jy ; 2 uses
  tail call void @cairo_mesh_pattern_begin_patch(ptr noundef %i.aa) #18
  tail call void @cairo_mesh_pattern_move_to(ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  %i.kf = extractelement <2 x double> %i.cs, i64 0
  %i.kg = extractelement <2 x double> %i.cs, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.kf, double noundef %i.kg) #18
  %i.kh = fmul reassoc nsz arcp contract afn float %i.ke, %i.jn
  %i.ki = fmul reassoc nsz arcp contract afn float %i.ke, %i.jo
  %.sroa.5.1.i = select nsz i1 %i.kd, float %i.jn, float %i.kh
  %.sroa.14.1.i = select nsz i1 %i.kd, float %i.jo, float %i.ki
  %i.kj = insertelement <2 x float> poison, float %.sroa.5.1.i, i64 0
  %i.kk = insertelement <2 x float> %i.kj, float %.sroa.14.1.i, i64 1
  %i.kl = fpext <2 x float> %i.kk to <2 x double> ; 3 uses
  %i.km = extractelement <2 x double> %i.kl, i64 0
  %i.kn = extractelement <2 x double> %i.kl, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.km, double noundef %i.kn) #18
  %i.ko = extractelement <2 x float> %i.cq, i64 0
  %i.kp = fpext reassoc nsz arcp contract afn float %i.ko to double ; 2 uses
  %i.kq = fpext reassoc nsz arcp contract afn float %.sroa.6222.1.i to double ; 2 uses
  %i.kr = extractelement <2 x float> %i.cq, i64 1
  %i.ks = fpext reassoc nsz arcp contract afn float %i.kr to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 0, double noundef %i.kp, double noundef %i.kq, double noundef %i.ks) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 1, double noundef %i.kp, double noundef %i.kq, double noundef %i.ks) #18
  %i.kt = extractelement <2 x float> %i.jx, i64 0
  %i.ku = fpext reassoc nsz arcp contract afn float %i.kt to double ; 2 uses
  %i.kv = fpext reassoc nsz arcp contract afn float %i.ju to double ; 2 uses
  %i.kw = extractelement <2 x float> %i.jx, i64 1
  %i.kx = fpext reassoc nsz arcp contract afn float %i.kw to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 2, double noundef %i.ku, double noundef %i.kv, double noundef %i.kx) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 3, double noundef %i.ku, double noundef %i.kv, double noundef %i.kx) #18
  tail call void @cairo_mesh_pattern_end_patch(ptr noundef %i.aa) #18
  br label %.loopexit168.i

.loopexit168.i:                                   ; preds = %bb.z, %.preheader167.preheader.i
  %.sroa.5.2235.i = phi nsz float [ %i.ju, %.preheader167.preheader.i ], [ %.sroa.5.1234.i, %bb.z ] ; 3 uses
end_hunk_0
begin_hunk_1_@dt_vec_get_sector_angles
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
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, f0x38D1B717
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ci, float 0.000000e+00)
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cj, float f0x3E232000) ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, f0x4196D000
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, f0x3F560000
  %i.cn = fmul reassoc nsz arcp contract afn float %i.ck, 1.868750e+01
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, 1.000000e+00
  %i.cp = fdiv reassoc nsz arcp contract afn float %i.cm, %i.co
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cp, float f0x430608CD) ; 2 uses
  %i.cr = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, <float 5.799990e-01, float f0x3F8F716D>
  %i.cu = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.cc
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.cu, %i.ct
  %i.cw = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, splat (float f0x38D1B717)
  %i.cx = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cw, <2 x float> zeroinitializer)
  %i.cy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.cx, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.cz = fmul reassoc nsz arcp contract afn <2 x float> %i.cy, splat (float f0x4196D000)
  %i.da = fadd reassoc nsz arcp contract afn <2 x float> %i.cz, splat (float f0x3F560000)
  %i.db = fmul reassoc nsz arcp contract afn <2 x float> %i.cy, splat (float 1.868750e+01)
  %i.dc = fadd reassoc nsz arcp contract afn <2 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = fdiv reassoc nsz arcp contract afn <2 x float> %i.da, %i.dc
  %i.de = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.dd, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.de) ; 2 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, 5.000000e-01
  %i.dh = fmul reassoc nsz arcp contract afn <2 x float> %i.de, <float 1.990760e-01, float f0xC0822279>
  %i.di = fmul reassoc nsz arcp contract afn float %i.df, 0.000000e+00
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cq, 0.000000e+00
  %i.dk = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.cq, i64 1
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dm = fmul reassoc nsz arcp contract afn <4 x float> %i.dl, <float -0.000000e+00, float 5.427080e-01, float f0xBFA5DF3B, float 0.000000e+00>
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dg, %i.dj ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, 4.400000e-01
  %i.dp = fmul reassoc nsz arcp contract afn float %i.dn, 5.600000e-01
  %i.dq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dp
  %i.dr = fdiv reassoc nsz arcp contract afn float %i.do, %i.dq
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, -1.629550e-11
  %i.dt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ds, float 0.000000e+00)
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = fmul reassoc nsz arcp contract afn <2 x float> %i.de, <float 3.524000e+00, float f0x3F8C63E9>
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dx = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.dy = fadd reassoc nsz arcp contract afn <4 x float> %i.dw, %i.dx
  %i.dz = shufflevector <4 x float> %i.du, <4 x float> %i.dy, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ea = insertelement <4 x float> %i.dz, float %i.di, i64 3
  %i.eb = fadd reassoc nsz arcp contract afn <4 x float> %i.ea, %i.dm
  store <4 x float> %i.eb, ptr %1, align 4, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ed = load <4 x float>, ptr %0, align 4, !tbaa !113 ; 3 uses
  %i.ee = load float, ptr %i.ec, align 4, !tbaa !113 ; 2 uses
  %i.ef = extractelement <4 x float> %i.ed, i64 0 ; 2 uses
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, f0x3D9E8391
  %i.eh = fmul reassoc nsz arcp contract afn float %i.ee, f0x3D9E8391
  %i.ei = extractelement <4 x float> %i.ed, i64 2 ; 2 uses
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ei, f0x3D9E8391
  %i.ek = fmul reassoc nsz arcp contract afn <4 x float> %i.ed, splat (float f0x3F72A76F)
  %i.el = fadd reassoc nsz arcp contract afn <4 x float> %i.ek, splat (float f0x3D55891A)
  %i.em = bitcast <4 x float> %i.el to <4 x i32>  ; 2 uses
  %i.en = and <4 x i32> %i.em, splat (i32 8388607)
  %i.eo = or disjoint <4 x i32> %i.en, splat (i32 1065353216)
  %i.ep = bitcast <4 x i32> %i.eo to <4 x float>  ; 5 uses
  %i.eq = lshr <4 x i32> %i.em, splat (i32 23)
  %i.er = and <4 x i32> %i.eq, splat (i32 255)
  %i.es = add nsw <4 x i32> %i.er, splat (i32 -127)
  %i.et = sitofp <4 x i32> %i.es to <4 x float>
  %i.eu = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ep, splat (float f0x3D74552F)
  %i.ev = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.eu, splat (float f0xBEEE7397)
  %i.ew = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ev, %i.ep
  %i.ex = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ew, splat (float f0x3FBD96DD)
  %i.ey = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ex, %i.ep
  %i.ez = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ey, splat (float f0xC02153F6)
  %i.fa = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ez, %i.ep
  %i.fb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fa, splat (float f0x4038D96C)
  %i.fc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ep, splat (float -1.000000e+00)
  %i.fd = fmul reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fc
  %i.fe = fadd reassoc nsz arcp contract afn <4 x float> %i.fd, %i.et
  %i.ff = fmul reassoc nsz arcp contract afn <4 x float> %i.fe, splat (float 2.400000e+00)
  %i.fg = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ff, <4 x float> splat (float 1.290000e+02))
  %i.fh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fg, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.fi = fadd reassoc nsz arcp contract afn <4 x float> %i.fh, splat (float -5.000000e-01)
  %i.fj = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fi)
  %i.fk = sitofp reassoc nsz arcp contract afn <4 x i32> %i.fj to <4 x float> ; 3 uses
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.fk, i64 0
  %foldExtExtBinop39 = fsub reassoc nsz arcp contract afn <4 x float> %i.fh, %i.fk
  %i.fl = extractelement <4 x float> %foldExtExtBinop39, i64 0 ; 4 uses
  %i.fm = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.fn = shl i32 %i.fm, 23
  %i.fo = add i32 %i.fn, 1065353216
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fl, f0x3C5DBE69
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, f0x3D5509F9
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, %i.fl
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, f0x3E773CC5
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, %i.fl
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, f0x3F3168B3
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, %i.fl
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, f0x3F800016
  %i.fx = bitcast i32 %i.fo to float
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fw, %i.fx
  %i.fz = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ga = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gb = fsub reassoc nsz arcp contract afn <2 x float> %i.fz, %i.ga ; 4 uses
  %i.gc = fptosi <2 x float> %i.ga to <2 x i32>
  %i.gd = shl <2 x i32> %i.gc, splat (i32 23)
  %i.ge = add <2 x i32> %i.gd, splat (i32 1065353216)
  %i.gf = fmul reassoc nsz arcp contract afn <2 x float> %i.gb, splat (float f0x3C5DBE69)
  %i.gg = fadd reassoc nsz arcp contract afn <2 x float> %i.gf, splat (float f0x3D5509F9)
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gb
  %i.gi = fadd reassoc nsz arcp contract afn <2 x float> %i.gh, splat (float f0x3E773CC5)
  %i.gj = fmul reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gb
  %i.gk = fadd reassoc nsz arcp contract afn <2 x float> %i.gj, splat (float f0x3F3168B3)
  %i.gl = fmul reassoc nsz arcp contract afn <2 x float> %i.gk, %i.gb
  %i.gm = fadd reassoc nsz arcp contract afn <2 x float> %i.gl, splat (float f0x3F800016)
  %i.gn = bitcast <2 x i32> %i.ge to <2 x float>
  %i.go = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, %i.gn ; 2 uses
  %i.gp = fcmp reassoc nsz arcp contract afn ugt float %i.ef, 4.045000e-02
  %.sroa.speculated33.i = select i1 %i.gp, float %i.fy, float %i.eg ; 5 uses
  %i.gq = fcmp reassoc nsz arcp contract afn ugt float %i.ee, 4.045000e-02
  %i.gr = extractelement <2 x float> %i.go, i64 0
  %.sroa.speculated30.i = select i1 %i.gq, float %i.gr, float %i.eh ; 5 uses
  %i.gs = fcmp reassoc nsz arcp contract afn ugt float %i.ei, 4.045000e-02
  %i.gt = extractelement <2 x float> %i.go, i64 1
  %.sroa.speculated27.i = select i1 %i.gs, float %i.gt, float %i.ej ; 4 uses
  %i.gu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.speculated33.i, float %.sroa.speculated30.i)
  %i.gv = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gu, float %.sroa.speculated27.i)
  %i.gw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.speculated33.i, float %.sroa.speculated30.i)
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gw, float %.sroa.speculated27.i) ; 14 uses
  %i.gy = fsub reassoc nsz arcp contract afn float %i.gx, %i.gv ; 5 uses
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gx)
  %i.ha = fcmp reassoc nsz arcp contract afn ogt float %i.gz, f0x358637BD
  %i.hb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gy)
  %i.hc = fcmp reassoc nsz arcp contract afn ogt float %i.hb, f0x358637BD
  %or.cond.i.i = select i1 %i.ha, i1 %i.hc, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %dt_RGB_2_HSV.exit.i

bb.g:                                             ; preds = %bb.f
  %i.hd = fdiv reassoc nsz arcp contract afn float %i.gy, %i.gx
  %i.he = fcmp reassoc nsz arcp contract afn oeq float %.sroa.speculated33.i, %i.gx
  br i1 %i.he, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hf = fsub reassoc nsz arcp contract afn float %.sroa.speculated30.i, %.sroa.speculated27.i
  %i.hg = fdiv reassoc nsz arcp contract afn float %i.hf, %i.gy
  br label %_dt_RGB_2_Hue.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.hh = fcmp reassoc nsz arcp contract afn oeq float %.sroa.speculated30.i, %i.gx
  br i1 %i.hh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hi = fsub reassoc nsz arcp contract afn float %.sroa.speculated27.i, %.sroa.speculated33.i
  %i.hj = fdiv reassoc nsz arcp contract afn float %i.hi, %i.gy
  %i.hk = fadd reassoc nsz arcp contract afn float %i.hj, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.hl = fsub reassoc nsz arcp contract afn float %.sroa.speculated33.i, %.sroa.speculated30.i
  %i.hm = fdiv reassoc nsz arcp contract afn float %i.hl, %i.gy
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hm, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

_dt_RGB_2_Hue.exit.i.i:                           ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i.i = phi nsz float [ %i.hg, %bb.h ], [ %i.hk, %bb.j ], [ %i.hn, %bb.k ]
  %i.ho = fmul reassoc nsz arcp contract afn float %.0.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.hp = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ho)
  %i.hq = fsub reassoc nsz arcp contract afn float %i.ho, %i.hp
  br label %dt_RGB_2_HSV.exit.i

dt_RGB_2_HSV.exit.i:                              ; preds = %_dt_RGB_2_Hue.exit.i.i, %bb.f
  %.018.i.i = phi nsz float [ %i.hd, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %bb.f ]
  %.0.i.i = phi nsz float [ %i.hq, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %bb.f ]
  %i.hr = tail call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef 7, ptr noundef nonnull @dt_color_ryb_x_vtx, float noundef %.0.i.i, ptr noundef nonnull @dt_color_ryb_y_vtx, ptr noundef %4, i32 noundef 0) #18
  %i.hs = fmul reassoc nsz arcp contract afn float %.018.i.i, %i.gx ; 2 uses
  %i.ht = fsub reassoc nsz arcp contract afn float %i.gx, %i.hs ; 7 uses
  %i.hu = fmul reassoc nsz arcp contract afn float %i.hr, 6.000000e+00 ; 2 uses
  %i.hv = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hu) ; 2 uses
  %i.hw = fsub reassoc nsz arcp contract afn float %i.hu, %i.hv
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, %i.hs ; 2 uses
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %i.ht ; 3 uses
  %i.hz = fsub reassoc nsz arcp contract afn float %i.gx, %i.hx ; 3 uses
  %i.ia = fptoui float %i.hv to i64
  switch i64 %i.ia, label %bb.p [
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
  %.sink54.i.i.i = phi float [ %i.hz, %bb.l ], [ %i.ht, %bb.n ], [ %i.gx, %bb.p ], [ %i.hy, %bb.o ], [ %i.ht, %bb.m ], [ %i.gx, %dt_RGB_2_HSV.exit.i ] ; 5 uses
  %.sink53.i.i.i = phi float [ %i.gx, %bb.l ], [ %i.hz, %bb.n ], [ %i.ht, %bb.p ], [ %i.ht, %bb.o ], [ %i.gx, %bb.m ], [ %i.hy, %dt_RGB_2_HSV.exit.i ] ; 5 uses
  %.sink.i.i.i = phi float [ %i.ht, %bb.l ], [ %i.gx, %bb.n ], [ %i.hz, %bb.p ], [ %i.gx, %bb.o ], [ %i.hy, %bb.m ], [ %i.ht, %dt_RGB_2_HSV.exit.i ] ; 4 uses
  %i.ib = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sink54.i.i.i, float %.sink53.i.i.i)
  %i.ic = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ib, float %.sink.i.i.i)
  %i.id = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink54.i.i.i, float %.sink53.i.i.i)
  %i.ie = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.id, float %.sink.i.i.i) ; 4 uses
  %i.if = fsub reassoc nsz arcp contract afn float %i.ie, %i.ic ; 5 uses
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ie)
  %i.ih = fcmp reassoc nsz arcp contract afn ogt float %i.ig, f0x358637BD
  %i.ii = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.if)
  %i.ij = fcmp reassoc nsz arcp contract afn ogt float %i.ii, f0x358637BD
end_hunk_1
