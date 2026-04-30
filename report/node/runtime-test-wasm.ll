inline.NumInlined: 2039
inline.NumDeleted: 1017
begin_hunk_0_@_ZN2v88internalL16CreateWasmObjectEPNS0_7IsolateENS_4base6VectorIKhEEb:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store ptr %i.s, ptr %i.r, align 8
  store i8 0, ptr %i.s, align 8
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.063.0, ptr %6, align 8
  store i64 %2, ptr %8, align 8
  %i.t = call ptr @_ZN2v88internal4wasm10WasmEngine11SyncCompileEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsEPNS1_12ErrorThrowerENS_4base11OwnedVectorIKhEE(ptr noundef nonnull align 8 dereferenceable(8488) %i.q, ptr noundef %0, i32 0, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #27 ; 3 uses
  %i.u = load ptr, ptr %6, align 8                ; 2 uses
end_hunk_0
