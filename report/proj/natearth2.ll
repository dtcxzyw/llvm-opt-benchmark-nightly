Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/natearth2?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL13des_natearth2 = internal constant [27 x i8] c"Natural Earth 2\0A\09PCyl, Sph\00", align 16
@pj_s_natearth2 = hidden local_unnamed_addr constant ptr @_ZL13des_natearth2, align 8
@.str = private unnamed_addr constant [10 x i8] c"natearth2\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_natearth2(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL19natearth2_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL19natearth2_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZL13des_natearth2, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i32 1, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  store i32 4, ptr %i.i, align 4, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store i32 1, ptr %i.j, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.d, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef ptr @_Z38pj_projection_specific_setup_natearth2P8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 120), (216, 224)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL19natearth2_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL19natearth2_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL19natearth2_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = fcmp ogt double %1, f0x3FF6C9A4865D0F30
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %1, f0xBFF6C9A4865D0F30
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.2.0 = phi double [ %1, %bb.b ], [ f0xBFF6C9A4865D0F30, %bb.c ], [ f0x3FF6C9A4865D0F30, %bb.a ] ; 2 uses
  %i.c = fneg double %.sroa.2.0
  %i.d = insertelement <2 x double> <double poison, double 1.011830e+00>, double %i.c, i64 0
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.e = add nsw i32 %.03947, -1                  ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.f, !llvm.loop !45

bb.f:                                             ; preds = %bb.d, %bb.e
  %.03947 = phi i32 [ 100, %bb.d ], [ %i.e, %bb.e ]
  %.04046 = phi double [ %.sroa.2.0, %bb.d ], [ %i.y, %bb.e ] ; 4 uses
  %i.f = fmul double %.04046, %.04046             ; 3 uses
  %i.g = fmul double %i.f, %i.f                   ; 4 uses
  %i.h = fmul double %i.g, %i.g                   ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.f, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> <double 1.926000e-02, double 2.118600e-01>, <2 x double> <double -2.625000e-02, double -2.362500e-01>) ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call double @llvm.fmuladd.f64(double %i.g, double -3.960000e-03, double %i.l)
  %i.n = insertelement <2 x double> poison, double %i.h, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.g, i64 1
  %i.p = insertelement <2 x double> <double poison, double -5.148000e-02>, double %i.m, i64 0
  %i.q = insertelement <2 x double> %i.k, double 1.011830e+00, i64 0
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.p, <2 x double> %i.q)
  %i.s = insertelement <2 x double> poison, double %.04046, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.h, i64 1
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.r, <2 x double> %i.d) ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = extractelement <2 x double> %i.u, i64 1
  %i.x = fdiv double %i.v, %i.w                   ; 2 uses
  %i.y = fsub double %.04046, %i.x                ; 4 uses
  %i.z = tail call double @llvm.fabs.f64(double %i.x)
  %i.aa = fcmp olt double %i.z, f0x3DA5FD7FE1796495
  br i1 %i.aa, label %.loopexit, label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %2, align 8, !tbaa !47
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.ab, i32 noundef 2050)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g
  %i.ac = fmul double %i.y, %i.y                  ; 4 uses
  %i.ad = fmul double %i.ac, %i.ac                ; 2 uses
  %i.ae = fmul double %i.ac, %i.ad                ; 3 uses
  %i.af = fmul double %i.ae, %i.ae
  %i.ag = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> <double -1.306300e-01, double 5.494000e-02>, <2 x double> <double 8.471900e-01, double -4.515000e-02>) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 1
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ad, double -2.326000e-02, double %i.aj)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ae, double 3.310000e-03, double %i.ak)
  %i.am = extractelement <2 x double> %i.ai, i64 0
  %i.an = tail call double @llvm.fmuladd.f64(double %i.af, double %i.al, double %i.am)
  %i.ao = fdiv double %0, %i.an
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ao, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.y, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { double, double } @_ZL19natearth2_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = fmul double %1, %1                       ; 6 uses
  %i.b = fmul double %i.a, %i.a                   ; 3 uses
  %i.c = fmul double %i.a, %i.b
  %3 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.a, i64 0
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> <double -1.306300e-01, double 0.000000e+00>, <2 x double> <double 8.471900e-01, double 1.011830e+00>)
  %i.d = tail call double @llvm.fmuladd.f64(double %i.a, double 5.494000e-02, double -4.515000e-02)
  %i.e = insertelement <2 x double> poison, double %i.c, i64 0
  %i.f = insertelement <2 x double> %i.e, double %i.b, i64 1 ; 3 uses
  %i.g = fmul <2 x double> %i.f, %i.f
  %i.h = insertelement <2 x double> poison, double %i.b, i64 0
  %i.i = insertelement <2 x double> %i.h, double %i.a, i64 1
  %i.j = insertelement <2 x double> <double poison, double -2.625000e-02>, double %i.d, i64 0
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> <double -2.326000e-02, double 1.926000e-02>, <2 x double> %i.j)
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> <double 3.310000e-03, double -3.960000e-03>, <2 x double> %i.k)
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.l, <2 x double> %4)
  %i.n = insertelement <2 x double> poison, double %0, i64 0
  %i.o = insertelement <2 x double> %i.n, double %1, i64 1
  %i.p = fmul <2 x double> %i.o, %i.m             ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x double> %i.p, i64 0
  %i.q = insertvalue { double, double } poison, double %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x double> %i.p, i64 1
  %vec2struct19 = insertvalue { double, double } %i.q, double %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { double, double } %vec2struct19
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!37 = !{!36, !14, i64 216}
!38 = !{!36, !8, i64 112}
!39 = !{!36, !8, i64 104}
!40 = !{!36, !10, i64 8}
!41 = !{!36, !10, i64 16}
!42 = !{!36, !5, i64 360}
!43 = !{!36, !15, i64 380}
!44 = !{!36, !15, i64 384}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!36, !9, i64 0}
end_hunk_0
