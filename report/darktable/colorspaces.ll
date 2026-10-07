Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/colorspaces?download=true
inline.NumInlined: 104
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 50
begin_hunk_0_@dt_colorspaces_init:bb.a
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
  store i32 24, ptr %i.jj, align 8, !tbaa !84
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 516
  %i.jl = call i64 @g_strlcpy(ptr noundef nonnull %i.jk, ptr noundef %i.ji, i64 noundef 512) #26 ; 0 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 1032
  store ptr %i.jh, ptr %i.jm, align 8, !tbaa !92
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 1040
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 1056
  store i32 11, ptr %i.jo, align 8, !tbaa !128
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 1060
  store i32 7, ptr %i.jp, align 4, !tbaa !83
  store <4 x i32> splat (i32 7), ptr %i.jn, align 8, !tbaa !16
  br label %_create_profile.exit274

_create_profile.exit274:                          ; preds = %_colorspaces_create_pq_p3_rgb_profile.exit, %bb.u
  %i.jq = call ptr @g_list_append(ptr noundef %i.hs, ptr noundef %i.jj) #26 ; 2 uses
  store ptr %i.jq, ptr %i.h, align 8, !tbaa !100
  %i.jr = call noalias dereferenceable_or_null(16384) ptr @g_malloc(i64 noundef 16384) #29 ; 3 uses
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %_create_profile.exit274
  %index356 = phi i64 [ 0, %_create_profile.exit274 ], [ %index.next360, %vector.body355 ] ; 2 uses
  %vec.ind357 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %_create_profile.exit274 ], [ %vec.ind.next361, %vector.body355 ] ; 2 uses
  %i.js = uitofp nneg <8 x i32> %vec.ind357 to <8 x float>
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
  %predphi358 = select nsz <8 x i1> %i.kh, <8 x double> %i.kf, <8 x double> %i.jz
  %i.ki = fptrunc reassoc nsz arcp contract afn <8 x double> %predphi358 to <8 x float>
  %i.kj = xor <8 x i1> %i.kg, splat (i1 true)
  %i.kk = select <8 x i1> %i.jx, <8 x i1> %i.kj, <8 x i1> %i.ka
  %predphi359 = select <8 x i1> %i.kk, <8 x float> splat (float 1.000000e+00), <8 x float> %i.ki
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index356
  store <8 x float> %predphi359, ptr %i.kl, align 4, !tbaa !14
  %index.next360 = add nuw i64 %index356, 8       ; 2 uses
  %vec.ind.next361 = add <8 x i32> %vec.ind357, splat (i32 8)
  %i.km = icmp eq i64 %index.next360, 4096
  br i1 %i.km, label %_colorspaces_create_hlg_p3_rgb_profile.exit, label %vector.body355, !llvm.loop !123

_colorspaces_create_hlg_p3_rgb_profile.exit:      ; preds = %vector.body355
  %i.kn = call ptr @cmsBuildTabulatedToneCurveFloat(ptr noundef null, i32 noundef 4096, ptr noundef nonnull %i.jr) #26 ; 2 uses
  call void @g_free(ptr noundef nonnull %i.jr) #26
  %i.ko = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33, ptr noundef nonnull @D65xyY, ptr noundef nonnull @P3_Primaries, ptr noundef %i.kn, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.kn) #26
  %i.kp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #26
  %i.kq = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i282 = icmp eq ptr %i.kq, null
  br i1 %.not.i282, label %_create_profile.exit283, label %bb.v

bb.v:                                             ; preds = %_colorspaces_create_hlg_p3_rgb_profile.exit
  store i32 25, ptr %i.kq, align 8, !tbaa !84
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 516
  %i.ks = call i64 @g_strlcpy(ptr noundef nonnull %i.kr, ptr noundef %i.kp, i64 noundef 512) #26 ; 0 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 1032
  store ptr %i.ko, ptr %i.kt, align 8, !tbaa !92
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 1040
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 1056
  store i32 12, ptr %i.kv, align 8, !tbaa !128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 1060
  store i32 8, ptr %i.kw, align 4, !tbaa !83
  store <4 x i32> splat (i32 8), ptr %i.ku, align 8, !tbaa !16
  br label %_create_profile.exit283

