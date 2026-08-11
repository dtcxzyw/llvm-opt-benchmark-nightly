inline.NumInlined: 5481
inline.NumDeleted: 2947
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2v88internal4wasm12_GLOBAL__N_123ExecuteCompilationUnitsESt8weak_ptrINS1_12NativeModuleEEPNS0_8CountersEPNS_11JobDelegateENS2_15CompilationTierE:bb.a
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 40
  %i.xj = load ptr, ptr %i.xi, align 8
  call void %i.xj(ptr noundef nonnull align 8 dereferenceable(8) %i.xb, ptr noundef %i.xc, ptr noundef %i.xe, i64 noundef %i.xg) #29, !inline_history !229
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit193

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit193: ; preds = %_ZNSt14_Optional_baseIN2v88internal4wasm14CompilationEnvELb0ELb0EED2Ev.exit, %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i8 } @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl22GetNextCompilationUnitEPNS2_21CompilationUnitQueues5QueueENS2_15CompilationTierE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %bb.b, label %.split.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %.val2964.i.i.i = load ptr, ptr %i.g, align 8   ; 2 uses
  %.val3065.i.i.i = load ptr, ptr %i.h, align 8
  %i.i = icmp eq ptr %.val2964.i.i.i, %.val3065.i.i.i
  br i1 %i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.val2966.i.i.i = phi ptr [ %.val2964.i.i.i, %.lr.ph.i.i.i ], [ %.val29.i.i.i, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val2966.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.sroa.038.0.extract.trunc.i.i.i = trunc i64 %i.n to i32
  tail call fastcc void @_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %i.g)
  %i.o = atomicrmw sub ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %.val32.i.i.i = load i32, ptr %i.k, align 8
  %i.p = sub nsw i32 %.sroa.038.0.extract.trunc.i.i.i, %.val32.i.i.i
  %i.q = sext i32 %i.p to i64
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.t = atomicrmw xchg ptr %i.s, i8 1 monotonic, align 1
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.v = atomicrmw sub ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  %.val29.i.i.i = load ptr, ptr %i.g, align 8     ; 2 uses
  %.val30.i.i.i = load ptr, ptr %i.h, align 8
  %i.w = icmp eq ptr %.val29.i.i.i, %.val30.i.i.i
  br i1 %i.w, label %._crit_edge.i.i.i, label %bb.d

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(156) %i.a) #29
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val2767.i.i.i = load ptr, ptr %i.z, align 8   ; 3 uses
  %.val2868.i.i.i = load ptr, ptr %i.aa, align 8  ; 3 uses
  %.not2569.not.i.i.i = icmp eq ptr %.val2868.i.i.i, %.val2767.i.i.i
  br i1 %.not2569.not.i.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues22GetTopTierPriorityUnitEPNS3_9QueueImplE.exit.i.i, label %.lr.ph74.i.i.i

