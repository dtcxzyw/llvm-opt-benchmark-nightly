Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/colorspaces?download=true
inline.NumInlined: 104
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 50
begin_hunk_0_@dt_colorspaces_init:bb.a
  %i.bs = call i64 @g_strlcpy(ptr noundef nonnull %i.br, ptr noundef %i.bp, i64 noundef 512) #26 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1032
  store ptr %i.bo, ptr %i.bt, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1040
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 1056
  store i32 4, ptr %i.bv, align 8, !tbaa !109
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 1060
  store i32 -1, ptr %i.bw, align 4, !tbaa !86
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %i.bu, align 8, !tbaa !18
  br label %_create_profile.exit248

_create_profile.exit248:                          ; preds = %_create_profile.exit246, %bb.f
  %i.bx = call ptr @g_list_append(ptr noundef %i.bl, ptr noundef %i.bq) #26 ; 2 uses
  store ptr %i.bx, ptr %i.h, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store <4 x double> <double 2.400000e+00, double f0x3FEE54EDCD0AEB60, double f0x3FAAB1232F514A03, double f0x3FB3D0722149B580>, ptr %i.e, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store double 4.045000e-02, ptr %i.by, align 16
  %i.bz = call ptr @cmsBuildParametricToneCurve(ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.e) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 16780545, ptr %3, align 4
  %i.ca = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24, ptr noundef nonnull @D65xyY, ptr noundef nonnull @sRGB_Primaries, ptr noundef %i.bz, ptr noundef nonnull %3, i32 noundef 0)
  call void @cmsFreeToneCurve(ptr noundef %i.bz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.cb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #26
  %i.cc = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 7 uses
  %.not.i249 = icmp eq ptr %i.cc, null
  br i1 %.not.i249, label %_create_profile.exit250, label %bb.g

bb.g:                                             ; preds = %_create_profile.exit248
  store i32 1, ptr %i.cc, align 8, !tbaa !88
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 516
  %i.ce = call i64 @g_strlcpy(ptr noundef nonnull %i.cd, ptr noundef %i.cb, i64 noundef 512) #26 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 1032
  store ptr %i.ca, ptr %i.cf, align 8, !tbaa !96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 1040
  store i32 0, ptr %i.cg, align 8, !tbaa !110
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 1044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ch, i8 -1, i64 20, i1 false)
  br label %_create_profile.exit250

_create_profile.exit250:                          ; preds = %_create_profile.exit248, %bb.g
  %i.ci = call ptr @g_list_append(ptr noundef %i.bx, ptr noundef %i.cc) #26 ; 2 uses
  store ptr %i.ci, ptr %i.h, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store <4 x double> <double 2.400000e+00, double f0x3FEE54EDCD0AEB60, double f0x3FAAB1232F514A03, double f0x3FB3D0722149B580>, ptr %i.d, align 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store double 4.045000e-02, ptr %i.cj, align 16
  %i.ck = call ptr @cmsBuildParametricToneCurve(ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.d) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 16780545, ptr %2, align 4
  %i.cl = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24, ptr noundef nonnull @D65xyY, ptr noundef nonnull @sRGB_Primaries, ptr noundef %i.ck, ptr noundef nonnull %2, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.ck) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.cm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #26
  %i.cn = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i251 = icmp eq ptr %i.cn, null
  br i1 %.not.i251, label %_create_profile.exit252, label %bb.h

bb.h:                                             ; preds = %_create_profile.exit250
  store i32 1, ptr %i.cn, align 8, !tbaa !88
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 516
  %i.cp = call i64 @g_strlcpy(ptr noundef nonnull %i.co, ptr noundef %i.cm, i64 noundef 512) #26 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 1032
  store ptr %i.cl, ptr %i.cq, align 8, !tbaa !96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1040
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 1056
  store i32 5, ptr %i.cs, align 8, !tbaa !109
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 1060
  store i32 0, ptr %i.ct, align 4, !tbaa !86
  store <4 x i32> <i32 -1, i32 0, i32 1, i32 1>, ptr %i.cr, align 8, !tbaa !18
  br label %_create_profile.exit252

_create_profile.exit252:                          ; preds = %_create_profile.exit250, %bb.h
  %i.cu = call ptr @g_list_append(ptr noundef %i.ci, ptr noundef %i.cn) #26 ; 2 uses
  store ptr %i.cu, ptr %i.h, align 8, !tbaa !108
  %i.cv = call ptr @cmsBuildGamma(ptr noundef null, double noundef f0x4001980000000000) #26 ; 2 uses
  %i.cw = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.183, ptr noundef nonnull @D65xyY, ptr noundef nonnull @Adobe_Primaries, ptr noundef %i.cv, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.cv) #26
  %i.cx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #26
  %i.cy = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i253 = icmp eq ptr %i.cy, null
  br i1 %.not.i253, label %_create_profile.exit254, label %bb.i

