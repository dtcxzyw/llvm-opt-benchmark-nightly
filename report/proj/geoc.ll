Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/geoc?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.PJ_COORD = type { [4 x double] }

@_ZL8des_geoc = internal constant [20 x i8] c"Geocentric Latitude\00", align 16
@pj_s_geoc = hidden local_unnamed_addr constant ptr @_ZL8des_geoc, align 8
@.str = private unnamed_addr constant [5 x i8] c"geoc\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD(ptr dead_on_unwind noalias nofree writable writeonly sret(%union.PJ_COORD) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %3) local_unnamed_addr #0 {
bb.a:
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !9 ; 2 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %or.cond = fcmp ogt double %i.c, f0x3FF921FB53FF74E8
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.e = load double, ptr %i.d, align 8, !tbaa !10
  %i.f = fcmp oeq double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b
  %i.g = icmp eq i32 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %. = select i1 %i.g, i64 256, i64 264
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.
  %i.j = load double, ptr %i.i, align 8, !tbaa !40
  %i.k = tail call double @tan(double noundef %i.b) #6
  %i.l = fmul double %i.j, %i.k
  %i.m = tail call double @atan(double noundef %i.l) #6
  store double %i.m, ptr %i.h, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_geoc(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_ZL7inverseR8PJ_COORDP8PJconsts, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZL7forwardR8PJ_COORDP8PJconsts, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 4, ptr %i.c, align 4, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 4, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 1, ptr %i.e, align 8, !tbaa !45
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @.str, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @_ZL8des_geoc, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  store i32 1, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 380
  store i32 4, ptr %i.k, align 4, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  store i32 1, ptr %i.l, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.f, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal void @_ZL7inverseR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load double, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %i.a = tail call double @llvm.fabs.f64(double %.sroa.0.sroa.2.0.copyload)
  %or.cond.i = fcmp ogt double %i.a, f0x3FF921FB53FF74E8
  br i1 %or.cond.i, label %_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.c = load double, ptr %i.b, align 8, !tbaa !10, !noalias !49
  %i.d = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.d, label %_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.f = load double, ptr %i.e, align 8, !tbaa !40, !noalias !49
  %i.g = tail call double @tan(double noundef %.sroa.0.sroa.2.0.copyload) #6, !noalias !49
  %i.h = fmul double %i.f, %i.g
  %i.i = tail call double @atan(double noundef %i.h) #6, !noalias !49
  br label %_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD.exit

_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD.exit: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sroa.4.0 = phi double [ %.sroa.0.sroa.2.0.copyload, %bb.a ], [ %.sroa.0.sroa.2.0.copyload, %bb.b ], [ %i.i, %.sink.split.i ]
  store double %.sroa.4.0, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal void @_ZL7forwardR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load double, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %i.a = tail call double @llvm.fabs.f64(double %.sroa.0.sroa.2.0.copyload)
  %or.cond.i = fcmp ogt double %i.a, f0x3FF921FB53FF74E8
  br i1 %or.cond.i, label %_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.c = load double, ptr %i.b, align 8, !tbaa !10, !noalias !52
  %i.d = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.d, label %_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = load double, ptr %i.e, align 8, !tbaa !40, !noalias !52
  %i.g = tail call double @tan(double noundef %.sroa.0.sroa.2.0.copyload) #6, !noalias !52
  %i.h = fmul double %i.f, %i.g
  %i.i = tail call double @atan(double noundef %i.h) #6, !noalias !52
  br label %_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD.exit

_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD.exit: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sroa.4.0 = phi double [ %.sroa.0.sroa.2.0.copyload, %bb.a ], [ %.sroa.0.sroa.2.0.copyload, %bb.b ], [ %i.i, %.sink.split.i ]
  store double %.sroa.4.0, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{i64 0, i64 32, !9}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !18, i64 216}
!11 = !{!"_ZTS8PJconsts", !12, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !14, i64 32, !16, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !17, i64 80, !13, i64 88, !5, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !19, i64 380, !19, i64 384, !16, i64 392, !16, i64 400, !16, i64 408, !16, i64 416, !16, i64 424, !16, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !18, i64 488, !18, i64 496, !18, i64 504, !18, i64 512, !18, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !13, i64 600, !13, i64 608, !18, i64 616, !18, i64 624, !5, i64 632, !6, i64 636, !20, i64 640, !25, i64 656, !18, i64 664, !25, i64 672, !26, i64 680, !26, i64 712, !26, i64 744, !25, i64 776, !29, i64 784, !34, i64 808, !35, i64 816, !5, i64 840, !25, i64 844, !25, i64 845, !25, i64 846, !16, i64 848}
!12 = !{!"p1 _ZTS6pj_ctx", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS8ARG_list", !13, i64 0}
!16 = !{!"p1 _ZTS8PJconsts", !13, i64 0}
!17 = !{!"p1 _ZTS13geod_geodesic", !13, i64 0}
!18 = !{!"double", !6, i64 0}
!19 = !{!"_ZTS11pj_io_units", !6, i64 0}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !21, i64 0}
!21 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0, !23, i64 8}
!22 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !13, i64 0}
!23 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!24 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!25 = !{!"bool", !6, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !28, i64 8, !6, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!28 = !{!"long", !6, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !13, i64 0}
!34 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !36, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"p1 _ZTS16PJCoordOperation", !13, i64 0}
!40 = !{!18, !18, i64 0}
!41 = !{!11, !13, i64 144}
!42 = !{!11, !13, i64 136}
!43 = !{!11, !19, i64 380}
!44 = !{!11, !19, i64 384}
!45 = !{!11, !5, i64 352}
!46 = !{!11, !14, i64 8}
!47 = !{!11, !14, i64 16}
!48 = !{!11, !5, i64 360}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD: argument 0"}
!51 = distinct !{!51, !"_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD: argument 0"}
!54 = distinct !{!54, !"_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD"}
end_hunk_0
