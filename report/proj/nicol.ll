begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL9des_nicol = internal constant [36 x i8] c"Nicolosi Globular\0A\09Misc Sph, no inv\00", align 16
@pj_s_nicol = hidden local_unnamed_addr constant ptr @_ZL9des_nicol, align 8
@.str = private unnamed_addr constant [6 x i8] c"nicol\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_nicol(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15nicol_s_forward5PJ_LPP8PJconsts, ptr %i.b, align 8, !tbaa !38
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @_ZL9des_nicol, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  store i32 1, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  store i32 4, ptr %i.h, align 4, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store i32 1, ptr %i.i, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.c, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef ptr @_Z34pj_projection_specific_setup_nicolP8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 112), (216, 224)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15nicol_s_forward5PJ_LPP8PJconsts, ptr %i.b, align 8, !tbaa !38
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal { double, double } @_ZL15nicol_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.b = fcmp olt double %i.a, 1.000000e-10
  %i.c = insertelement <2 x double> <double 0.000000e+00, double poison>, double %1, i64 1 ; 3 uses
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.e = fcmp olt double %i.d, 1.000000e-10
  %i.f = insertelement <2 x double> <double poison, double 0.000000e+00>, double %0, i64 0 ; 2 uses
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = fadd double %i.a, f0xBFF921FB54442D18
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp olt double %i.h, 1.000000e-10
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call double @cos(double noundef %1) #6
  %i.k = tail call double @sin(double noundef %1) #6
  %i.l = insertelement <2 x double> %i.f, double %i.k, i64 1
  %i.m = insertelement <2 x double> <double poison, double f0x3FF921FB54442D18>, double %i.j, i64 0
  %i.n = fmul <2 x double> %i.l, %i.m
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = fadd double %i.d, f0xBFF921FB54442D18
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp olt double %i.p, 1.000000e-10
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fdiv double %1, f0x3FF921FB54442D18      ; 3 uses
  %i.s = fneg double %i.r
  %i.t = tail call double @sin(double noundef %1) #6 ; 5 uses
  %i.u = tail call double @cos(double noundef %1) #6
  %i.v = insertelement <2 x double> %i.c, double %0, i64 0
  %i.w = fcmp olt <2 x double> %i.v, zeroinitializer
  %i.x = fdiv double f0x3FF921FB54442D18, %0
  %i.y = fsub double %i.t, %i.r
  %i.z = tail call double @llvm.fmuladd.f64(double %i.s, double %i.r, double 1.000000e+00)
  %i.aa = insertelement <2 x double> poison, double %0, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.z, i64 1
  %i.ac = insertelement <2 x double> <double f0x3FF921FB54442D18, double poison>, double %i.y, i64 1
  %i.ad = fdiv <2 x double> %i.ab, %i.ac          ; 4 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.af = extractelement <2 x double> %i.ad, i64 0
  %i.ag = fsub double %i.x, %i.af                 ; 3 uses
  %i.ah = fdiv double %i.ag, %i.ae                ; 2 uses
  %i.ai = fmul double %i.ah, %i.ah                ; 4 uses
  %i.aj = fmul double %i.ag, %i.t
  %i.ak = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.t, i64 1
  %i.am = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ai, i64 1
  %i.ao = fdiv <2 x double> %i.al, %i.an
  %i.ap = insertelement <2 x double> %i.ad, double %i.ag, i64 0
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> <double -5.000000e-01, double 5.000000e-01>, <2 x double> %i.ao)
  %i.ar = fdiv double 1.000000e+00, %i.ai
  %i.as = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  %i.au = fadd <2 x double> %i.at, splat (double 1.000000e+00) ; 3 uses
  %i.av = fdiv <2 x double> %i.aq, %i.au          ; 4 uses
  %i.aw = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.t, i64 1 ; 2 uses
  %i.ay = fmul <2 x double> %i.ax, %i.ax
  %i.az = insertelement <2 x double> %i.au, double %i.ai, i64 1
  %i.ba = fdiv <2 x double> %i.ay, %i.az
  %3 = shufflevector <2 x double> %i.av, <2 x double> %i.ad, <2 x i32> <i32 0, i32 3>
  %4 = insertelement <2 x double> %i.av, double %i.t, i64 1
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %4, <2 x double> %i.ba) ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %sqrt = tail call double @llvm.sqrt.f64(double %6) ; 2 uses
  %i.bb = fneg double %sqrt
  %i.bc = extractelement <2 x double> %5, i64 1
  %i.bd = fadd double %i.bc, -1.000000e+00
  %i.be = fneg double %i.bd
  %i.bf = extractelement <2 x double> %i.au, i64 1
  %i.bg = fdiv double %i.be, %i.bf
  %i.bh = extractelement <2 x double> %i.av, i64 1 ; 2 uses
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bg)
  %i.bj = tail call double @sqrt(double noundef %i.bi) #6 ; 2 uses
  %i.bk = fneg double %i.bj
  %i.bl = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bj, i64 1
  %i.bn = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bk, i64 1
  %i.bp = select <2 x i1> %i.w, <2 x double> %i.bm, <2 x double> %i.bo
  %i.bq = fadd <2 x double> %i.av, %i.bp
  %i.br = fmul <2 x double> %i.bq, splat (double f0x3FF921FB54442D18)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.f, %bb.d
  %i.bs = phi <2 x double> [ %i.br, %bb.f ], [ %i.c, %bb.a ], [ %i.n, %bb.d ], [ %i.f, %bb.b ], [ %i.c, %bb.e ] ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bt, 0
  %i.bu = extractelement <2 x double> %i.bs, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bu, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!8 = !{!9, !16, i64 216}
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
!38 = !{!9, !11, i64 104}
!39 = !{!9, !12, i64 8}
!40 = !{!9, !12, i64 16}
!41 = !{!9, !5, i64 360}
!42 = !{!9, !17, i64 380}
!43 = !{!9, !17, i64 384}
end_hunk_0
