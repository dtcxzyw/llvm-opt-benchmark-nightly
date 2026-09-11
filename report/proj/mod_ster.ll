Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/mod_ster?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
begin_hunk_0_@_Z33pj_projection_specific_setup_alskP8PJconsts:bb.a
bb.f:                                             ; preds = %_ZL14mod_ster_setupP8PJconsts.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %_ZL14mod_ster_setupP8PJconsts.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_gs50(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #6 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %_Z33pj_projection_specific_setup_gs50P8PJconsts.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 9, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440
  store <2 x double> <double f0xC000C152382D7365, double f0x3FE921FB54442D18>, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load double, ptr %i.g, align 8, !tbaa !42
  %i.i = fcmp une double %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  br i1 %i.i, label %bb.e, label %_ZL14mod_ster_setupP8PJconsts.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> <double f0x3FB50FC4DF8B5B25, double 6.768660e-03>, ptr %i.k, align 8, !tbaa !40
  br label %_ZL14mod_ster_setupP8PJconsts.exit.i

_ZL14mod_ster_setupP8PJconsts.exit.i:             ; preds = %bb.d, %bb.e
  %_ZZ33pj_projection_specific_setup_gs50P8PJconstsE3ABs.sink = phi ptr [ @_ZZ33pj_projection_specific_setup_gs50P8PJconstsE3ABe, %bb.e ], [ @_ZZ33pj_projection_specific_setup_gs50P8PJconstsE3ABs, %bb.d ]
  %.sink = phi double [ f0x415854B79999999A, %bb.e ], [ f0x41584DAD40000000, %bb.d ]
  %.0.i.i = phi double [ f0x3FE9062DD085FA20, %bb.e ], [ f0x3FE921FB54442D18, %bb.d ] ; 2 uses
  store ptr %_ZZ33pj_projection_specific_setup_gs50P8PJconstsE3ABs.sink, ptr %i.a, align 8, !tbaa !41
  store double %.sink, ptr %i.j, align 8, !tbaa !50
  %i.l = tail call double @sin(double noundef %.0.i.i) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.l, ptr %i.m, align 8, !tbaa !51
  %i.n = tail call double @cos(double noundef %.0.i.i) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.n, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL18mod_ster_e_inverse5PJ_XYP8PJconsts, ptr %i.p, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL18mod_ster_e_forward5PJ_LPP8PJconsts, ptr %i.q, align 8, !tbaa !44
  br label %_Z33pj_projection_specific_setup_gs50P8PJconsts.exit

bb.f:                                             ; preds = %bb.a
  %i.r = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_Z33pj_projection_specific_setup_gs50P8PJconsts.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @.str.4, ptr %i.t, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr @_ZL8des_gs50, ptr %i.u, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 360
  store i32 1, ptr %i.v, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 380
  store i32 4, ptr %i.w, align 4, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 384
  store i32 1, ptr %i.x, align 8, !tbaa !49
  br label %_Z33pj_projection_specific_setup_gs50P8PJconsts.exit

_Z33pj_projection_specific_setup_gs50P8PJconsts.exit: ; preds = %_ZL14mod_ster_setupP8PJconsts.exit.i, %bb.c, %bb.f, %bb.g
  %.0 = phi ptr [ null, %bb.f ], [ %i.r, %bb.g ], [ %i.c, %bb.c ], [ %0, %_ZL14mod_ster_setupP8PJconsts.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z33pj_projection_specific_setup_gs50P8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #6 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 9, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440
  store <2 x double> <double f0xC000C152382D7365, double f0x3FE921FB54442D18>, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load double, ptr %i.g, align 8, !tbaa !42
  %i.i = fcmp une double %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @_ZZ33pj_projection_specific_setup_gs50P8PJconstsE3ABs, ptr %i.a, align 8, !tbaa !41
  store double f0x41584DAD40000000, ptr %i.j, align 8, !tbaa !50
  br label %_ZL14mod_ster_setupP8PJconsts.exit

bb.e:                                             ; preds = %bb.c
  store ptr @_ZZ33pj_projection_specific_setup_gs50P8PJconstsE3ABe, ptr %i.a, align 8, !tbaa !41
  store double f0x415854B79999999A, ptr %i.j, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> <double f0x3FB50FC4DF8B5B25, double 6.768660e-03>, ptr %i.k, align 8, !tbaa !40
  br label %_ZL14mod_ster_setupP8PJconsts.exit

_ZL14mod_ster_setupP8PJconsts.exit:               ; preds = %bb.d, %bb.e
  %.0.i = phi double [ f0x3FE9062DD085FA20, %bb.e ], [ f0x3FE921FB54442D18, %bb.d ] ; 2 uses
  %i.l = tail call double @sin(double noundef %.0.i) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.l, ptr %i.m, align 8, !tbaa !51
  %i.n = tail call double @cos(double noundef %.0.i) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.n, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL18mod_ster_e_inverse5PJ_XYP8PJconsts, ptr %i.p, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL18mod_ster_e_forward5PJ_LPP8PJconsts, ptr %i.q, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %_ZL14mod_ster_setupP8PJconsts.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %_ZL14mod_ster_setupP8PJconsts.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL18mod_ster_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.COMPLEX, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = insertelement <2 x double> poison, double %1, i64 0
  %i.f = insertelement <2 x double> %i.e, double %0, i64 1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06085, -1                  ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread72, label %bb.c, !llvm.loop !54

bb.c:                                             ; preds = %bb.a, %bb.b
  %.06085 = phi i32 [ 20, %bb.a ], [ %i.g, %bb.b ]
  %i.h = phi <2 x double> [ %i.f, %bb.a ], [ %i.ai, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.j = load i32, ptr %i.c, align 8, !tbaa !39
  %i.k = extractelement <2 x double> %i.h, i64 0
  %i.l = extractelement <2 x double> %i.h, i64 1
  %i.m = call { double, double } @_Z10pj_zpolyd17COMPLEXPKS_iPS_(double %i.l, double %i.k, ptr noundef %i.i, i32 noundef %i.j, ptr noundef nonnull %3) ; 2 uses
  %i.n = extractvalue { double, double } %i.m, 0
  %i.o = extractvalue { double, double } %i.m, 1
  %i.p = load double, ptr %3, align 8, !tbaa !58  ; 3 uses
  %i.q = load double, ptr %i.d, align 8, !tbaa !59 ; 4 uses
  %i.r = fmul double %i.q, %i.q
  %i.s = call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.r)
  %i.t = fneg double %i.q
  %i.u = insertelement <2 x double> poison, double %i.o, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.n, i64 1
  %i.w = fsub <2 x double> %i.v, %i.f             ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.q, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.t, i64 1
  %i.z = fmul <2 x double> %i.w, %i.y
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ab = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.ac, <2 x double> %i.aa)
  %i.ae = fneg <2 x double> %i.ad
  %i.af = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fdiv <2 x double> %i.ae, %i.ag          ; 2 uses
  %i.ai = fadd <2 x double> %i.h, %i.ah           ; 3 uses
  %i.aj = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ah)
  %4 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.aj)
  %i.ak = fcmp ugt double %4, f0x3D719799812DEA11
  br i1 %i.ak, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = extractelement <2 x double> %i.ai, i64 0 ; 3 uses
  %i.am = extractelement <2 x double> %i.ai, i64 1 ; 2 uses
  %i.an = call double @hypot(double noundef %i.am, double noundef %i.al) #7 ; 4 uses
  %i.ao = fmul double %i.an, 5.000000e-01
  %i.ap = call double @atan(double noundef %i.ao) #7
  %i.aq = fmul double %i.ap, 2.000000e+00         ; 2 uses
  %i.ar = call double @sin(double noundef %i.aq) #7 ; 3 uses
  %i.as = call double @cos(double noundef %i.aq) #7 ; 2 uses
  %i.at = call double @llvm.fabs.f64(double %i.an)
  %i.au = fcmp ugt double %i.at, f0x3D719799812DEA11
  br i1 %i.au, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.aw = load double, ptr %i.av, align 8, !tbaa !60
  br label %.thread72

