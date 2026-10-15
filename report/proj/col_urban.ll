Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/col_urban?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL13des_col_urban = internal constant [27 x i8] c"Colombia Urban\0A\09Misc\0A\09h_0=\00", align 16
@pj_s_col_urban = hidden local_unnamed_addr constant ptr @_ZL13des_col_urban, align 8
@.str = private unnamed_addr constant [10 x i8] c"col_urban\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dh_0\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_col_urban(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z38pj_projection_specific_setup_col_urbanP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL13des_col_urban, ptr %i.e, align 8, !tbaa !45
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
define hidden noundef ptr @_Z38pj_projection_specific_setup_col_urbanP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #6 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !37
  %i.e = load ptr, ptr %0, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull @.str.1)
  %1 = bitcast i64 %i.h to double
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load double, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.l = load double, ptr %i.k, align 8, !tbaa !38 ; 2 uses
  %i.m = tail call double @sin(double noundef %i.l) #7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load double, ptr %i.n, align 8, !tbaa !39 ; 2 uses
  %i.p = fneg double %i.m
  %i.q = fmul double %i.o, %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.m, double 1.000000e+00) ; 2 uses
  %i.s = tail call double @sqrt(double noundef %i.r) #7
  %2 = fdiv double 1.000000e+00, %i.s             ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = tail call double @pow(double noundef %i.r, double noundef 1.500000e+00) #7
  %4 = fdiv double %1, %i.j                       ; 4 uses
  store double %4, ptr %i.a, align 8, !tbaa !52
  %5 = fsub double 1.000000e+00, %i.o             ; 2 uses
  %i.u = insertelement <2 x double> poison, double %4, i64 0
  %i.v = insertelement <2 x double> %i.u, double %5, i64 1
  %6 = insertelement <2 x double> poison, double %2, i64 0
  %7 = insertelement <2 x double> %6, double %i.t, i64 1
  %8 = fdiv <2 x double> %i.v, %7                 ; 2 uses
  %i.w = extractelement <2 x double> %8, i64 0
  %9 = fadd double %i.w, 1.000000e+00
  store double %9, ptr %3, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %10 = extractelement <2 x double> %8, i64 1     ; 3 uses
  store double %10, ptr %i.x, align 8, !tbaa !53
  %11 = tail call double @tan(double noundef %i.l) #7
  %12 = fmul double %10, 2.000000e+00
  %13 = fmul double %2, %12
  %14 = fdiv double %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %14, ptr %15, align 8, !tbaa !42
  %16 = fadd double %4, 1.000000e+00
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %16, ptr %17, align 8, !tbaa !54
  %18 = fdiv double %4, %5
  %i.y = fadd double %18, 1.000000e+00
  %i.z = fmul double %i.y, %10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %i.z, ptr %i.aa, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL17col_urban_forward5PJ_LPP8PJconsts, ptr %i.ab, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL17col_urban_inverse5PJ_XYP8PJconsts, ptr %i.ac, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL17col_urban_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = tail call double @cos(double noundef %1) #7
  %i.d = tail call double @sin(double noundef %1) #7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.f = load double, ptr %i.e, align 8, !tbaa !39 ; 3 uses
  %i.g = fneg double %i.d
  %i.h = fmul double %i.f, %i.g
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.d, double 1.000000e+00)
  %i.j = tail call double @sqrt(double noundef %i.i) #7
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.m = load double, ptr %i.l, align 8, !tbaa !38 ; 2 uses
  %i.n = fadd double %1, %i.m
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = tail call double @sin(double noundef %i.o) #7 ; 2 uses
  %i.q = fsub double 1.000000e+00, %i.f
  %i.r = fneg double %i.p
  %i.s = fmul double %i.f, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.p, double 1.000000e+00)
  %i.u = tail call double @pow(double noundef %i.t, double noundef 1.500000e+00) #7
  %i.v = fdiv double %i.q, %i.u
  %i.w = fsub double %1, %i.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !42
  %i.z = load double, ptr %i.k, align 8, !tbaa !41
  %i.aa = load <2 x double>, ptr %i.b, align 8, !tbaa !43 ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ac = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.v, i64 1
  %i.ae = fdiv <2 x double> %i.ab, %i.ad
  %i.af = insertelement <2 x double> <double poison, double 1.000000e+00>, double %0, i64 0
  %i.ag = fmul <2 x double> %i.af, %i.ae
  %i.ah = fadd <2 x double> %i.ag, <double -0.000000e+00, double 1.000000e+00>
  %i.ai = insertelement <2 x double> %i.aa, double %i.c, i64 0
  %i.aj = fmul <2 x double> %i.ai, %i.ah          ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0 ; 2 uses
  %i.al = fmul double %i.ak, %i.y
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ak, double %i.w)
  %i.an = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = fmul <2 x double> %i.ao, %i.aj          ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x double> %i.ap, i64 0
  %i.aq = insertvalue { double, double } poison, double %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x double> %i.ap, i64 1
  %vec2struct28 = insertvalue { double, double } %i.aq, double %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { double, double } %vec2struct28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL17col_urban_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.d = load double, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !43 ; 2 uses
  %i.i = insertelement <2 x double> poison, double %0, i64 0
  %i.j = insertelement <2 x double> %i.i, double %1, i64 1
  %i.k = fdiv <2 x double> %i.j, %i.h             ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 1
  %i.m = fadd double %i.d, %i.l
  %i.n = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  %i.o = fneg double %i.n
  %i.p = fmul double %i.f, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.n, double %i.m) ; 3 uses
  %i.r = tail call double @sin(double noundef %i.q) #7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.t = load double, ptr %i.s, align 8, !tbaa !39
  %i.u = fneg double %i.r
  %i.v = fmul double %i.t, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.r, double 1.000000e+00)
  %i.x = tail call double @sqrt(double noundef %i.w) #7
  %i.y = fdiv double 1.000000e+00, %i.x
  %i.z = extractelement <2 x double> %i.h, i64 0
  %i.aa = fmul double %i.z, %i.y
  %i.ab = tail call double @cos(double noundef %i.q) #7
  %i.ac = fmul double %i.ab, %i.aa
  %i.ad = fdiv double %0, %i.ac
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ad, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.q, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!38 = !{!36, !14, i64 448}
!39 = !{!36, !14, i64 216}
!40 = !{!"_ZTSN12_GLOBAL__N_112pj_col_urbanE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!41 = !{!40, !14, i64 16}
!42 = !{!40, !14, i64 24}
!43 = !{!14, !14, i64 0}
!44 = !{!36, !10, i64 8}
!45 = !{!36, !10, i64 16}
!46 = !{!36, !5, i64 360}
!47 = !{!36, !15, i64 380}
!48 = !{!36, !15, i64 384}
!49 = !{!36, !9, i64 0}
!50 = !{!36, !11, i64 24}
!51 = !{!36, !14, i64 168}
!52 = !{!40, !14, i64 0}
!53 = !{!40, !14, i64 8}
!54 = !{!40, !14, i64 32}
!55 = !{!40, !14, i64 40}
!56 = !{!36, !8, i64 104}
!57 = !{!36, !8, i64 112}
end_hunk_0
