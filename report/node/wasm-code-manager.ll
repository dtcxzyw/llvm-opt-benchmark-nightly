inline.NumInlined: 5606
inline.NumDeleted: 3138
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN2v88internal4wasm12NativeModule18ReinstallDebugCodeEPNS1_8WasmCodeE:bb.a
bb.d:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.t, align 8
  %i.w = load ptr, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.s, align 8
  br label %_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #34
  unreachable

_ZNKSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #33 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store ptr %i.o, ptr %i.ak, align 8
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #32
  br label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.aj, ptr %i.r, align 8
  store ptr %i.am, ptr %i.s, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.an, ptr %i.u, align 8
  br label %_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit

_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit: ; preds = %bb.d, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.ap = atomicrmw add ptr %i.ao, i32 1 acq_rel, align 4 ; 0 uses
  %i.aq = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit, %bb.b
  %i.ar = phi ptr [ %.pre, %_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit ], [ %i.m, %bb.b ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.l
  store ptr %1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = atomicrmw add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  tail call void @_ZN2v88internal4wasm12NativeModule21PatchJumpTablesLockedEjmmm(ptr noundef nonnull align 8 dereferenceable(552) %0, i32 noundef %i.j, i64 noundef %i.ax, i64 noundef %i.ax, i64 poison)
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %bb.a, %bb.i
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm12NativeModule27AllocateForDeserializedCodeEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.1174") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(552) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call { ptr, i64 } @_ZN2v88internal4wasm17WasmCodeAllocator23AllocateForCodeInRegionEPNS1_12NativeModuleEmNS_4base13AddressRegionE(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull %1, i64 noundef %2, i64 0, i64 -1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = add i64 %i.e, %i.f                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.028.041.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ae, %bb.f ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val24.i = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %.val25.i = load i32, ptr %i.p, align 8
  %i.q = ptrtoint ptr %.val24.i to i64            ; 4 uses
  %i.r = sext i32 %.val25.i to i64
  %i.s = add i64 %i.r, %i.q
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 %i.q)
  %i.t = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %i.f)
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i.i, i64 %i.t)
  %i.u = icmp ult i64 %.sroa.speculated.i.i, 1073741825
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not16.i = icmp eq ptr %i.w, null
  br i1 %.not16.i, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val20.i = load ptr, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.w, i64 32
  %.val21.i = load i32, ptr %i.y, align 8
  %i.z = ptrtoint ptr %.val20.i to i64            ; 3 uses
  %i.aa = sext i32 %.val21.i to i64
  %i.ab = add i64 %i.aa, %i.z
  %spec.select.i26.i = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 %i.z)
  %i.ac = tail call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 %i.f)
  %.sroa.speculated.i27.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i26.i, i64 %i.ac)
  %i.ad = icmp ult i64 %.sroa.speculated.i27.i, 1073741825
  br i1 %i.ad, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i, i64 32 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.j
  br i1 %i.af, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %bb.b

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.a
  %spec.select18.i = phi i64 [ 0, %bb.a ], [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ 0, %bb.f ]
  %spec.select.i = phi i64 [ 0, %bb.a ], [ %i.z, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ]
  store ptr %i.d, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.select18.i, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm12NativeModule19AddDeserializedCodeEiNS_4base6VectorIhEEiijiiiiiiNS4_IKhEES7_S7_S7_S7_NS1_8WasmCode4KindENS1_13ExecutionTierE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.1127") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(552) %1, i32 noundef %2, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr nofree noundef readonly byval(%"class.v8::base::Vector") align 8 captures(none) %14, ptr nofree noundef readonly byval(%"class.v8::base::Vector") align 8 captures(none) %15, ptr nofree noundef readonly byval(%"class.v8::base::Vector") align 8 captures(none) %16, ptr nofree noundef readonly byval(%"class.v8::base::Vector") align 8 captures(none) %17, ptr nofree noundef readonly byval(%"class.v8::base::Vector") align 8 captures(none) %18, i32 noundef %19, i8 noundef signext %20) local_unnamed_addr #0 align 2 {
bb.a:
  %cond.i = icmp eq i8 %20, 2
  br i1 %cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.b = atomicrmw add ptr %i.a, i64 %4 seq_cst, align 8 ; 0 uses
  %.not6.i = icmp eq i8 %20, 1
  br i1 %.not6.i, label %_ZN2v88internal4wasm12NativeModule14UpdateCodeSizeEmNS1_13ExecutionTierENS1_12ForDebuggingE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.d = atomicrmw add ptr %i.c, i64 %4 seq_cst, align 8 ; 0 uses
  br label %_ZN2v88internal4wasm12NativeModule14UpdateCodeSizeEmNS1_13ExecutionTierENS1_12ForDebuggingE.exit

