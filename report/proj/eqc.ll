Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/eqc?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL7des_eqc = internal constant [73 x i8] c"Equidistant Cylindrical (Plate Carree)\0A\09Cyl, Sph&Ell\0A\09lat_ts=[, lat_0=0]\00", align 16
@pj_s_eqc = hidden local_unnamed_addr constant ptr @_ZL7des_eqc, align 8
@.str = private unnamed_addr constant [4 x i8] c"eqc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rlat_ts\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Invalid value for lat_ts: |lat_ts| should be <= 90\C2\B0\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_eqc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z32pj_projection_specific_setup_eqcP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL7des_eqc, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z32pj_projection_specific_setup_eqcP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #8 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL17pj_eqc_destructorP8PJconstsi, ptr %i.e, align 8, !tbaa !49
  %i.f = load ptr, ptr %0, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.f, ptr noundef %i.h, ptr noundef nonnull @.str.1)
  %i.j = bitcast i64 %i.i to double               ; 2 uses
  %i.k = tail call double @cos(double noundef %i.j) #9 ; 3 uses
  %i.l = fcmp ugt double %i.k, 0.000000e+00
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.2)
  %i.m = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load double, ptr %i.n, align 8, !tbaa !52 ; 2 uses
  %i.p = fcmp une double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = tail call double @sin(double noundef %i.j) #9 ; 2 uses
  %i.r = fneg double %i.q
  %i.s = fmul double %i.o, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.q, double 1.000000e+00)
  %i.u = tail call double @sqrt(double noundef %i.t) #9
  %i.v = fdiv double 1.000000e+00, %i.u
  %i.w = fmul double %i.k, %i.v
  store double %i.w, ptr %i.a, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.y = load double, ptr %i.x, align 8, !tbaa !53
  %i.z = tail call noundef ptr @_Z7pj_enfnd(double noundef %i.y) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !41
  %.not = icmp eq ptr %i.z, null                  ; 2 uses
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.ab = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %1

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  %i.ae = tail call double @sin(double noundef %i.ad) #9
  %i.af = tail call double @cos(double noundef %i.ad) #9
  %i.ag = tail call noundef double @_Z7pj_mlfndddPKd(double noundef %i.ad, double noundef %i.ae, double noundef %i.af, ptr noundef nonnull %i.z)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.ag, ptr %i.ah, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL13eqc_e_inverse5PJ_XYP8PJconsts, ptr %i.ai, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL13eqc_e_forward5PJ_LPP8PJconsts, ptr %i.aj, align 8, !tbaa !55
  br label %1

1:                                                ; preds = %bb.g, %.thread
  %.0 = phi ptr [ %i.ab, %.thread ], [ undef, %bb.g ]
  br i1 %.not, label %bb.i, label %2

bb.h:                                             ; preds = %bb.e
  store double %i.k, ptr %i.a, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store ptr @_ZL13eqc_s_inverse5PJ_XYP8PJconsts, ptr %i.al, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL13eqc_s_forward5PJ_LPP8PJconsts, ptr %i.am, align 8, !tbaa !55
  br label %2

2:                                                ; preds = %1, %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %2, %1, %bb.b
  %.2 = phi ptr [ %i.c, %bb.b ], [ %i.m, %bb.d ], [ %0, %2 ], [ %.0, %1 ]
  ret ptr %.2
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL17pj_eqc_destructorP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.f) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %i.g = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %.sink.split ]
  ret ptr %.0
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare noundef ptr @_Z7pj_enfnd(double noundef) local_unnamed_addr #1

declare noundef double @_Z7pj_mlfndddPKd(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL13eqc_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !40
  %i.d = fdiv double %0, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !43
  %i.g = fadd double %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = tail call noundef double @_Z11pj_inv_mlfndPKd(double noundef %i.g, ptr noundef %i.i)
  %.fca.0.insert = insertvalue { double, double } poison, double %i.d, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.j, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL13eqc_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = tail call double @sin(double noundef %1) #9
  %i.d = tail call double @cos(double noundef %1) #9
  %i.e = load double, ptr %i.b, align 8, !tbaa !40
  %i.f = fmul double %0, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = tail call noundef double @_Z7pj_mlfndddPKd(double noundef %1, double noundef %i.c, double noundef %i.d, ptr noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !43
  %i.l = fsub double %i.i, %i.k
  %.fca.0.insert = insertvalue { double, double } poison, double %i.f, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.l, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { double, double } @_ZL13eqc_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load double, ptr %i.b, align 8, !tbaa !40
  %i.d = fdiv double %0, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.f = load double, ptr %i.e, align 8, !tbaa !42
  %i.g = fadd double %1, %i.f
  %.fca.0.insert = insertvalue { double, double } poison, double %i.d, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.g, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { double, double } @_ZL13eqc_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load double, ptr %i.b, align 8, !tbaa !40
  %i.d = fmul double %0, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.f = load double, ptr %i.e, align 8, !tbaa !42
  %i.g = fsub double %1, %i.f
  %.fca.0.insert = insertvalue { double, double } poison, double %i.d, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.g, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef double @_Z11pj_inv_mlfndPKd(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind }

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
!38 = !{!"p1 double", !8, i64 0}
!39 = !{!"_ZTSN12_GLOBAL__N_111pj_eqc_dataE", !14, i64 0, !14, i64 8, !38, i64 16}
!40 = !{!39, !14, i64 0}
!41 = !{!39, !38, i64 16}
!42 = !{!36, !14, i64 448}
!43 = !{!39, !14, i64 8}
!44 = !{!36, !10, i64 8}
!45 = !{!36, !10, i64 16}
!46 = !{!36, !5, i64 360}
!47 = !{!36, !15, i64 380}
!48 = !{!36, !15, i64 384}
!49 = !{!36, !8, i64 152}
!50 = !{!36, !9, i64 0}
!51 = !{!36, !11, i64 24}
end_hunk_0