_create_profile.exit283:                          ; preds = %_colorspaces_create_hlg_p3_rgb_profile.exit, %bb.v
  %i.kx = call ptr @g_list_append(ptr noundef %i.jq, ptr noundef %i.kq) #26 ; 2 uses
  store ptr %i.kx, ptr %i.h, align 8, !tbaa !100
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
  store i32 26, ptr %i.lc, align 8, !tbaa !84
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 516
  %i.le = call i64 @g_strlcpy(ptr noundef nonnull %i.ld, ptr noundef %i.lb, i64 noundef 512) #26 ; 0 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 1032
  store ptr %i.la, ptr %i.lf, align 8, !tbaa !92
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1040
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 1056
  store i32 13, ptr %i.lh, align 8, !tbaa !128
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 1060
  store i32 9, ptr %i.li, align 4, !tbaa !83
  store <4 x i32> splat (i32 9), ptr %i.lg, align 8, !tbaa !16
  br label %_create_profile.exit285

_create_profile.exit285:                          ; preds = %_create_profile.exit283, %bb.w
  %i.lj = call ptr @g_list_append(ptr noundef %i.kx, ptr noundef %i.lc) #26 ; 2 uses
  store ptr %i.lj, ptr %i.h, align 8, !tbaa !100
  %i.lk = call ptr @cmsBuildGamma(ptr noundef null, double noundef 1.000000e+00) #26 ; 2 uses
  %i.ll = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.187, ptr noundef nonnull @D50xyY, ptr noundef nonnull @ProPhoto_Primaries, ptr noundef %i.lk, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.lk) #26
  %i.lm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #26
  %i.ln = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i286 = icmp eq ptr %i.ln, null
  br i1 %.not.i286, label %_create_profile.exit287, label %bb.x

bb.x:                                             ; preds = %_create_profile.exit285
  store i32 21, ptr %i.ln, align 8, !tbaa !84
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 516
  %i.lp = call i64 @g_strlcpy(ptr noundef nonnull %i.lo, ptr noundef %i.lm, i64 noundef 512) #26 ; 0 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 1032
  store ptr %i.ll, ptr %i.lq, align 8, !tbaa !92
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 1040
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 1056
  store i32 14, ptr %i.ls, align 8, !tbaa !128
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 1060
  store i32 10, ptr %i.lt, align 4, !tbaa !83
  store <4 x i32> splat (i32 10), ptr %i.lr, align 8, !tbaa !16
  br label %_create_profile.exit287

_create_profile.exit287:                          ; preds = %_create_profile.exit285, %bb.x
  %i.lu = call ptr @g_list_append(ptr noundef %i.lj, ptr noundef %i.ln) #26 ; 2 uses
  store ptr %i.lu, ptr %i.h, align 8, !tbaa !100
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
  %i.mi = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 13 uses
  %.not.i288 = icmp eq ptr %i.mi, null            ; 2 uses
  br i1 %.not, label %.split, label %.split220

.split:                                           ; preds = %_colorspaces_create_xyz_profile.exit
  br i1 %.not.i288, label %_create_profile.exit289, label %bb.z

bb.z:                                             ; preds = %.split
  store i32 5, ptr %i.mi, align 8, !tbaa !84
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 516
  %i.mk = call i64 @g_strlcpy(ptr noundef nonnull %i.mj, ptr noundef %i.mg, i64 noundef 512) #26 ; 0 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 1032
  store ptr %i.lv, ptr %i.ml, align 8, !tbaa !92
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 1040
  store i32 11, ptr %i.mm, align 8, !tbaa !101
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 1044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mn, i8 -1, i64 20, i1 false)
  br label %_create_profile.exit289