bb.i:                                             ; preds = %_create_profile.exit252
  store i32 2, ptr %i.cy, align 8, !tbaa !88
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 516
  %i.da = call i64 @g_strlcpy(ptr noundef nonnull %i.cz, ptr noundef %i.cx, i64 noundef 512) #26 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1032
  store ptr %i.cw, ptr %i.db, align 8, !tbaa !96
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 1040
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 1056
  store i32 6, ptr %i.dd, align 8, !tbaa !109
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 1060
  store i32 1, ptr %i.de, align 4, !tbaa !86
  store <4 x i32> <i32 1, i32 1, i32 2, i32 2>, ptr %i.dc, align 8, !tbaa !18
  br label %_create_profile.exit254

_create_profile.exit254:                          ; preds = %_create_profile.exit252, %bb.i
  %i.df = call ptr @g_list_append(ptr noundef %i.cu, ptr noundef %i.cy) #26 ; 2 uses
  store ptr %i.df, ptr %i.h, align 8, !tbaa !108
  %i.dg = call ptr @cmsBuildGamma(ptr noundef null, double noundef 1.000000e+00) #26 ; 2 uses
  %i.dh = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.184, ptr noundef nonnull @D65xyY, ptr noundef nonnull @Rec709_Primaries, ptr noundef %i.dg, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.dg) #26
  %i.di = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #26
  %i.dj = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i255 = icmp eq ptr %i.dj, null
  br i1 %.not.i255, label %_create_profile.exit256, label %bb.j

bb.j:                                             ; preds = %_create_profile.exit254
  store i32 3, ptr %i.dj, align 8, !tbaa !88
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 516
  %i.dl = call i64 @g_strlcpy(ptr noundef nonnull %i.dk, ptr noundef %i.di, i64 noundef 512) #26 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 1032
  store ptr %i.dh, ptr %i.dm, align 8, !tbaa !96
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 1040
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 1056
  store i32 7, ptr %i.do, align 8, !tbaa !109
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 1060
  store i32 2, ptr %i.dp, align 4, !tbaa !86
  store <4 x i32> <i32 2, i32 2, i32 3, i32 3>, ptr %i.dn, align 8, !tbaa !18
  br label %_create_profile.exit256

_create_profile.exit256:                          ; preds = %_create_profile.exit254, %bb.j
  %i.dq = call ptr @g_list_append(ptr noundef %i.df, ptr noundef %i.dj) #26 ; 2 uses
  store ptr %i.dq, ptr %i.h, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store <4 x double> <double f0x4001C71C71C71C72, double f0x3FED1E0C942633B7, double f0x3FB70F9B5ECE624D, double f0x3FCC71C71C71C71C>, ptr %i.c, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double 8.100000e-02, ptr %i.dr, align 16
  %i.ds = call ptr @cmsBuildParametricToneCurve(ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.c) #26 ; 2 uses
  %i.dt = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.185, ptr noundef nonnull @D65xyY, ptr noundef nonnull @Rec709_Primaries, ptr noundef %i.ds, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.ds) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.du = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #26
  %i.dv = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i257 = icmp eq ptr %i.dv, null
  br i1 %.not.i257, label %_create_profile.exit258, label %bb.k

bb.k:                                             ; preds = %_create_profile.exit256
  store i32 20, ptr %i.dv, align 8, !tbaa !88
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 516
  %i.dx = call i64 @g_strlcpy(ptr noundef nonnull %i.dw, ptr noundef %i.du, i64 noundef 512) #26 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1032
  store ptr %i.dt, ptr %i.dy, align 8, !tbaa !96
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 1040
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 1056
  store i32 -1, ptr %i.ea, align 8, !tbaa !109
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 1060
  store i32 3, ptr %i.eb, align 4, !tbaa !86
  store <4 x i32> <i32 3, i32 3, i32 -1, i32 -1>, ptr %i.dz, align 8, !tbaa !18
  br label %_create_profile.exit258

_create_profile.exit258:                          ; preds = %_create_profile.exit256, %bb.k
  %i.ec = call ptr @g_list_append(ptr noundef %i.dq, ptr noundef %i.dv) #26 ; 2 uses
  store ptr %i.ec, ptr %i.h, align 8, !tbaa !108
  %i.ed = call ptr @cmsBuildGamma(ptr noundef null, double noundef 1.000000e+00) #26 ; 2 uses
  %i.ee = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.186, ptr noundef nonnull @D65xyY, ptr noundef nonnull @Rec2020_Primaries, ptr noundef %i.ed, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.ed) #26
  %i.ef = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #26
  %i.eg = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i259 = icmp eq ptr %i.eg, null
  br i1 %.not.i259, label %_create_profile.exit260, label %bb.l

bb.l:                                             ; preds = %_create_profile.exit258
  store i32 4, ptr %i.eg, align 8, !tbaa !88
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 516
  %i.ei = call i64 @g_strlcpy(ptr noundef nonnull %i.eh, ptr noundef %i.ef, i64 noundef 512) #26 ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 1032
  store ptr %i.ee, ptr %i.ej, align 8, !tbaa !96
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 1040
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 1056
  store i32 8, ptr %i.el, align 8, !tbaa !109
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 1060
  store i32 4, ptr %i.em, align 4, !tbaa !86
  store <4 x i32> splat (i32 4), ptr %i.ek, align 8, !tbaa !18
  br label %_create_profile.exit260

