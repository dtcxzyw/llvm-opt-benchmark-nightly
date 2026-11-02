Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/mbtfpq?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL10des_mbtfpq = internal constant [44 x i8] c"McBryde-Thomas Flat-Polar Quartic\0A\09Cyl, Sph\00", align 16
@pj_s_mbtfpq = hidden local_unnamed_addr constant ptr @_ZL10des_mbtfpq, align 8
@.str = private unnamed_addr constant [7 x i8] c"mbtfpq\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_mbtfpq(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL16mbtfpq_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL16mbtfpq_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZL10des_mbtfpq, ptr %i.g, align 8, !tbaa !41
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
define hidden noundef ptr @_Z35pj_projection_specific_setup_mbtfpqP8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 120), (216, 224)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL16mbtfpq_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL16mbtfpq_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL16mbtfpq_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = fmul double %1, f0x3FE111A1462B2982      ; 5 uses
  %i.b = tail call double @llvm.fabs.f64(double %i.a) ; 2 uses
  %i.c = fcmp ogt double %i.b, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %i.b, f0x3FF000010C6F7A0B
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.f = fcmp olt double %i.a, 0.000000e+00       ; 2 uses
  %. = select i1 %i.f, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.17 = select i1 %i.f, double -1.000000e+00, double 1.000000e+00
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = tail call double @asin(double noundef %i.a) #6
  %i.h = fmul double %i.g, 2.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.3.0 = phi double [ %., %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %.0 = phi double [ %.17, %bb.d ], [ %i.a, %bb.e ]
  %i.i = fmul double %0, f0x40099A71E940BE43
  %i.j = tail call double @cos(double noundef %.sroa.3.0) #6
  %i.k = fmul double %i.j, 2.000000e+00
  %i.l = fmul double %.sroa.3.0, 5.000000e-01
  %i.m = tail call double @cos(double noundef %i.l) #6
  %i.n = fdiv double %i.k, %i.m
  %i.o = fadd double %i.n, 1.000000e+00
  %i.p = fdiv double %i.i, %i.o                   ; 3 uses
  %i.q = tail call double @sin(double noundef %.sroa.3.0) #6
  %i.r = fadd double %.0, %i.q
  %i.s = fmul double %i.r, f0x3FE2BEC333018867    ; 4 uses
  %i.t = tail call double @llvm.fabs.f64(double %i.s) ; 2 uses
  %i.u = fcmp ogt double %i.t, 1.000000e+00
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = fcmp ogt double %i.t, f0x3FF000010C6F7A0B
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.x = fcmp olt double %i.s, 0.000000e+00
  %i.y = select i1 %i.x, double f0xBFF921FB54442D18, double f0x3FF921FB54442D18
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.z = tail call double @asin(double noundef %i.s) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.c
  %.sroa.3.2 = phi double [ %i.a, %bb.c ], [ %i.s, %bb.h ], [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  %.sroa.03.0 = phi double [ 0.000000e+00, %bb.c ], [ %i.p, %bb.h ], [ %i.p, %bb.i ], [ %i.p, %bb.j ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.2, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define internal { double, double } @_ZL16mbtfpq_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = tail call double @sin(double noundef %1) #6
  %i.b = fmul double %i.a, f0x3FFB504F333F9DE6
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.01416 = phi i32 [ 20, %bb.a ], [ %i.o, %bb.b ]
  %.sroa.2.015 = phi double [ %1, %bb.a ], [ %i.l, %bb.b ] ; 4 uses
  %i.c = fmul double %.sroa.2.015, 5.000000e-01   ; 2 uses
  %i.d = tail call double @sin(double noundef %i.c) #6
  %i.e = tail call double @sin(double noundef %.sroa.2.015) #6
  %i.f = fadd double %i.d, %i.e
  %i.g = fsub double %i.f, %i.b
  %i.h = tail call double @cos(double noundef %i.c) #6
  %i.i = tail call double @cos(double noundef %.sroa.2.015) #6
  %i.j = tail call double @llvm.fmuladd.f64(double %i.h, double 5.000000e-01, double %i.i)
  %i.k = fdiv double %i.g, %i.j                   ; 2 uses
  %i.l = fsub double %.sroa.2.015, %i.k           ; 3 uses
  %i.m = tail call double @llvm.fabs.f64(double %i.k)
  %i.n = fcmp olt double %i.m, f0x3E7AD7F29ABCAF48
  %i.o = add nsw i32 %.01416, -1                  ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  %or.cond = select i1 %i.n, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !45

bb.c:                                             ; preds = %bb.b
  %i.p = fmul double %0, f0x3FD3FF5707592B1A
  %i.q = tail call double @cos(double noundef %i.l) #6
  %i.r = fmul double %i.q, 2.000000e+00
  %i.s = fmul double %i.l, 5.000000e-01           ; 2 uses
  %3 = tail call double @cos(double noundef %i.s) #6
  %i.t = fdiv double %i.r, %3
  %i.u = fadd double %i.t, 1.000000e+00
  %i.v = fmul double %i.p, %i.u
  %4 = tail call double @sin(double noundef %i.s) #6
  %i.w = fmul double %4, f0x3FFDFF028B05C0A7
  %.fca.0.insert = insertvalue { double, double } poison, double %i.v, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.w, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
end_hunk_0