.split220:                                        ; preds = %_colorspaces_create_xyz_profile.exit
  br i1 %.not.i288, label %_create_profile.exit289, label %bb.aa

bb.aa:                                            ; preds = %.split220
  store i32 5, ptr %i.mi, align 8, !tbaa !84
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 516
  %i.mp = call i64 @g_strlcpy(ptr noundef nonnull %i.mo, ptr noundef %i.mg, i64 noundef 512) #26 ; 0 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mi, i64 1032
  store ptr %i.lv, ptr %i.mq, align 8, !tbaa !92
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mi, i64 1040
  store i32 11, ptr %i.mr, align 8, !tbaa !101
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 1044
  store i32 11, ptr %i.ms, align 4, !tbaa !85
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mi, i64 1048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mt, i8 -1, i64 16, i1 false)
  br label %_create_profile.exit289

_create_profile.exit289:                          ; preds = %bb.aa, %.split220, %bb.z, %.split
  %.0216 = phi i32 [ 10, %bb.z ], [ 10, %.split ], [ 11, %.split220 ], [ 11, %bb.aa ] ; 2 uses
  %i.mu = call ptr @g_list_append(ptr noundef %i.lu, ptr noundef %i.mi) #26 ; 2 uses
  store ptr %i.mu, ptr %i.h, align 8, !tbaa !100
  %i.mv = call ptr @cmsD50_xyY() #26
  %i.mw = call ptr @cmsCreateLab4Profile(ptr noundef %i.mv) #26
  %i.mx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #26
  %i.my = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.37) #26
  %.not226 = icmp eq i32 %i.my, 0                 ; 2 uses
  %i.mz = add nuw nsw i32 %.0216, 1               ; 2 uses
  %spec.select = select i1 %.not226, i32 %.0216, i32 %i.mz
  %i.na = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i292 = icmp eq ptr %i.na, null
  br i1 %.not.i292, label %_create_profile.exit293, label %bb.ab

bb.ab:                                            ; preds = %_create_profile.exit289
  %spec.select240 = select i1 %.not226, i32 -1, i32 %i.mz
  store i32 6, ptr %i.na, align 8, !tbaa !84
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 516
  %i.nc = call i64 @g_strlcpy(ptr noundef nonnull %i.nb, ptr noundef %i.mx, i64 noundef 512) #26 ; 0 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 1032
  store ptr %i.mw, ptr %i.nd, align 8, !tbaa !92
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 1040
  store i32 12, ptr %i.ne, align 8, !tbaa !101
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 1044
  store i32 %spec.select240, ptr %i.nf, align 4, !tbaa !85
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 1048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ng, i8 -1, i64 16, i1 false)
  br label %_create_profile.exit293

_create_profile.exit293:                          ; preds = %_create_profile.exit289, %bb.ab
  %i.nh = call ptr @g_list_append(ptr noundef %i.mu, ptr noundef %i.na) #26 ; 2 uses
  store ptr %i.nh, ptr %i.h, align 8, !tbaa !100
  %i.ni = call ptr @cmsBuildGamma(ptr noundef null, double noundef 1.000000e+00) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) @__const._colorspaces_create_linear_infrared_profile.BGR_Primaries, i64 72, i1 false)
  %i.nj = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, ptr noundef nonnull @D65xyY, ptr noundef nonnull %1, ptr noundef %i.ni, ptr noundef null, i32 noundef 0)
  call void @cmsFreeToneCurve(ptr noundef %i.ni) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.nk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #26
  %i.nl = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 7 uses
  %.not.i294 = icmp eq ptr %i.nl, null
  br i1 %.not.i294, label %_create_profile.exit295, label %bb.ac