_ZN2v88internal4wasm12NativeModule14UpdateCodeSizeEmNS1_13ExecutionTierENS1_12ForDebuggingE.exit: ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr @_ZN2v88internal4wasm20GetTypeCanonicalizerEv() #31
  %i.h = tail call noundef i64 @_ZNK2v88internal4wasm10WasmModule14signature_hashEPKNS1_17TypeCanonicalizerEj(ptr noundef nonnull align 8 dereferenceable(832) %i.f, ptr noundef %i.g, i32 noundef %2) #31
  %i.i = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33 ; 2 uses
  tail call void @_ZN2v88internal4wasm8WasmCodeC2EPNS1_12NativeModuleEiNS_4base6VectorIhEEiijiiiiiiNS6_IKhEES9_S9_S9_S9_NS2_4KindENS1_13ExecutionTierENS1_12ForDebuggingEmb(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull %1, i32 noundef %2, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef nonnull byval(%"class.v8::base::Vector") align 8 %14, ptr noundef nonnull byval(%"class.v8::base::Vector") align 8 %15, ptr noundef nonnull byval(%"class.v8::base::Vector") align 8 %16, ptr noundef nonnull byval(%"class.v8::base::Vector") align 8 %17, ptr noundef nonnull byval(%"class.v8::base::Vector") align 8 %18, i32 noundef %19, i8 noundef signext %20, i8 noundef signext 0, i64 noundef %i.h, i1 noundef zeroext false)
  store ptr %i.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm12NativeModule17SnapshotCodeTableEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.1176") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(552) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %i.h = zext i32 %i.g to i64
  %.idx35 = shl nuw nsw i64 %i.h, 3               ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx35
  %.not37 = icmp eq i32 %i.g, 0                   ; 2 uses
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal4wasm12_GLOBAL__N_123current_code_refs_scopeE)
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre = load ptr, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.m = load i32, ptr %i.l, align 4              ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #33 ; 10 uses
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n     ; 3 uses
  store i8 0, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.r = add nsw i64 %i.n, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph40, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.r, i1 false)
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.b, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.b ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 696
  %.pre42 = load ptr, ptr %i.t, align 8           ; 5 uses
  %xtraiter = and i32 %i.m, 3                     ; 3 uses
  %i.u = icmp ult i32 %i.m, 4
  br i1 %i.u, label %.epil.preheader, label %.lr.ph40.new

.lr.ph40.new:                                     ; preds = %.lr.ph40
  %unroll_iter = and i32 %i.m, -4
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %.01838 = phi ptr [ %i.c, %.lr.ph ], [ %i.aw, %bb.j ] ; 2 uses
  %i.v = load ptr, ptr %.01838, align 8           ; 4 uses
  %.not20 = icmp eq ptr %i.v, null
  br i1 %.not20, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.v, ptr %i.z, align 8
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.y, align 8
  br label %_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.x, align 8             ; 4 uses
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.g, label %_ZNKSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #34
  unreachable

_ZNKSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i21 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i21)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #33 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %i.v, ptr %i.aq, align 8
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.h, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #32
  br label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.ap, ptr %i.x, align 8
  store ptr %i.as, ptr %i.y, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.aa, align 8
  br label %_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit

_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit: ; preds = %bb.e, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.av = atomicrmw add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.01838, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.loopexit.unr-lcssa, %.lr.ph40
  %.039.epil.init = phi i32 [ 0, %.lr.ph40 ], [ %i.ci, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.039.epil = phi i32 [ %.039.epil.init, %.epil.preheader ], [ %i.bc, %bb.k ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ax = sext i32 %.039.epil to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre42, i64 %i.ax
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1
  %i.ba = zext i32 %.039.epil to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ba
  store i8 %i.az, ptr %i.bb, align 1
  %i.bc = add nuw i32 %.039.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i, label %bb.k, !llvm.loop !153

_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.loopexit.unr-lcssa, %bb.k, %._crit_edge
  %.0.i.i.i.i.i59 = phi ptr [ null, %._crit_edge ], [ %.0.i.i.i.i.i.ph, %bb.k ], [ %.0.i.i.i.i.i.ph, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.028.057 = phi ptr [ null, %._crit_edge ], [ %i.o, %bb.k ], [ %i.o, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.11.055 = phi ptr [ null, %._crit_edge ], [ %i.p, %bb.k ], [ %i.p, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.loopexit.unr-lcssa ]
  br i1 %.not37, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %_ZNSt12_Vector_baseIPN2v88internal4wasm8WasmCodeESaIS4_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIPN2v88internal4wasm8WasmCodeESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx35) #33 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx35 ; 2 uses
  %.not36 = icmp eq i32 %i.g, 1
  br i1 %.not36, label %bb.m, label %bb.l, !prof !154

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIPN2v88internal4wasm8WasmCodeESaIS4_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %i.c, i64 %.idx35, i1 false)
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIPN2v88internal4wasm8WasmCodeESaIS4_EE11_M_allocateEm.exit.i.i
  %i.bf = load ptr, ptr %i.c, align 8
  store ptr %i.bf, ptr %i.bd, align 8
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i, %bb.l, %bb.m
  %.sroa.024.0 = phi ptr [ %i.bd, %bb.m ], [ %i.bd, %bb.l ], [ null, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i ]
  %.sroa.9.0 = phi ptr [ %i.be, %bb.m ], [ %i.be, %bb.l ], [ null, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i ] ; 2 uses
  store ptr %.sroa.024.0, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.028.057, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i.i.i59, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.11.055, ptr %i.bk, align 8
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #31
  ret void

bb.n:                                             ; preds = %bb.n, %.lr.ph40.new
  %.039 = phi i32 [ 0, %.lr.ph40.new ], [ %i.ci, %bb.n ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph40.new ], [ %niter.next.3, %bb.n ]
  %i.bl = sext i32 %.039 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre42, i64 %i.bl
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1
  %i.bo = zext i32 %.039 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1
  %i.bq = or disjoint i32 %.039, 1                ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre42, i64 %i.br
  %i.bt = load atomic i8, ptr %i.bs monotonic, align 1
  %i.bu = zext i32 %i.bq to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bu
  store i8 %i.bt, ptr %i.bv, align 1
  %i.bw = or disjoint i32 %.039, 2                ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.pre42, i64 %i.bx
  %i.bz = load atomic i8, ptr %i.by monotonic, align 1
  %i.ca = zext i32 %i.bw to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ca
  store i8 %i.bz, ptr %i.cb, align 1
  %i.cc = or disjoint i32 %.039, 3                ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre42, i64 %i.cd
  %i.cf = load atomic i8, ptr %i.ce monotonic, align 1
  %i.cg = zext i32 %i.cc to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cg
  store i8 %i.cf, ptr %i.ch, align 1
  %i.ci = add nuw i32 %.039, 4                    ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !155
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm12NativeModule26TransferNewOwnedCodeLockedEv(ptr noundef nonnull align 8 dereferenceable(552) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EvT_SH_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = xor i64 %i.l, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_T0_T1_"(ptr %i.c, ptr %i.e, i64 noundef %i.m)
  %i.n = icmp sgt i64 %i.i, 128
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_T0_"(ptr %i.c, ptr nonnull %i.o)
  %i.p = icmp eq ptr %i.o, %i.e
  br i1 %i.p, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EvT_SH_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.06.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 8 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EvT_SH_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !156

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_T0_"(ptr %i.c, ptr %i.e)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EvT_SH_T0_.exit"

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EvT_SH_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %bb.a, %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE5clearEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EvT_SH_T0_.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.pre15 = load ptr, ptr %i.d, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.pre15, %.pre
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE5clearEv.exit, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.x = load ptr, ptr %.05.i.i.i.i, align 8      ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i.i.i, label %bb.f

_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %i.z) #31
  br label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #32
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i.i.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 112) #32
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i7
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %.pre15
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i7, !llvm.loop !157

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  store ptr %.pre, ptr %i.d, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE5clearEv.exit: ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EvT_SH_T0_.exit", %._crit_edge, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EEEvT_S9_.exit.i.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.012.014 = phi ptr [ %i.ai, %.lr.ph ], [ %i.w, %.lr.ph.preheader ]
  %.sroa.09.013 = phi ptr [ %i.aj, %.lr.ph ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.ae = load ptr, ptr %.sroa.09.013, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  store i64 %i.ah, ptr %i.a, align 8
  %i.ai = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE22_M_emplace_hint_uniqueIJmS9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr %.sroa.012.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.09.013)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 8 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.u
  br i1 %i.ak, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal4wasm12NativeModule7GetCodeEj(ptr noundef nonnull align 8 dereferenceable(552) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sub i32 %1, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal4wasm12_GLOBAL__N_123current_code_refs_scopeE)
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.p, align 8
  %i.s = load ptr, ptr %i.o, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZN2v88internal4wasm16WasmCodeRefScope6AddRefEPNS1_8WasmCodeE.exit
end_hunk_0