.lr.ph74.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.ab = ptrtoint ptr %.val2767.i.i.i to i64
  %i.ac = ptrtoint ptr %.val2868.i.i.i to i64
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i, %.lr.ph74.i.i.i
  %.val2883.i.i.i = phi ptr [ %.val2868.i.i.i, %.lr.ph74.i.i.i ], [ %.val28.i.i.i, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i ]
  %.val2781.i.i.i = phi ptr [ %.val2767.i.i.i, %.lr.ph74.i.i.i ], [ %.val27.i.i.i, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i ] ; 2 uses
  %i.ai = phi i64 [ %i.ae, %.lr.ph74.i.i.i ], [ %i.bh, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i ]
  %.171.i.i.i = phi i32 [ %i.y, %.lr.ph74.i.i.i ], [ %i.bd, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i ] ; 2 uses
  %.02470.i.i.i = phi i64 [ 0, %.lr.ph74.i.i.i ], [ %i.bc, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i ]
  %i.aj = trunc i64 %i.ai to i32
  %.not.i.i.i = icmp slt i32 %.171.i.i.i, %i.aj
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %.171.i.i.i, i32 0 ; 3 uses
  %i.ak = sext i32 %spec.select.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val2781.i.i.i, i64 %i.ak
  %.val14.i.i.i.i = load ptr, ptr %i.al, align 8  ; 4 uses
  %i.am = icmp eq ptr %.val14.i.i.i.i, %1
  br i1 %i.am, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i, i64 8 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #29
  %i.ao = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i, i64 64 ; 3 uses
  %i.ap = getelementptr i8, ptr %.val14.i.i.i.i, i64 72 ; 2 uses
  %.val1538.i.i.i.i = load ptr, ptr %i.ao, align 8 ; 2 uses
  %.val1639.i.i.i.i = load ptr, ptr %i.ap, align 8
  %i.aq = icmp eq ptr %.val1538.i.i.i.i, %.val1639.i.i.i.i
  br i1 %i.aq, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread55.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i.i
  %.val1540.i.i.i.i = phi ptr [ %.val15.i.i.i.i, %_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i.i ], [ %.val1538.i.i.i.i, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1540.i.i.i.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %.sroa.021.0.extract.trunc.i.i.i.i = trunc i64 %i.as to i32
  tail call fastcc void @_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %i.ao)
  %i.at = atomicrmw sub ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %.val18.i.i.i.i = load i32, ptr %i.ag, align 8
  %i.au = sub nsw i32 %.sroa.021.0.extract.trunc.i.i.i.i, %.val18.i.i.i.i
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.af, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  %i.ay = atomicrmw xchg ptr %i.ax, i8 1 monotonic, align 1
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit34.i.i.i

_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ba = atomicrmw sub ptr %i.ah, i64 1 monotonic, align 8 ; 0 uses
  %.val15.i.i.i.i = load ptr, ptr %i.ao, align 8  ; 2 uses
  %.val16.i.i.i.i = load ptr, ptr %i.ap, align 8
  %i.bb = icmp eq ptr %.val15.i.i.i.i, %.val16.i.i.i.i
  br i1 %i.bb, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread55.i.i.i, label %.lr.ph.i.i.i.i

_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread55.i.i.i: ; preds = %_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i.i, %bb.g
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #29
  %.val27.pre.i.i.i = load ptr, ptr %i.z, align 8
  %.val28.pre.i.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i

_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread55.i.i.i, %bb.f
  %.val28.i.i.i = phi ptr [ %.val2883.i.i.i, %bb.f ], [ %.val28.pre.i.i.i, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread55.i.i.i ] ; 2 uses
  %.val27.i.i.i = phi ptr [ %.val2781.i.i.i, %bb.f ], [ %.val27.pre.i.i.i, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread55.i.i.i ] ; 2 uses
  %i.bc = add nuw i64 %.02470.i.i.i, 1            ; 2 uses
  %i.bd = add nsw i32 %spec.select.i.i.i, 1
  %i.be = ptrtoint ptr %.val28.i.i.i to i64
  %i.bf = ptrtoint ptr %.val27.i.i.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3                 ; 2 uses
  %.not25.i.i.i = icmp ult i64 %i.bc, %i.bh
  br i1 %.not25.i.i.i, label %bb.f, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues22GetTopTierPriorityUnitEPNS3_9QueueImplE.exit.i.i, !llvm.loop !412

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #29
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  %i.bi = add nsw i32 %spec.select.i.i.i, 1
  store i32 %i.bi, ptr %i.x, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  br label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i

_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues22GetTopTierPriorityUnitEPNS3_9QueueImplE.exit.i.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues24StealTopTierPriorityUnitEPNS3_9QueueImplEi.exit.thread.i.i.i, %._crit_edge.i.i.i
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(156) %i.a) #29
  br label %.split.i.i

