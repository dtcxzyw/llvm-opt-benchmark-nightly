inline.NumInlined: 4642
inline.NumDeleted: 1995
begin_hunk_0_@_ZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEE
define linkonce_odr hidden void @_ZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function.711", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEE:bb.a
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit

_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.0.0.copyload, %bb.b ]
  %.sroa.5.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.b ]
  %i.g = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
end_hunk_1
begin_hunk_2_@_ZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEE:bb.a

bb.f:                                             ; preds = %_ZNK2v88internal4wasm16StreamingDecoder10shared_urlB5cxx11Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i64> %.sroa.0.0, ptr %i.r, align 8
  store ptr %i.q, ptr %i.t, align 8
  br label %_ZNSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEC2EOS9_.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEE:bb.a

_ZZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEEENUlRKSt10shared_ptrINS_8internal4wasm12NativeModuleEEE_D2Ev.exit: ; preds = %_ZNSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEC2EOS9_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

end_hunk_3
