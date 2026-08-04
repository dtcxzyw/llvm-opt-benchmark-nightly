inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL11des_calcofi = internal constant [56 x i8] c"Cal Coop Ocean Fish Invest Lines/Stations\0A\09Cyl, Sph&Ell\00", align 16
@pj_s_calcofi = hidden local_unnamed_addr constant ptr @_ZL11des_calcofi, align 8
@.str = private unnamed_addr constant [8 x i8] c"calcofi\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_calcofi(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load double, ptr %i.g, align 8, !tbaa !42
  %i.i = fcmp une double %i.h, 0.000000e+00       ; 2 uses
  %_ZL17calcofi_s_inverse5PJ_XYP8PJconsts.sink.i = select i1 %i.i, ptr @_ZL17calcofi_e_inverse5PJ_XYP8PJconsts, ptr @_ZL17calcofi_s_inverse5PJ_XYP8PJconsts
  %_ZL17calcofi_s_forward5PJ_LPP8PJconsts.sink.i = select i1 %i.i, ptr @_ZL17calcofi_e_forward5PJ_LPP8PJconsts, ptr @_ZL17calcofi_s_forward5PJ_LPP8PJconsts
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %_ZL17calcofi_s_inverse5PJ_XYP8PJconsts.sink.i, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %_ZL17calcofi_s_forward5PJ_LPP8PJconsts.sink.i, ptr %i.k, align 8, !tbaa !44
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @.str, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @_ZL11des_calcofi, ptr %i.o, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  store i32 1, ptr %i.p, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 380
  store i32 4, ptr %i.q, align 4, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 384
  store i32 1, ptr %i.r, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.l, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_Z36pj_projection_specific_setup_calcofiP8PJconsts(ptr nofree noundef returned captures(ret: address, provenance) initializes((88, 96), (104, 120), (168, 176), (184, 192), (344, 348), (440, 448), (456, 472)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load double, ptr %i.g, align 8, !tbaa !42
  %i.i = fcmp une double %i.h, 0.000000e+00       ; 2 uses
  %_ZL17calcofi_s_inverse5PJ_XYP8PJconsts.sink = select i1 %i.i, ptr @_ZL17calcofi_e_inverse5PJ_XYP8PJconsts, ptr @_ZL17calcofi_s_inverse5PJ_XYP8PJconsts
  %_ZL17calcofi_s_forward5PJ_LPP8PJconsts.sink = select i1 %i.i, ptr @_ZL17calcofi_e_forward5PJ_LPP8PJconsts, ptr @_ZL17calcofi_s_forward5PJ_LPP8PJconsts
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %_ZL17calcofi_s_inverse5PJ_XYP8PJconsts.sink, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %_ZL17calcofi_s_forward5PJ_LPP8PJconsts.sink, ptr %i.k, align 8, !tbaa !44
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL17calcofi_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = fadd double %0, -8.000000e+01
  %i.b = fmul double %i.a, f0xBF6C987103B761F5
  %i.c = tail call double @llvm.fmuladd.f64(double %i.b, double f0x3FEBB67AE8584CAB, double f0x3FE312AD613A9096) ; 3 uses
  %i.d = fadd double %1, -6.000000e+01
  %i.e = fmul double %i.d, f0xBF53104B57CF96A3
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double f0x3FDFFFFFFFFFFFFF, double %i.c) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !50
  %i.i = tail call noundef double @_Z7pj_tsfnddd(double noundef f0x3FE312AD613A9096, double noundef f0x3FE1F6AC2EC1D6AD, double noundef %i.h)
  %i.j = tail call double @log(double noundef %i.i) #7
  %i.k = tail call double @sin(double noundef %i.c) #7
  %i.l = load double, ptr %i.g, align 8, !tbaa !50
  %i.m = tail call noundef double @_Z7pj_tsfnddd(double noundef %i.c, double noundef %i.k, double noundef %i.l)
  %i.n = tail call double @log(double noundef %i.m) #7
  %i.o = tail call double @sin(double noundef %i.f) #7
  %i.p = load double, ptr %i.g, align 8, !tbaa !50
  %i.q = tail call noundef double @_Z7pj_tsfnddd(double noundef %i.f, double noundef %i.o, double noundef %i.p)
  %i.r = tail call double @log(double noundef %i.q) #7 ; 2 uses
  %i.s = fsub double %i.j, %i.r
  %i.t = fmul double %i.s, f0x3FE279A74590331C
  %i.u = fsub double %i.r, %i.n
  %i.v = fdiv double %i.u, f0x3FDBB67AE8584CAA
  %i.w = fadd double %i.t, %i.v
  %i.x = fsub double f0xC000EA6D5AA2CB02, %i.w
  %.fca.0.insert = insertvalue { double, double } poison, double %i.x, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.f, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL17calcofi_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %i.b = fadd double %i.a, f0xBFF921FB54442D18
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ugt double %i.c, 1.000000e-10
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call double @sin(double noundef %1) #7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !50
  %i.i = tail call noundef double @_Z7pj_tsfnddd(double noundef %1, double noundef %i.f, double noundef %i.h)
  %i.j = tail call double @log(double noundef %i.i) #7 ; 2 uses
  %i.k = fneg double %i.j
  %i.l = load double, ptr %i.g, align 8, !tbaa !50
  %i.m = tail call noundef double @_Z7pj_tsfnddd(double noundef f0x3FE312AD613A9096, double noundef f0x3FE1F6AC2EC1D6AD, double noundef %i.l)
  %i.n = tail call double @log(double noundef %i.m) #7
  %i.o = fsub double %i.n, %i.j
  %i.p = fmul double %i.o, f0x3FE279A74590331C
  %i.q = fneg double %0
  %i.r = fsub double %i.q, %i.p
  %i.s = fadd double %i.r, f0xC000EA6D5AA2CB02
  %i.t = fmul double %i.s, f0x3FEBB67AE8584CAB
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double f0x3FDFFFFFFFFFFFFF, double %i.k)
  %i.v = load ptr, ptr %2, align 8, !tbaa !51
  %i.w = fneg double %i.u
  %i.x = tail call double @exp(double noundef %i.w) #7
  %i.y = load double, ptr %i.g, align 8, !tbaa !50
  %i.z = tail call noundef double @_Z7pj_phi2P6pj_ctxdd(ptr noundef %i.v, double noundef %i.x, double noundef %i.y)
  %i.aa = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x double> <double f0x3FE312AD613A9096, double poison>, double %1, i64 1
  %i.ad = fsub <2 x double> %i.ab, %i.ac
  %i.ae = fmul <2 x double> %i.ad, splat (double f0x404CA5DC1A63C1F8)
  %i.af = fmul <2 x double> %i.ae, <double 5.000000e+00, double 1.500000e+01>
  %i.ag = fdiv <2 x double> %i.af, <double f0x3FEBB67AE8584CAB, double f0x3FDFFFFFFFFFFFFF> ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fsub double 8.000000e+01, %i.ah
  %i.aj = extractelement <2 x double> %i.ag, i64 1
  %i.ak = fadd double %i.aj, 6.000000e+01
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.ak, %bb.c ]
  %.sroa.014.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.ai, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.014.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.5.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal { double, double } @_ZL17calcofi_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = fadd double %0, -8.000000e+01
  %i.b = fmul double %i.a, f0xBF6C987103B761F5
  %3 = tail call double @llvm.fmuladd.f64(double %i.b, double f0x3FEBB67AE8584CAB, double f0x3FE312AD613A9096) ; 2 uses
  %i.c = fadd double %1, -6.000000e+01
  %i.d = fmul double %i.c, f0xBF53104B57CF96A3
  %i.e = tail call double @llvm.fmuladd.f64(double %i.d, double f0x3FDFFFFFFFFFFFFF, double %3) ; 2 uses
  %i.f = insertelement <2 x double> poison, double %3, i64 0
  %i.g = insertelement <2 x double> %i.f, double %i.e, i64 1
  %i.h = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double f0x3FE921FB54442D18)) ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = tail call double @tan(double noundef %i.i) #7
  %i.k = tail call double @log(double noundef %i.j) #7
  %i.l = extractelement <2 x double> %i.h, i64 1
  %i.m = tail call double @tan(double noundef %i.l) #7
  %i.n = tail call double @log(double noundef %i.m) #7 ; 2 uses
  %i.o = fadd double %i.n, f0xBFE4506F7CB6F53A
  %i.p = fmul double %i.o, f0x3FE279A74590331C
  %i.q = fsub double %i.k, %i.n
  %i.r = fdiv double %i.q, f0x3FDBB67AE8584CAA
  %i.s = fadd double %i.p, %i.r
  %i.t = fsub double f0xC000EA6D5AA2CB02, %i.s
  %.fca.0.insert = insertvalue { double, double } poison, double %i.t, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.e, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL17calcofi_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %i.b = fadd double %i.a, f0xBFF921FB54442D18
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ugt double %i.c, 1.000000e-10
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call double @llvm.fmuladd.f64(double %1, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.g = tail call double @tan(double noundef %i.f) #7
  %i.h = tail call double @log(double noundef %i.g) #7 ; 2 uses
  %i.i = fadd double %i.h, f0xBFE4506F7CB6F53A
  %i.j = fmul double %i.i, f0x3FE279A74590331C
  %i.k = fneg double %0
  %i.l = fsub double %i.k, %i.j
  %i.m = fadd double %i.l, f0xC000EA6D5AA2CB02
  %i.n = fmul double %i.m, f0x3FEBB67AE8584CAB
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double f0x3FDFFFFFFFFFFFFF, double %i.h)
  %i.p = fneg double %i.o
  %i.q = tail call double @exp(double noundef %i.p) #7
  %i.r = tail call double @atan(double noundef %i.q) #7
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double -2.000000e+00, double f0x3FF921FB54442D18)
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = insertelement <2 x double> <double f0x3FE312AD613A9096, double poison>, double %1, i64 1
  %i.w = fsub <2 x double> %i.u, %i.v
  %i.x = fmul <2 x double> %i.w, splat (double f0x404CA5DC1A63C1F8)
  %i.y = fmul <2 x double> %i.x, <double 5.000000e+00, double 1.500000e+01>
  %i.z = fdiv <2 x double> %i.y, <double f0x3FEBB67AE8584CAB, double f0x3FDFFFFFFFFFFFFF> ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fsub double 8.000000e+01, %i.aa
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = fadd double %i.ac, 6.000000e+01
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.ad, %bb.c ]
  %.sroa.09.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.ab, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.5.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #5

