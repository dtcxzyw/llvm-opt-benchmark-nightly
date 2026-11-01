Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/dist?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.PJ_COORD = type { [4 x double] }

; Function Attrs: mustprogress uwtable
define void @proj_geod(ptr dead_on_unwind noalias writable sret(%union.PJ_COORD) align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %2, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.PJ_COORD, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load <2 x double>, ptr %2, align 8, !tbaa !38
  %i.d = fmul <2 x double> %i.c, splat (double 1.800000e+02)
  %i.e = fdiv <2 x double> %i.d, splat (double f0x400921FB54442D18) ; 2 uses
  %i.f = load <2 x double>, ptr %3, align 8, !tbaa !38
  %i.g = fmul <2 x double> %i.f, splat (double 1.800000e+02)
  %i.h = fdiv <2 x double> %i.g, splat (double f0x400921FB54442D18) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = extractelement <2 x double> %i.e, i64 0
  %i.l = extractelement <2 x double> %i.e, i64 1
  %i.m = extractelement <2 x double> %i.h, i64 0
  %i.n = extractelement <2 x double> %i.h, i64 1
  call void @geod_inverse(ptr noundef nonnull %i.b, double noundef %i.l, double noundef %i.k, double noundef %i.n, double noundef %i.m, ptr noundef nonnull %4, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #2

declare void @geod_inverse(ptr noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @proj_geod_direct(ptr dead_on_unwind noalias writable sret(%union.PJ_COORD) align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !39
  %i.f = load <2 x double>, ptr %2, align 8, !tbaa !38
  %i.g = fmul <2 x double> %i.f, splat (double 1.800000e+02)
  %i.h = fdiv <2 x double> %i.g, splat (double f0x400921FB54442D18) ; 2 uses
  %i.i = fmul double %3, 1.800000e+02
  %i.j = fdiv double %i.i, f0x400921FB54442D18
  %i.k = extractelement <2 x double> %i.h, i64 0
  %i.l = extractelement <2 x double> %i.h, i64 1
  call void @geod_direct(ptr noundef nonnull %i.e, double noundef %i.l, double noundef %i.k, double noundef %i.j, double noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.m = load double, ptr %i.b, align 8, !tbaa !39
  %i.n = fmul double %i.m, f0x400921FB54442D18
  %i.o = fdiv double %i.n, 1.800000e+02
  %i.p = load double, ptr %i.a, align 8, !tbaa !39
  %i.q = load double, ptr %i.c, align 8, !tbaa !39
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.q, i64 1
  %i.t = fmul <2 x double> %i.s, splat (double f0x400921FB54442D18)
  %i.u = fdiv <2 x double> %i.t, splat (double 1.800000e+02) ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = extractelement <2 x double> %i.u, i64 1
  call void @proj_coord(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8 %0, double noundef %i.o, double noundef %i.v, double noundef %i.w, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @geod_direct(ptr noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @proj_coord(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define double @proj_lp_dist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %1, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = alloca double, align 8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load <2 x double>, ptr %1, align 8, !tbaa !38
  %i.g = fmul <2 x double> %i.f, splat (double 1.800000e+02)
  %i.h = fdiv <2 x double> %i.g, splat (double f0x400921FB54442D18) ; 2 uses
  %i.i = load <2 x double>, ptr %2, align 8, !tbaa !38
  %i.j = fmul <2 x double> %i.i, splat (double 1.800000e+02)
  %i.k = fdiv <2 x double> %i.j, splat (double f0x400921FB54442D18) ; 2 uses
  %i.l = extractelement <2 x double> %i.h, i64 0
  %i.m = extractelement <2 x double> %i.h, i64 1
  %i.n = extractelement <2 x double> %i.k, i64 0
  %i.o = extractelement <2 x double> %i.k, i64 1
  call void @geod_inverse(ptr noundef nonnull %i.e, double noundef %i.m, double noundef %i.l, double noundef %i.o, double noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.p = load double, ptr %i.a, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.p, %bb.b ], [ +inf, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define double @proj_lpz_dist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %1, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = alloca double, align 8                   ; 3 uses
  %i.d = load double, ptr %1, align 8, !tbaa !38
  %i.e = fcmp oeq double %i.d, +inf
  %i.f = load double, ptr %2, align 8
  %i.g = fcmp oeq double %i.f, +inf
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load <2 x double>, ptr %1, align 8
  %.sroa.04.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x double>, ptr %2, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %proj_lp_dist.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = fmul <2 x double> %i.h, splat (double 1.800000e+02)
  %i.m = fdiv <2 x double> %i.l, splat (double f0x400921FB54442D18) ; 2 uses
  %i.n = fmul <2 x double> %i.i, splat (double 1.800000e+02)
  %i.o = fdiv <2 x double> %i.n, splat (double f0x400921FB54442D18) ; 2 uses
  %i.p = extractelement <2 x double> %i.m, i64 0
  %i.q = extractelement <2 x double> %i.m, i64 1
  %i.r = extractelement <2 x double> %i.o, i64 0
  %i.s = extractelement <2 x double> %i.o, i64 1
  call void @geod_inverse(ptr noundef nonnull %i.k, double noundef %i.q, double noundef %i.p, double noundef %i.s, double noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.t = load double, ptr %i.a, align 8, !tbaa !39
  br label %proj_lp_dist.exit

proj_lp_dist.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi double [ %i.t, %bb.c ], [ +inf, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.u = load double, ptr %.sroa.04.sroa.3.0..sroa_idx, align 8, !tbaa !38
  %i.v = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !38
  %i.w = fsub double %i.u, %i.v
  %i.x = call double @hypot(double noundef %.0.i, double noundef %i.w) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %proj_lp_dist.exit
  %.0 = phi double [ %i.x, %proj_lp_dist.exit ], [ +inf, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define double @proj_xy_dist(ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %0, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !38
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !38
  %i.c = fsub <2 x double> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x double> %i.c, i64 0
  %i.e = extractelement <2 x double> %i.c, i64 1
  %i.f = tail call double @hypot(double noundef %i.d, double noundef %i.e) #5
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define double @proj_xyz_dist(ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %0, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.a = load <2 x double>, ptr %0, align 8
  %i.b = load <2 x double>, ptr %1, align 8
  %i.c = fsub <2 x double> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x double> %i.c, i64 0
  %i.e = extractelement <2 x double> %i.c, i64 1
  %i.f = tail call double @hypot(double noundef %i.d, double noundef %i.e) #5
  %i.g = load double, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !tbaa !38
  %i.h = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !38
  %i.i = fsub double %i.g, %i.h
  %i.j = tail call double @hypot(double noundef %i.f, double noundef %i.i) #5
  ret double %i.j
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!37 = !{!36, !13, i64 80}
!38 = !{!4, !4, i64 0}
!39 = !{!14, !14, i64 0}
!40 = !{i64 0, i64 32, !38}
end_hunk_0
