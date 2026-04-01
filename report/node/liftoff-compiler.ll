begin_hunk_0
  store ptr %0, ptr %2, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.j, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i32 0, ptr %i.cz, align 8
end_hunk_0
begin_hunk_1
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.dn = phi ptr [ %.pre13.i, %._crit_edge.i ], [ %i.j, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i ] ; 3 uses
  %i.do = phi i32 [ %i.dm, %._crit_edge.i ], [ 1, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i ]
  store i32 %i.do, ptr %i.cz, align 8
  %i.dp = load i8, ptr %i.dn, align 1             ; 2 uses
end_hunk_1
begin_hunk_2

bb.t:                                             ; preds = %bb.r
  %i.dr = load ptr, ptr %2, align 8
  %i.ds = call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %i.dr, ptr noundef nonnull %i.dn) ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 25769803776
  call void @llvm.assume(i1 %i.dt)
  %i.du = icmp samesign ugt i64 %i.ds, 4294967295
  call void @llvm.assume(i1 %i.du)
  %6 = lshr i64 %i.ds, 32
  %.pre.i.i14 = load ptr, ptr %i.cy, align 8
  br label %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit.i

_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit.i: ; preds = %bb.t, %bb.s
  %7 = phi ptr [ %i.dn, %bb.s ], [ %.pre.i.i14, %bb.t ]
  %.sroa.04.0.i.i.i = phi i64 [ %i.dq, %bb.s ], [ %i.ds, %bb.t ]
  %.sroa.5.0.i.i.i = phi i64 [ 1, %bb.s ], [ %6, %bb.t ]
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.04.0.i.i.i to i32
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.5.0.i.i.i
  store ptr %8, ptr %i.cy, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler14GenerateBrCaseEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEjPNS0_7ZoneMapIjNS2_12MovableLabelESt4lessIjEEE(ptr noundef nonnull align 8 dereferenceable(1284) %i.bo, ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef %.sroa.0.0.extract.trunc.i.i, ptr noundef %3)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler7BrTableEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_20BranchTableImmediateERKNS1_9ValueBaseIS6_EE.exit

end_hunk_2
