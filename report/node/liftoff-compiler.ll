inline.NumInlined: 20819
inline.NumDeleted: 3929
begin_hunk_0_@_ZN2v88internal4wasm22WasmModuleCoverageData19InstallCoverageDataEiNS_4base6VectorIKNS1_13WasmCodeRangeEEE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26, !noalias !48 ; 5 uses
  %4 = icmp eq i64 %3, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !48
  br i1 %4, label %_ZSt11make_uniqueIN2v88internal4wasm24WasmFunctionCoverageDataEJRNS0_4base6VectorIKNS2_13WasmCodeRangeEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit._ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit_crit_edge, label %_ZN2v84base11OwnedVectorINS_8internal4wasm13WasmCodeRangeEE15NewForOverwriteEm.exit.i.i.i.i.i

_ZN2v84base11OwnedVectorINS_8internal4wasm13WasmCodeRangeEE15NewForOverwriteEm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = icmp ugt i64 %3, 4611686018427387903
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm22WasmModuleCoverageData19InstallCoverageDataEiNS_4base6VectorIKNS1_13WasmCodeRangeEEE:bb.a
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #26, !noalias !56 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 -1, i64 %i.n, i1 false), !noalias !56
  %.not.i.i.i.i.i = icmp eq i64 %3, 1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !67

bb.c:                                             ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm13WasmCodeRangeEE15NewForOverwriteEm.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %2, i64 %i.n, i1 false), !noalias !68
  br label %_ZSt11make_uniqueIN2v88internal4wasm24WasmFunctionCoverageDataEJRNS0_4base6VectorIKNS2_13WasmCodeRangeEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit._ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit_crit_edge

bb.d:                                             ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm13WasmCodeRangeEE15NewForOverwriteEm.exit.i.i.i.i.i
  %i.q = load i64, ptr %2, align 4, !noalias !68
  store i64 %i.q, ptr %i.p, align 4, !noalias !68
  br label %_ZSt11make_uniqueIN2v88internal4wasm24WasmFunctionCoverageDataEJRNS0_4base6VectorIKNS2_13WasmCodeRangeEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit._ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit_crit_edge

_ZSt11make_uniqueIN2v88internal4wasm24WasmFunctionCoverageDataEJRNS0_4base6VectorIKNS2_13WasmCodeRangeEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit._ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit_crit_edge: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ null, %bb.b ]
  store ptr %.sroa.0.0.i.i, ptr %i.f, align 8, !noalias !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %3, ptr %i.r, align 8, !noalias !48
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm12_GLOBAL__N_121DebugSideTableBuilder22GenerateDebugSideTableEv:bb.a
  br i1 %.not, label %_ZNSt6vectorIN2v88internal4wasm14DebugSideTable5EntryESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN2v88internal4wasm14DebugSideTable5EntryESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN2v88internal4wasm14DebugSideTable5EntryESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.r
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = shl nuw nsw i64 %i.bs, 5
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26 ; 3 uses
  store ptr %i.bw, ptr %2, align 16
  store ptr %i.bw, ptr %5, align 8
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bs
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm12_GLOBAL__N_121DebugSideTableBuilder11NewOOLEntryENS_4base6VectorINS1_14DebugSideTable5Entry5ValueEEE:_ZNSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EED2Ev.exit
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  ret ptr %i.o
}

end_hunk_3
