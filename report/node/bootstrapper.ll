Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bootstrapper?download=true
inline.NumInlined: 7007
inline.NumDeleted: 1773
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2v88internal15SourceCodeCache3AddEPNS0_7IsolateENS_4base6VectorIKcEENS0_12DirectHandleINS0_18SharedFunctionInfoEEE:bb.a
  %.not38.i.i.i.i.i24 = icmp eq i64 %i.bl, 0
  br i1 %.not38.i.i.i.i.i24, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bm = and i64 %i.ba, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i25 = load i64, ptr %i.bn, align 262144
  %i.bo = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i25, 25
  %.not39.i.i.i.i.i26 = icmp eq i64 %i.bo, 0
  br i1 %.not39.i.i.i.i.i26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bf, i64 noundef %i.bg, i64 %i.ba) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i.i.i23, label %bb.n, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bf, i64 %i.bg, i64 %i.ba) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.bp = load i64, ptr %4, align 8
  %i.bq = add i64 %i.bp, 39
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i64, ptr %i.br acquire, align 8
  %i.bt = load i32, ptr %0, align 8
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 32
  %i.bw = add i64 %i.bs, 47
  %i.bx = inttoptr i64 %i.bw to ptr
  store atomic volatile i64 %i.bv, ptr %i.bx monotonic, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.by = load i32, ptr %i.e, align 8
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.e, align 8
  %i.ca = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ca, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %1) #24
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.o, %bb.n
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #4

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal12BootstrapperC2EPNS0_7IsolateE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 12), (16, 20), (24, 32)) %0, ptr noundef %1) unnamed_addr #5 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal12Bootstrapper10InitializeEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  br i1 %1, label %bb.b, label %_ZN2v88internal15SourceCodeCache10InitializeEPNS0_7IsolateEb.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.c = load i64, ptr %i.b, align 8
  br label %_ZN2v88internal15SourceCodeCache10InitializeEPNS0_7IsolateEb.exit

_ZN2v88internal15SourceCodeCache10InitializeEPNS0_7IsolateEb.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.02.0.i, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12Bootstrapper24InitializeOncePerProcessEv() local_unnamed_addr #3 align 2 {
bb.a:
  %0 = alloca %"class.std::unique_ptr.456", align 8 ; 3 uses
  %1 = alloca %"class.std::unique_ptr.456", align 8 ; 3 uses
  %2 = alloca %"class.std::unique_ptr.456", align 8 ; 3 uses
  %3 = alloca %"class.std::unique_ptr.456", align 8 ; 3 uses
  %4 = alloca %"class.std::unique_ptr.456", align 8 ; 3 uses
  %5 = alloca %"class.std::unique_ptr.456", align 8 ; 3 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1376), align 32 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN2v88internalL14GCFunctionNameEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0.i = load i8, ptr %i.a, align 1
  %.not1.i = icmp eq i8 %char0.i, 0
  %spec.select.i = select i1 %.not1.i, ptr @.str.583, ptr %i.a
  br label %_ZN2v88internalL14GCFunctionNameEv.exit

_ZN2v88internalL14GCFunctionNameEv.exit:          ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ @.str.583, %bb.a ], [ %spec.select.i, %bb.b ]
  %i.c = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !9 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal11GCExtensionE, i64 16), ptr %i.c, align 8, !noalias !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 49 ; 2 uses
  %i.e = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr nonnull %i.d, i64 50, ptr noundef nonnull @.str.612, ptr noundef %i.b) #24, !noalias !9 ; 0 uses
  tail call void @_ZN2v89ExtensionC2EPKcS2_iPS2_i(ptr noundef nonnull align 8 dereferenceable(99) %i.c, ptr noundef nonnull @.str.568, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef null, i32 noundef -1) #24, !noalias !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal11GCExtensionE, i64 16), ptr %i.c, align 8, !noalias !9
  store ptr %i.c, ptr %0, align 8
  call void @_ZN2v817RegisterExtensionESt10unique_ptrINS_9ExtensionESt14default_deleteIS1_EE(ptr noundef nonnull %0) #24
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN2v88internal11GCExtensionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i: ; preds = %_ZN2v88internalL14GCFunctionNameEv.exit
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.f) #24, !inline_history !12
  br label %_ZNSt10unique_ptrIN2v88internal11GCExtensionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal11GCExtensionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i, %_ZN2v88internalL14GCFunctionNameEv.exit
  %i.j = call noalias noundef nonnull dereferenceable(456) ptr @_Znwm(i64 noundef 456) #26, !noalias !13 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal26ExternalizeStringExtensionE, i64 16), ptr %i.j, align 8, !noalias !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  %i.l = call noundef ptr @_ZN2v88internal26ExternalizeStringExtension11BuildSourceEPcm(ptr noundef nonnull %i.k, i64 noundef 400) #24, !noalias !13
  call void @_ZN2v89ExtensionC2EPKcS2_iPS2_i(ptr noundef nonnull align 8 dereferenceable(449) %i.j, ptr noundef nonnull @.str.569, ptr noundef %i.l, i32 noundef 0, ptr noundef null, i32 noundef -1) #24, !noalias !13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal26ExternalizeStringExtensionE, i64 16), ptr %i.j, align 8, !noalias !13
  store ptr %i.j, ptr %1, align 8
  call void @_ZN2v817RegisterExtensionESt10unique_ptrINS_9ExtensionESt14default_deleteIS1_EE(ptr noundef nonnull %1) #24
  %i.m = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN2v88internal26ExternalizeStringExtensionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i4