bb.ac:                                            ; preds = %_create_profile.exit293
  store i32 7, ptr %i.nl, align 8, !tbaa !84
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 516
  %i.nn = call i64 @g_strlcpy(ptr noundef nonnull %i.nm, ptr noundef %i.nk, i64 noundef 512) #26 ; 0 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 1032
  store ptr %i.nj, ptr %i.no, align 8, !tbaa !92
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 1040
  store i32 13, ptr %i.np, align 8, !tbaa !101
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 1044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.nq, i8 -1, i64 20, i1 false)
  br label %_create_profile.exit295

_create_profile.exit295:                          ; preds = %_create_profile.exit293, %bb.ac
  %i.nr = call ptr @g_list_append(ptr noundef %i.nh, ptr noundef %i.nl) #26 ; 2 uses
  store ptr %i.nr, ptr %i.h, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store <4 x double> <double 2.400000e+00, double f0x3FEE54EDCD0AEB60, double f0x3FAAB1232F514A03, double f0x3FB3D0722149B580>, ptr %i.a, align 16
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double 4.045000e-02, ptr %i.ns, align 16
  %i.nt = call ptr @cmsBuildParametricToneCurve(ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.a) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @__const._colorspaces_create_brg_profile.BRG_Primaries, i64 72, i1 false)
  %i.nu = call fastcc ptr @_create_lcms_profile(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.191, ptr noundef nonnull @D65xyY, ptr noundef nonnull %0, ptr noundef %i.nt, ptr noundef null, i32 noundef 1)
  call void @cmsFreeToneCurve(ptr noundef %i.nt) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.nv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #26
  %i.nw = add nuw nsw i32 %spec.select, 1         ; 2 uses
  %i.nx = call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #30 ; 8 uses
  %.not.i296 = icmp eq ptr %i.nx, null
  br i1 %.not.i296, label %_create_profile.exit297, label %bb.ad

bb.ad:                                            ; preds = %_create_profile.exit295
  store i32 15, ptr %i.nx, align 8, !tbaa !84
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 516
  %i.nz = call i64 @g_strlcpy(ptr noundef nonnull %i.ny, ptr noundef %i.nv, i64 noundef 512) #26 ; 0 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 1032
  store ptr %i.nu, ptr %i.oa, align 8, !tbaa !92
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 1040
  store i32 14, ptr %i.ob, align 8, !tbaa !101
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 1044
  store i32 %i.nw, ptr %i.oc, align 4, !tbaa !85
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 1048
  store <4 x i32> <i32 11, i32 11, i32 -1, i32 -1>, ptr %i.od, align 8, !tbaa !16
  br label %_create_profile.exit297

