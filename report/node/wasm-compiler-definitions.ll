inline.NumInlined: 260
inline.NumDeleted: 136
begin_hunk_0
@_ZN2v88internal4wasmL18kGpReturnRegistersE = internal constant [2 x { i8 }] [{ i8 } zeroinitializer, { i8 } { i8 2 }], align 1
@_ZN2v88internal4wasmL18kFpReturnRegistersE = internal constant [2 x { i8 }] [{ i8 } { i8 1 }, { i8 } { i8 2 }], align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"index < return_count_\00", align 1
@switch.table._ZN2v88internal8compiler21GetWasmCallDescriptorINS0_4wasm18CanonicalValueTypeEEEPNS1_14CallDescriptorEPNS0_4ZoneEPKNS0_9SignatureIT_EENS1_12WasmCallKindEb = private unnamed_addr constant [3 x i64] [i64 0, i64 -1, i64 -1], align 8
@switch.table._ZN2v88internal8compiler21GetWasmCallDescriptorINS0_4wasm18CanonicalValueTypeEEEPNS1_14CallDescriptorEPNS0_4ZoneEPKNS0_9SignatureIT_EENS1_12WasmCallKindEb.2 = private unnamed_addr constant [3 x i32] [i32 5, i32 6, i32 3], align 4
@switch.table._ZN2v88internal4wasm24LinkageLocationAllocator4NextENS0_21MachineRepresentationE = private unnamed_addr constant [20 x i8] [i8 0, i8 0, i8 1, i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 2, i8 3, i8 poison, i8 1, i8 2, i8 3, i8 4, i8 5], align 1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN2v88internal8compiler21GetWasmCallDescriptorINS0_4wasm9ValueTypeEEEPNS1_14CallDescriptorEPNS0_4ZoneEPKNS0_9SignatureIT_EENS1_12WasmCallKindEb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat {
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler21GetWasmCallDescriptorINS0_4wasm9ValueTypeEEEPNS1_14CallDescriptorEPNS0_4ZoneEPKNS0_9SignatureIT_EENS1_12WasmCallKindEb:bb.a

switch.lookup:                                    ; preds = %_ZN2v88internal8compiler14BuildLocationsINS0_4wasm9ValueTypeEEEPNS0_9SignatureINS0_15LinkageLocationEEEPNS0_4ZoneEPKNS5_IT_EEbPiSF_.exit
  %i.bo = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8compiler21GetWasmCallDescriptorINS0_4wasm18CanonicalValueTypeEEEPNS1_14CallDescriptorEPNS0_4ZoneEPKNS0_9SignatureIT_EENS1_12WasmCallKindEb, i64 %i.bo
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.bp = zext nneg i32 %switch.tableidx to i64
  %switch.gep30 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal8compiler21GetWasmCallDescriptorINS0_4wasm18CanonicalValueTypeEEEPNS1_14CallDescriptorEPNS0_4ZoneEPKNS0_9SignatureIT_EENS1_12WasmCallKindEb.2, i64 %i.bp
  %switch.load31 = load i32, ptr %switch.gep30, align 4
  br label %bb.j

end_hunk_1
