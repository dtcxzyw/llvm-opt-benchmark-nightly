inline.NumInlined: 4641
inline.NumDeleted: 1995
begin_hunk_0_@_ZN2v88internal4wasm18WebAssemblyCompileERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a
  store ptr %i.ar, ptr %6, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.en, align 8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  store ptr %9, ptr %7, align 8
  store i64 %i.cj, ptr %8, align 8
  store i64 0, ptr %i.ci, align 8
  %.val.i = load ptr, ptr %i.r, align 8
  call void @_ZN2v88internal4wasm10WasmEngine12AsyncCompileEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsESt10shared_ptrINS1_25CompilationResultResolverEENS_4base11OwnedVectorIKhEEPKc(ptr noundef nonnull align 8 dereferenceable(8488) %i.dv, ptr noundef nonnull %i.d, i32 %i.cp, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %.val.i) #21
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm22WebAssemblyInstantiateERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a
  store ptr %i.ds, ptr %7, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.eg, ptr %i.gr, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  store ptr %10, ptr %8, align 8
  store i64 %i.dj, ptr %9, align 8
  store i64 0, ptr %i.di, align 8
  %.val.i = load ptr, ptr %i.r, align 8
  call void @_ZN2v88internal4wasm10WasmEngine12AsyncCompileEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsESt10shared_ptrINS1_25CompilationResultResolverEENS_4base11OwnedVectorIKhEEPKc(ptr noundef nonnull align 8 dereferenceable(8488) %i.gq, ptr noundef nonnull %i.d, i32 %i.fl, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %.val.i) #21
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm17WebAssemblyModuleERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.df, align 8
  store i8 0, ptr %i.de, align 1
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  store ptr %9, ptr %7, align 8
  store i64 %i.bw, ptr %8, align 8
  %i.dg = call ptr @_ZN2v88internal4wasm10WasmEngine11SyncCompileEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsEPNS1_12ErrorThrowerENS_4base11OwnedVectorIKhEE(ptr noundef nonnull align 8 dereferenceable(8488) %i.co, ptr noundef nonnull %i.d, i32 %i.by, ptr noundef nonnull %6, ptr noundef nonnull %i.q, ptr noundef nonnull %7) #21 ; 3 uses
  %i.dh = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dh, null
end_hunk_2
begin_hunk_3_@_ZN2v812_GLOBAL__N_130GetAndCopyFirstArgumentAsBytesERKNS_20FunctionCallbackInfoINS_5ValueEEEmPNS_8internal4wasm12ErrorThrowerE:bb.a
  br i1 %.not27.i.7, label %_ZN2v84base11OwnedVectorIhED2Ev.exit, label %.lr.ph44.i, !llvm.loop !82

_ZN2v84base11OwnedVectorIhED2Ev.exit:             ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %.loopexit.i
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %0, align 8
  store i64 %.012, ptr %6, align 8
  br label %bb.y

end_hunk_3
