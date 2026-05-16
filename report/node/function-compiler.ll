inline.NumInlined: 627
inline.NumDeleted: 506
begin_hunk_0_@_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnit7ExecuteEv:bb.a
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #12, !inline_history !29
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %1, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #12, !inline_history !29
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.3, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i32 @_ZN2v88internal23OptimizedCompilationJob10ExecuteJobEPNS0_16RuntimeCallStatsEPNS0_12LocalIsolateE(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef null, ptr noundef null) #12
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %2, align 8
  %.not.i10 = icmp eq ptr %i.af, null
  br i1 %.not.i10, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load atomic volatile i8, ptr %i.ah monotonic, align 1
  %.not1.i = icmp eq i8 %i.ai, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #12 ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.aj, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.ak, ptr noundef %i.am, i64 noundef %i.ao) #12, !inline_history !30
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal23OptimizedCompilationJob10ExecuteJobEPNS0_16RuntimeCallStatsEPNS0_12LocalIsolateE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnit8FinalizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.502", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call noundef i32 @_ZN2v88internal23OptimizedCompilationJob11FinalizeJobEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef %i.c) #12
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i15 = load ptr, ptr %i.i, align 8 ; 5 uses
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call noundef zeroext i1 @_ZNK2v88internal7Isolate21IsLoggingCodeCreationEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.j) #12
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @_ZNK2v88internal24OptimizedCompilationInfo12GetDebugNameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.502") align 8 %1, ptr noundef nonnull align 8 dereferenceable(192) %i.h) #12
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #15
  %i.o = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr nonnull %i.m, i64 %i.n, i8 noundef zeroext 0) #12 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #14
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.q) #13
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 59504
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #12
  %i.v = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN2v88internal6Logger15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_4NameEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %.lr.ph.i
  %.sroa.07.011.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.v, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.07.011.i, align 8   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef zeroext 8, ptr %.sroa.0.0.copyload.i15, ptr nonnull %i.o) #12, !inline_history !31
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 8 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.x
  br i1 %i.ae, label %_ZN2v88internal6Logger15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_4NameEEE.exit, label %.lr.ph.i

_ZN2v88internal6Logger15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_4NameEEE.exit: ; preds = %.lr.ph.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #12
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6Logger15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_4NameEEE.exit, %bb.c
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.03.0.copyload = load i32, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load i8, ptr %i.ah, align 4, !range !5, !noundef !6
  %i.aj = trunc nuw i8 %i.ai to i1
  call void @_ZN2v88internal4wasm22WasmExportWrapperCache3PutEPNS0_7IsolateENS1_18CanonicalTypeIndexEbNS0_12DirectHandleINS0_4CodeEEE(ptr noundef %i.af, i32 %.sroa.03.0.copyload, i1 noundef zeroext %i.aj, ptr %.sroa.0.0.copyload.i15) #12
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 58656
  %i.am = load ptr, ptr %i.al, align 8            ; 6 uses
  %i.an = load i64, ptr %.sroa.0.0.copyload.i15, align 8 ; 2 uses
  %i.ao = add i64 %i.an, 55
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = add i64 %i.an, 59
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i32, ptr %i.as, align 4
  %i.au = add nsw i32 %i.at, %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8328
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.g, label %_ZN2v88internal12StatsCounter9IncrementEi.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8312
  %i.ay = call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #12
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit

_ZN2v88internal12StatsCounter9IncrementEi.exit:   ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.ay, %bb.g ], [ %i.aw, %bb.f ]
  %i.az = atomicrmw add ptr %.0.i.i, i32 %i.au monotonic, align 4 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8336
  %i.bb = load i64, ptr %.sroa.0.0.copyload.i15, align 8
  %i.bc = add i64 %i.bb, 31
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %.not.i16 = icmp eq i64 %i.be, 0
  br i1 %.not.i16, label %_ZNK2v88internal4Code15relocation_sizeEv.exit, label %bb.h, !prof !7

bb.h:                                             ; preds = %_ZN2v88internal12StatsCounter9IncrementEi.exit
  %i.bf = add i64 %i.be, 15
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %2 = load i32, ptr %i.bk, align 4
  br label %_ZNK2v88internal4Code15relocation_sizeEv.exit

_ZNK2v88internal4Code15relocation_sizeEv.exit:    ; preds = %_ZN2v88internal12StatsCounter9IncrementEi.exit, %bb.h
  %i.bl = phi i32 [ %2, %bb.h ], [ 0, %_ZN2v88internal12StatsCounter9IncrementEi.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 8352
  %i.bn = load atomic ptr, ptr %i.bm acquire, align 8 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i17, label %bb.i, label %_ZN2v88internal12StatsCounter9IncrementEi.exit19, !prof !7

bb.i:                                             ; preds = %_ZNK2v88internal4Code15relocation_sizeEv.exit
  %i.bo = call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba) #12
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit19