declare noundef double @_Z7pj_tsfnddd(double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef double @_Z7pj_phi2P6pj_ctxdd(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 88}
!9 = !{!"_ZTS8PJconsts", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !17, i64 380, !17, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !11, i64 600, !11, i64 608, !16, i64 616, !16, i64 624, !5, i64 632, !6, i64 636, !18, i64 640, !23, i64 656, !16, i64 664, !23, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !23, i64 776, !27, i64 784, !32, i64 808, !33, i64 816, !5, i64 840, !23, i64 844, !23, i64 845, !23, i64 846, !14, i64 848}
!10 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!14 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!15 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"_ZTS11pj_io_units", !6, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!32 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!33 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!38 = !{!9, !16, i64 440}
!39 = !{!9, !16, i64 184}
!40 = !{!9, !16, i64 168}
!41 = !{!9, !5, i64 344}
!42 = !{!9, !16, i64 216}
!43 = !{!9, !11, i64 112}
!44 = !{!9, !11, i64 104}
!45 = !{!9, !12, i64 8}
!46 = !{!9, !12, i64 16}
!47 = !{!9, !5, i64 360}
!48 = !{!9, !17, i64 380}
!49 = !{!9, !17, i64 384}
!50 = !{!9, !16, i64 208}
!51 = !{!9, !10, i64 0}
end_hunk_0