_create_profile.exit260:                          ; preds = %_create_profile.exit258, %bb.l
  %i.en = call ptr @g_list_append(ptr noundef %i.ec, ptr noundef %i.eg) #26 ; 2 uses
  store ptr %i.en, ptr %i.h, align 8, !tbaa !108
  %i.eo = call noalias dereferenceable_or_null(16384) ptr @g_malloc(i64 noundef 16384) #29 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %_PQ_fct.exit.i.1, %_create_profile.exit260
  %indvars.iv.i.i = phi i64 [ 0, %_create_profile.exit260 ], [ %indvars.iv.next.i.i.1, %_PQ_fct.exit.i.1 ] ; 4 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.eq = uitofp nneg i32 %i.ep to float
  %i.er = fmul reassoc nnan nsz arcp contract afn float %i.eq, f0x39800801 ; 2 uses
  %i.es = fcmp reassoc nsz arcp contract afn oeq float %i.er, 0.000000e+00
  br i1 %i.es, label %_PQ_fct.exit.i, label %_PQ_fct.exit4.i

_PQ_fct.exit4.i:                                  ; preds = %bb.m
  %i.et = fpext reassoc nsz arcp contract afn float %i.er to double
  %i.eu = call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.et, double f0x3F89F9B5860989B1) ; 2 uses
  %i.ev = fadd reassoc nsz arcp contract afn double %i.eu, f0xBFEAC00000000000 ; 2 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ogt double %i.ev, 0.000000e+00
  %i.ex = select reassoc nsz arcp contract afn i1 %i.ew, double %i.ev, double 0.000000e+00
  %i.ey = fmul reassoc nnan nsz arcp contract afn double %i.eu, 1.868750e+01
  %i.ez = fsub reassoc nsz arcp contract afn double f0x4032DA0000000000, %i.ey
  %i.fa = fdiv reassoc nsz arcp contract afn double %i.ex, %i.ez
  %i.fb = call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.fa, double f0x40191C0D56E7162B) ; 2 uses
  %i.fc = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fb)
  %i.fd = fcmp reassoc nsz arcp contract afn olt double %i.fc, 1.000000e+00
  br i1 %i.fd, label %bb.n, label %_PQ_fct.exit.i

bb.n:                                             ; preds = %_PQ_fct.exit4.i
  %i.fe = fptrunc double %i.fb to float
  %i.ff = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fe)
  br label %_PQ_fct.exit.i

_PQ_fct.exit.i:                                   ; preds = %bb.n, %_PQ_fct.exit4.i, %bb.m
  %i.fg = phi float [ 1.000000e+00, %_PQ_fct.exit4.i ], [ %i.ff, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.i.i
  store float %i.fg, ptr %i.fh, align 4, !tbaa !14
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fi = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.fj = uitofp nneg i32 %i.fi to float
  %i.fk = fmul reassoc nnan nsz arcp contract afn float %i.fj, f0x39800801 ; 2 uses
  %i.fl = fcmp reassoc nsz arcp contract afn oeq float %i.fk, 0.000000e+00
  br i1 %i.fl, label %_PQ_fct.exit.i.1, label %_PQ_fct.exit4.i.1

_PQ_fct.exit4.i.1:                                ; preds = %_PQ_fct.exit.i
  %i.fm = fpext reassoc nsz arcp contract afn float %i.fk to double
  %i.fn = call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.fm, double f0x3F89F9B5860989B1) ; 2 uses
  %i.fo = fadd reassoc nsz arcp contract afn double %i.fn, f0xBFEAC00000000000 ; 2 uses
  %i.fp = fcmp reassoc nsz arcp contract afn ogt double %i.fo, 0.000000e+00
  %i.fq = select reassoc nsz arcp contract afn i1 %i.fp, double %i.fo, double 0.000000e+00
  %i.fr = fmul reassoc nnan nsz arcp contract afn double %i.fn, 1.868750e+01
  %i.fs = fsub reassoc nsz arcp contract afn double f0x4032DA0000000000, %i.fr
  %i.ft = fdiv reassoc nsz arcp contract afn double %i.fq, %i.fs
  %i.fu = call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.ft, double f0x40191C0D56E7162B) ; 2 uses
  %i.fv = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fu)
  %i.fw = fcmp reassoc nsz arcp contract afn olt double %i.fv, 1.000000e+00
  br i1 %i.fw, label %bb.o, label %_PQ_fct.exit.i.1

bb.o:                                             ; preds = %_PQ_fct.exit4.i.1
  %i.fx = fptrunc double %i.fu to float
  %i.fy = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fx)
  br label %_PQ_fct.exit.i.1

