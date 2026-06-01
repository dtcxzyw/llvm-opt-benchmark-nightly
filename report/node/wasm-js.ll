inline.NumInlined: 4642
inline.NumDeleted: 1995
begin_hunk_0_@_ZN2v813WasmStreaming5AbortENS_10MaybeLocalINS_5ValueEEE:bb.a
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %_ZN2v813WasmStreaming17WasmStreamingImpl5AbortENS_8internal11MaybeHandleINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEE.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  store ptr %i.ag, ptr %i.af, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.ac) #20
  br label %_ZN2v813WasmStreaming17WasmStreamingImpl5AbortENS_8internal11MaybeHandleINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEE.exit

_ZN2v813WasmStreaming17WasmStreamingImpl5AbortENS_8internal11MaybeHandleINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEE.exit: ; preds = %bb.e, %bb.f
  %i.ay = load ptr, ptr %3, align 8
  %.not.i11 = icmp eq ptr %i.ay, null
  br i1 %.not.i11, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v813WasmStreaming17WasmStreamingImpl5AbortENS_8internal11MaybeHandleINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load atomic volatile i8, ptr %i.ba monotonic, align 1
  %.not1.i = icmp eq i8 %i.bb, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #20 ; 2 uses
  %i.bd = load ptr, ptr %i.az, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.bc, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.bd, ptr noundef %i.bf, i64 noundef %i.bh) #20, !inline_history !7
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %_ZN2v813WasmStreaming17WasmStreamingImpl5AbortENS_8internal11MaybeHandleINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEE.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN2v813WasmStreaming22SetCompiledModuleBytesEPKhm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [2 x %"class.std::unique_ptr.700"], align 16 ; 6 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v813WasmStreaming22SetCompiledModuleBytesEPKhmE28trace_event_unique_atomic147 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #20 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str) #20 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v813WasmStreaming22SetCompiledModuleBytesEPKhmE28trace_event_unique_atomic147 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not9 = icmp eq i8 %i.j, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #20 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.6, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #20, !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #20, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %3, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #20, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.6, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.01.0.copyload.i = load i32, ptr %i.ac, align 8
  %i.ad = call noundef zeroext i1 @_ZN2v88internal4wasm18IsSupportedVersionENS_4base6VectorIKhEENS1_19WasmEnabledFeaturesE(ptr %1, i64 %2, i32 %.sroa.01.0.copyload.i) #20 ; 2 uses
  br i1 %i.ad, label %bb.f, label %_ZN2v813WasmStreaming17WasmStreamingImpl22SetCompiledModuleBytesENS_4base6VectorIKhEE.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store ptr %1, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  br label %_ZN2v813WasmStreaming17WasmStreamingImpl22SetCompiledModuleBytesENS_4base6VectorIKhEE.exit

_ZN2v813WasmStreaming17WasmStreamingImpl22SetCompiledModuleBytesENS_4base6VectorIKhEE.exit: ; preds = %bb.e, %bb.f
  %i.ah = load ptr, ptr %4, align 8
  %.not.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i10, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v813WasmStreaming17WasmStreamingImpl22SetCompiledModuleBytesENS_4base6VectorIKhEE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load atomic volatile i8, ptr %i.aj monotonic, align 1
  %.not1.i = icmp eq i8 %i.ak, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #20 ; 2 uses
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.am, ptr noundef %i.ao, i64 noundef %i.aq) #20, !inline_history !7
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %_ZN2v813WasmStreaming17WasmStreamingImpl22SetCompiledModuleBytesENS_4base6VectorIKhEE.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i1 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v813WasmStreaming39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 8 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false)
  store ptr %i.f, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit

_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit: ; preds = %bb.a, %bb.b
  call void @_ZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %2)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #20, !inline_history !12 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function.711", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not.i.i.not.i = icmp eq ptr %i.f, null
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
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !13 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !noalias !13
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal4wasm16StreamingDecoder10shared_urlB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !noalias !13
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !noalias !13
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !noalias !13
  br label %_ZNK2v88internal4wasm16StreamingDecoder10shared_urlB5cxx11Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4, !noalias !13 ; 0 uses
  br label %_ZNK2v88internal4wasm16StreamingDecoder10shared_urlB5cxx11Ev.exit