_ZN2v88internal12StatsCounter9IncrementEi.exit19: ; preds = %_ZNK2v88internal4Code15relocation_sizeEv.exit, %bb.i
  %.0.i.i18 = phi ptr [ %i.bo, %bb.i ], [ %i.bn, %_ZNK2v88internal4Code15relocation_sizeEv.exit ]
  %i.bp = atomicrmw add ptr %.0.i.i18, i32 %i.bl monotonic, align 4 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 8424
  %i.br = load atomic ptr, ptr %i.bq acquire, align 8 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.br, null
  br i1 %.not.i.i20, label %bb.j, label %_ZN2v88internal12StatsCounter9IncrementEi.exit22, !prof !7

bb.j:                                             ; preds = %_ZN2v88internal12StatsCounter9IncrementEi.exit19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 8408
  %i.bt = call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #12
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit22

_ZN2v88internal12StatsCounter9IncrementEi.exit22: ; preds = %_ZN2v88internal12StatsCounter9IncrementEi.exit19, %bb.j
  %.0.i.i21 = phi ptr [ %i.bt, %bb.j ], [ %i.br, %_ZN2v88internal12StatsCounter9IncrementEi.exit19 ]
  %i.bu = atomicrmw add ptr %.0.i.i21, i32 1 monotonic, align 4 ; 0 uses
  ret ptr %.sroa.0.0.copyload.i15
}

declare noundef i32 @_ZN2v88internal23OptimizedCompilationJob11FinalizeJobEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal7Isolate21IsLoggingCodeCreationEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #2

declare void @_ZNK2v88internal24OptimizedCompilationInfo12GetDebugNameEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.502") align 8, ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #2

declare void @_ZN2v88internal4wasm22WasmExportWrapperCache3PutEPNS0_7IsolateENS1_18CanonicalTypeIndexEbNS0_12DirectHandleINS0_4CodeEEE(ptr noundef, i32, i1 noundef zeroext, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnit22CompileJSToWasmWrapperEPNS0_7IsolateEPKNS1_12CanonicalSigENS1_18CanonicalTypeIndexEb(ptr noundef %0, ptr noundef %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::wasm::JSToWasmWrapperCompilationUnit", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = zext i1 %3 to i8
  store ptr %0, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 %i.a, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @_ZN2v88internal8compiler25NewJSToWasmCompilationJobEPNS0_7IsolateEPKNS0_4wasm12CanonicalSigEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.485") align 8 %i.e, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %3) #12
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 4096
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnitC2EPNS0_7IsolateEPKNS1_12CanonicalSigENS1_18CanonicalTypeIndexEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef ptr @_ZN2v88internal7Isolate13GetCodeTracerEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #12 ; 0 uses
  br label %_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnitC2EPNS0_7IsolateEPKNS1_12CanonicalSigENS1_18CanonicalTypeIndexEb.exit

_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnitC2EPNS0_7IsolateEPKNS1_12CanonicalSigENS1_18CanonicalTypeIndexEb.exit: ; preds = %bb.a, %bb.b
  call void @_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnit7ExecuteEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.l = call ptr @_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnit8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.m = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnitD2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal23OptimizedCompilationJobEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal23OptimizedCompilationJobEEclEPS2_.exit.i.i: ; preds = %_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnitC2EPNS0_7IsolateEPKNS1_12CanonicalSigENS1_18CanonicalTypeIndexEb.exit
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #12, !inline_history !32
  br label %_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnitD2Ev.exit

_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnitD2Ev.exit: ; preds = %_ZN2v88internal4wasm30JSToWasmWrapperCompilationUnitC2EPNS0_7IsolateEPKNS1_12CanonicalSigENS1_18CanonicalTypeIndexEb.exit, %_ZNKSt14default_deleteIN2v88internal23OptimizedCompilationJobEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret ptr %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal14TimedHistogram14AddTimedSampleENS_4base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(52), i64) local_unnamed_addr #2

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal12V8FileLogger23CallEventLoggerInternalEPNS0_7IsolateEPKcNS_14LogEventStatusEb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1833), align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 58736
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_ZN2v88internal12V8FileLogger10TimerEventENS_14LogEventStatusEPKc(ptr noundef nonnull align 8 dereferenceable(168) %i.d, i32 noundef %2, ptr noundef %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 59664
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void %i.f(ptr noundef %1, i32 noundef %2) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN2v88internal12V8FileLogger10TimerEventENS_14LogEventStatusEPKc(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !33
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef zeroext i1 @_ZN2v84base3FPU17GetFlushDenormalsEv() local_unnamed_addr #2

declare void @_ZN2v84base3FPU17SetFlushDenormalsEb(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112)) unnamed_addr #4

declare void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
