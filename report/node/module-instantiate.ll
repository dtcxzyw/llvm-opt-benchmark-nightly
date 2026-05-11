inline.NumInlined: 6065
inline.NumDeleted: 2754
begin_hunk_0_@_ZN2v88internal4wasm15InstanceBuilder31ProcessImportedWasmGlobalObjectENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEEiRKNS1_10WasmGlobalENS3_INS0_16WasmGlobalObjectEEE:bb.a
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 17 uses
  %i.a = load i64, ptr %4, align 8                ; 5 uses
  %i.b = add i64 %i.a, 63
  %i.c = inttoptr i64 %i.b to ptr
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15InstanceBuilder31ProcessImportedWasmGlobalObjectENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEEiRKNS1_10WasmGlobalENS3_INS0_16WasmGlobalObjectEEE:bb.a

bb.x:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 2, ptr %7, align 8
  %scevgep.i = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.i, i8 0, i64 16, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr null, ptr %i.fp, align 8
  %i.fq = load i32, ptr %3, align 8               ; 3 uses
  %i.fr = and i32 %i.fq, 3
  %i.fs = icmp eq i32 %i.fr, 0
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm15InstanceBuilder31ProcessImportedWasmGlobalObjectENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEEiRKNS1_10WasmGlobalENS3_INS0_16WasmGlobalObjectEEE:bb.a
  %.0.copyload.i.i71 = load i64, ptr %i.gx, align 1
  store i32 5904, ptr %7, align 8
  store i64 %.0.copyload.i.i71, ptr %scevgep.i, align 4
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i64 0, ptr %.sroa.5115.0..sroa_idx, align 4
  br label %bb.ai

bb.ad:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm15InstanceBuilder31ProcessImportedWasmGlobalObjectENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEEiRKNS1_10WasmGlobalENS3_INS0_16WasmGlobalObjectEEE:bb.a
  %.0.copyload.i.i77 = load double, ptr %i.hx, align 1
  store i32 6416, ptr %7, align 8
  store double %.0.copyload.i.i77, ptr %scevgep.i, align 4
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i64 0, ptr %.sroa.599.0..sroa_idx, align 4
  br label %bb.ai

bb.af:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
end_hunk_3
