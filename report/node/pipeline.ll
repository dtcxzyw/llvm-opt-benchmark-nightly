inline.NumInlined: 31355
inline.NumDeleted: 12783
begin_hunk_0_@_ZN2v88internal8compiler9PrintCodeEPNS0_7IsolateENS0_12DirectHandleINS0_4CodeEEEPNS0_24OptimizedCompilationInfoE:bb.a
  br i1 %.not.i.i, label %_ZN2v88internal8compiler16SourceIdAssignerC2Em.exit.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = ashr exact i64 %i.o, 2
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.u, ptr %6, align 8
  store ptr %i.u, ptr %17, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.p
  store ptr %i.v, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = ashr exact i64 %i.o, 3
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm22WasmModuleCoverageData19InstallCoverageDataEiNS_4base6VectorIKNS1_13WasmCodeRangeEEE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32, !noalias !184 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.c, label %_ZN2v84base11OwnedVectorINS_8internal4wasm13WasmCodeRangeEE15NewForOverwriteEm.exit.i.i.i.i.i

_ZN2v84base11OwnedVectorINS_8internal4wasm13WasmCodeRangeEE15NewForOverwriteEm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = icmp ugt i64 %3, 4611686018427387903
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm22WasmModuleCoverageData19InstallCoverageDataEiNS_4base6VectorIKNS1_13WasmCodeRangeEEE:bb.a
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #32, !noalias !192 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 -1, i64 %i.n, i1 false), !noalias !192
  %.not.i.i.i.i.i = icmp eq i64 %3, 1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %5, !prof !203

5:                                                ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm13WasmCodeRangeEE15NewForOverwriteEm.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %2, i64 %i.n, i1 false), !noalias !204
  br label %_ZSt11make_uniqueIN2v88internal4wasm24WasmFunctionCoverageDataEJRNS0_4base6VectorIKNS2_13WasmCodeRangeEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit._ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit_crit_edge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !184
  br label %_ZSt11make_uniqueIN2v88internal4wasm24WasmFunctionCoverageDataEJRNS0_4base6VectorIKNS2_13WasmCodeRangeEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit._ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit_crit_edge

bb.d:                                             ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm13WasmCodeRangeEE15NewForOverwriteEm.exit.i.i.i.i.i
  %i.q = load i64, ptr %2, align 4, !noalias !204
  store i64 %i.q, ptr %i.p, align 4, !noalias !204
  br label %_ZSt11make_uniqueIN2v88internal4wasm24WasmFunctionCoverageDataEJRNS0_4base6VectorIKNS2_13WasmCodeRangeEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit._ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit_crit_edge

_ZSt11make_uniqueIN2v88internal4wasm24WasmFunctionCoverageDataEJRNS0_4base6VectorIKNS2_13WasmCodeRangeEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit._ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit_crit_edge: ; preds = %bb.d, %bb.c, %5
  %.sroa.0.0.i.i = phi ptr [ null, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %5 ]
  store ptr %.sroa.0.0.i.i, ptr %i.f, align 8, !noalias !184
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %3, ptr %i.r, align 8, !noalias !184
end_hunk_2
