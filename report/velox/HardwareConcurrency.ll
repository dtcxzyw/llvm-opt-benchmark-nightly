inline.NumInlined: 11
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::detail::safe_assert_arg" = type { ptr, ptr, i32, ptr, ptr }
%"struct.folly::c_array" = type { [1 x i8] }
%"class.folly::cpu_set_state" = type <{ ptr, i64, i8, [7 x i8] }>
%struct.cpu_set_t = type { [16 x i64] }

$_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE = comdat any

@_ZZN5folly13cpu_set_state3askEP9cpu_set_tE6setszc = internal global { i64 } zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"ask\00", align 1
@_ZZN5folly13cpu_set_state3askEP9cpu_set_tE30__folly_detail_safe_assert_arg = internal constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.1, ptr @.str.2, i32 36, ptr @.str, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"!!set\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/system/HardwareConcurrency.cpp\00", align 1
@_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE = linkonce_odr constant %"struct.folly::c_array" zeroinitializer, comdat, align 1
@_ZZN5folly13cpu_set_state3askEP9cpu_set_tE30__folly_detail_safe_assert_arg_0 = internal constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.3, ptr @.str.2, i32 44, ptr @.str, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE }, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"(*__errno_location ()) == 22\00", align 1

@_ZN5folly13cpu_set_stateD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly13cpu_set_stateD2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly13cpu_set_state3askEP9cpu_set_t(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::cpu_set_state") align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr @_ZZN5folly13cpu_set_state3askEP9cpu_set_tE6setszc monotonic, align 8 ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  %i.b = select i1 %.not, i64 1024, i64 %i.a      ; 3 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp eq i64 %i.b, 1024
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__sched_cpualloc(i64 noundef %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.not2650 = icmp eq ptr %i.f, null
  br i1 %.not2650, label %._crit_edge54, label %.lr.ph

._crit_edge54:                                    ; preds = %bb.f, %bb.c
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly13cpu_set_state3askEP9cpu_set_tE30__folly_detail_safe_assert_arg) #6
  unreachable

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.02252 = phi i64 [ %i.p, %bb.f ], [ %i.b, %bb.c ] ; 7 uses
  %.02351 = phi ptr [ %i.q, %bb.f ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = add i64 %.02252, 63
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 2305843009213693944
  %i.j = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef %i.i, ptr noundef nonnull %.02351) #5
  %.not35 = icmp eq i32 %i.j, 0
  br i1 %.not35, label %.preheader, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = tail call ptr @__errno_location() #7
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = icmp eq i32 %i.l, 22
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb1EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly13cpu_set_state3askEP9cpu_set_tE30__folly_detail_safe_assert_arg_0) #6
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq ptr %.02351, %1
  %i.o = select i1 %i.n, ptr null, ptr %.02351
  tail call void @__sched_cpufree(ptr noundef %i.o) #5
  %i.p = shl i64 %.02252, 1                       ; 2 uses
  %i.q = tail call ptr @__sched_cpualloc(i64 noundef %i.p) #5 ; 2 uses
  %.not26 = icmp eq ptr %i.q, null
  br i1 %.not26, label %._crit_edge54, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.r = icmp ugt i64 %.02252, %i.a
  br i1 %i.r, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, label %._crit_edge

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %.preheader, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %.03136 = phi i64 [ %spec.select, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ], [ %i.a, %.preheader ]
  %i.s = cmpxchg ptr @_ZZN5folly13cpu_set_state3askEP9cpu_set_tE6setszc, i64 %.03136, i64 %.02252 monotonic monotonic, align 8 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %spec.select = select i1 %i.t, i64 %.02252, i64 %i.u ; 2 uses
  %i.v = icmp ugt i64 %.02252, %spec.select
  br i1 %i.v, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %.preheader
  %i.w = icmp ne ptr %.02351, %1
  %i.x = zext i1 %i.w to i8
  store ptr %.02351, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.02252, ptr %i.y, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.x, ptr %i.z, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb1EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly13cpu_set_stateD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(17) dereferenceable(17) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !21, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  tail call void @__sched_cpufree(ptr noundef %spec.select) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5folly21available_concurrencyEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.cpu_set_t, align 8          ; 3 uses
  %1 = alloca %"class.folly::cpu_set_state", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @_ZN5folly13cpu_set_state3askEP9cpu_set_t(ptr dead_on_unwind nonnull writable sret(%"class.folly::cpu_set_state") align 8 %1, ptr noundef nonnull %0) #5
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK5folly13cpu_set_state9cpu_countEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = add i64 %i.c, 63
  %i.e = lshr i64 %i.d, 3
  %i.f = and i64 %i.e, 2305843009213693944
  %i.g = call i32 @__sched_cpucount(i64 noundef %i.f, ptr noundef nonnull %i.a) #5
  br label %_ZNK5folly13cpu_set_state9cpu_countEv.exit

_ZNK5folly13cpu_set_state9cpu_countEv.exit:       ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  call void @_ZN5folly13cpu_set_stateD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  ret i32 %i.h
}

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { nounwind willreturn memory(none) }

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
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN5folly13cpu_set_stateE", !17, i64 0, !18, i64 8, !19, i64 16}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!"bool", !10, i64 0}
!20 = !{!16, !18, i64 8}
!21 = !{!16, !19, i64 16}
!22 = !{i8 0, i8 2}
!23 = !{}
end_hunk_0