_PQ_fct.exit.i.1:                                 ; preds = %bb.o, %_PQ_fct.exit4.i.1, %_PQ_fct.exit.i
  %i.fz = phi float [ 1.000000e+00, %_PQ_fct.exit4.i.1 ], [ %i.fy, %bb.o ], [ 0.000000e+00, %_PQ_fct.exit.i ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next.i.i
  store float %i.fz, ptr %i.ga, align 4, !tbaa !14
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 4096
  br i1 %exitcond.not.i.i.1, label %_colorspaces_create_pq_rec2020_rgb_profile.exit, label %bb.m

_colorspaces_create_pq_rec2020_rgb_profile.exit:  ; preds = %_PQ_fct.exit.i.1
  %i.gb = call ptr @cmsBuildTabulatedToneCurveFloat(ptr noundef null, i32 noundef 4096, ptr noundef nonnull %i.eo) #26 ; 2 uses
  call void @g_free(ptr noundef nonnull %i.eo) #26
  %i.gc = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.30, ptr noundef nonnull @D65xyY, ptr noundef nonnull @Rec2020_Primaries, ptr noundef %i.gb, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.gb) #26
  %i.gd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #26
  %i.ge = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i261 = icmp eq ptr %i.ge, null
  br i1 %.not.i261, label %_create_profile.exit262, label %bb.p

bb.p:                                             ; preds = %_colorspaces_create_pq_rec2020_rgb_profile.exit
  store i32 22, ptr %i.ge, align 8, !tbaa !88
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 516
  %i.gg = call i64 @g_strlcpy(ptr noundef nonnull %i.gf, ptr noundef %i.gd, i64 noundef 512) #26 ; 0 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1032
  store ptr %i.gc, ptr %i.gh, align 8, !tbaa !96
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 1040
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 1056
  store i32 9, ptr %i.gj, align 8, !tbaa !109
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 1060
  store i32 5, ptr %i.gk, align 4, !tbaa !86
  store <4 x i32> splat (i32 5), ptr %i.gi, align 8, !tbaa !18
  br label %_create_profile.exit262

_create_profile.exit262:                          ; preds = %_colorspaces_create_pq_rec2020_rgb_profile.exit, %bb.p
  %i.gl = call ptr @g_list_append(ptr noundef %i.en, ptr noundef %i.ge) #26 ; 2 uses
  store ptr %i.gl, ptr %i.h, align 8, !tbaa !108
  %i.gm = call noalias dereferenceable_or_null(16384) ptr @g_malloc(i64 noundef 16384) #29 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_create_profile.exit262
  %index = phi i64 [ 0, %_create_profile.exit262 ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %_create_profile.exit262 ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.gn = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.go = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gn, splat (float f0x39800801)
  %i.gp = fpext reassoc nnan nsz arcp contract afn <8 x float> %i.go to <8 x double>
  %i.gq = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.gp, splat (double f0x3FEEB851EB851EB8)
  %i.gr = fadd reassoc nsz arcp contract afn <8 x double> %i.gq, splat (double 4.000000e-02) ; 4 uses
  %i.gs = fcmp reassoc nsz arcp contract afn ugt <8 x double> %i.gr, splat (double 5.000000e-01) ; 2 uses
  %i.gt = fmul reassoc nsz arcp contract afn <8 x double> %i.gr, %i.gr
  %i.gu = fmul reassoc nsz arcp contract afn <8 x double> %i.gt, splat (double f0x3FD5555555555555) ; 2 uses
  %i.gv = fcmp reassoc nsz arcp contract afn uge <8 x double> %i.gu, splat (double 1.000000e+00)
  %i.gw = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.gr, splat (double f0x40165E05183E19B4)
  %i.gx = fadd reassoc nnan nsz arcp contract afn <8 x double> %i.gw, splat (double f0xC0090C1EB5B28AA2)
  %i.gy = call reassoc nnan nsz arcp contract afn <8 x double> @llvm.exp.v8f64(<8 x double> %i.gx)
  %i.gz = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.gy, splat (double f0x3FB5555555555555)
  %i.ha = fadd reassoc nsz arcp contract afn <8 x double> %i.gz, splat (double f0x3F984AAFFC877A88) ; 2 uses
  %i.hb = fcmp reassoc nsz arcp contract afn olt <8 x double> %i.ha, splat (double 1.000000e+00) ; 2 uses
  %i.hc = select <8 x i1> %i.gs, <8 x i1> %i.hb, <8 x i1> zeroinitializer
  %predphi = select nsz <8 x i1> %i.hc, <8 x double> %i.ha, <8 x double> %i.gu
  %i.hd = fptrunc reassoc nsz arcp contract afn <8 x double> %predphi to <8 x float>
  %i.he = xor <8 x i1> %i.hb, splat (i1 true)
  %i.hf = select <8 x i1> %i.gs, <8 x i1> %i.he, <8 x i1> %i.gv
  %predphi352 = select <8 x i1> %i.hf, <8 x float> splat (float 1.000000e+00), <8 x float> %i.hd
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index
  store <8 x float> %predphi352, ptr %i.hg, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.hh = icmp eq i64 %index.next, 4096
  br i1 %i.hh, label %_colorspaces_create_hlg_rec2020_rgb_profile.exit, label %vector.body, !llvm.loop !111

_colorspaces_create_hlg_rec2020_rgb_profile.exit: ; preds = %vector.body
  %i.hi = call ptr @cmsBuildTabulatedToneCurveFloat(ptr noundef null, i32 noundef 4096, ptr noundef nonnull %i.gm) #26 ; 2 uses
  call void @g_free(ptr noundef nonnull %i.gm) #26
  %i.hj = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.31, ptr noundef nonnull @D65xyY, ptr noundef nonnull @Rec2020_Primaries, ptr noundef %i.hi, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.hi) #26
  %i.hk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #26
  %i.hl = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i266 = icmp eq ptr %i.hl, null
  br i1 %.not.i266, label %_create_profile.exit267, label %bb.q

