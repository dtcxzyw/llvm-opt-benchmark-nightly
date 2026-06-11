inline.NumInlined: 5629
inline.NumDeleted: 3011
begin_hunk_0_@_ZN2v88internal4wasm10WasmEngine32GetStreamingCompilationOwnershipEmRKNS1_18CompileTimeImportsE:bb.a
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.6) #25 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal4wasm10WasmEngine32GetStreamingCompilationOwnershipEmRKNS1_18CompileTimeImportsEE29trace_event_unique_atomic1679 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.016 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr null, ptr %5, align 8
  %i.i = load atomic volatile i8, ptr %.016 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not19 = icmp eq i8 %i.j, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.016, ptr noundef nonnull @.str.30, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, i32 noundef 0) #25, !inline_history !56
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #25, !inline_history !57
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %4, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #25, !inline_history !57
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.016, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.30, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %5, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8424
  %i.ac = call noundef zeroext i1 @_ZN2v88internal4wasm17NativeModuleCache32GetStreamingCompilationOwnershipEmRKNS1_18CompileTimeImportsE(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load atomic volatile i64, ptr @_ZZN2v88internal4wasm10WasmEngine32GetStreamingCompilationOwnershipEmRKNS1_18CompileTimeImportsEE29trace_event_unique_atomic1687 acquire, align 8 ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  %.not20 = icmp eq i64 %i.ad, 0
  br i1 %.not20, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.6) #25 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  store atomic volatile i64 %i.ak, ptr @_ZZN2v88internal4wasm10WasmEngine32GetStreamingCompilationOwnershipEmRKNS1_18CompileTimeImportsEE29trace_event_unique_atomic1687 release, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.015 = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr null, ptr %6, align 8
  %i.al = load atomic volatile i8, ptr %.015 monotonic, align 1
  %i.am = and i8 %i.al, 5
  %.not21 = icmp eq i8 %i.am, 0
  br i1 %.not21, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 88, ptr noundef nonnull %.015, ptr noundef nonnull @.str.29, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #25, !inline_history !56
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not.i26 = icmp eq ptr %i.at, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit28, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i27

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i27: ; preds = %bb.i
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #25, !inline_history !57
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit28

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit28: ; preds = %bb.i, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i27
  %i.ax = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i26.1 = icmp eq ptr %i.ax, null
  br i1 %.not.i26.1, label %bb.j, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i27.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i27.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit28
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #25, !inline_history !57
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit28, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i27.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %.015, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.29, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ar, ptr %i.bd, align 8
  store ptr %i.bb, ptr %6, align 8
  %i.be = load atomic volatile i8, ptr %.015 monotonic, align 1
  %.not1.i = icmp eq i8 %i.be, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bh, ptr noundef %i.bj, i64 noundef %i.bl) #25, !inline_history !60
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.h, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.bp = load ptr, ptr %5, align 8
  %.not.i30 = icmp eq ptr %i.bp, null
  br i1 %.not.i30, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit32, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load atomic volatile i8, ptr %i.br monotonic, align 1
  %.not1.i31 = icmp eq i8 %i.bs, 0
  br i1 %.not1.i31, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit32, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.bu = load ptr, ptr %i.bq, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.bt, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %i.bu, ptr noundef %i.bw, i64 noundef %i.by) #25, !inline_history !60
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit32

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit32: ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i1 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm10WasmEngine26StreamingCompilationFailedEmRKNS1_18CompileTimeImportsE(ptr noundef nonnull align 8 dereferenceable(8488) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8424
  tail call void @_ZN2v88internal4wasm17NativeModuleCache26StreamingCompilationFailedEmRKNS1_18CompileTimeImportsE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm10WasmEngine16FreeNativeModuleEPNS1_12NativeModuleE(ptr noundef nonnull align 8 dereferenceable(8488) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8120 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8264 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8288 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %.not.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8280
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.06.0.i.i, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleESt10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS7_EESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_SA_EEE4findERSG_.exit, label %bb.c, !llvm.loop !150

bb.d:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8272
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = urem i64 %i.k, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %1, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleESt10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS7_EESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_SA_EEE4findERSG_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.r, %bb.d ]
  %i.v = load ptr, ptr %.020.i.i.i.i, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = urem i64 %i.y, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.z, %i.n
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
  %i.aa = icmp eq ptr %1, %i.x
  br i1 %i.aa, label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleESt10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS7_EESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_SA_EEE4findERSG_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !151

_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleESt10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS7_EESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_SA_EEE4findERSG_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.033.046 = load ptr, ptr %i.ae, align 8   ; 2 uses
  %i.af = icmp eq ptr %.sroa.033.046, null
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleESt10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS7_EESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_SA_EEE4findERSG_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8208
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit, %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleESt10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS7_EESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_SA_EEE4findERSG_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8416 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.ag, label %bb.s

bb.e:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit
  %.sroa.033.047 = phi ptr [ %.sroa.033.046, %.lr.ph ], [ %.sroa.033.0, %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.033.047, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.b, align 8
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPN2v88internal7IsolateESt4pairIKS4_St10unique_ptrINS2_4wasm10WasmEngine11IsolateInfoESt14default_deleteISA_EEESaISE_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !31
  %i.am = load ptr, ptr %i.al, align 8            ; 7 uses
  %i.an = call noundef i64 @_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 3 uses
  %.val.i.i.i = load i64, ptr %i.ap, align 8
  %.not.not.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i13, label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit, label %.preheader.i.preheader.i.i.i

.preheader.i.preheader.i.i.i:                     ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val15.i9.i.i.i = load ptr, ptr %i.as, align 8
  %i.at = icmp eq ptr %.val, %.val15.i9.i.i.i
  br i1 %i.at, label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i, i64 8
  %.val15.i.i.i.i = load ptr, ptr %i.au, align 8
  %i.av = icmp eq ptr %.val, %.val15.i.i.i.i
  br i1 %i.av, label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !186

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.preheader.i.i.i, %.preheader.i.i.i.i
  %.03.i10.i.i.i = phi ptr [ %.0.val.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ar, %.preheader.i.preheader.i.i.i ] ; 2 uses
  %.0.val.i.i.i.i = load ptr, ptr %.03.i10.i.i.i, align 8 ; 4 uses
  %.not14.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not14.i.i.i.i, label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit, label %.preheader.i.i.i.i, !llvm.loop !186

_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i: ; preds = %.preheader.i.i.i.i, %.preheader.i.preheader.i.i.i
  %i.aw = phi ptr [ %i.ar, %.preheader.i.preheader.i.i.i ], [ %.0.val.i.i.i.i, %.preheader.i.i.i.i ]
  %.0112.i.lcssa.i.i.i = phi ptr [ %i.aq, %.preheader.i.preheader.i.i.i ], [ %.03.i10.i.i.i, %.preheader.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.val26.i.i.i = load i64, ptr %i.ax, align 8    ; 2 uses
  %i.ay = ptrtoint ptr %.val to i64
  %i.az = urem i64 %i.ay, %.val26.i.i.i           ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.ao, align 8      ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %i.az
  %.pre16.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ba = ptrtoint ptr %.val to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.val25.i.i.i = load i64, ptr %i.bb, align 8    ; 4 uses
  %i.bc = urem i64 %i.ba, %.val25.i.i.i           ; 5 uses
  %.val28.i.i.i = load ptr, ptr %i.ao, align 8    ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val28.i.i.i, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8            ; 7 uses
  %.not.i32.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i32.i.i.i, label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.be, align 8            ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val214.i.i.i.i = load ptr, ptr %i.bg, align 8
  %i.bh = icmp eq ptr %.val, %.val214.i.i.i.i
  br i1 %i.bh, label %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i, label %.lr.ph.i.i.i.i10

_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i: ; preds = %bb.h
  %.val21.i29.i.i.i = load ptr, ptr %i.bf, align 8 ; 2 uses
  %.not18.i3430.i.i.i = icmp eq ptr %.val21.i29.i.i.i, null
  br i1 %.not18.i3430.i.i.i, label %.thread30.i.i.i.i, label %bb.l

bb.i:                                             ; preds = %bb.j
  %i.bi = icmp eq ptr %.val, %.val23.i.i.i.i
  br i1 %i.bi, label %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.i.i.i, label %.lr.ph.i.i.i.i10, !llvm.loop !66

.lr.ph.i.i.i.i10:                                 ; preds = %bb.h, %bb.i
  %.05.i.i.i.i = phi ptr [ %i.bj, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bj = load ptr, ptr %.05.i.i.i.i, align 8     ; 4 uses
  %.not18.i.i.i.i11 = icmp eq ptr %i.bj, null
  br i1 %.not18.i.i.i.i11, label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val23.i.i.i.i = load ptr, ptr %i.bk, align 8  ; 2 uses
  %i.bl = ptrtoint ptr %.val23.i.i.i.i to i64
  %i.bm = urem i64 %i.bl, %.val25.i.i.i
  %.not19.i.i.i.i12 = icmp eq i64 %i.bm, %i.bc
  br i1 %.not19.i.i.i.i12, label %bb.i, label %..loopexit_crit_edge6.i.i.i.i, !llvm.loop !66

..loopexit_crit_edge6.i.i.i.i:                    ; preds = %bb.j
  br label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit, !llvm.loop !66

_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.i.i.i: ; preds = %bb.i, %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i
  %.val24.i.i.i.i = phi i64 [ %.val26.i.i.i, %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i ], [ %.val25.i.i.i, %bb.i ] ; 2 uses
  %i.bn = phi ptr [ %.pre16.i.i.i, %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i ], [ %i.be, %bb.i ] ; 3 uses
  %i.bo = phi ptr [ %.pre.i.i.i, %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i ], [ %.val28.i.i.i, %bb.i ] ; 3 uses
  %.120.i.i.i = phi ptr [ %i.aw, %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i ], [ %i.bj, %bb.i ] ; 6 uses
  %.018.i.i.i = phi i64 [ %i.az, %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i ], [ %i.bc, %bb.i ] ; 3 uses
  %.016.i.i.i = phi ptr [ %.0112.i.lcssa.i.i.i, %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS6_.exit.i.i.i ], [ %.05.i.i.i.i, %bb.i ] ; 7 uses
  %i.bp = icmp eq ptr %.016.i.i.i, %i.bn
  %.val21.i.i.i.i = load ptr, ptr %.120.i.i.i, align 8 ; 3 uses
  %.not18.i34.i.i.i = icmp eq ptr %.val21.i.i.i.i, null ; 2 uses
  br i1 %i.bp, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.i.i.i
  br i1 %.not18.i34.i.i.i, label %.thread30.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i
  %.val24.i3147.i.i.i = phi i64 [ %.val25.i.i.i, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ], [ %.val24.i.i.i.i, %bb.k ]
  %i.bq = phi ptr [ %i.be, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ], [ %i.bn, %bb.k ]
  %i.br = phi ptr [ %.val28.i.i.i, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ], [ %i.bo, %bb.k ]
  %.1203345.i.i.i = phi ptr [ %i.bf, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ], [ %.120.i.i.i, %bb.k ] ; 2 uses
  %.0183443.i.i.i = phi i64 [ %i.bc, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ], [ %.018.i.i.i, %bb.k ] ; 3 uses
  %.0163641.i.i.i = phi ptr [ %i.be, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ], [ %.016.i.i.i, %bb.k ] ; 2 uses
  %.val21.i3739.i.i.i = phi ptr [ %.val21.i29.i.i.i, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ], [ %.val21.i.i.i.i, %bb.k ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val21.i3739.i.i.i, i64 8
  %.val25.i.i.i.i = load ptr, ptr %i.bs, align 8
  %i.bt = ptrtoint ptr %.val25.i.i.i.i to i64
  %i.bu = urem i64 %i.bt, %.val24.i3147.i.i.i     ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.bu, %.0183443.i.i.i
  br i1 %.not9.i.i.i.i.i, label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu
  store ptr %i.bq, ptr %i.bv, align 8
  %.pre.i.i.i.i = load ptr, ptr %i.ao, align 8    ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.0183443.i.i.i
  %.pre32.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8
  br label %.thread30.i.i.i.i

.thread30.i.i.i.i:                                ; preds = %bb.m, %bb.k, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i
  %.1203346.i.i.i = phi ptr [ %.120.i.i.i, %bb.k ], [ %.1203345.i.i.i, %bb.m ], [ %i.bf, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ]
  %.0183444.i.i.i = phi i64 [ %.018.i.i.i, %bb.k ], [ %.0183443.i.i.i, %bb.m ], [ %i.bc, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ]
  %.0163642.i.i.i = phi ptr [ %.016.i.i.i, %bb.k ], [ %.0163641.i.i.i, %bb.m ], [ %i.be, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ]
  %.val21.i3740.i.i.i = phi ptr [ null, %bb.k ], [ %.val21.i3739.i.i.i, %bb.m ], [ null, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ]
  %i.bw = phi ptr [ %i.bn, %bb.k ], [ %.pre32.i.i.i.i, %bb.m ], [ %i.be, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ]
  %i.bx = phi ptr [ %i.bo, %bb.k ], [ %.pre.i.i.i.i, %bb.m ], [ %.val28.i.i.i, %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.thread.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.0183444.i.i.i
  %i.ca = icmp eq ptr %i.by, %i.bw
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread30.i.i.i.i
  store ptr %.val21.i3740.i.i.i, ptr %i.by, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread30.i.i.i.i
  store ptr null, ptr %i.bz, align 8
  br label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i

bb.p:                                             ; preds = %_ZNKSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS6_m.exit.i.i.i
  br i1 %.not18.i34.i.i.i, label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i, i64 8
  %.val23.i35.i.i.i = load ptr, ptr %i.cb, align 8
  %i.cc = ptrtoint ptr %.val23.i35.i.i.i to i64
  %i.cd = urem i64 %i.cc, %.val24.i.i.i.i         ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.cd, %.018.i.i.i
  br i1 %.not17.i.i.i.i, label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cd
  store ptr %.016.i.i.i, ptr %i.ce, align 8
  br label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i

_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.l
  %.01635.i.i.i = phi ptr [ %.0163641.i.i.i, %bb.l ], [ %.0163642.i.i.i, %bb.o ], [ %.016.i.i.i, %bb.p ], [ %.016.i.i.i, %bb.q ], [ %.016.i.i.i, %bb.r ]
  %.12032.i.i.i = phi ptr [ %.1203345.i.i.i, %bb.l ], [ %.1203346.i.i.i, %bb.o ], [ %.120.i.i.i, %bb.p ], [ %.120.i.i.i, %bb.q ], [ %.120.i.i.i, %bb.r ] ; 3 uses
  %i.cf = load ptr, ptr %.12032.i.i.i, align 8
  store ptr %i.cf, ptr %.01635.i.i.i, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.12032.i.i.i, i64 16
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_116WeakScriptHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.cg) #25, !inline_history !69
  call void @_ZdlPvm(ptr noundef nonnull %.12032.i.i.i, i64 noundef 56) #24, !inline_history !70
  %i.ch = load i64, ptr %i.ap, align 8
  %i.ci = add i64 %i.ch, -1
  store i64 %i.ci, ptr %i.ap, align 8
  br label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit

_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleENS2_12_GLOBAL__N_116WeakScriptHandleESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEE5eraseERSC_.exit: ; preds = %.lr.ph.i.i.i.i10, %.lr.ph.i.i.i, %bb.f, %bb.g, %..loopexit_crit_edge6.i.i.i.i, %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_NS2_12_GLOBAL__N_116WeakScriptHandleEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb0EEE.exit.i.i.i
  %i.cj = load ptr, ptr @_ZN2v88internal4wasm12_GLOBAL__N_117global_wasm_stateE, align 8
  %i.ck = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal4wasm15WasmCodeManager20FlushCodeLookupCacheEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(88) %i.cj, ptr noundef %i.ck) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.sroa.033.0 = load ptr, ptr %.sroa.033.047, align 8 ; 2 uses
  %i.cl = icmp eq ptr %.sroa.033.0, null
  br i1 %i.cl, label %._crit_edge, label %bb.e

bb.s:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %._crit_edge51, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %bb.s
  %.pre60 = load ptr, ptr %i.a, align 8
  br label %.lr.ph50

._crit_edge51:                                    ; preds = %bb.ae, %bb.s
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 926), align 2, !range !7, !noundef !8
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.af, label %bb.ag

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %bb.ae
  %.sroa.029.048.a = phi ptr [ %3, %bb.ae ], [ %.pre60, %.lr.ph50.preheader ] ; 2 uses
  %.sroa.029.048 = phi ptr [ %.sroa.029.1, %bb.ae ], [ %i.cn, %.lr.ph50.preheader ] ; 6 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.029.048, i64 8
  %i.cr = load ptr, ptr %2, align 8               ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = icmp eq ptr %i.cs, %.sroa.029.048.a
  br i1 %i.ct, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %.lr.ph50
  %i.cu = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.cx = load i64, ptr %i.cw, align 8            ; 3 uses
  %i.cy = ptrtoint ptr %i.cr to i64
  %i.cz = urem i64 %i.cy, %i.cx                   ; 5 uses
  %i.da = load ptr, ptr %i.cv, align 8            ; 4 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8            ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi ptr [ %i.dc, %bb.t ], [ %i.dd, %bb.u ] ; 4 uses
  %i.dd = load ptr, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.dd, %.sroa.029.048
  br i1 %.not.i.i.i.i14, label %_ZNSt10_HashtableIPN2v88internal4wasm8WasmCodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i, label %bb.u, !llvm.loop !187

_ZNSt10_HashtableIPN2v88internal4wasm8WasmCodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i: ; preds = %bb.u
  %i.de = icmp eq ptr %.0.i.i.i.i, %i.dc
  %i.df = load ptr, ptr %.sroa.029.048, align 8   ; 4 uses
  %.not18.i.i.i.i15 = icmp eq ptr %i.df, null     ; 2 uses
  br i1 %i.de, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_ZNSt10_HashtableIPN2v88internal4wasm8WasmCodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i15, label %.thread23.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = urem i64 %i.di, %i.cx                   ; 2 uses
  %.not9.i.i.i.i.i17 = icmp eq i64 %i.dj, %i.cz
  br i1 %.not9.i.i.i.i.i17, label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dj
  store ptr %i.dc, ptr %i.dk, align 8
  %.pre.i.i.i.i18 = load ptr, ptr %i.cv, align 8  ; 2 uses
  %.phi.trans.insert.i.i.i.i19 = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i18, i64 %i.cz
  %.pre25.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i19, align 8
  br label %.thread23.i.i.i.i

.thread23.i.i.i.i:                                ; preds = %bb.x, %bb.v
  %i.dl = phi ptr [ %i.dc, %bb.v ], [ %.pre25.i.i.i.i, %bb.x ]
  %i.dm = phi ptr [ %i.da, %bb.v ], [ %.pre.i.i.i.i18, %bb.x ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cu, i64 72 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.cz
  %i.dp = icmp eq ptr %i.dn, %i.dl
  br i1 %i.dp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread23.i.i.i.i
  store ptr %i.df, ptr %i.dn, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread23.i.i.i.i
  store ptr null, ptr %i.do, align 8
  br label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit

bb.aa:                                            ; preds = %_ZNSt10_HashtableIPN2v88internal4wasm8WasmCodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i15, label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = urem i64 %i.ds, %i.cx                   ; 2 uses
  %.not17.i.i.i.i16 = icmp eq i64 %i.dt, %i.cz
  br i1 %.not17.i.i.i.i16, label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dt
  store ptr %.0.i.i.i.i, ptr %i.du, align 8
  br label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit

_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit: ; preds = %bb.w, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %i.dv = load ptr, ptr %.sroa.029.048, align 8   ; 2 uses
  store ptr %i.dv, ptr %.0.i.i.i.i, align 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.048, i64 noundef 16) #24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cu, i64 80 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = add i64 %i.dx, -1
  store i64 %i.dy, ptr %i.dw, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph50
  %i.dz = load ptr, ptr %.sroa.029.048, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit
  %3 = phi ptr [ %.pre, %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit ], [ %.sroa.029.048.a, %bb.ad ]
  %.sroa.029.1 = phi ptr [ %i.dv, %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit ], [ %i.dz, %bb.ad ] ; 2 uses
  %i.ea = icmp eq ptr %.sroa.029.1, null
  br i1 %i.ea, label %._crit_edge51, label %.lr.ph50, !llvm.loop !188

bb.af:                                            ; preds = %._crit_edge51
  %i.eb = load ptr, ptr %i.a, align 8
  %i.ec = load ptr, ptr %i.ah, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.ee = load i64, ptr %i.ed, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.31, ptr noundef %i.eb, i64 noundef %i.ee) #25
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge51, %bb.af, %._crit_edge
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8352 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8368 ; 3 uses
  %.val.i = load ptr, ptr %i.eg, align 8          ; 2 uses
  %i.eh = icmp eq ptr %.val.i, null
  br i1 %i.eh, label %"_ZSt8erase_ifIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EZNS2_10WasmEngine16FreeNativeModuleEPNS2_12NativeModuleEE3$_0ENSt13unordered_setIT_T0_T1_T2_E9size_typeERSJ_T3_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8360
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8376 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.at, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %.val.i, %.lr.ph.i.i ], [ %.sroa.01.1.i.i, %bb.at ] ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.val5.i.i = load ptr, ptr %i.el, align 8
  %i.em = icmp eq ptr %.val5.i.i, %1
  br i1 %i.em, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.en = load i64, ptr %i.ei, align 8            ; 3 uses
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = urem i64 %i.eo, %i.en                   ; 5 uses
  %i.eq = load ptr, ptr %i.ef, align 8            ; 4 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  %i.es = load ptr, ptr %i.er, align 8            ; 4 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi ptr [ %i.es, %bb.ai ], [ %i.et, %bb.aj ] ; 4 uses
  %i.et = load ptr, ptr %.0.i.i.i.i.i.i, align 8  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.et, %.sroa.01.05.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableIPN2v88internal4wasm8WasmCodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i.i.i, label %bb.aj, !llvm.loop !187

_ZNSt10_HashtableIPN2v88internal4wasm8WasmCodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i.i.i: ; preds = %bb.aj
  %i.eu = icmp eq ptr %.0.i.i.i.i.i.i, %i.es
  %i.ev = load ptr, ptr %.sroa.01.05.i.i, align 8 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ev, null   ; 2 uses
  br i1 %i.eu, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %_ZNSt10_HashtableIPN2v88internal4wasm8WasmCodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i.i.i
  br i1 %.not18.i.i.i.i.i.i, label %.thread23.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = urem i64 %i.ey, %i.en                   ; 2 uses
  %.not9.i.i.i.i.i.i.i = icmp eq i64 %i.ez, %i.ep
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ez
  store ptr %i.es, ptr %i.fa, align 8
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ef, align 8 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i.i, i64 %i.ep
  %.pre25.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8
  br label %.thread23.i.i.i.i.i.i

.thread23.i.i.i.i.i.i:                            ; preds = %bb.am, %bb.ak
  %i.fb = phi ptr [ %i.es, %bb.ak ], [ %.pre25.i.i.i.i.i.i, %bb.am ]
  %i.fc = phi ptr [ %i.eq, %bb.ak ], [ %.pre.i.i.i.i.i.i, %bb.am ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.ep
  %i.fe = icmp eq ptr %i.eg, %i.fb
  br i1 %i.fe, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread23.i.i.i.i.i.i
  store ptr %i.ev, ptr %i.eg, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread23.i.i.i.i.i.i
  store ptr null, ptr %i.fd, align 8
  br label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit.i.i

bb.ap:                                            ; preds = %_ZNSt10_HashtableIPN2v88internal4wasm8WasmCodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i.i.i
  br i1 %.not18.i.i.i.i.i.i, label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = urem i64 %i.fh, %i.en                   ; 2 uses
  %.not17.i.i.i.i.i.i = icmp eq i64 %i.fi, %i.ep
  br i1 %.not17.i.i.i.i.i.i, label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fi
  store ptr %.0.i.i.i.i.i.i, ptr %i.fj, align 8
  br label %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit.i.i

_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.al
  %i.fk = load ptr, ptr %.sroa.01.05.i.i, align 8 ; 2 uses
  store ptr %i.fk, ptr %.0.i.i.i.i.i.i, align 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01.05.i.i, i64 noundef 16) #24
  %i.fl = load i64, ptr %i.ej, align 8
  %i.fm = add i64 %i.fl, -1
  store i64 %i.fm, ptr %i.ej, align 8
  br label %bb.at

bb.as:                                            ; preds = %bb.ah
  %i.fn = load ptr, ptr %.sroa.01.05.i.i, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit.i.i
  %.sroa.01.1.i.i = phi ptr [ %i.fk, %_ZNSt13unordered_setIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE5eraseENSt8__detail14_Node_iteratorIS4_Lb1ELb0EEE.exit.i.i ], [ %i.fn, %bb.as ] ; 2 uses
  %i.fo = icmp eq ptr %.sroa.01.1.i.i, null
  br i1 %i.fo, label %"_ZSt8erase_ifIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EZNS2_10WasmEngine16FreeNativeModuleEPNS2_12NativeModuleEE3$_0ENSt13unordered_setIT_T0_T1_T2_E9size_typeERSJ_T3_.exit", label %bb.ah, !llvm.loop !189

"_ZSt8erase_ifIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EZNS2_10WasmEngine16FreeNativeModuleEPNS2_12NativeModuleEE3$_0ENSt13unordered_setIT_T0_T1_T2_E9size_typeERSJ_T3_.exit": ; preds = %bb.at, %bb.ag
  %i.fp = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 506 ; 2 uses
  %i.fr = load atomic i8, ptr %i.fq monotonic, align 1, !range !7, !noundef !8
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.au, label %bb.av

bb.au:                                            ; preds = %"_ZSt8erase_ifIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EZNS2_10WasmEngine16FreeNativeModuleEPNS2_12NativeModuleEE3$_0ENSt13unordered_setIT_T0_T1_T2_E9size_typeERSJ_T3_.exit"
  store atomic i8 0, ptr %i.fq monotonic, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8336
  %i.fu = atomicrmw sub ptr %i.ft, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %"_ZSt8erase_ifIPN2v88internal4wasm8WasmCodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EZNS2_10WasmEngine16FreeNativeModuleEPNS2_12NativeModuleEE3$_0ENSt13unordered_setIT_T0_T1_T2_E9size_typeERSJ_T3_.exit"
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8424
  call void @_ZN2v88internal4wasm17NativeModuleCache5EraseEPNS1_12NativeModuleE(ptr noundef nonnull align 8 dereferenceable(64) %i.fv, ptr noundef nonnull %i.fp)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8272
  %i.fx = load i64, ptr %i.fw, align 8            ; 3 uses
  %i.fy = load ptr, ptr %i.ab, align 8
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = urem i64 %i.fz, %i.fx                   ; 5 uses
  %i.gb = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load ptr, ptr %i.gc, align 8            ; 4 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i20 = phi ptr [ %i.gd, %bb.av ], [ %i.ge, %bb.aw ] ; 4 uses
  %i.ge = load ptr, ptr %.0.i.i.i.i20, align 8    ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.ge, %.sroa.06.1.i.i
  br i1 %.not.i.i.i.i21, label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_St10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS9_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNSF_10_Hash_nodeISD_Lb0EEE.exit.i.i.i, label %bb.aw, !llvm.loop !190

_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_St10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS9_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNSF_10_Hash_nodeISD_Lb0EEE.exit.i.i.i: ; preds = %bb.aw
  %i.gf = icmp eq ptr %.0.i.i.i.i20, %i.gd
  %i.gg = load ptr, ptr %.sroa.06.1.i.i, align 8  ; 4 uses
  %.not18.i.i.i.i22 = icmp eq ptr %i.gg, null     ; 2 uses
  br i1 %i.gf, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_St10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS9_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNSF_10_Hash_nodeISD_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i22, label %.thread23.i.i.i.i28, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = urem i64 %i.gj, %i.fx                   ; 2 uses
  %.not9.i.i.i.i.i24 = icmp eq i64 %i.gk, %i.ga
  br i1 %.not9.i.i.i.i.i24, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gk
  store ptr %i.gd, ptr %i.gl, align 8
  %.pre.i.i.i.i25 = load ptr, ptr %i.d, align 8   ; 2 uses
  %.phi.trans.insert.i.i.i.i26 = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i25, i64 %i.ga
  %.pre25.i.i.i.i27 = load ptr, ptr %.phi.trans.insert.i.i.i.i26, align 8
  br label %.thread23.i.i.i.i28

.thread23.i.i.i.i28:                              ; preds = %bb.az, %bb.ax
  %i.gm = phi ptr [ %i.gd, %bb.ax ], [ %.pre25.i.i.i.i27, %bb.az ]
  %i.gn = phi ptr [ %i.gb, %bb.ax ], [ %.pre.i.i.i.i25, %bb.az ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8280 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ga
  %i.gq = icmp eq ptr %i.go, %i.gm
  br i1 %i.gq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.thread23.i.i.i.i28
  store ptr %i.gg, ptr %i.go, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread23.i.i.i.i28
  store ptr null, ptr %i.gp, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.bc:                                            ; preds = %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_St10unique_ptrINS2_10WasmEngine16NativeModuleInfoESt14default_deleteIS9_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNSF_10_Hash_nodeISD_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i22, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
end_hunk_0
