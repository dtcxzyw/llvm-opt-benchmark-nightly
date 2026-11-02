Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/merc?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL8des_merc = internal constant [32 x i8] c"Mercator\0A\09Cyl, Sph&Ell\0A\09lat_ts=\00", align 16
@pj_s_merc = hidden local_unnamed_addr constant ptr @_ZL8des_merc, align 8
@.str = private unnamed_addr constant [5 x i8] c"merc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tlat_ts\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rlat_ts\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Invalid value for lat_ts: |lat_ts| should be <= 90\C2\B0\00", align 1
@_ZL11des_webmerc = internal constant [43 x i8] c"Web Mercator / Pseudo Mercator\0A\09Cyl, Ell\0A\09\00", align 16
@pj_s_webmerc = hidden local_unnamed_addr constant ptr @_ZL11des_webmerc, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"webmerc\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_merc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z33pj_projection_specific_setup_mercP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL8des_merc, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z33pj_projection_specific_setup_mercP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.a, ptr noundef %i.c, ptr noundef nonnull @.str.1)
  %i.e = and i64 %i.d, 4294967295
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !42
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.h = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull @.str.2)
  %i.i = bitcast i64 %i.h to double               ; 3 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.k = fcmp ult double %i.j, f0x3FF921FB54442D18
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  %i.l = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load double, ptr %i.m, align 8, !tbaa !48
  %i.o = fcmp une double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.f, label %bb.h

.thread:                                          ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = load double, ptr %i.p, align 8, !tbaa !48 ; 2 uses
  %i.r = fcmp une double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread
  %1 = tail call double @sin(double noundef %i.j) #6
  %2 = tail call double @cos(double %i.i)
  %3 = tail call noundef double @_Z7pj_msfnddd(double noundef %1, double noundef %2, double noundef %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 488
  store double %3, ptr %i.s, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL14merc_e_inverse5PJ_XYP8PJconsts, ptr %i.t, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL14merc_e_forward5PJ_LPP8PJconsts, ptr %i.u, align 8, !tbaa !45
  br label %bb.i

bb.g:                                             ; preds = %.thread
  %i.v = tail call double @cos(double %i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 488
  store double %i.v, ptr %i.w, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL14merc_s_inverse5PJ_XYP8PJconsts, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL14merc_s_forward5PJ_LPP8PJconsts, ptr %i.y, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.c
  %.0 = phi ptr [ %i.l, %bb.c ], [ %0, %bb.h ], [ %0, %bb.f ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef double @_Z7pj_msfnddd(double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL14merc_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 488 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !43
  %i.d = fdiv double %1, %i.c
  %i.e = tail call double @sinh(double noundef %i.d) #6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.g = load double, ptr %i.f, align 8, !tbaa !46
  %i.h = tail call noundef double @_Z17pj_sinhpsi2tanphiP6pj_ctxdd(ptr noundef %i.a, double noundef %i.e, double noundef %i.g)
  %i.i = tail call double @atan(double noundef %i.h) #6
  %i.j = load double, ptr %i.b, align 8, !tbaa !43
  %i.k = fdiv double %0, %i.j
  %.fca.0.insert = insertvalue { double, double } poison, double %i.k, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.i, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal { double, double } @_ZL14merc_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.b = load double, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.c = fmul double %0, %i.b
  %3 = tail call double @sin(double noundef %1) #6 ; 2 uses
  %4 = tail call double @cos(double noundef %1) #6
  %i.d = fdiv double %3, %4
  %5 = tail call double @asinh(double noundef %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load double, ptr %i.e, align 8, !tbaa !46 ; 2 uses
  %i.g = fmul double %3, %i.f
  %6 = tail call double @atanh(double noundef %i.g) #6
  %i.h = fneg double %i.f
  %7 = tail call double @llvm.fmuladd.f64(double %i.h, double %6, double %5)
  %i.i = fmul double %i.b, %7
  %.fca.0.insert = insertvalue { double, double } poison, double %i.c, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.i, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal { double, double } @_ZL14merc_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.b = load double, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.c = fdiv double %1, %i.b
  %i.d = tail call double @sinh(double noundef %i.c) #6
  %i.e = tail call double @atan(double noundef %i.d) #6
  %i.f = fdiv double %0, %i.b
  %.fca.0.insert = insertvalue { double, double } poison, double %i.f, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.e, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal { double, double } @_ZL14merc_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.b = load double, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.c = fmul double %0, %i.b
  %i.d = tail call double @tan(double noundef %1) #6
  %i.e = tail call double @asinh(double noundef %i.d) #6
  %i.f = fmul double %i.b, %i.e
  %.fca.0.insert = insertvalue { double, double } poison, double %i.c, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.f, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_webmerc(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL14merc_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL14merc_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !45
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.4, ptr %i.f, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZL11des_webmerc, ptr %i.g, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i32 1, ptr %i.h, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  store i32 4, ptr %i.i, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store i32 1, ptr %i.j, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.d, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef ptr @_Z36pj_projection_specific_setup_webmercP8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 120), (488, 496)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL14merc_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL14merc_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !45
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #3

declare noundef double @_Z17pj_sinhpsi2tanphiP6pj_ctxdd(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asinh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atanh(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!37 = !{!36, !10, i64 8}
!38 = !{!36, !10, i64 16}
!39 = !{!36, !5, i64 360}
!40 = !{!36, !15, i64 380}
!41 = !{!36, !15, i64 384}
!42 = !{!36, !9, i64 0}
!43 = !{!36, !14, i64 488}
!44 = !{!36, !8, i64 112}
!45 = !{!36, !8, i64 104}
!46 = !{!36, !14, i64 208}
!47 = !{!36, !11, i64 24}
!48 = !{!36, !14, i64 216}
end_hunk_0