bb.q:                                             ; preds = %_colorspaces_create_hlg_rec2020_rgb_profile.exit
  store i32 23, ptr %i.hl, align 8, !tbaa !88
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 516
  %i.hn = call i64 @g_strlcpy(ptr noundef nonnull %i.hm, ptr noundef %i.hk, i64 noundef 512) #26 ; 0 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 1032
  store ptr %i.hj, ptr %i.ho, align 8, !tbaa !96
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 1040
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 1056
  store i32 10, ptr %i.hq, align 8, !tbaa !109
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 1060
  store i32 6, ptr %i.hr, align 4, !tbaa !86
  store <4 x i32> splat (i32 6), ptr %i.hp, align 8, !tbaa !18
  br label %_create_profile.exit267

_create_profile.exit267:                          ; preds = %_colorspaces_create_hlg_rec2020_rgb_profile.exit, %bb.q
  %i.hs = call ptr @g_list_append(ptr noundef %i.gl, ptr noundef %i.hl) #26 ; 2 uses
  store ptr %i.hs, ptr %i.h, align 8, !tbaa !108
  %i.ht = call noalias dereferenceable_or_null(16384) ptr @g_malloc(i64 noundef 16384) #29 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %_PQ_fct.exit.i270.1, %_create_profile.exit267
  %indvars.iv.i.i268 = phi i64 [ 0, %_create_profile.exit267 ], [ %indvars.iv.next.i.i271.1, %_PQ_fct.exit.i270.1 ] ; 4 uses
  %i.hu = trunc nuw nsw i64 %indvars.iv.i.i268 to i32
  %i.hv = uitofp nneg i32 %i.hu to float
  %i.hw = fmul reassoc nnan nsz arcp contract afn float %i.hv, f0x39800801 ; 2 uses
  %i.hx = fcmp reassoc nsz arcp contract afn oeq float %i.hw, 0.000000e+00
  br i1 %i.hx, label %_PQ_fct.exit.i270, label %_PQ_fct.exit4.i269

_PQ_fct.exit4.i269:                               ; preds = %bb.r
  %i.hy = fpext reassoc nsz arcp contract afn float %i.hw to double
  %i.hz = call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.hy, double f0x3F89F9B5860989B1) ; 2 uses
  %i.ia = fadd reassoc nsz arcp contract afn double %i.hz, f0xBFEAC00000000000 ; 2 uses
  %i.ib = fcmp reassoc nsz arcp contract afn ogt double %i.ia, 0.000000e+00
  %i.ic = select reassoc nsz arcp contract afn i1 %i.ib, double %i.ia, double 0.000000e+00
  %i.id = fmul reassoc nnan nsz arcp contract afn double %i.hz, 1.868750e+01
  %i.ie = fsub reassoc nsz arcp contract afn double f0x4032DA0000000000, %i.id
  %i.if = fdiv reassoc nsz arcp contract afn double %i.ic, %i.ie
  %i.ig = call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.if, double f0x40191C0D56E7162B) ; 2 uses
  %i.ih = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ig)
  %i.ii = fcmp reassoc nsz arcp contract afn olt double %i.ih, 1.000000e+00
  br i1 %i.ii, label %bb.s, label %_PQ_fct.exit.i270

bb.s:                                             ; preds = %_PQ_fct.exit4.i269
  %i.ij = fptrunc double %i.ig to float
  %i.ik = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ij)
  br label %_PQ_fct.exit.i270

