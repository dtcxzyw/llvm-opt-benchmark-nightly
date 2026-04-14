inline.NumInlined: 641
inline.NumDeleted: 292
begin_hunk_0_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = and i64 %i.c, -4294967296
  %.sroa.438.0.insert.shift = add i64 %i.l, -4294967296
  %.sroa.037.0.insert.ext = and i64 %i.k, 4294967295
  %.sroa.037.0.insert.insert = or disjoint i64 %.sroa.037.0.insert.ext, %.sroa.438.0.insert.shift
  store atomic i64 %.sroa.037.0.insert.insert, ptr %i.a monotonic, align 8
  br label %bb.k

end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a
  %i.s = lshr i64 %i.r, 32                        ; 2 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = shl i64 %i.p, 32
  %.sroa.448.0.insert.ext = add i64 %i.w, -4294967296
  %.sroa.047.0.insert.ext = and i64 %i.v, 4294967295
  %.sroa.047.0.insert.insert = or disjoint i64 %.sroa.047.0.insert.ext, %.sroa.448.0.insert.ext
  %1 = shl i64 %i.r, 11
  %i.x = and i64 %1, 4294965248
  br label %_ZNSt6atomicIN2v88internal14SegmentedTableINS1_4wasm25WasmCodePointerTableEntryELm134217728EE12FreelistHeadEE23compare_exchange_strongERS6_S6_St12memory_orderS9_.exit11

_ZNSt6atomicIN2v88internal14SegmentedTableINS1_4wasm25WasmCodePointerTableEntryELm134217728EE12FreelistHeadEE23compare_exchange_strongERS6_S6_St12memory_orderS9_.exit11: ; preds = %_ZNSt6atomicIN2v88internal14SegmentedTableINS1_4wasm25WasmCodePointerTableEntryELm134217728EE12FreelistHeadEE23compare_exchange_strongERS6_S6_St12memory_orderS9_.exit11.backedge, %_ZN2v88internal14SegmentedTableINS0_4wasm25WasmCodePointerTableEntryELm134217728EE28AllocateAndInitializeSegmentEv.exit
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a

_ZN2v88internal4wasm20WasmCodePointerTable16ReadFreelistHeadEv.exit.i: ; preds = %_ZNSt6atomicIN2v88internal14SegmentedTableINS1_4wasm25WasmCodePointerTableEntryELm134217728EE12FreelistHeadEE23compare_exchange_strongERS6_S6_St12memory_orderS9_.exit11
  %i.aa = and i64 %i.y, -4294967296
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !8, !noundef !9
  %i.ac = trunc nuw i8 %i.ab to i1
  %.not = xor i1 %i.ac, true
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i: ; preds = %_ZN2v88internal4wasm20WasmCodePointerTable16ReadFreelistHeadEv.exit.i, %bb.g, %bb.f
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.x
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16376
  %i.aj = and i64 %i.y, 4294967295
  store atomic i64 %i.aj, ptr %i.ai monotonic, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm20WasmCodePointerTable26AllocateUninitializedEntryEv:bb.a
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit.i:  ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i, %bb.i, %bb.h
  %.sroa.029.0.insert.insert.reass = add i64 %i.aa, %.sroa.047.0.insert.insert
  %i.ap = cmpxchg ptr %i.a, i64 %i.y, i64 %.sroa.029.0.insert.insert.reass release monotonic, align 4
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %.thread70, label %_ZNSt6atomicIN2v88internal14SegmentedTableINS1_4wasm25WasmCodePointerTableEntryELm134217728EE12FreelistHeadEE23compare_exchange_strongERS6_S6_St12memory_orderS9_.exit11.backedge

end_hunk_4
