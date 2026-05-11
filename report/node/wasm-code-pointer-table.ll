inline.NumInlined: 641
inline.NumDeleted: 292
begin_hunk_0_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE31TryAllocateAndInitializeSegmentEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.05 = alloca %"struct.std::_Optional_payload.23", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

end_hunk_0
begin_hunk_1_@_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE31TryAllocateAndInitializeSegmentEv:bb.a
  %.sroa.07.0.i = phi i32 [ %i.u, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE21TryGetSegmentFromPoolEv.exit5.i ], [ %.sroa.07.0.extract.trunc9.i, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE21TryGetSegmentFromPoolEv.exit5.thread.i ]
  %.sroa.6.sroa.0.0.i = phi i1 [ false, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE21TryGetSegmentFromPoolEv.exit5.i ], [ %i.x, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE21TryGetSegmentFromPoolEv.exit5.thread.i ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #15
  br i1 %.sroa.6.sroa.0.0.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE18TryAllocateSegmentEv.exit.thread, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE18TryAllocateSegmentEv.exit
  %.sroa.04.0.extract.trunc28 = phi i32 [ %i.j, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE18TryAllocateSegmentEv.exit.thread ], [ %.sroa.07.0.i, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE18TryAllocateSegmentEv.exit ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE31TryAllocateAndInitializeSegmentEv:bb.a
_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE18InitializeFreeListENS4_7SegmentEj.exit: ; preds = %._crit_edge.i, %bb.m, %bb.n
  %.sroa.013.0.insert.insert.i = or disjoint i64 %i.ag, 8796093022208
  store i32 %.sroa.04.0.extract.trunc28, ptr %.sroa.05, align 8
  %.sroa.05.12..sroa_idx41 = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 4
  store i64 %.sroa.013.0.insert.insert.i, ptr %.sroa.05.12..sroa_idx41, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE18TryAllocateSegmentEv.exit, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE18InitializeFreeListENS4_7SegmentEj.exit
  %.sink = phi i8 [ 1, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE18InitializeFreeListENS4_7SegmentEj.exit ], [ 0, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE18TryAllocateSegmentEv.exit ]
  %.sroa.05.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 12
  store i8 %.sink, ptr %.sroa.05.12..sroa_idx, align 4
  %.sroa.05.0..sroa.05.0..sroa.05.0..sroa.05.0..fca.0.load = load i64, ptr %.sroa.05, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.05.0..sroa.05.0..sroa.05.0..sroa.05.0..fca.0.load, 0
  %.sroa.05.8..fca.1.gep.sroa_idx39 = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 8
  %.sroa.05.8..sroa.05.8..sroa.05.8..sroa.05.8..fca.1.load = load i64, ptr %.sroa.05.8..fca.1.gep.sroa_idx39, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.05.8..sroa.05.8..sroa.05.8..sroa.05.8..fca.1.load, 1
end_hunk_2
