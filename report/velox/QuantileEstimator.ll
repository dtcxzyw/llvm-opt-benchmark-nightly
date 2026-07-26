inline.NumInlined: 80
inline.NumDeleted: 52
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::QuantileEstimates" = type { double, double, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<double, double>, std::allocator<std::pair<double, double>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<double, double>, std::allocator<std::pair<double, double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<double, double>, std::allocator<std::pair<double, double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<double, double>, std::allocator<std::pair<double, double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6detail19estimatesFromDigestERKNS_7TDigestENS_5RangeIPKdEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.folly::QuantileEstimates") align 8 captures(none) initializes((16, 40)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.not52 = icmp eq ptr %3, %2
  br i1 %.not52, label %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = shl nuw nsw i64 %i.d, 1
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #10 ; 4 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !12
  store ptr %i.j, ptr %i.h, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.e ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !17
  br label %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %.promoted26 = phi ptr [ %i.j, %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.k, %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !18
  store <2 x double> %i.m, ptr %0, align 8, !tbaa !18
  %.not30 = icmp eq ptr %2, %3
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit
  %i.o = phi ptr [ %.promoted26, %.lr.ph ], [ %i.ao, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ] ; 8 uses
  %.01331 = phi ptr [ %2, %.lr.ph ], [ %i.ar, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ] ; 4 uses
  %i.p = phi ptr [ %.promoted, %.lr.ph ], [ %i.aq, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ] ; 5 uses
  %i.q = phi ptr [ %.promoted26, %.lr.ph ], [ %i.ap, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ] ; 11 uses
  %i.r = load double, ptr %.01331, align 8, !tbaa !18
  %i.s = invoke noundef double @_ZNK5folly7TDigest16estimateQuantileEd(ptr noundef nonnull align 8 dereferenceable(64) %1, double noundef %i.r)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load double, ptr %.01331, align 8, !tbaa !18
  store double %i.t, ptr %i.o, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store double %i.s, ptr %i.u, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.n, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775792
  br i1 %i.z, label %bb.g, label %_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.p, ptr %i.g, align 8
  store ptr %i.q, ptr %i.a, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #9
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.aa = ashr exact i64 %i.y, 4                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 576460752303423487)
  %i.ae = select i1 %i.ac, i64 576460752303423487, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #10
          to label %.noexc18 unwind label %.loopexit ; 5 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y ; 2 uses
  %i.ai = load double, ptr %.01331, align 8, !tbaa !18
  store double %i.ai, ptr %i.ah, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %i.s, ptr %i.aj, align 8, !tbaa !22
  %.not10.i.i.i.i.i = icmp eq ptr %i.q, %i.o
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.q, %.noexc18 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !23
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc18
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %.noexc18 ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.y) #11
  br label %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  store ptr %i.am, ptr %i.n, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e
  %i.ao = phi ptr [ %i.am, %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.v, %bb.e ]
  %i.ap = phi ptr [ %i.ag, %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.aq = phi ptr [ %i.an, %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01331, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %3
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %bb.c, %_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.g, align 8
  store ptr %i.q, ptr %i.a, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit, %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit
  %.lcssa27 = phi ptr [ %.promoted26, %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit ], [ %i.ap, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ]
  %.lcssa23 = phi ptr [ %.promoted, %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit ], [ %i.aq, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ]
  store ptr %.lcssa23, ptr %i.g, align 8
  store ptr %.lcssa27, ptr %i.a, align 8
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %i.as = phi ptr [ %i.o, %.loopexit.split-lp ], [ %i.p, %.loopexit ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i.i19 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i19, label %_ZN5folly17QuantileEstimatesD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.q to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.av) #11
  br label %_ZN5folly17QuantileEstimatesD2Ev.exit

_ZN5folly17QuantileEstimatesD2Ev.exit:            ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef double @_ZNK5folly7TDigest16estimateQuantileEd(ptr noundef nonnull align 8 dereferenceable(64), double noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTSSt4pairIddE", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!13, !14, i64 8}
!17 = !{!13, !14, i64 16}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !10, i64 0}
!20 = !{!21, !19, i64 0}
!21 = !{!"_ZTSSt4pairIddE", !19, i64 0, !19, i64 8}
!22 = !{!21, !19, i64 8}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !"_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_"}
!26 = distinct !{!26, !25, !"_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
end_hunk_0