_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i4: ; preds = %_ZNSt10unique_ptrIN2v88internal11GCExtensionESt14default_deleteIS2_EED2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.m) #24, !inline_history !12
  br label %_ZNSt10unique_ptrIN2v88internal26ExternalizeStringExtensionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal26ExternalizeStringExtensionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i4, %_ZNSt10unique_ptrIN2v88internal11GCExtensionESt14default_deleteIS2_EED2Ev.exit
  %i.q = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26, !noalias !16 ; 3 uses
  %i.r = load ptr, ptr @_ZN2v88internal19StatisticsExtension7kSourceE, align 8, !noalias !16
  call void @_ZN2v89ExtensionC2EPKcS2_iPS2_i(ptr noundef nonnull align 8 dereferenceable(49) %i.q, ptr noundef nonnull @.str.570, ptr noundef %i.r, i32 noundef 0, ptr noundef null, i32 noundef -1) #24, !noalias !16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal19StatisticsExtensionE, i64 16), ptr %i.q, align 8, !noalias !16
  store ptr %i.q, ptr %2, align 8
  call void @_ZN2v817RegisterExtensionESt10unique_ptrINS_9ExtensionESt14default_deleteIS1_EE(ptr noundef nonnull %2) #24
  %i.s = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i7 = icmp eq ptr %i.s, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN2v88internal19StatisticsExtensionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i8

_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i8: ; preds = %_ZNSt10unique_ptrIN2v88internal26ExternalizeStringExtensionESt14default_deleteIS2_EED2Ev.exit
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.s) #24, !inline_history !12
  br label %_ZNSt10unique_ptrIN2v88internal19StatisticsExtensionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal19StatisticsExtensionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i8, %_ZNSt10unique_ptrIN2v88internal26ExternalizeStringExtensionESt14default_deleteIS2_EED2Ev.exit
  %i.w = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26, !noalias !19 ; 3 uses
  %i.x = load ptr, ptr @_ZN2v88internal23TriggerFailureExtension7kSourceE, align 8, !noalias !19
  call void @_ZN2v89ExtensionC2EPKcS2_iPS2_i(ptr noundef nonnull align 8 dereferenceable(49) %i.w, ptr noundef nonnull @.str.571, ptr noundef %i.x, i32 noundef 0, ptr noundef null, i32 noundef -1) #24, !noalias !19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal23TriggerFailureExtensionE, i64 16), ptr %i.w, align 8, !noalias !19
  store ptr %i.w, ptr %3, align 8
  call void @_ZN2v817RegisterExtensionESt10unique_ptrINS_9ExtensionESt14default_deleteIS1_EE(ptr noundef nonnull %3) #24
  %i.y = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i11 = icmp eq ptr %i.y, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN2v88internal23TriggerFailureExtensionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i12: ; preds = %_ZNSt10unique_ptrIN2v88internal19StatisticsExtensionESt14default_deleteIS2_EED2Ev.exit
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.y) #24, !inline_history !12
  br label %_ZNSt10unique_ptrIN2v88internal23TriggerFailureExtensionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal23TriggerFailureExtensionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i12, %_ZNSt10unique_ptrIN2v88internal19StatisticsExtensionESt14default_deleteIS2_EED2Ev.exit
  %i.ac = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26, !noalias !22 ; 3 uses
  %i.ad = load ptr, ptr @_ZN2v88internal27IgnitionStatisticsExtension7kSourceE, align 8, !noalias !22
  call void @_ZN2v89ExtensionC2EPKcS2_iPS2_i(ptr noundef nonnull align 8 dereferenceable(49) %i.ac, ptr noundef nonnull @.str.572, ptr noundef %i.ad, i32 noundef 0, ptr noundef null, i32 noundef -1) #24, !noalias !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal27IgnitionStatisticsExtensionE, i64 16), ptr %i.ac, align 8, !noalias !22
  store ptr %i.ac, ptr %4, align 8
  call void @_ZN2v817RegisterExtensionESt10unique_ptrINS_9ExtensionESt14default_deleteIS1_EE(ptr noundef nonnull %4) #24
  %i.ae = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i15 = icmp eq ptr %i.ae, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN2v88internal27IgnitionStatisticsExtensionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i16