_PQ_fct.exit.i270:                                ; preds = %bb.s, %_PQ_fct.exit4.i269, %bb.r
  %i.il = phi float [ 1.000000e+00, %_PQ_fct.exit4.i269 ], [ %i.ik, %bb.s ], [ 0.000000e+00, %bb.r ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i.i268
  store float %i.il, ptr %i.im, align 4, !tbaa !14
  %indvars.iv.next.i.i271 = or disjoint i64 %indvars.iv.i.i268, 1 ; 2 uses
  %i.in = trunc nuw nsw i64 %indvars.iv.next.i.i271 to i32
  %i.io = uitofp nneg i32 %i.in to float
  %i.ip = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x39800801 ; 2 uses
  %i.iq = fcmp reassoc nsz arcp contract afn oeq float %i.ip, 0.000000e+00
  br i1 %i.iq, label %_PQ_fct.exit.i270.1, label %_PQ_fct.exit4.i269.1

_PQ_fct.exit4.i269.1:                             ; preds = %_PQ_fct.exit.i270
  %i.ir = fpext reassoc nsz arcp contract afn float %i.ip to double
  %i.is = call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.ir, double f0x3F89F9B5860989B1) ; 2 uses
  %i.it = fadd reassoc nsz arcp contract afn double %i.is, f0xBFEAC00000000000 ; 2 uses
  %i.iu = fcmp reassoc nsz arcp contract afn ogt double %i.it, 0.000000e+00
  %i.iv = select reassoc nsz arcp contract afn i1 %i.iu, double %i.it, double 0.000000e+00
  %i.iw = fmul reassoc nnan nsz arcp contract afn double %i.is, 1.868750e+01
  %i.ix = fsub reassoc nsz arcp contract afn double f0x4032DA0000000000, %i.iw
  %i.iy = fdiv reassoc nsz arcp contract afn double %i.iv, %i.ix
  %i.iz = call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.iy, double f0x40191C0D56E7162B) ; 2 uses
  %i.ja = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.iz)
  %i.jb = fcmp reassoc nsz arcp contract afn olt double %i.ja, 1.000000e+00
  br i1 %i.jb, label %bb.t, label %_PQ_fct.exit.i270.1

bb.t:                                             ; preds = %_PQ_fct.exit4.i269.1
  %i.jc = fptrunc double %i.iz to float
  %i.jd = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jc)
  br label %_PQ_fct.exit.i270.1

_PQ_fct.exit.i270.1:                              ; preds = %bb.t, %_PQ_fct.exit4.i269.1, %_PQ_fct.exit.i270
  %i.je = phi float [ 1.000000e+00, %_PQ_fct.exit4.i269.1 ], [ %i.jd, %bb.t ], [ 0.000000e+00, %_PQ_fct.exit.i270 ]
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.next.i.i271
  store float %i.je, ptr %i.jf, align 4, !tbaa !14
  %indvars.iv.next.i.i271.1 = add nuw nsw i64 %indvars.iv.i.i268, 2 ; 2 uses
  %exitcond.not.i.i272.1 = icmp eq i64 %indvars.iv.next.i.i271.1, 4096
  br i1 %exitcond.not.i.i272.1, label %_colorspaces_create_pq_p3_rgb_profile.exit, label %bb.r

_colorspaces_create_pq_p3_rgb_profile.exit:       ; preds = %_PQ_fct.exit.i270.1
  %i.jg = call ptr @cmsBuildTabulatedToneCurveFloat(ptr noundef null, i32 noundef 4096, ptr noundef nonnull %i.ht) #26 ; 2 uses
  call void @g_free(ptr noundef nonnull %i.ht) #26
  %i.jh = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.32, ptr noundef nonnull @D65xyY, ptr noundef nonnull @P3_Primaries, ptr noundef %i.jg, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.jg) #26
  %i.ji = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #26
  %i.jj = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i273 = icmp eq ptr %i.jj, null
  br i1 %.not.i273, label %_create_profile.exit274, label %bb.u

bb.u:                                             ; preds = %_colorspaces_create_pq_p3_rgb_profile.exit
  store i32 24, ptr %i.jj, align 8, !tbaa !88
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 516
  %i.jl = call i64 @g_strlcpy(ptr noundef nonnull %i.jk, ptr noundef %i.ji, i64 noundef 512) #26 ; 0 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 1032
  store ptr %i.jh, ptr %i.jm, align 8, !tbaa !96
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 1040
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 1056
  store i32 11, ptr %i.jo, align 8, !tbaa !109
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 1060
  store i32 7, ptr %i.jp, align 4, !tbaa !86
  store <4 x i32> splat (i32 7), ptr %i.jn, align 8, !tbaa !18
  br label %_create_profile.exit274

