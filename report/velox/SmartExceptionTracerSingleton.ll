inline.NumInlined: 59
inline.NumDeleted: 53
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::f14::detail::F14EmptyTagVector" = type { %"struct.std::array", i8 }
%"struct.std::array" = type { [15 x i8] }

$_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = comdat any

@__folly_smart_exception_store = local_unnamed_addr global ptr null, align 8
@_ZZN5folly16exception_tracer6detail10getMetaMapEvE4meta.0 = internal unnamed_addr global ptr null, align 8
@_ZGVZN5folly16exception_tracer6detail10getMetaMapEvE4meta = internal global i64 0, align 8
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array" zeroinitializer, i8 -1 }, comdat, align 16
@_ZN5folly16exception_tracer6detailL11hookEnabledE.0 = internal unnamed_addr global i8 0, align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(28) ptr @_ZN5folly16exception_tracer6detail10getMetaMapEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly16exception_tracer6detail10getMetaMapEvE4meta acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16exception_tracer6detail10getMetaMapEvE4meta) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #7
          to label %bb.d unwind label %bb.f       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !12
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.e, align 8, !tbaa !15, !noalias !12
  store ptr %i.d, ptr @_ZZN5folly16exception_tracer6detail10getMetaMapEvE4meta.0, align 8, !tbaa !24, !alias.scope !12
  store ptr %i.d, ptr @__folly_smart_exception_store, align 8, !tbaa !26
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16exception_tracer6detail10getMetaMapEvE4meta) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN5folly16exception_tracer6detail10getMetaMapEvE4meta.0, align 8, !tbaa !24
  ret ptr %i.f

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly16exception_tracer6detail10getMetaMapEvE4meta) #6
  resume { ptr, i32 } %i.g
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5folly16exception_tracer6detail33isSmartExceptionTracerHookEnabledEv() local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly16exception_tracer6detailL11hookEnabledE.0 monotonic, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5folly16exception_tracer6detail34setSmartExceptionTracerHookEnabledEb(i1 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN5folly16exception_tracer6detailL11hookEnabledE.0 seq_cst, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZSt11make_uniqueIN5folly12SynchronizedINS0_12F14VectorMapIPKvSt10shared_ptrIKNS0_16exception_tracer6detail13ExceptionMetaEENS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_SA_EEEENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!14 = distinct !{!14, !"_ZSt11make_uniqueIN5folly12SynchronizedINS0_12F14VectorMapIPKvSt10shared_ptrIKNS0_16exception_tracer6detail13ExceptionMetaEENS0_23HeterogeneousAccessHashIS4_vEENS0_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_SA_EEEENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!15 = !{!16, !20, i64 8}
!16 = !{!"_ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKvSt10shared_ptrIKNS_16exception_tracer6detail13ExceptionMetaEEvvvSt17integral_constantIbLb0EEEEEE", !17, i64 0, !20, i64 8, !21, i64 16}
!17 = !{!"_ZTSN5folly3f146detail21VectorContainerPolicyIPKvSt10shared_ptrIKNS_16exception_tracer6detail13ExceptionMetaEEvvvSt17integral_constantIbLb0EEEE", !18, i64 0}
!18 = !{!"p1 _ZTSSt4pairIKPKvSt10shared_ptrIKN5folly16exception_tracer6detail13ExceptionMetaEEE", !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIjEE", !19, i64 0}
!21 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEELb0EEE", !22, i64 0}
!22 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !23, i64 0}
!23 = !{!"long", !9, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN5folly12SynchronizedINS_12F14VectorMapIPKvSt10shared_ptrIKNS_16exception_tracer6detail13ExceptionMetaEENS_23HeterogeneousAccessHashIS3_vEENS_26HeterogeneousAccessEqualToIS3_vEESaISt4pairIKS3_S9_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !19, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSN5folly12F14VectorMapIPKvSt10shared_ptrIKNS_16exception_tracer6detail13ExceptionMetaEENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S8_EEEE", !19, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
end_hunk_0