_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i16: ; preds = %_ZNSt10unique_ptrIN2v88internal23TriggerFailureExtensionESt14default_deleteIS2_EED2Ev.exit
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.ae) #24, !inline_history !12
  br label %_ZNSt10unique_ptrIN2v88internal27IgnitionStatisticsExtensionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal27IgnitionStatisticsExtensionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i16, %_ZNSt10unique_ptrIN2v88internal23TriggerFailureExtensionESt14default_deleteIS2_EED2Ev.exit
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1400), align 8 ; 3 uses
  %.not.i19 = icmp eq ptr %i.ai, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN2v88internal21CpuTraceMarkExtensionESt14default_deleteIS2_EED2Ev.exit, label %_ZN2v88internalL31isValidCpuTraceMarkFunctionNameEv.exit

_ZN2v88internalL31isValidCpuTraceMarkFunctionNameEv.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal27IgnitionStatisticsExtensionESt14default_deleteIS2_EED2Ev.exit
  %char0.i20 = load i8, ptr %i.ai, align 1
  %.not = icmp eq i8 %char0.i20, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN2v88internal21CpuTraceMarkExtensionESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internalL31isValidCpuTraceMarkFunctionNameEv.exit
  %i.aj = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !25 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal21CpuTraceMarkExtensionE, i64 16), ptr %i.aj, align 8, !noalias !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 49 ; 2 uses
  %i.al = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr nonnull %i.ak, i64 50, ptr noundef nonnull @.str.612, ptr noundef nonnull %i.ai) #24, !noalias !25 ; 0 uses
  call void @_ZN2v89ExtensionC2EPKcS2_iPS2_i(ptr noundef nonnull align 8 dereferenceable(99) %i.aj, ptr noundef nonnull @.str.573, ptr noundef nonnull %i.ak, i32 noundef 0, ptr noundef null, i32 noundef -1) #24, !noalias !25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal21CpuTraceMarkExtensionE, i64 16), ptr %i.aj, align 8, !noalias !25
  store ptr %i.aj, ptr %5, align 8
  call void @_ZN2v817RegisterExtensionESt10unique_ptrINS_9ExtensionESt14default_deleteIS1_EE(ptr noundef nonnull %5) #24
  %i.am = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i21 = icmp eq ptr %i.am, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN2v88internal21CpuTraceMarkExtensionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i22

_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i22: ; preds = %bb.c
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.am) #24, !inline_history !12
  br label %_ZNSt10unique_ptrIN2v88internal21CpuTraceMarkExtensionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal21CpuTraceMarkExtensionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal27IgnitionStatisticsExtensionESt14default_deleteIS2_EED2Ev.exit, %bb.c, %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i22, %_ZN2v88internalL31isValidCpuTraceMarkFunctionNameEv.exit
  ret void
}

declare void @_ZN2v817RegisterExtensionESt10unique_ptrINS_9ExtensionESt14default_deleteIS1_EE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal12Bootstrapper8TearDownEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((24, 32)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12Bootstrapper7IterateEPNS0_11RootVisitorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 6, ptr noundef null, i64 %i.b) #24, !inline_history !28
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 6) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal12Bootstrapper17CreateEnvironmentENS0_17MaybeDirectHandleINS0_13JSGlobalProxyEEENS_5LocalINS_14ObjectTemplateEEEPNS_22ExtensionConfigurationEmNS0_33DeserializeEmbedderFieldsCallbackEPNS_14MicrotaskQueueE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr %1, ptr %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly byval(%"struct.v8::internal::DeserializeEmbedderFieldsCallback") align 8 captures(none) %5, ptr noundef %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::Genesis", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.i = load ptr, ptr %0, align 8
  call void @_ZN2v88internal7GenesisC2EPNS0_7IsolateENS0_17MaybeDirectHandleINS0_13JSGlobalProxyEEENS_5LocalINS_14ObjectTemplateEEEmNS0_33DeserializeEmbedderFieldsCallbackEPNS_14MicrotaskQueueE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.i, ptr %1, ptr %2, i64 noundef %4, ptr noundef nonnull byval(%"struct.v8::internal::DeserializeEmbedderFieldsCallback") align 8 %5, ptr noundef %6)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8 ; 5 uses
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %i.k, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 59472
  %i.n = load i8, ptr %i.m, align 8, !range !29, !noundef !30
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8
  call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i) #24
  %i.s = load ptr, ptr %0, align 8
  %i.t = call noundef zeroext i1 @_ZN2v88internal7Genesis17InstallExtensionsEPNS0_7IsolateENS0_12DirectHandleINS0_7ContextEEEPNS_22ExtensionConfigurationE(ptr noundef %i.s, ptr nonnull poison, ptr noundef readonly %3)
  br i1 %i.t, label %_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE.exit, label %.critedge.critedge