_create_profile.exit274:                          ; preds = %_colorspaces_create_pq_p3_rgb_profile.exit, %bb.u
  %i.jq = call ptr @g_list_append(ptr noundef %i.hs, ptr noundef %i.jj) #26 ; 2 uses
  store ptr %i.jq, ptr %i.h, align 8, !tbaa !108
  %i.jr = call noalias dereferenceable_or_null(16384) ptr @g_malloc(i64 noundef 16384) #29 ; 3 uses
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %_create_profile.exit274
  %index355 = phi i64 [ 0, %_create_profile.exit274 ], [ %index.next359, %vector.body354 ] ; 2 uses
  %vec.ind356 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %_create_profile.exit274 ], [ %vec.ind.next360, %vector.body354 ] ; 2 uses
  %i.js = uitofp nneg <8 x i32> %vec.ind356 to <8 x float>
  %i.jt = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.js, splat (float f0x39800801)
  %i.ju = fpext reassoc nnan nsz arcp contract afn <8 x float> %i.jt to <8 x double>
  %i.jv = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.ju, splat (double f0x3FEEB851EB851EB8)
  %i.jw = fadd reassoc nsz arcp contract afn <8 x double> %i.jv, splat (double 4.000000e-02) ; 4 uses
  %i.jx = fcmp reassoc nsz arcp contract afn ugt <8 x double> %i.jw, splat (double 5.000000e-01) ; 2 uses
  %i.jy = fmul reassoc nsz arcp contract afn <8 x double> %i.jw, %i.jw
  %i.jz = fmul reassoc nsz arcp contract afn <8 x double> %i.jy, splat (double f0x3FD5555555555555) ; 2 uses
  %i.ka = fcmp reassoc nsz arcp contract afn uge <8 x double> %i.jz, splat (double 1.000000e+00)
  %i.kb = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.jw, splat (double f0x40165E05183E19B4)
  %i.kc = fadd reassoc nnan nsz arcp contract afn <8 x double> %i.kb, splat (double f0xC0090C1EB5B28AA2)
  %i.kd = call reassoc nnan nsz arcp contract afn <8 x double> @llvm.exp.v8f64(<8 x double> %i.kc)
  %i.ke = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.kd, splat (double f0x3FB5555555555555)
  %i.kf = fadd reassoc nsz arcp contract afn <8 x double> %i.ke, splat (double f0x3F984AAFFC877A88) ; 2 uses
  %i.kg = fcmp reassoc nsz arcp contract afn olt <8 x double> %i.kf, splat (double 1.000000e+00) ; 2 uses
  %i.kh = select <8 x i1> %i.jx, <8 x i1> %i.kg, <8 x i1> zeroinitializer
  %predphi357 = select nsz <8 x i1> %i.kh, <8 x double> %i.kf, <8 x double> %i.jz
  %i.ki = fptrunc reassoc nsz arcp contract afn <8 x double> %predphi357 to <8 x float>
  %i.kj = xor <8 x i1> %i.kg, splat (i1 true)
  %i.kk = select <8 x i1> %i.jx, <8 x i1> %i.kj, <8 x i1> %i.ka
  %predphi358 = select <8 x i1> %i.kk, <8 x float> splat (float 1.000000e+00), <8 x float> %i.ki
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index355
  store <8 x float> %predphi358, ptr %i.kl, align 4, !tbaa !14
  %index.next359 = add nuw i64 %index355, 8       ; 2 uses
  %vec.ind.next360 = add <8 x i32> %vec.ind356, splat (i32 8)
  %i.km = icmp eq i64 %index.next359, 4096
  br i1 %i.km, label %_colorspaces_create_hlg_p3_rgb_profile.exit, label %vector.body354, !llvm.loop !114

_colorspaces_create_hlg_p3_rgb_profile.exit:      ; preds = %vector.body354
  %i.kn = call ptr @cmsBuildTabulatedToneCurveFloat(ptr noundef null, i32 noundef 4096, ptr noundef nonnull %i.jr) #26 ; 2 uses
  call void @g_free(ptr noundef nonnull %i.jr) #26
  %i.ko = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33, ptr noundef nonnull @D65xyY, ptr noundef nonnull @P3_Primaries, ptr noundef %i.kn, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.kn) #26
  %i.kp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #26
  %i.kq = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i282 = icmp eq ptr %i.kq, null
  br i1 %.not.i282, label %_create_profile.exit283, label %bb.v

bb.v:                                             ; preds = %_colorspaces_create_hlg_p3_rgb_profile.exit
  store i32 25, ptr %i.kq, align 8, !tbaa !88
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 516
  %i.ks = call i64 @g_strlcpy(ptr noundef nonnull %i.kr, ptr noundef %i.kp, i64 noundef 512) #26 ; 0 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 1032
  store ptr %i.ko, ptr %i.kt, align 8, !tbaa !96
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 1040
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 1056
  store i32 12, ptr %i.kv, align 8, !tbaa !109
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 1060
  store i32 8, ptr %i.kw, align 4, !tbaa !86
  store <4 x i32> splat (i32 8), ptr %i.ku, align 8, !tbaa !18
  br label %_create_profile.exit283

_create_profile.exit283:                          ; preds = %_colorspaces_create_hlg_p3_rgb_profile.exit, %bb.v
  %i.kx = call ptr @g_list_append(ptr noundef %i.jq, ptr noundef %i.kq) #26 ; 2 uses
  store ptr %i.kx, ptr %i.h, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store <4 x double> <double 2.400000e+00, double f0x3FEE54EDCD0AEB60, double f0x3FAAB1232F514A03, double f0x3FB3D0722149B580>, ptr %i.b, align 16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double 4.045000e-02, ptr %i.ky, align 16
  %i.kz = call ptr @cmsBuildParametricToneCurve(ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.b) #26 ; 2 uses
  %i.la = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.34, ptr noundef nonnull @D65xyY, ptr noundef nonnull @P3_Primaries, ptr noundef %i.kz, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.kz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.lb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #26
  %i.lc = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i284 = icmp eq ptr %i.lc, null
  br i1 %.not.i284, label %_create_profile.exit285, label %bb.w