bb.f:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %2, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !51
  %i.ba = fmul double %i.al, %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !52
  %i.bd = fmul double %i.ba, %i.bc
  %i.be = fdiv double %i.bd, %i.an
  %i.bf = call double @llvm.fmuladd.f64(double %i.as, double %i.az, double %i.be)
  %i.bg = call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.ax, double noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !53 ; 2 uses
  %i.bj = fadd double %i.bg, f0x3FF921FB54442D18
  %i.bk = fmul double %i.bj, 5.000000e-01
  %i.bl = fmul double %i.bi, 5.000000e-01
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.bm = add nsw i32 %.187, -1                   ; 2 uses
  %.not66 = icmp eq i32 %i.bm, 0
  br i1 %.not66, label %.thread72, label %bb.h, !llvm.loop !55

bb.h:                                             ; preds = %bb.f, %bb.g
  %.187 = phi i32 [ 20, %bb.f ], [ %i.bm, %bb.g ]
  %.06186 = phi double [ %i.bg, %bb.f ], [ %i.by, %bb.g ] ; 3 uses
  %i.bn = call double @sin(double noundef %.06186) #7
  %i.bo = fmul double %i.bi, %i.bn                ; 2 uses
  %i.bp = call double @tan(double noundef %i.bk) #7
  %i.bq = fadd double %i.bo, 1.000000e+00
  %i.br = fsub double 1.000000e+00, %i.bo
  %i.bs = fdiv double %i.bq, %i.br
  %i.bt = call double @pow(double noundef %i.bs, double noundef %i.bl) #7
  %i.bu = fmul double %i.bp, %i.bt
  %i.bv = call double @atan(double noundef %i.bu) #7
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double 2.000000e+00, double f0xBFF921FB54442D18)
  %i.bx = fsub double %i.bw, %.06186              ; 2 uses
  %i.by = fadd double %.06186, %i.bx              ; 2 uses
  %i.bz = call double @llvm.fabs.f64(double %i.bx)
  %i.ca = fcmp ugt double %i.bz, f0x3D719799812DEA11
  br i1 %i.ca, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = fmul double %i.am, %i.ar
  %i.cc = load double, ptr %i.bb, align 8, !tbaa !52
  %i.cd = fmul double %i.an, %i.cc
  %i.ce = load double, ptr %i.ay, align 8, !tbaa !51
  %i.cf = fmul double %i.al, %i.ce
  %i.cg = fneg double %i.ar
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = call double @llvm.fmuladd.f64(double %i.cd, double %i.as, double %i.ch)
  %i.cj = call double @atan2(double noundef %i.cb, double noundef %i.ci) #7
  br label %.thread72