.split.i.i:                                       ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues22GetTopTierPriorityUnitEPNS3_9QueueImplE.exit.i.i, %bb.b, %bb.a
  %.sink.i.i = phi i32 [ %2, %bb.a ], [ 1, %bb.b ], [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues22GetTopTierPriorityUnitEPNS3_9QueueImplE.exit.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = sext i32 %.sink.i.i to i64              ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bm = load atomic i8, ptr %i.bl monotonic, align 1, !range !76, !noundef !77
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.h, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues16GetBigUnitOfTierEi.exit.thread.i

bb.h:                                             ; preds = %.split.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #29
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bq = getelementptr inbounds [32 x i8], ptr %i.bp, i64 %i.bk ; 3 uses
  %.val7.i.i = load ptr, ptr %i.bq, align 8       ; 14 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8      ; 3 uses
  %.val8.i.i = load ptr, ptr %i.br, align 8       ; 4 uses
  %i.bs = icmp eq ptr %.val7.i.i, %.val8.i.i
  br i1 %i.bs, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues16GetBigUnitOfTierEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = ptrtoint ptr %.val8.i.i to i64
  %i.bw = ptrtoint ptr %.val7.i.i to i64          ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp sgt i64 %i.bx, 16
  br i1 %i.by, label %bb.j, label %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds i8, ptr %.val8.i.i, i64 -16 ; 4 uses
  %i.ca = load <2 x i64>, ptr %i.bz, align 8
  %.sroa.03.0.copyload.i.i.i.i.i = load i64, ptr %i.bz, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %.val7.i.i, i64 16, i1 false)
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.cb, %i.bw                    ; 2 uses
  %i.cd = ashr exact i64 %i.cc, 4                 ; 3 uses
  %i.ce = add nsw i64 %i.cd, -1
  %3 = lshr i64 %i.ce, 1
  %i.cf = icmp sgt i64 %i.cd, 2
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.041.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.cg = shl i64 %.041.i.i.i.i.i.i, 1            ; 2 uses
  %i.ch = add i64 %i.cg, 2                        ; 2 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %.val7.i.i, i64 %i.ch
  %i.cj = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ck = getelementptr inbounds [16 x i8], ptr %.val7.i.i, i64 %i.cj
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ci, align 8
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 8
  %i.cl = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.cl, i64 %i.cj, i64 %i.ch ; 4 uses
  %i.cm = getelementptr inbounds [16 x i8], ptr %.val7.i.i, i64 %spec.select.i.i.i.i.i.i
  %i.cn = getelementptr inbounds [16 x i8], ptr %.val7.i.i, i64 %.041.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false)
  %i.co = icmp slt i64 %spec.select.i.i.i.i.i.i, %3
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !413

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.cp = and i64 %i.cc, 16
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cr = add nsw i64 %i.cd, -2
  %i.cs = ashr exact i64 %i.cr, 1
  %i.ct = icmp eq i64 %.0.lcssa.i.i.i.i.i.i, %i.cs
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i, 1
  %i.cv = or disjoint i64 %i.cu, 1                ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.val7.i.i, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.val7.i.i, i64 %.0.lcssa.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false)
  br label %.lr.ph.i.i.i.i.i.i.i.preheader

