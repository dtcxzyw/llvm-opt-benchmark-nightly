inline.NumInlined: 641
inline.NumDeleted: 292
begin_hunk_0_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = and i64 %i.c, -4294967296
  %1 = or i64 %i.k, -4294967296
  %.sroa.037.0.insert.insert = add nuw nsw i64 %i.l, %1
  store atomic i64 %.sroa.037.0.insert.insert, ptr %i.a monotonic, align 8
  br label %bb.k

end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = shl i64 %i.p, 32
  %2 = shl i64 %i.r, 11
  %.sroa.047.0.insert.ext = and i64 %2, 4294965248
  %.sroa.047.0.insert.insert = or i64 %i.v, -4294967296
  %invariant.op = add i64 %i.w, %.sroa.047.0.insert.insert
  br label %_ZNSt6atomicIN2v88internal14SegmentedTableINS1_4wasm25WasmCodePointerTableEntryELm134217728EE12FreelistHeadEE23compare_exchange_strongERS6_S6_St12memory_orderS9_.exit11

_ZNSt6atomicIN2v88internal14SegmentedTableINS1_4wasm25WasmCodePointerTableEntryELm134217728EE12FreelistHeadEE23compare_exchange_strongERS6_S6_St12memory_orderS9_.exit11: ; preds = %_ZNSt6atomicIN2v88internal14SegmentedTableINS1_4wasm25WasmCodePointerTableEntryELm134217728EE12FreelistHeadEE23compare_exchange_strongERS6_S6_St12memory_orderS9_.exit11.backedge, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE28AllocateAndInitializeSegmentEv.exit
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i: ; preds = %_ZN2v88internal4wasm20WasmCodePointerTable16ReadFreelistHeadEv.exit.i, %bb.g, %bb.f
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.047.0.insert.ext
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16376
  %i.ai = and i64 %i.x, 4294967295
  store atomic i64 %i.ai, ptr %i.ah monotonic, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i:  ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i, %bb.i, %bb.h
  %.sroa.029.0.insert.insert.reass = add i64 %i.z, %invariant.op
  %i.ao = cmpxchg ptr %i.a, i64 %i.x, i64 %.sroa.029.0.insert.insert.reass release monotonic, align 4
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %.thread70, label %_ZNSt6atomicIN2v88internal14SegmentedTableINS1_4wasm25WasmCodePointerTableEntryELm134217728EE12FreelistHeadEE23compare_exchange_strongERS6_S6_St12memory_orderS9_.exit11.backedge
end_hunk_3