.thread72:                                        ; preds = %bb.b, %bb.g, %bb.i, %bb.e
  %.sroa.559.1 = phi double [ %i.aw, %bb.e ], [ %i.by, %bb.i ], [ +inf, %bb.g ], [ +inf, %bb.b ]
  %.sroa.058.1 = phi double [ 0.000000e+00, %bb.e ], [ %i.cj, %bb.i ], [ +inf, %bb.g ], [ +inf, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.058.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.559.1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL18mod_ster_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.c = tail call double @sin(double noundef %0) #7
  %i.d = tail call double @cos(double noundef %0) #7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load double, ptr %i.e, align 8, !tbaa !53 ; 2 uses
  %i.g = tail call double @sin(double noundef %1) #7
  %i.h = fmul double %i.f, %i.g                   ; 2 uses
  %i.i = fadd double %1, f0x3FF921FB54442D18
  %i.j = fmul double %i.i, 5.000000e-01
  %i.k = tail call double @tan(double noundef %i.j) #7
  %i.l = fsub double 1.000000e+00, %i.h
  %i.m = fadd double %i.h, 1.000000e+00
  %i.n = fdiv double %i.l, %i.m
  %i.o = fmul double %i.f, 5.000000e-01
  %i.p = tail call double @pow(double noundef %i.n, double noundef %i.o) #7
  %i.q = fmul double %i.k, %i.p
  %i.r = tail call double @atan(double noundef %i.q) #7
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double 2.000000e+00, double f0xBFF921FB54442D18) ; 2 uses
  %i.t = tail call double @sin(double noundef %i.s) #7 ; 2 uses
  %i.u = tail call double @cos(double noundef %i.s) #7 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double 1.000000e+00)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !52 ; 2 uses
  %i.aa = fmul double %i.u, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.d, double %i.x) ; 2 uses
  %i.ac = fcmp oeq double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ae = fdiv double 2.000000e+00, %i.ab         ; 2 uses
  %i.af = fmul double %i.u, %i.ae
  %i.ag = fmul double %i.c, %i.af
  %i.ah = fmul double %i.u, %i.w
  %i.ai = fneg double %i.d
  %i.aj = fmul double %i.ah, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.z, double %i.t, double %i.aj)
  %i.al = fmul double %i.ak, %i.ae
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !39
  %i.ap = tail call { double, double } @_Z9pj_zpoly17COMPLEXPKS_i(double %i.ag, double %i.al, ptr noundef %i.am, i32 noundef %i.ao) ; 2 uses
  %i.aq = extractvalue { double, double } %i.ap, 0
  %i.ar = extractvalue { double, double } %i.ap, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.332.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.ar, %bb.c ]
  %.sroa.031.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.aq, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.031.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.332.0, 1
  ret { double, double } %.fca.1.insert
}

declare { double, double } @_Z10pj_zpolyd17COMPLEXPKS_iPS_(double, double, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #4

declare noundef double @_Z5aasinP6pj_ctxd(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #4

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare { double, double } @_Z9pj_zpoly17COMPLEXPKS_i(double, double, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !8, i64 88}
!38 = !{!"_ZTSN12_GLOBAL__N_116pj_mod_ster_dataE", !8, i64 0, !14, i64 8, !14, i64 16, !5, i64 24}
!39 = !{!38, !5, i64 24}
!40 = !{!14, !14, i64 0}
!41 = !{!38, !8, i64 0}
!42 = !{!36, !14, i64 216}
!43 = !{!36, !8, i64 112}
!44 = !{!36, !8, i64 104}
!45 = !{!36, !10, i64 8}
!46 = !{!36, !10, i64 16}
!47 = !{!36, !5, i64 360}
!48 = !{!36, !15, i64 380}
!49 = !{!36, !15, i64 384}
!50 = !{!36, !14, i64 168}
!51 = !{!38, !14, i64 16}
!52 = !{!38, !14, i64 8}
!53 = !{!36, !14, i64 208}
!54 = distinct !{!54, !56}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"_ZTS7COMPLEX", !14, i64 0, !14, i64 8}
!58 = !{!57, !14, i64 0}
!59 = !{!57, !14, i64 8}
!60 = !{!36, !14, i64 448}
!61 = !{!36, !9, i64 0}
end_hunk_0