bb.m:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %bb.l
  %.07.i.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i.i, %bb.m ], [ %i.cv, %bb.l ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.n
  %.07.i.i.i.i.i.i.i = phi i64 [ %.098.i.i.i.i.i.i.i, %bb.n ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %.098.in.i.i.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i.i.i, -1
  %.098.i.i.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.val7.i.i, i64 %.098.i.i.i.i.i.i.i ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.cy, align 8
  %i.cz = icmp ult i64 %.val2.i.i.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i.i.i
  br i1 %i.cz, label %bb.n, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.val7.i.i, i64 %.07.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %i.db = icmp sgt i64 %.07.i.i.i.i.i.i.i, 2
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i, !llvm.loop !374

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %.07.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.098.i.i.i.i.i.i.i, %bb.n ]
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.val7.i.i, i64 %.0.lcssa.i.i.i.i.i.i.i
  store <2 x i64> %i.ca, ptr %i.dc, align 8
  %.pre.i.i.i = load ptr, ptr %i.br, align 8
  %.val.pre.i.i = load ptr, ptr %i.bq, align 8
  br label %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv.exit.i.i

_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv.exit.i.i: ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i, %bb.i
  %.val.i.i = phi ptr [ %.val7.i.i, %bb.i ], [ %.val.pre.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i ]
  %i.dd = phi ptr [ %.val8.i.i, %bb.i ], [ %.pre.i.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -16 ; 2 uses
  store ptr %i.de, ptr %i.br, align 8
  %i.df = icmp eq ptr %.val.i.i, %i.de
  br i1 %i.df, label %bb.o, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i

bb.o:                                             ; preds = %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv.exit.i.i
  store atomic i8 0, ptr %i.bl monotonic, align 1
  br label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i

_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues16GetBigUnitOfTierEi.exit.i: ; preds = %bb.h
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #29
  br label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues16GetBigUnitOfTierEi.exit.thread.i

_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues16GetBigUnitOfTierEi.exit.thread.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues16GetBigUnitOfTierEi.exit.i, %.split.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg) #29
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = sext i32 %2 to i64                      ; 2 uses
  %i.dj = getelementptr inbounds [24 x i8], ptr %i.dh, i64 %i.di ; 4 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dn = icmp eq ptr %i.dk, %i.dm
  br i1 %i.dn, label %bb.p, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i:  ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues16GetBigUnitOfTierEi.exit.thread.i
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 4
  store ptr %i.do, ptr %i.dl, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i

bb.p:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues16GetBigUnitOfTierEi.exit.thread.i
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg) #29
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(156) %i.a) #29
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val4495.i.i = load ptr, ptr %i.ds, align 8    ; 3 uses
  %.val4596.i.i = load ptr, ptr %i.dt, align 8    ; 3 uses
  %.not4297.not.i.i = icmp eq ptr %.val4596.i.i, %.val4495.i.i
  br i1 %.not4297.not.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.du = ptrtoint ptr %.val4596.i.i to i64
  %i.dv = ptrtoint ptr %.val4495.i.i to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.preheader.i.i
  %.val45113.i.i = phi ptr [ %.val45.i.i, %bb.v ], [ %.val4596.i.i, %.lr.ph.preheader.i.i ]
  %.val44111.i.i = phi ptr [ %.val44.i.i, %bb.v ], [ %.val4495.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.dy = phi i64 [ %i.fp, %bb.v ], [ %i.dx, %.lr.ph.preheader.i.i ]
  %.13899.i.i = phi i32 [ %i.fl, %bb.v ], [ %i.dr, %.lr.ph.preheader.i.i ] ; 2 uses
  %.03998.i.i = phi i64 [ %i.fk, %bb.v ], [ 0, %.lr.ph.preheader.i.i ]
  %i.dz = trunc i64 %i.dy to i32
  %.not.i.i = icmp slt i32 %.13899.i.i, %i.dz
  %spec.select.i.i = select i1 %.not.i.i, i32 %.13899.i.i, i32 0 ; 3 uses
  %i.ea = sext i32 %spec.select.i.i to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.val44111.i.i, i64 %i.ea
  %.val29.i48.i.i = load ptr, ptr %i.eb, align 8  ; 3 uses
  %i.ec = icmp eq ptr %.val29.i48.i.i, %1
  br i1 %i.ec, label %bb.v, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.val29.i48.i.i, i64 8 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ed) #29
  %i.ee = getelementptr inbounds nuw i8, ptr %.val29.i48.i.i, i64 16
  %i.ef = getelementptr inbounds [24 x i8], ptr %i.ee, i64 %i.di ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8            ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8            ; 4 uses
  %i.ej = icmp eq ptr %i.eg, %i.ei
  br i1 %i.ej, label %.thread.i.i.i, label %_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i

_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i: ; preds = %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.el = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3
  %i.ep = lshr i64 %i.eo, 1
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ep ; 4 uses
  %i.er = load i64, ptr %i.eq, align 4            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.el, %i.et                    ; 4 uses
  %.not.i49.i.i = icmp eq ptr %i.ei, %i.es
  br i1 %.not.i49.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvT_SB_St20forward_iterator_tag.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i
  %i.ev = icmp ugt i64 %i.eu, 9223372036854775800
  br i1 %i.ev, label %bb.s, label %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #32
  unreachable

