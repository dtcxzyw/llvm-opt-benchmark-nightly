begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function.711", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
end_hunk_0
begin_hunk_1
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
begin_hunk_2

bb.f:                                             ; preds = %_ZNK2v88internal4wasm16StreamingDecoder10shared_urlB5cxx11Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i64> %.sroa.0.0, ptr %i.r, align 8
  store ptr %i.q, ptr %i.t, align 8
  br label %_ZNSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEC2EOS9_.exit.i.i

end_hunk_2
begin_hunk_3
  store <2 x ptr> %i.k, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.r, ptr %2, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %2, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.z = load <2 x ptr>, ptr %i.x, align 8
  %i.aa = load ptr, ptr %i.x, align 8             ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEZNS1_13WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS1_18CompiledWasmModuleEEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.x, align 8
  store <2 x ptr> %i.z, ptr %i.w, align 16
  store ptr @_ZNSt17_Function_handlerIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEZNS1_13WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS1_18CompiledWasmModuleEEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_, ptr %i.y, align 8
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEEENUlRKSt10shared_ptrINS_8internal4wasm12NativeModuleEEE_D2Ev.exit, label %bb.g
end_hunk_3
begin_hunk_4

_ZZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEEENUlRKSt10shared_ptrINS_8internal4wasm12NativeModuleEEE_D2Ev.exit: ; preds = %_ZNSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEC2EOS9_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

end_hunk_4