_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8
  %i.v = call noundef zeroext i1 @_ZN2v88internal7Genesis21InstallSpecialObjectsEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef %i.u, ptr nonnull poison) ; 0 uses
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i) #24
  %i.w = load i32, ptr %i.p, align 8
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.p, align 8
  br label %_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE.exit.thread

.critedge.critedge:                               ; preds = %bb.c
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i) #24
  %i.y = load i32, ptr %i.p, align 8
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.p, align 8
  br label %bb.h

_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE.exit.thread: ; preds = %_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE.exit, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = add nsw i32 %i.ad, -1
  store i32 %i.ae, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1517), align 1, !range !29, !noundef !30
  %i.ag = trunc nuw i8 %i.af to i1
  %.pre20 = load ptr, ptr %0, align 8             ; 4 uses
  br i1 %i.ag, label %bb.d, label %_ZN2v88internal12Bootstrapper10LogAllMapsEv.exit

bb.d:                                             ; preds = %_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre20, i64 59474
  %i.ai = load i8, ptr %i.ah, align 2, !range !29, !noundef !30
  %i.aj = trunc nuw i8 %i.ai to i1
  %.not.i11 = xor i1 %i.aj, true
  %i.ak = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1833), align 1, !range !29
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond.i = select i1 %.not.i11, i1 %i.al, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal12Bootstrapper10LogAllMapsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.pre20, i64 58736
  %i.an = load ptr, ptr %i.am, align 8
  call void @_ZN2v88internal12V8FileLogger10LogAllMapsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.an) #24
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal12Bootstrapper10LogAllMapsEv.exit

_ZN2v88internal12Bootstrapper10LogAllMapsEv.exit: ; preds = %_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE.exit.thread, %bb.d, %bb.e
  %i.ao = phi ptr [ %.pre20, %_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE.exit.thread ], [ %.pre20, %bb.d ], [ %.pre, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 55464
  call void @_ZN2v88internal4Heap23NotifyBootstrapCompleteEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.ap) #24
  %i.aq = load i64, ptr %.sroa.0.0.copyload.i, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.ar = load i32, ptr %i.f, align 8
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.f, align 8
  %i.at = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.at, %i.e
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.f, !prof !8

bb.f:                                             ; preds = %_ZN2v88internal12Bootstrapper10LogAllMapsEv.exit
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #24
  %.pre21 = load ptr, ptr %i.b, align 8
  %.pre22 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.f, %_ZN2v88internal12Bootstrapper10LogAllMapsEv.exit
  %i.au = phi ptr [ %.pre22, %bb.f ], [ %i.e, %_ZN2v88internal12Bootstrapper10LogAllMapsEv.exit ]
  %i.av = phi ptr [ %.pre21, %bb.f ], [ %i.c, %_ZN2v88internal12Bootstrapper10LogAllMapsEv.exit ] ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.au
  br i1 %i.aw, label %bb.g, label %.thread, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %i.ax = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #24
  br label %.thread

.thread:                                          ; preds = %bb.g, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %.0.i.i.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.av, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ] ; 3 uses
  %i.ay = ptrtoint ptr %.0.i.i.i.i to i64
  %i.az = add i64 %i.ay, 8
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %i.ba, ptr %i.b, align 8
  store i64 %i.aq, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

bb.h:                                             ; preds = %bb.a, %.critedge.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, -1
  store i32 %i.bf, ptr %i.bd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.pre23 = load i32, ptr %i.f, align 8
  %.pre24 = load ptr, ptr %i.d, align 8
  %i.bg = add nsw i32 %.pre23, -1
  %i.bh = icmp eq ptr %.pre24, %i.e
  store ptr %i.c, ptr %i.b, align 8
  store i32 %i.bg, ptr %i.f, align 8
  br i1 %i.bh, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #24
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %.thread, %bb.i, %bb.h
  %.sroa.017.030 = phi ptr [ %.0.i.i.i.i, %.thread ], [ null, %bb.i ], [ null, %bb.h ]
  ret ptr %.sroa.017.030
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal12Bootstrapper17InstallExtensionsENS0_12DirectHandleINS0_13NativeContextEEEPNS_22ExtensionConfigurationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 59472
  %i.c = load i8, ptr %i.b, align 8, !range !29, !noundef !30
end_hunk_0
