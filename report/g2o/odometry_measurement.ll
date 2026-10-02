Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/odometry_measurement?download=true
inline.NumInlined: 418
inline.NumDeleted: 261
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.g2o::VelocityMeasurement" = type { %"class.Eigen::Matrix", double, [8 x i8] }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [2 x double] }
%"class.g2o::MotionMeasurement" = type { %"class.Eigen::Matrix.3", double }
%"class.Eigen::Matrix.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { %"struct.Eigen::internal::plain_array.12" }
%"struct.Eigen::internal::plain_array.12" = type { [3 x double] }

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN3g2o19VelocityMeasurementC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o19VelocityMeasurementC2Ev
@_ZN3g2o19VelocityMeasurementC1Eddd = unnamed_addr alias void (ptr, double, double, double), ptr @_ZN3g2o19VelocityMeasurementC2Eddd
@_ZN3g2o17MotionMeasurementC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o17MotionMeasurementC2Ev
@_ZN3g2o17MotionMeasurementC1Edddd = unnamed_addr alias void (ptr, double, double, double, double), ptr @_ZN3g2o17MotionMeasurementC2Edddd
@_ZN3g2o17MotionMeasurementC1ERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEd = unnamed_addr alias void (ptr, ptr, double), ptr @_ZN3g2o17MotionMeasurementC2ERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEd

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3g2o19VelocityMeasurementC2Ev(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3g2o19VelocityMeasurementC2Eddd(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(24) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store double %1, ptr %0, align 16, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 16, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3g2o17MotionMeasurementC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3g2o17MotionMeasurementC2Edddd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) unnamed_addr #0 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.c, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3g2o17MotionMeasurementC2ERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %2, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o11OdomConvert17convertToVelocityERKNS_17MotionMeasurementE(ptr dead_on_unwind noalias writable sret(%"class.g2o::VelocityMeasurement") align 16 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !9 ; 3 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ogt double %i.c, f0x3E7AD7F29ABCAF48
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %1, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !9
  %i.h = tail call double @hypot(double noundef %i.e, double noundef %i.g) #8
  %i.i = fmul nnan double %i.b, 5.000000e-01
  %i.j = tail call double @sin(double noundef %i.i) #8
  %i.k = fmul double %i.j, 2.000000e+00
  %i.l = fdiv double %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !21 ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp ogt double %i.o, f0x3E7AD7F29ABCAF48
  %i.q = fdiv double %i.b, %i.n
  %spec.select = select i1 %i.p, double %i.q, double 0.000000e+00 ; 3 uses
  %i.r = fmul double %i.l, 2.000000e+00
  %i.s = fneg double %spec.select
  %i.t = tail call double @llvm.fmuladd.f64(double %i.r, double %spec.select, double %i.s)
  %i.u = fmul double %i.t, 5.000000e-01           ; 2 uses
  %i.v = fadd double %spec.select, %i.u
  tail call void @_ZN3g2o19VelocityMeasurementC1Eddd(ptr noundef nonnull align 16 dereferenceable(24) %0, double noundef %i.u, double noundef %i.v, double noundef %i.n)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !21 ; 3 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ogt double %i.y, f0x3E7AD7F29ABCAF48
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load double, ptr %1, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !9
  %i.ad = tail call double @hypot(double noundef %i.aa, double noundef %i.ac) #8
  %i.ae = fdiv double %i.ad, %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi double [ %i.ae, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  tail call void @_ZN3g2o19VelocityMeasurementC1Eddd(ptr noundef nonnull align 16 dereferenceable(24) %0, double noundef %.0, double noundef %.0, double noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o11OdomConvert15convertToMotionERKNS_19VelocityMeasurementEd(ptr dead_on_unwind noalias writable sret(%"class.g2o::MotionMeasurement") align 8 %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(24) %1, double noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %.sroa.2 = alloca <2 x double>, align 16        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !9 ; 3 uses
  %i.c = load double, ptr %1, align 16, !tbaa !9  ; 3 uses
  %i.d = fsub double %i.b, %i.c                   ; 3 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp ogt double %i.e, f0x3E7AD7F29ABCAF48
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fmul double %2, 5.000000e-01
  %i.h = fadd double %i.b, %i.c
  %i.i = fdiv double %i.h, %i.d
  %i.j = fmul double %i.g, %i.i
  %i.k = fdiv double %i.d, %2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load double, ptr %i.l, align 16, !tbaa !15 ; 2 uses
  %i.n = fmul double %i.k, %i.m                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store double 0.000000e+00, ptr %3, align 16, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.j, ptr %i.o, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2)
  store double -1.000000e+00, ptr %.sroa.2, align 16, !tbaa !31, !alias.scope !39
  %.sroa.2.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 8
  store ptr %3, ptr %.sroa.2.8..sroa_idx, align 8, !tbaa !35, !alias.scope !39
  %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.16. = load <2 x double>, ptr %.sroa.2, align 16 ; 3 uses
  %bc.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.16. to <2 x i64>
  %i.p = extractelement <2 x i64> %bc.i.i.i.i.i.i, i64 1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load <2 x double>, ptr %i.q, align 16, !tbaa !22 ; 2 uses
  %i.s = call double @sin(double noundef %i.n) #8, !noalias !44 ; 2 uses
  %i.t = call double @cos(double noundef %i.n) #8, !noalias !44 ; 2 uses
  %i.u = fneg double %i.s
  %.sroa.0.0.vec.insert.i = insertelement <2 x double> poison, double %i.t, i64 0
  %.sroa.0.8.vec.insert.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i, double %i.s, i64 1
  %.sroa.5.16.vec.insert.i = insertelement <2 x double> poison, double %i.u, i64 0
  %.sroa.5.24.vec.insert.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i, double %i.t, i64 1
  %i.v = fmul <2 x double> %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.16., %i.r
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.w, %.sroa.0.8.vec.insert.i
  %i.y = shufflevector <2 x double> %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul <2 x double> %i.y, %i.z
  %i.ab = fmul <2 x double> %i.aa, %.sroa.5.24.vec.insert.i
  %i.ac = fadd <2 x double> %i.ab, %i.x
  %i.ad = load <2 x double>, ptr %3, align 16, !tbaa !22
  %i.ae = fadd <2 x double> %i.ad, %i.ac          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2)
  %.sroa.022.0.vec.extract = extractelement <2 x double> %i.ae, i64 0
  %.sroa.022.8.vec.extract = extractelement <2 x double> %i.ae, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = fadd double %i.b, %i.c
  %i.ag = fmul double %i.af, 5.000000e-01
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !15 ; 2 uses
  %i.aj = fmul double %i.ag, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ak = phi double [ %i.m, %bb.b ], [ %i.ai, %bb.c ]
  %.027 = phi double [ %i.n, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.019 = phi double [ %.sroa.022.8.vec.extract, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.0 = phi double [ %.sroa.022.0.vec.extract, %bb.b ], [ %i.aj, %bb.c ]
  call void @_ZN3g2o17MotionMeasurementC1Edddd(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %.0, double noundef %.019, double noundef %.027, double noundef %i.ak)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi2ELi0ELi16EEE", !4, i64 0}
!11 = !{!"_ZTSN5Eigen12DenseStorageIdLi2ELi2ELi1ELi0EEE", !10, i64 0}
!12 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEE", !11, i64 0}
!13 = !{!"_ZTSN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEE", !12, i64 0}
!14 = !{!"_ZTSN3g2o19VelocityMeasurementE", !13, i64 0, !8, i64 16}
!15 = !{!14, !8, i64 16}
!16 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi3ELi0ELi0EEE", !4, i64 0}
!17 = !{!"_ZTSN5Eigen12DenseStorageIdLi3ELi3ELi1ELi0EEE", !16, i64 0}
!18 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE", !17, i64 0}
!19 = !{!"_ZTSN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE", !18, i64 0}
!20 = !{!"_ZTSN3g2o17MotionMeasurementE", !19, i64 0, !8, i64 24}
!21 = !{!20, !8, i64 24}
!22 = !{!4, !4, i64 0}
!23 = !{i64 0, i64 24, !22}
!30 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIdEE", !8, i64 0}
!31 = !{!30, !8, i64 0}
!33 = !{!"any pointer", !4, i64 0}
!34 = !{!"p1 _ZTSN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEE", !33, i64 0}
!35 = !{!34, !34, i64 0}
!37 = distinct !{!37, i1 false, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEESA_E4typeEKSE_EERKS5_RKNS_10MatrixBaseISE_EE"}
!38 = distinct !{!38, !37, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEESA_E4typeEKSE_EERKS5_RKNS_10MatrixBaseISE_EE: argument 0"}
!39 = !{!38}
!40 = distinct !{!40, i1 false, !"_ZNK5Eigen10Rotation2DIdE16toRotationMatrixEv"}
!41 = distinct !{!41, !40, !"_ZNK5Eigen10Rotation2DIdE16toRotationMatrixEv: argument 0"}
!42 = distinct !{!42, i1 false, !"_ZNK5Eigen10Rotation2DIdEmlERKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEE"}
!43 = distinct !{!43, !42, !"_ZNK5Eigen10Rotation2DIdEmlERKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEE: argument 0"}
!44 = !{!41, !43}
end_hunk_0
