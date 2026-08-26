Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/gnom?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pj_gnom:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 360
  store i32 1, ptr %i.ae, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 380
  store i32 4, ptr %i.af, align 4, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
  store i32 1, ptr %i.ag, align 8, !tbaa !53
  br label %_Z33pj_projection_specific_setup_gnomP8PJconsts.exit

_Z33pj_projection_specific_setup_gnomP8PJconsts.exit: ; preds = %bb.k, %bb.c, %bb.l, %bb.m
  %.0 = phi ptr [ null, %bb.l ], [ %i.aa, %bb.m ], [ %i.c, %bb.c ], [ %0, %bb.k ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z33pj_projection_specific_setup_gnomP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(432) ptr @calloc(i64 noundef 1, i64 noundef 432) #8 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !38
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.i = load double, ptr %i.h, align 8, !tbaa !39 ; 4 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.k = fadd double %i.j, f0xBFF921FB54442D18
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp olt double %i.l, 1.000000e-10
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp olt double %i.i, 0.000000e+00
  %i.o = zext i1 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.o, ptr %i.p, align 8, !tbaa !40
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.q = fcmp olt double %i.j, 1.000000e-10
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.r, align 8, !tbaa !40
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i32 3, ptr %i.r, align 8, !tbaa !40
  %i.s = tail call double @sin(double noundef %i.i) #9
  store double %i.s, ptr %i.a, align 8, !tbaa !44
  %i.t = tail call double @cos(double noundef %i.i) #9
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.t, ptr %i.u, align 8, !tbaa !45
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = load double, ptr %i.w, align 8, !tbaa !46
  tail call void @geod_init(ptr noundef nonnull %i.v, double noundef 1.000000e+00, double noundef %i.x)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.i
  %_ZL14gnom_e_inverse5PJ_XYP8PJconsts.sink = phi ptr [ @_ZL14gnom_e_inverse5PJ_XYP8PJconsts, %bb.i ], [ @_ZL14gnom_s_inverse5PJ_XYP8PJconsts, %bb.g ], [ @_ZL14gnom_s_inverse5PJ_XYP8PJconsts, %bb.h ], [ @_ZL14gnom_s_inverse5PJ_XYP8PJconsts, %bb.e ]
  %_ZL14gnom_e_forward5PJ_LPP8PJconsts.sink = phi ptr [ @_ZL14gnom_e_forward5PJ_LPP8PJconsts, %bb.i ], [ @_ZL14gnom_s_forward5PJ_LPP8PJconsts, %bb.g ], [ @_ZL14gnom_s_forward5PJ_LPP8PJconsts, %bb.h ], [ @_ZL14gnom_s_forward5PJ_LPP8PJconsts, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %_ZL14gnom_e_inverse5PJ_XYP8PJconsts.sink, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %_ZL14gnom_e_forward5PJ_LPP8PJconsts.sink, ptr %i.z, align 8, !tbaa !48
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.j ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL14gnom_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = tail call double @hypot(double noundef %0, double noundef %1) #9 ; 6 uses
  %i.d = tail call double @atan(double noundef %i.c) #9 ; 4 uses
  %i.e = tail call double @sin(double noundef %i.d) #9 ; 6 uses
  %i.f = fneg double %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.e, double 1.000000e+00)
  %i.h = tail call double @sqrt(double noundef %i.g) #9 ; 3 uses
  %i.i = tail call double @llvm.fabs.f64(double %i.c)
  %i.j = fcmp ugt double %i.i, 1.000000e-10
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.l = load double, ptr %i.k, align 8, !tbaa !39
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  switch i32 %i.n, label %bb.n [
    i32 3, label %bb.d
    i32 2, label %bb.h
    i32 1, label %bb.l
    i32 0, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = load double, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.p = fmul double %1, %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !45 ; 2 uses
  %i.s = fmul double %i.p, %i.r
  %i.t = fdiv double %i.s, %i.c
  %i.u = tail call double @llvm.fmuladd.f64(double %i.h, double %i.o, double %i.t) ; 3 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp ult double %i.v, 1.000000e+00
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = fcmp ogt double %i.u, 0.000000e+00
  %i.y = select i1 %i.x, double f0x3FF921FB54442D18, double f0xBFF921FB54442D18
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = tail call double @asin(double noundef %i.u) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0 = phi double [ %i.y, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %i.aa = tail call double @sin(double noundef %.sroa.4.0) #9
  %i.ab = fneg double %i.o
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.aa, double %i.h)
  %i.ad = fmul double %i.c, %i.ac
  %i.ae = fmul double %i.e, %i.r
  %i.af = fmul double %0, %i.ae
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.ag = fmul double %1, %i.e
  %i.ah = fdiv double %i.ag, %i.c                 ; 3 uses
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah)
  %i.aj = fcmp ult double %i.ai, 1.000000e+00
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = fcmp ogt double %i.ah, 0.000000e+00
  %i.al = select i1 %i.ak, double f0x3FF921FB54442D18, double f0xBFF921FB54442D18
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = tail call double @asin(double noundef %i.ah) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.1 = phi double [ %i.al, %bb.i ], [ %i.am, %bb.j ]
  %i.an = fmul double %i.c, %i.h
  %i.ao = fmul double %0, %i.e
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  %i.ap = fadd double %i.d, f0xBFF921FB54442D18
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.aq = fsub double f0x3FF921FB54442D18, %i.d
  %i.ar = fneg double %1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %bb.c
  %.sroa.4.2.a = phi double [ %0, %bb.c ], [ %i.af, %bb.g ], [ %i.ao, %bb.k ], [ %0, %bb.l ], [ %0, %bb.m ]
  %.sroa.7.0 = phi double [ %1, %bb.c ], [ %i.ad, %bb.g ], [ %i.an, %bb.k ], [ %1, %bb.l ], [ %i.ar, %bb.m ]
  %.sroa.0.0 = phi double [ %i.d, %bb.c ], [ %.sroa.4.0, %bb.g ], [ %.sroa.4.1, %bb.k ], [ %i.ap, %bb.l ], [ %i.aq, %bb.m ]
  %i.as = tail call double @atan2(double noundef %.sroa.4.2.a, double noundef %.sroa.7.0) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  %.sroa.4.3 = phi double [ %i.l, %bb.b ], [ %.sroa.0.0, %bb.n ]
  %.sroa.029.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.as, %bb.n ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.029.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.4.3, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL14gnom_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 5 uses
  %i.c = tail call double @sin(double noundef %1) #9 ; 5 uses
  %i.d = tail call double @cos(double noundef %1) #9 ; 5 uses
  %i.e = tail call double @cos(double noundef %0) #9 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  switch i32 %i.g, label %.thread [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 1, label %bb.d
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = fmul double %i.d, %i.e
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = load double, ptr %i.b, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !45
  %i.l = fmul double %i.d, %i.k
  %i.m = fmul double %i.e, %i.l
  %i.n = tail call double @llvm.fmuladd.f64(double %i.i, double %i.c, double %i.m)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = fneg double %i.c
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.326.0 = phi double [ %i.o, %bb.d ], [ %i.h, %bb.b ], [ %i.n, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = fcmp ugt double %.sroa.326.0, 1.000000e-10
  br i1 %i.p, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.a, %bb.e
  %.sroa.326.032 = phi double [ %.sroa.326.0, %bb.e ], [ 0.000000e+00, %bb.a ]
  %i.q = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.r = fdiv double 1.000000e+00, %.sroa.326.0   ; 4 uses
  %i.s = fmul double %i.d, %i.r
  %i.t = tail call double @sin(double noundef %0) #9
  %i.u = fmul double %i.s, %i.t                   ; 3 uses
  switch i32 %i.g, label %default.unreachable [
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 0, label %bb.i
    i32 1, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = fmul double %i.c, %i.r
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !45
  %i.y = load double, ptr %i.b, align 8, !tbaa !44
  %i.z = fmul double %i.d, %i.y
  %i.aa = fneg double %i.e
  %i.ab = fmul double %i.z, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %i.c, double %i.ab)
  %i.ad = fmul double %i.r, %i.ac
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ae = fneg double %i.e
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0 = phi double [ %i.ae, %bb.i ], [ %i.e, %bb.f ]
  %i.af = fmul double %i.d, %.0
  %i.ag = fmul double %i.r, %i.af
  br label %bb.k

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j, %.thread
  %.sroa.326.2 = phi double [ %.sroa.326.032, %.thread ], [ %i.ag, %bb.j ], [ %i.v, %bb.g ], [ %i.ad, %bb.h ]
  %.sroa.025.0 = phi double [ 0.000000e+00, %.thread ], [ %i.u, %bb.j ], [ %i.u, %bb.g ], [ %i.u, %bb.h ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.025.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.326.2, 1
  ret { double, double } %.fca.1.insert
}

declare void @geod_init(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL14gnom_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 62 uses
  %3 = alloca %struct.geod_geodesicline, align 8  ; 22 uses
  %i.b = alloca double, align 8                   ; 23 uses
  %i.c = alloca double, align 8                   ; 23 uses
  %i.d = alloca double, align 8                   ; 78 uses
  %i.e = alloca double, align 8                   ; 78 uses
  %i.f = load atomic i8, ptr @_ZGVZL14gnom_e_inverse5PJ_XYP8PJconstsE4eps_ acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14gnom_e_inverse5PJ_XYP8PJconstsE4eps_) #9
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x3DE47AE147AE147B, ptr @_ZZL14gnom_e_inverse5PJ_XYP8PJconstsE4eps_, align 8, !tbaa !55
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZL14gnom_e_inverse5PJ_XYP8PJconstsE4eps_) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14gnom_e_inverse5PJ_XYP8PJconstsE4eps_) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.m = load double, ptr %i.l, align 8, !tbaa !39
  %i.n = tail call double @atan2(double noundef %0, double noundef %1) #9
  %i.o = insertelement <2 x double> poison, double %i.m, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.n, i64 1
  %i.q = fdiv <2 x double> %i.p, splat (double f0x3F91DF46A2529D39) ; 2 uses
  %i.r = tail call double @hypot(double noundef %0, double noundef %1) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.s = tail call double @atan(double noundef %i.r) #9 ; 2 uses
  store double %i.s, ptr %i.a, align 8, !tbaa !55
  %i.t = fcmp ugt double %i.r, 1.000000e+00
  %i.u = fdiv double 1.000000e+00, %i.r           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.w = extractelement <2 x double> %i.q, i64 0
  %i.x = extractelement <2 x double> %i.q, i64 1
  call void @geod_lineinit(ptr noundef nonnull %3, ptr noundef nonnull %i.v, double noundef %i.w, double noundef 0.000000e+00, double noundef %i.x, i32 noundef 14735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !55
  %i.y = fneg double %i.r                         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.z = call double @geod_genposition(ptr noundef nonnull %3, i32 noundef 0, double noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef null) ; 0 uses
  %i.aa = load double, ptr %i.d, align 8, !tbaa !55 ; 3 uses
  %i.ab = load double, ptr %i.e, align 8, !tbaa !55 ; 3 uses
  br i1 %i.t, label %.split.us.1, label %.split.1

.split.us.1:                                      ; preds = %bb.d
  %i.ac = fneg double %i.ab
  %i.ad = call double @llvm.fmuladd.f64(double %i.u, double %i.aa, double %i.ac)
  %i.ae = fmul double %i.aa, %i.ad                ; 2 uses
  %i.af = load double, ptr %i.a, align 8, !tbaa !55
  %i.ag = fsub double %i.af, %i.ae                ; 2 uses
  store double %i.ag, ptr %i.a, align 8, !tbaa !55
  %i.ah = call double @llvm.fabs.f64(double %i.ae)
  %i.ai = load double, ptr @_ZZL14gnom_e_inverse5PJ_XYP8PJconstsE4eps_, align 8, !tbaa !55
  %i.aj = fcmp ult double %i.ah, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.ak = call double @geod_genposition(ptr noundef nonnull %3, i32 noundef 0, double noundef %i.ag, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef null) ; 0 uses
  br i1 %i.aj, label %.thread33, label %.split.us.2

.split.us.2:                                      ; preds = %.split.us.1
  %i.al = load double, ptr %i.d, align 8, !tbaa !55 ; 2 uses
  %i.am = load double, ptr %i.e, align 8, !tbaa !55
  %i.an = fneg double %i.am
  %i.ao = call double @llvm.fmuladd.f64(double %i.u, double %i.al, double %i.an)
  %i.ap = fmul double %i.al, %i.ao                ; 2 uses
  %i.aq = load double, ptr %i.a, align 8, !tbaa !55
  %i.ar = fsub double %i.aq, %i.ap                ; 2 uses
  store double %i.ar, ptr %i.a, align 8, !tbaa !55
  %i.as = call double @llvm.fabs.f64(double %i.ap)
  %i.at = load double, ptr @_ZZL14gnom_e_inverse5PJ_XYP8PJconstsE4eps_, align 8, !tbaa !55
  %i.au = fcmp ult double %i.as, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.av = call double @geod_genposition(ptr noundef nonnull %3, i32 noundef 0, double noundef %i.ar, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef null) ; 0 uses
  br i1 %i.au, label %.thread33, label %.split.us.3

.split.us.3:                                      ; preds = %.split.us.2
  %i.aw = load double, ptr %i.d, align 8, !tbaa !55 ; 2 uses
  %i.ax = load double, ptr %i.e, align 8, !tbaa !55
  %i.ay = fneg double %i.ax
  %i.az = call double @llvm.fmuladd.f64(double %i.u, double %i.aw, double %i.ay)
  %i.ba = fmul double %i.aw, %i.az                ; 2 uses
  %i.bb = load double, ptr %i.a, align 8, !tbaa !55
  %i.bc = fsub double %i.bb, %i.ba                ; 2 uses
end_hunk_0
