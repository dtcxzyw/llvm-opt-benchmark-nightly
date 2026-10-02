Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_inside_convex_polygon?download=true
inline.NumInlined: 102
inline.NumDeleted: 77
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [2 x double] }

$_ZN3igl10predicates27point_inside_convex_polygonIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS3_IdLi1ELi2ELi1ELi1ELi2EEEEEbRKNS2_10MatrixBaseIT_EERKNS6_IT0_EE = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl10predicates27point_inside_convex_polygonIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS3_IdLi1ELi2ELi1ELi1ELi2EEEEEbRKNS2_10MatrixBaseIT_EERKNS6_IT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %3 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %.not.not.not.not.not = icmp sle i64 %i.d, %indvars.iv ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = urem i64 %indvars.iv.next, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.f = load ptr, ptr %0, align 8, !tbaa !17, !noalias !24 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !20
  store double %i.h, ptr %2, align 16, !tbaa !20
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  %i.j = load double, ptr %i.i, align 8, !tbaa !20
  store double %i.j, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !20
  store double %i.l, ptr %3, align 16, !tbaa !20
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.d
  %i.n = load double, ptr %i.m, align 8, !tbaa !20
  store double %i.n, ptr %i.c, align 8, !tbaa !20
  %i.o = call noundef i32 @_ZN3igl10predicates8orient2dIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %i.p = add i32 %i.o, -1
  %or.cond = icmp ult i32 %i.p, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br i1 %or.cond, label %bb.b, label %bb.d, !llvm.loop !11

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i1 %.not.not.not.not.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZN3igl10predicates8orient2dIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEENS0_11OrientationERKNS2_10MatrixBaseIT_EESA_SA_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!11 = distinct !{!11, !21}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 double", !12, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi2ELi0EEE", !13, i64 0, !14, i64 8}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !13, i64 0}
!19 = !{!"double", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE3rowEl"}
!23 = distinct !{!23, !22, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE3rowEl: argument 0"}
!24 = !{!23}
end_hunk_0