_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.r
  %i.ew = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #31 ; 3 uses
  %i.ex = and i64 %i.eu, 9223372036854775800
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ew, ptr nonnull align 4 %i.es, i64 %i.ex, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvT_SB_St20forward_iterator_tag.exit.i.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvT_SB_St20forward_iterator_tag.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit.i.i.i.i.i, %_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i
  %.sroa.7.0.i.i.i = phi ptr [ %i.ey, %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit.i.i.i.i.i ], [ null, %_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i ] ; 2 uses
  %.sroa.013.0.i.i.i = phi ptr [ %i.ew, %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit.i.i.i.i.i ], [ null, %_ZNSt8optionalIN2v88internal4wasm19WasmCompilationUnitEEaSIRS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS3_ES9_IS3_NSt5decayISC_E4typeEEEEESt16is_constructibleIS3_JSC_EESt13is_assignableIS6_SC_EEERS4_E4typeEOSC_.exit.i.i.i ] ; 4 uses
  %i.ez = icmp eq ptr %i.eq, %i.ei
  br i1 %i.ez, label %bb.t, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvT_SB_St20forward_iterator_tag.exit.i.i.i
  store ptr %i.eq, ptr %i.ek, align 8
  br label %bb.t

.thread.i.i.i:                                    ; preds = %bb.q
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ed) #29
  %.val44.pre.i.i = load ptr, ptr %i.ds, align 8
  %.val45.pre.i.i = load ptr, ptr %i.dt, align 8
  br label %bb.v

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvT_SB_St20forward_iterator_tag.exit.i.i.i
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ed) #29
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg) #29
  %i.fa = load ptr, ptr %i.dl, align 8
  %i.fb = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %i.fb, i64 %i.fe
  tail call void @_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr %i.ff, ptr %.sroa.013.0.i.i.i, ptr %.sroa.7.0.i.i.i)
  %i.fg = add nsw i32 %spec.select.i.i, 1
  store i32 %i.fg, ptr %i.dq, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg) #29
  %.not.i.i.i32.i.i.i = icmp eq ptr %.sroa.013.0.i.i.i, null
  br i1 %.not.i.i.i32.i.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fh = ptrtoint ptr %.sroa.7.0.i.i.i to i64
  %i.fi = ptrtoint ptr %.sroa.013.0.i.i.i to i64
  %i.fj = sub i64 %i.fh, %i.fi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.0.i.i.i, i64 noundef %i.fj) #30
  br label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i

bb.v:                                             ; preds = %.thread.i.i.i, %.lr.ph.i.i
  %.val45.i.i = phi ptr [ %.val45.pre.i.i, %.thread.i.i.i ], [ %.val45113.i.i, %.lr.ph.i.i ] ; 2 uses
  %.val44.i.i = phi ptr [ %.val44.pre.i.i, %.thread.i.i.i ], [ %.val44111.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.fk = add nuw i64 %.03998.i.i, 1              ; 2 uses
  %i.fl = add nsw i32 %spec.select.i.i, 1
  %i.fm = ptrtoint ptr %.val45.i.i to i64
  %i.fn = ptrtoint ptr %.val44.i.i to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 3                 ; 2 uses
  %.not42.i.i = icmp ult i64 %i.fk, %i.fp
  br i1 %.not42.i.i, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !414

_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i: ; preds = %bb.d, %bb.u, %bb.t, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i, %bb.o, %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv.exit.i.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit34.i.i.i
  %.sink136.i.ph.sink.i = phi ptr [ %i.bo, %bb.o ], [ %i.bo, %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv.exit.i.i ], [ %i.a, %bb.t ], [ %i.a, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit34.i.i.i ], [ %i.a, %bb.u ], [ %i.dg, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i ], [ %i.f, %bb.d ]
  %.pn33.i = phi i64 [ %i.bu, %bb.o ], [ %i.bu, %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv.exit.i.i ], [ %i.er, %bb.t ], [ %i.as, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit34.i.i.i ], [ %i.er, %bb.u ], [ %i.dp, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i ], [ %i.n, %bb.d ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink136.i.ph.sink.i) #29
  %.fca.0.insert.i26.i = insertvalue { i64, i8 } poison, i64 %.pn33.i, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fr = zext i32 %2 to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = atomicrmw sub ptr %i.fs, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues11GetNextUnitEPNS3_5QueueENS2_15CompilationTierE.exit

.loopexit.i:                                      ; preds = %bb.v, %bb.p
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(156) %i.a) #29
  br label %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues11GetNextUnitEPNS3_5QueueENS2_15CompilationTierE.exit