_ZNK2v88internal4wasm16StreamingDecoder10shared_urlB5cxx11Ev.exit: ; preds = %_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit, %bb.d, %bb.e
  %i.q = phi ptr [ %i.f, %_ZNSt8functionIFvN2v818CompiledWasmModuleEEEC2EOS3_.exit ], [ %i.f, %bb.d ], [ %.sroa.5.0, %bb.e ] ; 2 uses
  %i.r = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.s, align 8
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEC2EOS9_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal4wasm16StreamingDecoder10shared_urlB5cxx11Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i64> %.sroa.0.0, ptr %i.r, align 8
  store ptr %i.q, ptr %i.t, align 8
  br label %_ZNSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEC2EOS9_.exit.i.i

_ZNSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEC2EOS9_.exit.i.i: ; preds = %_ZNK2v88internal4wasm16StreamingDecoder10shared_urlB5cxx11Ev.exit, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store <2 x ptr> %i.k, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false)
  store ptr %i.r, ptr %i.v, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.z = load <2 x ptr>, ptr %i.x, align 8
  %i.aa = load ptr, ptr %i.x, align 8             ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEZNS1_13WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS1_18CompiledWasmModuleEEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.x, align 8
  store <2 x ptr> %i.z, ptr %i.w, align 8
  store ptr @_ZNSt17_Function_handlerIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEZNS1_13WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS1_18CompiledWasmModuleEEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_, ptr %i.y, align 8
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEEENUlRKSt10shared_ptrINS_8internal4wasm12NativeModuleEEE_D2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEC2EOS9_.exit.i.i
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #20, !inline_history !16 ; 0 uses
  br label %_ZZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEEENUlRKSt10shared_ptrINS_8internal4wasm12NativeModuleEEE_D2Ev.exit

_ZZN2v813WasmStreaming17WasmStreamingImpl39SetMoreFunctionsCanBeSerializedCallbackESt8functionIFvNS_18CompiledWasmModuleEEEENUlRKSt10shared_ptrINS_8internal4wasm12NativeModuleEEE_D2Ev.exit: ; preds = %_ZNSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEC2EOS9_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v813WasmStreaming6SetUrlEPKcm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [2 x %"class.std::unique_ptr.700"], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.d = load atomic volatile i64, ptr @_ZZN2v813WasmStreaming6SetUrlEPKcmE28trace_event_unique_atomic158 acquire, align 8 ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #20 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str) #20 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  store atomic volatile i64 %i.k, ptr @_ZZN2v813WasmStreaming6SetUrlEPKcmE28trace_event_unique_atomic158 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.a ], [ %i.j, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8
  %i.l = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.m = and i8 %i.l, 5
  %.not8 = icmp eq i8 %i.m, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.8, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 6, ptr %i.b, align 1
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.n = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #20 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.7, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %3, i32 noundef 0) #20, !inline_history !5
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #20, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.x = load ptr, ptr %3, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.x, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #20, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.7, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.r, ptr %i.ad, align 8
  store ptr %i.ab, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ae = load ptr, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef 0, i64 noundef %i.ak, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.am = load ptr, ptr %4, align 8
  %.not.i9 = icmp eq ptr %i.am, null
  br i1 %.not.i9, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load atomic volatile i8, ptr %i.ao monotonic, align 1
  %.not1.i = icmp eq i8 %i.ap, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #20 ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = load ptr, ptr %i.aq, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ar, ptr noundef %i.at, i64 noundef %i.av) #20, !inline_history !7
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v813WasmStreaming6UnpackEPNS_7IsolateENS_5LocalINS_5ValueEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.7") align 8 captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [2 x %"class.std::unique_ptr.700"], align 16 ; 6 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v813WasmStreaming6UnpackEPNS_7IsolateENS_5LocalINS_5ValueEEEE28trace_event_unique_atomic165 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #20 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str) #20 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v813WasmStreaming6UnpackEPNS_7IsolateENS_5LocalINS_5ValueEEEE28trace_event_unique_atomic165 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not8 = icmp eq i8 %i.j, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #20 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.9, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #20, !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #20, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %3, align 16               ; 3 uses
  %.not.i9.1 = icmp eq ptr %i.u, null
  br i1 %.not.i9.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #20, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.9, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
end_hunk_0