bb.w:                                             ; preds = %_create_profile.exit283
  store i32 26, ptr %i.lc, align 8, !tbaa !88
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 516
  %i.le = call i64 @g_strlcpy(ptr noundef nonnull %i.ld, ptr noundef %i.lb, i64 noundef 512) #26 ; 0 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 1032
  store ptr %i.la, ptr %i.lf, align 8, !tbaa !96
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1040
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 1056
  store i32 13, ptr %i.lh, align 8, !tbaa !109
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 1060
  store i32 9, ptr %i.li, align 4, !tbaa !86
  store <4 x i32> splat (i32 9), ptr %i.lg, align 8, !tbaa !18
  br label %_create_profile.exit285

_create_profile.exit285:                          ; preds = %_create_profile.exit283, %bb.w
  %i.lj = call ptr @g_list_append(ptr noundef %i.kx, ptr noundef %i.lc) #26 ; 2 uses
  store ptr %i.lj, ptr %i.h, align 8, !tbaa !108
  %i.lk = call ptr @cmsBuildGamma(ptr noundef null, double noundef 1.000000e+00) #26 ; 2 uses
  %i.ll = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.187, ptr noundef nonnull @D50xyY, ptr noundef nonnull @ProPhoto_Primaries, ptr noundef %i.lk, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.lk) #26
  %i.lm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #26
  %i.ln = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i286 = icmp eq ptr %i.ln, null
  br i1 %.not.i286, label %_create_profile.exit287, label %bb.x

bb.x:                                             ; preds = %_create_profile.exit285
  store i32 21, ptr %i.ln, align 8, !tbaa !88
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 516
  %i.lp = call i64 @g_strlcpy(ptr noundef nonnull %i.lo, ptr noundef %i.lm, i64 noundef 512) #26 ; 0 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 1032
  store ptr %i.ll, ptr %i.lq, align 8, !tbaa !96
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 1040
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 1056
  store i32 14, ptr %i.ls, align 8, !tbaa !109
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 1060
  store i32 10, ptr %i.lt, align 4, !tbaa !86
  store <4 x i32> splat (i32 10), ptr %i.lr, align 8, !tbaa !18
  br label %_create_profile.exit287

_create_profile.exit287:                          ; preds = %_create_profile.exit285, %bb.x
  %i.lu = call ptr @g_list_append(ptr noundef %i.lj, ptr noundef %i.ln) #26 ; 2 uses
  store ptr %i.lu, ptr %i.h, align 8, !tbaa !108
  %i.lv = call ptr @cmsCreateXYZProfile() #26     ; 9 uses
  call void @cmsSetPCS(ptr noundef %i.lv, i32 noundef 1482250784) #26
  call void @cmsSetHeaderRenderingIntent(ptr noundef %i.lv, i32 noundef 0) #26
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %_colorspaces_create_xyz_profile.exit, label %bb.y

bb.y:                                             ; preds = %_create_profile.exit287
  call void @cmsSetProfileVersion(ptr noundef nonnull %i.lv, double noundef 2.100000e+00) #26
  %i.lx = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.ly = call i32 @cmsMLUsetASCII(ptr noundef %i.lx, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #26 ; 0 uses
  %i.lz = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.ma = call i32 @cmsMLUsetASCII(ptr noundef %i.lz, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.36) #26 ; 0 uses
  %i.mb = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.mc = call i32 @cmsMLUsetASCII(ptr noundef %i.mb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.188) #26 ; 0 uses
  %i.md = call i32 @cmsWriteTag(ptr noundef nonnull %i.lv, i32 noundef 1684893284, ptr noundef %i.lx) #26 ; 0 uses
  %i.me = call i32 @cmsWriteTag(ptr noundef nonnull %i.lv, i32 noundef 1684890724, ptr noundef %i.lz) #26 ; 0 uses
  %i.mf = call i32 @cmsWriteTag(ptr noundef nonnull %i.lv, i32 noundef 1684370275, ptr noundef %i.mb) #26 ; 0 uses
  call void @cmsMLUfree(ptr noundef %i.lx) #26
  call void @cmsMLUfree(ptr noundef %i.lz) #26
  call void @cmsMLUfree(ptr noundef %i.mb) #26
  br label %_colorspaces_create_xyz_profile.exit

_colorspaces_create_xyz_profile.exit:             ; preds = %_create_profile.exit287, %bb.y
  %i.mg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #26 ; 2 uses
  %i.mh = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.37) #26
  %.not = icmp eq i32 %i.mh, 0
  %i.mi = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 14 uses
  %.not.i288 = icmp eq ptr %i.mi, null            ; 2 uses
  br i1 %.not, label %.split, label %.split220

.split:                                           ; preds = %_colorspaces_create_xyz_profile.exit
  br i1 %.not.i288, label %_create_profile.exit289, label %bb.z

bb.z:                                             ; preds = %.split
  store i32 5, ptr %i.mi, align 8, !tbaa !88
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 516
  %i.mk = call i64 @g_strlcpy(ptr noundef nonnull %i.mj, ptr noundef %i.mg, i64 noundef 512) #26 ; 0 uses
end_hunk_0