_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues11GetNextUnitEPNS3_5QueueENS2_15CompilationTierE.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i, %.loopexit.i
  %.fca.0.insert.i25.i = phi { i64, i8 } [ %.fca.0.insert.i26.i, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i ], [ { i64 undef, i8 poison }, %.loopexit.i ]
  %.sroa.2.0.i = phi i8 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues17GetNextUnitOfTierEPNS3_5QueueEi.exit.thread.i ], [ 0, %.loopexit.i ]
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i25.i, i8 %.sroa.2.0.i, 1
  ret { i64, i8 } %.fca.1.insert.i
}

declare void @_ZN2v88internal4wasm12NativeModule15AddCompiledCodeENS_4base6VectorINS1_21WasmCompilationResultEEE(ptr dead_on_unwind writable sret(%"class.std::vector.39") align 8, ptr noundef nonnull align 8 dereferenceable(552), ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl33SchedulePublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EENS2_15CompilationTierE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::vector.53", align 8    ; 5 uses
  %4 = alloca %"class.std::vector.39", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.b ; 14 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !76, !noundef !77
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl33SchedulePublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EENS2_15CompilationTierE:bb.a
  store ptr %i.ae, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.m
  store ptr %i.ao, ptr %i.h, align 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.v
  store ptr %i.ap, ptr %i.x, align 8
  %.pre = load ptr, ptr %1, align 8
  %.pre31 = load ptr, ptr %i.o, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.aq = phi ptr [ %i.p, %bb.d ], [ %.pre31, %_ZNSt12_Vector_baseIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.ar = phi ptr [ %i.q, %bb.d ], [ %.pre, %_ZNSt12_Vector_baseIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aq
  br i1 %i.as, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread, label %.lr.ph

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread: ; preds = %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE7reserveEm.exit
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  br label %bb.m

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE7reserveEm.exit, %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %.sroa.026.030 = phi ptr [ %i.bb, %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ar, %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE7reserveEm.exit ] ; 5 uses
  %i.at = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.au = load ptr, ptr %i.x, align 8
  %.not.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.av = load i64, ptr %.sroa.026.030, align 8
  store i64 %i.av, ptr %i.at, align 8
  store ptr null, ptr %.sroa.026.030, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.026.030, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  store i64 %i.ay, ptr %i.aw, align 8
  store ptr null, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.h, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.ba, ptr %i.h, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.g:                                             ; preds = %.lr.ph
  tail call void @_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.030)
  br label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.f, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.026.030, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread50: ; preds = %bb.a
  store i8 1, ptr %i.d, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  br label %bb.h

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  br label %bb.m

bb.h:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread50, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24
  %i.bk = load ptr, ptr %1, align 8               ; 4 uses
  store ptr %i.bk, ptr %4, align 8
  %i.bl = load <2 x ptr>, ptr %i.be, align 8
  %i.bm = load ptr, ptr %i.be, align 8            ; 2 uses
  store <2 x ptr> %i.bl, ptr %i.bd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl25PublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 4
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11PublishCodeENS_4base6VectorINS1_19UnpublishedWasmCodeEEE(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(416) %0, ptr %i.bk, i64 %i.br)
  %i.bs = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i20, label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl25PublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = load ptr, ptr %i.bg, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bw) #30
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl25PublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EE.exit

_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl25PublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EE.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #29
  %i.bx = load ptr, ptr %1, align 8               ; 3 uses
  %i.by = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, %i.bx
  br i1 %.not.i.i, label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl25PublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EE.exit, %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ci, %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i ], [ %i.bx, %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl25PublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EE.exit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8            ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #30
  br label %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 24) #30
  br label %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i21
  %i.ch = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.ch) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 112) #30
  br label %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.ci, %i.by
  br i1 %.not.i.i.i.i22, label %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i21, !llvm.loop !333

