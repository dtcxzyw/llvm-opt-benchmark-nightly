Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/QuantileEstimator?download=true
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
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.not52 = icmp eq ptr %3, %2
  br i1 %.not52, label %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.h = shl nuw nsw i64 %i.d, 1
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #10
          to label %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !19
  store ptr %i.i, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.e ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !21
  br label %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %.promoted26 = phi ptr [ %i.i, %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 3 uses
  %.promoted = phi ptr [ %i.k, %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !23
  store <2 x double> %i.m, ptr %0, align 8, !tbaa !23
  %.not30 = icmp eq ptr %2, %3
  br i1 %.not30, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit
  %i.o = phi ptr [ %.promoted26, %.lr.ph ], [ %4, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ] ; 10 uses
  %.031 = phi ptr [ %2, %.lr.ph ], [ %i.ap, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ] ; 4 uses
  %i.p = phi ptr [ %.promoted, %.lr.ph ], [ %i.ao, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ] ; 5 uses
  %i.q = phi ptr [ %.promoted26, %.lr.ph ], [ %i.an, %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit ] ; 10 uses
  %i.r = load double, ptr %.031, align 8, !tbaa !23
  %i.s = invoke noundef double @_ZNK5folly7TDigest16estimateQuantileEd(ptr noundef nonnull align 8 dereferenceable(64) %1, double noundef %i.r)
          to label %bb.e unwind label %.loopexit  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load double, ptr %.031, align 8, !tbaa !23
  store double %i.t, ptr %i.o, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store double %i.s, ptr %i.u, align 8, !tbaa !26
  br label %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775792
  br i1 %i.y, label %bb.h, label %_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.o, ptr %i.n, align 8
  store ptr %i.p, ptr %i.g, align 8
  store ptr %i.q, ptr %i.a, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #9
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.z = ashr exact i64 %i.x, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 576460752303423487)
  %i.ad = select i1 %i.ab, i64 576460752303423487, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 4
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #10
          to label %.noexc18 unwind label %.loopexit ; 5 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x ; 2 uses
  %i.ah = load double, ptr %.031, align 8, !tbaa !23
  store double %i.ah, ptr %i.ag, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store double %i.s, ptr %i.ai, align 8, !tbaa !26
  %.not10.i.i.i.i.i = icmp eq ptr %i.q, %i.o
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.af, %.noexc18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.q, %.noexc18 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !27
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc18
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.af, %.noexc18 ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %.not.i24.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.x) #11
  br label %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ad
  br label %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.f
  %i.am = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.o, %bb.f ]
  %i.an = phi ptr [ %i.af, %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.ao = phi ptr [ %i.al, %_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRKddEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.p, %bb.f ] ; 2 uses
  %4 = getelementptr i8, ptr %i.am, i64 16        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, %3
  br i1 %.not, label %._crit_edge, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.o, ptr %i.n, align 8
  store ptr %i.p, ptr %i.g, align 8
  store ptr %i.q, ptr %i.a, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.h, %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.aq = phi ptr [ %i.o, %bb.h ], [ null, %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %i.ar = phi ptr [ %i.q, %bb.h ], [ null, %_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.as = phi ptr [ %i.p, %.loopexit ], [ %i.aq, %.loopexit.split-lp ]
  %i.at = phi ptr [ %i.q, %.loopexit ], [ %i.ar, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i.i19 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i19, label %_ZN5folly17QuantileEstimatesD2Ev.exit, label %bb.k

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRKddEEERS1_DpOT_.exit
  store ptr %4, ptr %i.n, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit
  %.lcssa27 = phi ptr [ %i.an, %._crit_edge ], [ %.promoted26, %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit ]
  %.lcssa23 = phi ptr [ %i.ao, %._crit_edge ], [ %.promoted, %_ZNSt6vectorISt4pairIddESaIS1_EE7reserveEm.exit ]
  store ptr %.lcssa23, ptr %i.g, align 8
  store ptr %.lcssa27, ptr %i.a, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #11
  br label %_ZN5folly17QuantileEstimatesD2Ev.exit

_ZN5folly17QuantileEstimatesD2Ev.exit:            ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %lpad.phi
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

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, i1 true, !"_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_"}
!13 = distinct !{!13, !12, !"_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!14 = distinct !{!14, !12, !"_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!15 = distinct !{!15, !28}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"p1 _ZTSSt4pairIddE", !16, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 0}
!20 = !{!18, !17, i64 8}
!21 = !{!18, !17, i64 16}
!22 = !{!"double", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSSt4pairIddE", !22, i64 0, !22, i64 8}
!25 = !{!24, !22, i64 0}
!26 = !{!24, !22, i64 8}
!27 = !{!14, !13}
!28 = !{!"llvm.loop.mustprogress"}
end_hunk_0
