begin_hunk_0
inline.NumInlined: 1025
inline.NumDeleted: 617
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN5folly14HeapTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  store ptr %i.g, ptr %0, align 8, !tbaa !17
  store ptr null, ptr %i.f, align 8, !tbaa !17
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i unwind label %4

4:                                                ; preds = %bb.b
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #28
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i:      ; preds = %bb.b
  %7 = load ptr, ptr %3, align 8, !tbaa !20       ; 5 uses
  %.not.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i, label %_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.i = atomicrmw sub ptr %i.h, i8 1 acq_rel, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.i, 1
  br i1 %.not.i.i.i1.i, label %bb.d, label %_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !25, !range !26, !noundef !27
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.f
end_hunk_1
begin_hunk_2_@_ZN5folly14HeapTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i: ; preds = %bb.g, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %7, i64 noundef 56) #27
  br label %_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit

_ZNSt4pairISt10unique_ptrIN5folly14HeapTimekeeper7TimeoutENS3_6DecRefEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit: ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i, %bb.c, %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

end_hunk_2