_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i
  store ptr %i.bx, ptr %i.be, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE5clearEv.exit

_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE5clearEv.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl25PublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EE.exit, %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit.i.i
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  %i.cj = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.ck = load ptr, ptr %i.bi, align 8
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24.thread, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24.thread: ; preds = %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE5clearEv.exit
  store i8 0, ptr %i.d, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  br label %bb.m

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24:    ; preds = %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE5clearEv.exit
  %i.cm = load ptr, ptr %i.bf, align 8
  %i.cn = load <2 x ptr>, ptr %1, align 8
  store ptr %i.cj, ptr %1, align 8
  %i.co = load ptr, ptr %i.bi, align 8
  store ptr %i.co, ptr %i.be, align 8
  %i.cp = load ptr, ptr %i.bj, align 8
  store ptr %i.cp, ptr %i.bf, align 8
  store <2 x ptr> %i.cn, ptr %i.bh, align 8
  store ptr %i.cm, ptr %i.bj, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  br label %bb.h

bb.m:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24.thread
  ret void
}

declare void @_ZN2v84base3FPU17SetFlushDenormalsEb(i1 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN2v84base3FPU17GetFlushDenormalsEv() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0) unnamed_addr #22 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val2 = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.b = ptrtoint ptr %.val2 to i64
  %i.c = ptrtoint ptr %.val to i64                ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %bb.b, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEESt4lessIS7_EEvT_SF_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %.val2, i64 -16 ; 4 uses
  %i.g = load <2 x i64>, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.val, i64 16, i1 false)
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.h, %i.c                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 4                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %1 = lshr i64 %i.k, 1
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.041.i.i.i, 1                   ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.p
  %.val2.i.i.i.i = load i64, ptr %i.o, align 8
  %.val3.i.i.i.i = load i64, ptr %i.q, align 8
  %i.r = icmp ult i64 %.val2.i.i.i.i, %.val3.i.i.i.i
  %spec.select.i.i.i = select i1 %i.r, i64 %i.p, i64 %i.n ; 4 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.val, i64 %spec.select.i.i.i
  %i.t = getelementptr inbounds [16 x i8], ptr %.val, i64 %.041.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.u = icmp slt i64 %spec.select.i.i.i, %1
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !421

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.v = and i64 %i.i, 16
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.x = add nsw i64 %i.j, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa.i.i.i, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  br label %.lr.ph.i.i.i.i.preheader