_create_profile.exit297:                          ; preds = %_create_profile.exit295, %bb.ad
  %i.oe = call ptr @g_list_append(ptr noundef %i.nr, ptr noundef %i.nx) #26
  store ptr %i.oe, ptr %i.h, align 8, !tbaa !100
  %i.of = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.41) #26
  %i.og = getelementptr inbounds nuw i8, ptr %i.h, i64 108 ; 3 uses
  store i32 %i.of, ptr %i.og, align 4, !tbaa !91
  %i.oh = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.42) #26
  %i.oi = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 3 uses
  store i32 %i.oh, ptr %i.oi, align 8, !tbaa !97
  %i.oj = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.43) #26
  %i.ok = getelementptr inbounds nuw i8, ptr %i.h, i64 116 ; 3 uses
  store i32 %i.oj, ptr %i.ok, align 4, !tbaa !104
  %i.ol = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.44) #26
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 5 uses
  store i32 %i.ol, ptr %i.om, align 8, !tbaa !105
  %i.on = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.45) #26
  %i.oo = getelementptr inbounds nuw i8, ptr %i.h, i64 124 ; 3 uses
  %i.op = call i64 @g_strlcpy(ptr noundef nonnull %i.oo, ptr noundef %i.on, i64 noundef 512) #26 ; 0 uses
  %i.oq = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.46) #26
  %i.or = getelementptr inbounds nuw i8, ptr %i.h, i64 636 ; 3 uses
  %i.os = call i64 @g_strlcpy(ptr noundef nonnull %i.or, ptr noundef %i.oq, i64 noundef 512) #26 ; 0 uses
  %i.ot = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.47) #26
  %i.ou = getelementptr inbounds nuw i8, ptr %i.h, i64 1148 ; 3 uses
  %i.ov = call i64 @g_strlcpy(ptr noundef nonnull %i.ou, ptr noundef %i.ot, i64 noundef 512) #26 ; 0 uses
  %i.ow = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.48) #26
  %i.ox = getelementptr inbounds nuw i8, ptr %i.h, i64 1660 ; 5 uses
  %i.oy = call i64 @g_strlcpy(ptr noundef nonnull %i.ox, ptr noundef %i.ow, i64 noundef 512) #26 ; 0 uses
  %i.oz = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.49) #26
  %i.pa = getelementptr inbounds nuw i8, ptr %i.h, i64 2172
  store i32 %i.oz, ptr %i.pa, align 4, !tbaa !94
  %i.pb = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.50) #26
  %i.pc = getelementptr inbounds nuw i8, ptr %i.h, i64 2176
  store i32 %i.pb, ptr %i.pc, align 8, !tbaa !99
  %i.pd = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.51) #26
  %i.pe = getelementptr inbounds nuw i8, ptr %i.h, i64 2180
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !106
  %i.pf = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.52) #26
  %i.pg = getelementptr inbounds nuw i8, ptr %i.h, i64 2184 ; 3 uses
  store i32 %i.pf, ptr %i.pg, align 8, !tbaa !107
  %i.ph = load i32, ptr %i.og, align 4, !tbaa !91 ; 2 uses
  %i.pi = icmp ugt i32 %i.ph, 26
  br i1 %i.pi, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_create_profile.exit297
  %i.pj = icmp eq i32 %i.ph, 0
  br i1 %i.pj, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.pk = load i8, ptr %i.oo, align 4, !tbaa !87
  %.not227 = icmp eq i8 %i.pk, 0
  br i1 %.not227, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pl = call i32 @g_file_test(ptr noundef nonnull %i.oo, i32 noundef 1) #26
  %.not228 = icmp eq i32 %i.pl, 0
  br i1 %.not228, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_create_profile.exit297
  store i32 8, ptr %i.og, align 4, !tbaa !91
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.pm = load i32, ptr %i.oi, align 8, !tbaa !97 ; 2 uses
  %i.pn = icmp ugt i32 %i.pm, 26
  br i1 %i.pn, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.po = icmp eq i32 %i.pm, 0
  br i1 %i.po, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.pp = load i8, ptr %i.or, align 4, !tbaa !87
  %.not229 = icmp eq i8 %i.pp, 0
  br i1 %.not229, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pq = call i32 @g_file_test(ptr noundef nonnull %i.or, i32 noundef 1) #26
  %.not230 = icmp eq i32 %i.pq, 0
  br i1 %.not230, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai
  store i32 19, ptr %i.oi, align 8, !tbaa !97
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj
  %i.pr = load i32, ptr %i.ok, align 4, !tbaa !104 ; 2 uses
  %i.ps = icmp ugt i32 %i.pr, 26
  br i1 %i.ps, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pt = icmp eq i32 %i.pr, 0
  br i1 %i.pt, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.pu = load i8, ptr %i.ou, align 4, !tbaa !87
  %.not231 = icmp eq i8 %i.pu, 0
  br i1 %.not231, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.pv = call i32 @g_file_test(ptr noundef nonnull %i.ou, i32 noundef 1) #26
  %.not232 = icmp eq i32 %i.pv, 0
  br i1 %.not232, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  store i32 1, ptr %i.ok, align 4, !tbaa !104
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %i.pw = load i32, ptr %i.om, align 8, !tbaa !105 ; 2 uses
  %i.px = icmp ugt i32 %i.pw, 26
  br i1 %i.px, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
end_hunk_0