bb.e:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e, %bb.d
  %.07.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.e ], [ %i.ab, %bb.d ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.f
  %.07.i.i.i.i = phi i64 [ %.098.i.i.i.i, %bb.f ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.098.in.i.i.i.i = add nsw i64 %.07.i.i.i.i, -1
  %.098.i.i.i.i = sdiv i64 %.098.in.i.i.i.i, 2    ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.098.i.i.i.i ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = icmp ult i64 %.val2.i.i.i.i.i, %.sroa.03.0.copyload.i.i
  br i1 %i.af, label %bb.f, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.07.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.ah = icmp sgt i64 %.07.i.i.i.i, 2
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i, !llvm.loop !162

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.098.i.i.i.i, %bb.f ], [ %.07.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.0.lcssa.i.i.i.i
  store <2 x i64> %i.g, ptr %i.ai, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEESt4lessIS7_EEvT_SF_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEESt4lessIS7_EEvT_SF_T0_.exit: ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i
  %i.aj = phi ptr [ %.val2, %bb.a ], [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16
  store ptr %i.ak, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = icmp eq ptr %2, %3
  br i1 %i.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.e = sub i64 %i.c, %i.d                       ; 9 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 16 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 7 uses
  %i.m = sub i64 %i.k, %i.l
  %.not = icmp ult i64 %i.m, %i.e
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.o = sub i64 %i.l, %i.n                       ; 6 uses
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.f
  br i1 %i.q, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.e
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %.idx ; 4 uses
  %i.s = sub i64 %i.c, %i.d
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check123 = icmp ult i64 %i.t, 56
  %diff.check121 = icmp ult i64 %i.e, 32
  %or.cond = or i1 %min.iters.check123, %diff.check121
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %bb.d
  %n.vec125 = and i64 %i.v, 4611686018427387900   ; 3 uses
  %i.w = shl i64 %n.vec125, 3                     ; 2 uses
  %i.x = getelementptr i8, ptr %i.j, i64 %i.w
  %i.y = getelementptr i8, ptr %i.r, i64 %i.w
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body126 ] ; 2 uses
  %i.z = shl i64 %index127, 3                     ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.j, i64 %i.z ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.r, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load130 = load <2 x i64>, ptr %next.gep129, align 4
  %wide.load131 = load <2 x i64>, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %next.gep128, i64 16
  store <2 x i64> %wide.load130, ptr %next.gep128, align 4
  store <2 x i64> %wide.load131, ptr %i.ab, align 4
  %index.next132 = add nuw i64 %index127, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.ac, label %middle.block133, label %vector.body126, !llvm.loop !422

middle.block133:                                  ; preds = %vector.body126
  %cmp.n134 = icmp eq i64 %i.v, %n.vec125
  br i1 %cmp.n134, label %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block133
  %.08.i.i.i.i.i.ph = phi ptr [ %i.j, %bb.d ], [ %i.x, %middle.block133 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.r, %bb.d ], [ %i.y, %middle.block133 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 4
  store i64 %i.ad, ptr %.08.i.i.i.i.i, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.ag = icmp eq ptr %i.ae, %i.j
  br i1 %i.ag, label %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !423

_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block133
  %i.ah = load ptr, ptr %i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.e
  store ptr %i.ai, ptr %i.i, align 8
  %i.aj = ptrtoint ptr %i.r to i64
  %i.ak = sub i64 %i.aj, %i.n                     ; 3 uses
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.e, label %bb.f, !prof !104

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.an = sub nsw i64 0, %i.al
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.an
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %1, i64 %i.ak, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ap = icmp eq i64 %i.ak, 8
  br i1 %i.ap, label %bb.g, label %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds i8, ptr %i.j, i64 -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.aq, ptr noundef nonnull align 4 dereferenceable(6) %1, i64 6, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ar = icmp sgt i64 %i.e, 8
  br i1 %i.ar, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.e, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit
  %i.as = icmp eq i64 %i.e, 8
  br i1 %i.as, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %1, ptr noundef nonnull align 4 dereferenceable(6) %2, i64 6, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.o ; 4 uses
  %i.au = icmp eq ptr %i.at, %3
  br i1 %i.au, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.av = add i64 %i.c, %i.n
  %i.aw = add i64 %i.l, %i.d
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = add i64 %i.ax, -8                       ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 72
  %i.bb = sub i64 %i.d, %i.n
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond190 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond190, label %.lr.ph.i.i.i.i.preheader199, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.j, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.at, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bf ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.at, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep100, align 4
  %wide.load101 = load <2 x i64>, ptr %i.bg, align 4
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load101, ptr %i.bh, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !424

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader199

.lr.ph.i.i.i.i.preheader199:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader199, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader199 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader199 ] ; 2 uses
  %i.bj = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.bj, ptr %.08.i.i.i.i, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.bm = icmp eq ptr %i.bk, %3
  br i1 %i.bm, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !425

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.i, align 8
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bn = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64
end_hunk_1
