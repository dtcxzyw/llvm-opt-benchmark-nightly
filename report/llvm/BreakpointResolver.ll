Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BreakpointResolver?download=true
inline.NumInlined: 1571
inline.NumDeleted: 874
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12lldb_private14StructuredData10Dictionary14AddIntegerItemImEEvN4llvm9StringRefET_:bb.a

_ZSt11make_sharedIN12lldb_private14StructuredData7IntegerImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.e
  store ptr %i.a, ptr %i.f, align 8, !tbaa !45, !noalias !200
  store ptr %i.d, ptr %4, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.t, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = call { ptr, i8 } @_ZN4llvm9StringMapISt10shared_ptrIN12lldb_private14StructuredData6ObjectEENS_15MallocAllocatorEE16insert_or_assignIS5_EESt4pairINS_17StringMapIterBaseIS5_Lb0EEEbENS_9StringRefEOT_(ptr noundef nonnull align 8 dereferenceable(20) %i.u, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !40   ; 8 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData7IntegerImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt11make_sharedIN12lldb_private14StructuredData7IntegerImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.x, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !53
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24, !inline_history !0
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData7IntegerImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.k, label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData7IntegerImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !54

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24
  br label %_ZNSt12__shared_ptrIN12lldb_private14StructuredData7IntegerImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private14StructuredData7IntegerImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g, %_ZSt11make_sharedIN12lldb_private14StructuredData7IntegerImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private18BreakpointResolver13SetBreakpointERKSt10shared_ptrINS_10BreakpointEE(ptr noundef nonnull align 8 dereferenceable(34) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %i.b, ptr %i.a, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !42
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !45   ; 4 uses
  %.not6.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not6.i.i.i, label %_ZNSt8weak_ptrIN12lldb_private10BreakpointEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS2_E4typeESE_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i7.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i7.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.l, align 4, !tbaa !42   ; 2 uses
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZNSt8weak_ptrIN12lldb_private10BreakpointEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS2_E4typeESE_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #24, !inline_history !201
  br label %_ZNSt8weak_ptrIN12lldb_private10BreakpointEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS2_E4typeESE_.exit

_ZNSt8weak_ptrIN12lldb_private10BreakpointEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS2_E4typeESE_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  store ptr %i.e, ptr %i.d, align 8, !tbaa !45
  %i.u = load ptr, ptr %0, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(34) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private18BreakpointResolver26ResolveBreakpointInModulesERNS_12SearchFilterERNS_10ModuleListE(ptr noundef nonnull align 8 dereferenceable(34) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %2) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private18BreakpointResolver17ResolveBreakpointERNS_12SearchFilterE(ptr noundef nonnull align 8 dereferenceable(34) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItE(ptr noundef nonnull align 8 dereferenceable(34) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %3, ptr nofree readonly captures(address_is_null) %4, i64 %5, i32 noundef %6, i32 %7) local_unnamed_addr #4 align 2 {
bb.a:
  %8 = alloca %"class.llvm::SmallVector", align 8 ; 13 uses
  %9 = alloca %"class.llvm::SmallDenseSet", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !92
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.h, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 16, ptr %i.i, align 4, !tbaa !93
  call void @_ZN4llvm15SmallVectorImplIN12lldb_private13SymbolContextEE6appendIPKS2_vEEvT_S7_(ptr noundef nonnull align 8 dereferenceable(2448) %8, ptr noundef %i.b, ptr noundef %i.f)
  %i.j = call noundef zeroext i1 @_ZNK12lldb_private17SymbolContextList7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(192) %2) #24
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN12lldb_private8Language27GetGlobalLanguagePropertiesEv() #24
  %i.l = call noundef zeroext i1 @_ZNK12lldb_private18LanguageProperties33GetEnableFilterForLineBreakpointsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #24
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.n = call noundef i32 @_ZNK12lldb_private13SymbolContext11GetLanguageEv(ptr noundef nonnull align 8 dereferenceable(152) %i.m) #24
  %i.o = call noundef ptr @_ZN12lldb_private8Language10FindPluginEN4lldb12LanguageTypeE(i32 noundef %i.n) #24 ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %8) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %i.s = load i32, ptr %i.h, align 8, !tbaa !92   ; 2 uses
  %.not44306 = icmp eq i32 %i.s, 0
  %.pre348.a = load ptr, ptr %8, align 8, !tbaa !91 ; 2 uses
  br i1 %.not44306, label %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private13SymbolContextELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.lr.ph.i.i.lr.ph

.lr.ph.lr.ph.i.i.lr.ph:                           ; preds = %bb.e
  %i.t = and i32 %7, 65536
  %.not265 = icmp eq i32 %i.t, 0
  %10 = and i32 %7, 65535                         ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  br label %.lr.ph.lr.ph.i.i

.lr.ph.lr.ph.i.i:                                 ; preds = %.lr.ph.lr.ph.i.i.lr.ph, %_ZN4llvm6detail12DenseSetImplIPN12lldb_private5BlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  %i.y = phi ptr [ %.pre348.a, %.lr.ph.lr.ph.i.i.lr.ph ], [ %i.afw, %_ZN4llvm6detail12DenseSetImplIPN12lldb_private5BlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit ] ; 4 uses
  %.in = phi i32 [ %i.s, %.lr.ph.lr.ph.i.i.lr.ph ], [ %i.afv, %_ZN4llvm6detail12DenseSetImplIPN12lldb_private5BlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit ]
  %i.z = zext i32 %.in to i64
  %.idx = mul nuw nsw i64 %i.z, 152
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.lr.ph.i.i
  %.0262 = phi i32 [ -1, %.lr.ph.lr.ph.i.i ], [ %.1263, %bb.p ] ; 2 uses
  %.040.i.i = phi ptr [ %i.aa, %.lr.ph.lr.ph.i.i ], [ %.135.i.i, %bb.p ] ; 3 uses
  %.01539.i.i = phi ptr [ %i.y, %.lr.ph.lr.ph.i.i ], [ %i.bv, %bb.p ]
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.11630.i.i = phi ptr [ %.01539.i.i, %.lr.ph.i.i ], [ %i.ay, %bb.k ] ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.11630.i.i, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeceqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #24
  br i1 %i.ai, label %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.11630.i.i, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !96 ; 2 uses
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = call noundef zeroext i1 @_ZNK12lldb_private8FileSpecneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an) #24
  br i1 %i.ao, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.aq = call noundef zeroext i1 @_ZNK12lldb_private8ChecksumcvbEv(ptr noundef nonnull align 1 dereferenceable(16) %i.ap) #24
  br i1 %i.aq, label %bb.i, label %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i"

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.as = call noundef zeroext i1 @_ZNK12lldb_private8ChecksumcvbEv(ptr noundef nonnull align 1 dereferenceable(16) %i.ar) #24
  br i1 %i.as, label %bb.j, label %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i"

bb.j:                                             ; preds = %bb.i
  %i.at = call noundef zeroext i1 @_ZNK12lldb_private8ChecksumneERKS0_(ptr noundef nonnull align 1 dereferenceable(16) %i.ap, ptr noundef nonnull align 1 dereferenceable(16) %i.ar) #24
  br i1 %i.at, label %bb.k, label %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i"

"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i": ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.11630.i.i, i64 128
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42
  %i.aw = call i32 @llvm.umin.i32(i32 %i.av, i32 %.0262) ; 2 uses
  %.133.i.i = getelementptr inbounds i8, ptr %.040.i.i, i64 -152 ; 2 uses
  %i.ax = icmp eq ptr %.11630.i.i, %.133.i.i
  br i1 %i.ax, label %"_ZSt9partitionIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_0ET_SD_SD_T0_.exit", label %.lr.ph36.i.i

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.11630.i.i, i64 152 ; 3 uses
  %i.az = icmp eq ptr %i.ay, %.040.i.i
  br i1 %i.az, label %"_ZSt9partitionIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_0ET_SD_SD_T0_.exit", label %bb.f, !llvm.loop !204

.lr.ph36.i.i:                                     ; preds = %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i", %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i"
  %.1263 = phi i32 [ %i.bt, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i" ], [ %i.aw, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i" ] ; 3 uses
  %.135.i.i = phi ptr [ %.1.i.i, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i" ], [ %.133.i.i, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i" ] ; 5 uses
  %.0.pn34.i.i = phi ptr [ %.135.i.i, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i" ], [ %.040.i.i, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i" ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.0.pn34.i.i, i64 -56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeceqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #24
  br i1 %i.bf, label %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph36.i.i
  %i.bg = getelementptr inbounds i8, ptr %.0.pn34.i.i, i64 -40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96 ; 2 uses
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = call noundef zeroext i1 @_ZNK12lldb_private8FileSpecneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk) #24
  br i1 %i.bl, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bn = call noundef zeroext i1 @_ZNK12lldb_private8ChecksumcvbEv(ptr noundef nonnull align 1 dereferenceable(16) %i.bm) #24
  br i1 %i.bn, label %bb.n, label %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i"

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bp = call noundef zeroext i1 @_ZNK12lldb_private8ChecksumcvbEv(ptr noundef nonnull align 1 dereferenceable(16) %i.bo) #24
  br i1 %i.bp, label %bb.o, label %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i"

bb.o:                                             ; preds = %bb.n
  %i.bq = call noundef zeroext i1 @_ZNK12lldb_private8ChecksumneERKS0_(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull align 1 dereferenceable(16) %i.bo) #24
  br i1 %i.bq, label %bb.p, label %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i"

"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i": ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph36.i.i
  %i.br = getelementptr inbounds i8, ptr %.0.pn34.i.i, i64 -24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !42
  %i.bt = call i32 @llvm.umin.i32(i32 %i.bs, i32 %.1263) ; 2 uses
  %.1.i.i = getelementptr inbounds i8, ptr %.135.i.i, i64 -152 ; 2 uses
  %i.bu = icmp eq ptr %.11630.i.i, %.1.i.i
  br i1 %i.bu, label %"_ZSt9partitionIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_0ET_SD_SD_T0_.exit", label %.lr.ph36.i.i, !llvm.loop !205

bb.p:                                             ; preds = %bb.o, %bb.l
  call void @_ZSt4swapIN12lldb_private13SymbolContextEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(152) %.11630.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.135.i.i)
  %i.bv = getelementptr inbounds nuw i8, ptr %.11630.i.i, i64 152 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %.135.i.i
  br i1 %i.bw, label %"_ZSt9partitionIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_0ET_SD_SD_T0_.exit", label %.lr.ph.i.i, !llvm.loop !206

"_ZSt9partitionIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_0ET_SD_SD_T0_.exit": ; preds = %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i", %bb.p, %bb.k, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i"
  %.2264 = phi i32 [ %.0262, %bb.k ], [ %i.bt, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i" ], [ %.1263, %bb.p ], [ %i.aw, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i" ] ; 8 uses
  %.11628.i.i = phi ptr [ %i.ay, %bb.k ], [ %.11630.i.i, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit23.i.i" ], [ %i.bv, %bb.p ], [ %.11630.i.i, %"_ZZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS_12SearchFilterERNS_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEENK3$_0clERKNS_13SymbolContextE.exit.i.i" ] ; 38 uses
  %i.bx = load ptr, ptr %8, align 8, !tbaa !91
  %i.by = load i32, ptr %i.h, align 8, !tbaa !92
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [152 x i8], ptr %i.bx, i64 %i.bz ; 11 uses
  %i.cb = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cc = ptrtoint ptr %.11628.i.i to i64         ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = sdiv exact i64 %i.cd, 152
  %i.cf = ashr i64 %i.ce, 2                       ; 5 uses
  %i.cg = icmp sgt i64 %i.cf, 0                   ; 2 uses
  br i1 %.not265, label %bb.aq, label %bb.q

bb.q:                                             ; preds = %"_ZSt9partitionIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_0ET_SD_SD_T0_.exit"
  br i1 %i.cg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.ch = mul nuw nsw i64 %i.cf, 608
  %scevgep.i.i.i.i = getelementptr i8, ptr %.11628.i.i, i64 %i.ch ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit64.thread93.i.i.i.i", %.lr.ph.i.i.i.i
  %.0139.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.cz, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit64.thread93.i.i.i.i" ] ; 2 uses
  %.029138.i.i.i.i = phi ptr [ %.11628.i.i, %.lr.ph.i.i.i.i ], [ %i.cy, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit64.thread93.i.i.i.i" ] ; 17 uses
  %i.ci = getelementptr i8, ptr %.029138.i.i.i.i, i64 128
  %.029.val45.i.i.i.i = load i32, ptr %i.ci, align 8, !tbaa !119 ; 2 uses
  %i.cj = icmp ugt i32 %.029.val45.i.i.i.i, %6
  br i1 %i.cj, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr i8, ptr %.029138.i.i.i.i, i64 132
  %.029.val46.i.i.i.i = load i16, ptr %i.ck, align 4, !tbaa !120
  %.sroa.3.0.extract.trunc.i.i.i.i.i.i.i = zext i16 %.029.val46.i.i.i.i to i32
  %i.cl = icmp uge i32 %.029.val45.i.i.i.i, %6
  %11 = icmp samesign ult i32 %10, %.sroa.3.0.extract.trunc.i.i.i.i.i.i.i
  %or.cond.i.i.i.i = select i1 %i.cl, i1 %11, i1 false
  br i1 %or.cond.i.i.i.i, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread84.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread84.i.i.i.i": ; preds = %bb.s
  %i.cm = getelementptr i8, ptr %.029138.i.i.i.i, i64 280
  %.val42.i.i.i.i = load i32, ptr %i.cm, align 8, !tbaa !119 ; 2 uses
  %i.cn = icmp ugt i32 %.val42.i.i.i.i, %6
  br i1 %i.cn, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit118.i.i.i.i.a", label %bb.t

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread84.i.i.i.i"
  %i.co = getelementptr i8, ptr %.029138.i.i.i.i, i64 284
  %.val43.i.i.i.i = load i16, ptr %i.co, align 4, !tbaa !120
  %.sroa.3.0.extract.trunc.i.i.i50.i.i.i.i = zext i16 %.val43.i.i.i.i to i32
  %i.cp = icmp uge i32 %.val42.i.i.i.i, %6
  %12 = icmp samesign ult i32 %10, %.sroa.3.0.extract.trunc.i.i.i50.i.i.i.i
  %or.cond106.i.i.i.i = select i1 %i.cp, i1 %12, i1 false
  br i1 %or.cond106.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit126.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit52.thread87.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit52.thread87.i.i.i.i": ; preds = %bb.t
  %i.cq = getelementptr i8, ptr %.029138.i.i.i.i, i64 432
  %.val39.i.i.i.i = load i32, ptr %i.cq, align 8, !tbaa !119 ; 2 uses
  %i.cr = icmp ugt i32 %.val39.i.i.i.i, %6
  br i1 %i.cr, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit120.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit52.thread87.i.i.i.i"
  %i.cs = getelementptr i8, ptr %.029138.i.i.i.i, i64 436
  %.val40.i.i.i.i = load i16, ptr %i.cs, align 4, !tbaa !120
  %.sroa.3.0.extract.trunc.i.i.i56.i.i.i.i = zext i16 %.val40.i.i.i.i to i32
  %i.ct = icmp uge i32 %.val39.i.i.i.i, %6
  %13 = icmp samesign ult i32 %10, %.sroa.3.0.extract.trunc.i.i.i56.i.i.i.i
  %or.cond108.i.i.i.i = select i1 %i.ct, i1 %13, i1 false
  br i1 %or.cond108.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit128.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit58.thread90.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit58.thread90.i.i.i.i": ; preds = %bb.u
  %i.cu = getelementptr i8, ptr %.029138.i.i.i.i, i64 584
  %.val36.i.i.i.i = load i32, ptr %i.cu, align 8, !tbaa !119 ; 2 uses
  %i.cv = icmp ugt i32 %.val36.i.i.i.i, %6
  br i1 %i.cv, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit122.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit58.thread90.i.i.i.i"
  %i.cw = getelementptr i8, ptr %.029138.i.i.i.i, i64 588
  %.val37.i.i.i.i = load i16, ptr %i.cw, align 4, !tbaa !120
  %.sroa.3.0.extract.trunc.i.i.i62.i.i.i.i = zext i16 %.val37.i.i.i.i to i32
  %i.cx = icmp uge i32 %.val36.i.i.i.i, %6
  %14 = icmp samesign ult i32 %10, %.sroa.3.0.extract.trunc.i.i.i62.i.i.i.i
  %or.cond110.i.i.i.i = select i1 %i.cx, i1 %14, i1 false
  br i1 %or.cond110.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit130.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit64.thread93.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit64.thread93.i.i.i.i": ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %.029138.i.i.i.i, i64 608
  %i.cz = add nsw i64 %.0139.i.i.i.i, -1
  %i.da = icmp sgt i64 %.0139.i.i.i.i, 1
  br i1 %i.da, label %bb.r, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !207

._crit_edge.loopexit.i.i.i.i:                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit64.thread93.i.i.i.i"
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre150.i.i.i.i = sub i64 %i.cb, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.q
  %.pre-phi151.i.i.i.i = phi i64 [ %.pre150.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.cd, %bb.q ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.11628.i.i, %bb.q ] ; 7 uses
  %i.db = sdiv exact i64 %.pre-phi151.i.i.i.i, 152
  switch i64 %i.db, label %"_ZSt9remove_ifIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1ET_SD_SD_T0_.exit" [
    i64 3, label %bb.w
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge148.i.i.i.i
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dc = getelementptr i8, ptr %.029.lcssa.i.i.i.i, i64 128
  %.029.val.i.i.i.i = load i32, ptr %i.dc, align 8, !tbaa !119 ; 2 uses
  %i.dd = icmp ugt i32 %.029.val.i.i.i.i, %6
  br i1 %i.dd, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr i8, ptr %.029.lcssa.i.i.i.i, i64 132
  %.029.val34.i.i.i.i = load i16, ptr %i.de, align 4, !tbaa !120
  %.sroa.3.0.extract.trunc.i.i.i68.i.i.i.i = zext i16 %.029.val34.i.i.i.i to i32
  %i.df = icmp uge i32 %.029.val.i.i.i.i, %6
  %15 = icmp samesign ult i32 %10, %.sroa.3.0.extract.trunc.i.i.i68.i.i.i.i
  %or.cond112.i.i.i.i = select i1 %i.df, i1 %15, i1 false
  br i1 %or.cond112.i.i.i.i, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit70.thread96.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit70.thread96.i.i.i.i": ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 152
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit70.thread96.i.i.i.i"
  %.1.i.i.i.i = phi ptr [ %i.dg, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit70.thread96.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 5 uses
  %i.dh = getelementptr i8, ptr %.1.i.i.i.i, i64 128
  %.1.val.i.i.i.i = load i32, ptr %i.dh, align 8, !tbaa !119 ; 2 uses
  %i.di = icmp ugt i32 %.1.val.i.i.i.i, %6
  br i1 %i.di, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i", label %bb.y

bb.y:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.dj = getelementptr i8, ptr %.1.i.i.i.i, i64 132
  %.1.val32.i.i.i.i = load i16, ptr %i.dj, align 4, !tbaa !120
  %.sroa.3.0.extract.trunc.i.i.i74.i.i.i.i = zext i16 %.1.val32.i.i.i.i to i32
  %i.dk = icmp uge i32 %.1.val.i.i.i.i, %6
  %16 = icmp samesign ult i32 %10, %.sroa.3.0.extract.trunc.i.i.i74.i.i.i.i
  %or.cond114.i.i.i.i = select i1 %i.dk, i1 %16, i1 false
  br i1 %or.cond114.i.i.i.i, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit76.thread99.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit76.thread99.i.i.i.i": ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 152
  br label %._crit_edge._crit_edge148.i.i.i.i

._crit_edge._crit_edge148.i.i.i.i:                ; preds = %._crit_edge.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit76.thread99.i.i.i.i"
  %.2.i.i.i.i = phi ptr [ %i.dl, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit76.thread99.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %i.dm = getelementptr i8, ptr %.2.i.i.i.i, i64 128
  %.2.val.i.i.i.i = load i32, ptr %i.dm, align 8, !tbaa !119 ; 2 uses
  %i.dn = icmp ugt i32 %.2.val.i.i.i.i, %6
  br i1 %i.dn, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i", label %bb.z

bb.z:                                             ; preds = %._crit_edge._crit_edge148.i.i.i.i
  %i.do = getelementptr i8, ptr %.2.i.i.i.i, i64 132
  %.2.val30.i.i.i.i = load i16, ptr %i.do, align 4, !tbaa !120
  %.sroa.3.0.extract.trunc.i.i.i80.i.i.i.i = zext i16 %.2.val30.i.i.i.i to i32
  %i.dp = icmp uge i32 %.2.val.i.i.i.i, %6
  %17 = icmp samesign ult i32 %10, %.sroa.3.0.extract.trunc.i.i.i80.i.i.i.i
  %or.cond116.i.i.i.i = select i1 %i.dp, i1 %17, i1 false
  br i1 %or.cond116.i.i.i.i, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i", label %"_ZSt9remove_ifIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1ET_SD_SD_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit118.i.i.i.i.a": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread84.i.i.i.i"
  %i.dq = getelementptr inbounds nuw i8, ptr %.029138.i.i.i.i, i64 152
  br label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit120.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit52.thread87.i.i.i.i"
  %i.dr = getelementptr inbounds nuw i8, ptr %.029138.i.i.i.i, i64 304
  br label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit122.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit58.thread90.i.i.i.i"
  %i.ds = getelementptr inbounds nuw i8, ptr %.029138.i.i.i.i, i64 456
  br label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit126.i.i.i.i": ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %.029138.i.i.i.i, i64 152
  br label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit128.i.i.i.i": ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %.029138.i.i.i.i, i64 304
  br label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit130.i.i.i.i": ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %.029138.i.i.i.i, i64 456
  br label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i"

"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i": ; preds = %bb.s, %bb.r, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit130.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit128.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit126.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit122.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit120.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit118.i.i.i.i.a", %bb.z, %._crit_edge._crit_edge148.i.i.i.i, %bb.y, %._crit_edge._crit_edge.i.i.i.i, %bb.x, %bb.w
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.y ], [ %.2.i.i.i.i, %bb.z ], [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.w ], [ %i.dt, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit126.i.i.i.i" ], [ %.2.i.i.i.i, %._crit_edge._crit_edge148.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.x ], [ %i.dr, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit120.i.i.i.i" ], [ %i.dq, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit118.i.i.i.i.a" ], [ %i.dv, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit130.i.i.i.i" ], [ %i.ds, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit122.i.i.i.i" ], [ %i.du, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.loopexit.split.loop.exit128.i.i.i.i" ], [ %.029138.i.i.i.i, %bb.r ], [ %.029138.i.i.i.i, %bb.s ] ; 5 uses
  %i.dw = icmp eq ptr %.028.i.i.i.i, %i.ca
  %.01734.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 152 ; 2 uses
  %.not35.i.i = icmp eq ptr %.01734.i.i, %i.ca
  %or.cond39.i.i = select i1 %i.dw, i1 true, i1 %.not35.i.i
  br i1 %or.cond39.i.i, label %"_ZSt9remove_ifIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1ET_SD_SD_T0_.exit", label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i"
  %.01738.i.i = phi ptr [ %.017.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i" ], [ %.01734.i.i, %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i" ] ; 3 uses
  %.037.i.i = phi ptr [ %.1.i.i51, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i" ], [ %.028.i.i.i.i, %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i" ] ; 4 uses
  %.pn36.i.i = phi ptr [ %.01738.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i" ], [ %.028.i.i.i.i, %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i" ] ; 2 uses
  %i.dx = getelementptr i8, ptr %.pn36.i.i, i64 280
  %.017.val.i.i = load i32, ptr %i.dx, align 8, !tbaa !119 ; 2 uses
  %i.dy = icmp ugt i32 %.017.val.i.i, %6
  br i1 %i.dy, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i", label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i50
  %i.dz = getelementptr i8, ptr %.pn36.i.i, i64 284
  %.017.val21.i.i = load i16, ptr %i.dz, align 4, !tbaa !120
  %.sroa.3.0.extract.trunc.i.i.i.i.i = zext i16 %.017.val21.i.i to i32
  %i.ea = icmp uge i32 %.017.val.i.i, %6
  %18 = icmp samesign ult i32 %10, %.sroa.3.0.extract.trunc.i.i.i.i.i
  %or.cond.i.i = select i1 %i.ea, i1 %18, i1 false
  br i1 %or.cond.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread24.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread24.i.i": ; preds = %bb.aa
  %i.eb = call noundef nonnull align 8 dereferenceable(152) ptr @_ZN12lldb_private13SymbolContextaSERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %.037.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.01738.i.i) ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 152
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread24.i.i", %bb.aa, %.lr.ph.i.i50
  %.1.i.i51 = phi ptr [ %.037.i.i, %bb.aa ], [ %i.ec, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread24.i.i" ], [ %.037.i.i, %.lr.ph.i.i50 ] ; 2 uses
  %.017.i.i = getelementptr inbounds nuw i8, ptr %.01738.i.i, i64 152 ; 2 uses
  %.not.i.i = icmp eq ptr %.017.i.i, %i.ca
  br i1 %.not.i.i, label %"_ZSt9remove_ifIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1ET_SD_SD_T0_.exit", label %.lr.ph.i.i50, !llvm.loop !208

"_ZSt9remove_ifIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1ET_SD_SD_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i", %._crit_edge.i.i.i.i, %bb.z, %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i"
  %.016.i.i = phi ptr [ %.028.i.i.i.i, %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EEET_SH_SH_T0_.exit.i.i" ], [ %i.ca, %bb.z ], [ %i.ca, %._crit_edge.i.i.i.i ], [ %.1.i.i51, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12lldb_private18BreakpointResolver18SetSCMatchesByLineERNS2_12SearchFilterERNS2_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1EclIPNS2_13SymbolContextEEEbT_.exit.thread.i.i" ] ; 12 uses
  %.not.i.i.i = icmp eq ptr %.11628.i.i, %.016.i.i
  br i1 %.not.i.i.i, label %"_ZN4llvm4sortIPN12lldb_private13SymbolContextEZNS1_18BreakpointResolver18SetSCMatchesByLineERNS1_12SearchFilterERNS1_17SymbolContextListEbNS_9StringRefEjSt8optionalItEE3$_2EEvT_SD_T0_.exit", label %bb.ab

bb.ab:                                            ; preds = %"_ZSt9remove_ifIPN12lldb_private13SymbolContextEZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_1ET_SD_SD_T0_.exit"
  %i.ed = ptrtoint ptr %.016.i.i to i64           ; 2 uses
  %i.ee = sub i64 %i.ed, %i.cc                    ; 3 uses
  %i.ef = sdiv exact i64 %i.ee, 152               ; 2 uses
  %i.eg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = shl nuw nsw i64 %i.eg, 1
  %i.ei = xor i64 %i.eh, 126
  call fastcc void @"_ZSt16__introsort_loopIPN12lldb_private13SymbolContextElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_2EEEvT_SH_T0_T1_"(ptr noundef %.11628.i.i, ptr noundef %.016.i.i, i64 noundef %i.ei)
  %i.ej = icmp sgt i64 %i.ee, 2432
  br i1 %i.ej, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %.11628.i.i, i64 2432 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_2EEEvT_SH_T0_"(ptr noundef %.11628.i.i, ptr noundef nonnull %i.ek)
  %.not6.i.i.i.i.i = icmp eq ptr %i.ek, %.016.i.i
  br i1 %.not6.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i ], [ %i.ek, %bb.ac ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_2EEEvT_T0_"(ptr noundef nonnull %.07.i.i.i.i.i)
  %i.el = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.el, %.016.i.i
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !209

bb.ad:                                            ; preds = %bb.ab
  call fastcc void @"_ZSt16__insertion_sortIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_2EEEvT_SH_T0_"(ptr noundef %.11628.i.i, ptr noundef %.016.i.i)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.ac, %bb.ad
  %i.em = ashr i64 %i.ef, 2                       ; 3 uses
  %i.en = icmp sgt i64 %i.em, 0
  br i1 %i.en, label %.lr.ph.i.i.i.i73, label %._crit_edge.i.i.i.i52

.lr.ph.i.i.i.i73:                                 ; preds = %.loopexit
  %i.eo = getelementptr i8, ptr %.11628.i.i, i64 128
  %.val44.val.val.i.i.i.i = load i32, ptr %i.eo, align 8, !tbaa !119 ; 8 uses
  %i.ep = getelementptr i8, ptr %.11628.i.i, i64 132
  %.val44.val.val53.i.i.i.i = load i16, ptr %i.ep, align 4, !tbaa !120 ; 4 uses
  %i.eq = mul nuw nsw i64 %i.em, 608
  %scevgep.i.i.i.i74 = getelementptr i8, ptr %.11628.i.i, i64 %i.eq ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %.lr.ph.i.i.i.i73
  %.077.i.i.i.i = phi i64 [ %i.em, %.lr.ph.i.i.i.i73 ], [ %i.fm, %bb.ai ] ; 2 uses
  %.02976.i.i.i.i = phi ptr [ %.11628.i.i, %.lr.ph.i.i.i.i73 ], [ %i.fl, %bb.ai ] ; 13 uses
  %i.er = getelementptr i8, ptr %.02976.i.i.i.i, i64 128
  %.029.val45.i.i.i.i75 = load i32, ptr %i.er, align 8, !tbaa !119 ; 2 uses
  %i.es = getelementptr i8, ptr %.02976.i.i.i.i, i64 132
  %.029.val46.i.i.i.i76 = load i16, ptr %i.es, align 4, !tbaa !120
  %i.et = icmp ult i32 %.val44.val.val.i.i.i.i, %.029.val45.i.i.i.i75
  %i.eu = icmp ule i32 %.val44.val.val.i.i.i.i, %.029.val45.i.i.i.i75
  %i.ev = icmp ult i16 %.val44.val.val53.i.i.i.i, %.029.val46.i.i.i.i76
  %spec.select.i.i.i.i.i.i = select i1 %i.eu, i1 %i.ev, i1 false
  %.0.i.i.i.i.i.i.i = select i1 %i.et, i1 true, i1 %spec.select.i.i.i.i.i.i
  br i1 %.0.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_3EEET_SH_SH_T0_.exit.i.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = getelementptr i8, ptr %.02976.i.i.i.i, i64 280
  %.val42.i.i.i.i77 = load i32, ptr %i.ew, align 8, !tbaa !119 ; 2 uses
  %i.ex = getelementptr i8, ptr %.02976.i.i.i.i, i64 284
  %.val43.i.i.i.i78 = load i16, ptr %i.ex, align 4, !tbaa !120
  %i.ey = icmp ult i32 %.val44.val.val.i.i.i.i, %.val42.i.i.i.i77
  %i.ez = icmp ule i32 %.val44.val.val.i.i.i.i, %.val42.i.i.i.i77
  %i.fa = icmp ult i16 %.val44.val.val53.i.i.i.i, %.val43.i.i.i.i78
  %spec.select.i.i54.i.i.i.i = select i1 %i.ez, i1 %i.fa, i1 false
  %.0.i.i.i55.i.i.i.i = select i1 %i.ey, i1 true, i1 %spec.select.i.i54.i.i.i.i
  br i1 %.0.i.i.i55.i.i.i.i, label %.loopexit.split.loop.exit67.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = getelementptr i8, ptr %.02976.i.i.i.i, i64 432
  %.val39.i.i.i.i79 = load i32, ptr %i.fb, align 8, !tbaa !119 ; 2 uses
  %i.fc = getelementptr i8, ptr %.02976.i.i.i.i, i64 436
  %.val40.i.i.i.i80 = load i16, ptr %i.fc, align 4, !tbaa !120
  %i.fd = icmp ult i32 %.val44.val.val.i.i.i.i, %.val39.i.i.i.i79
  %i.fe = icmp ule i32 %.val44.val.val.i.i.i.i, %.val39.i.i.i.i79
  %i.ff = icmp ult i16 %.val44.val.val53.i.i.i.i, %.val40.i.i.i.i80
  %spec.select.i.i56.i.i.i.i = select i1 %i.fe, i1 %i.ff, i1 false
  %.0.i.i.i57.i.i.i.i = select i1 %i.fd, i1 true, i1 %spec.select.i.i56.i.i.i.i
  br i1 %.0.i.i.i57.i.i.i.i, label %.loopexit.split.loop.exit69.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fg = getelementptr i8, ptr %.02976.i.i.i.i, i64 584
  %.val36.i.i.i.i81 = load i32, ptr %i.fg, align 8, !tbaa !119 ; 2 uses
  %i.fh = getelementptr i8, ptr %.02976.i.i.i.i, i64 588
  %.val37.i.i.i.i82 = load i16, ptr %i.fh, align 4, !tbaa !120
  %i.fi = icmp ult i32 %.val44.val.val.i.i.i.i, %.val36.i.i.i.i81
  %i.fj = icmp ule i32 %.val44.val.val.i.i.i.i, %.val36.i.i.i.i81
  %i.fk = icmp ult i16 %.val44.val.val53.i.i.i.i, %.val37.i.i.i.i82
  %spec.select.i.i58.i.i.i.i = select i1 %i.fj, i1 %i.fk, i1 false
  %.0.i.i.i59.i.i.i.i = select i1 %i.fi, i1 true, i1 %spec.select.i.i58.i.i.i.i
  br i1 %.0.i.i.i59.i.i.i.i, label %.loopexit.split.loop.exit71.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %.02976.i.i.i.i, i64 608
  %i.fm = add nsw i64 %.077.i.i.i.i, -1
  %i.fn = icmp sgt i64 %.077.i.i.i.i, 1
  br i1 %i.fn, label %bb.ae, label %._crit_edge.loopexit.i.i.i.i83, !llvm.loop !210

._crit_edge.loopexit.i.i.i.i83:                   ; preds = %bb.ai
  %.pre.i.i.i.i84 = ptrtoint ptr %scevgep.i.i.i.i74 to i64
  %.pre92.i.i.i.i = sub i64 %i.ed, %.pre.i.i.i.i84
  br label %._crit_edge.i.i.i.i52

._crit_edge.i.i.i.i52:                            ; preds = %._crit_edge.loopexit.i.i.i.i83, %.loopexit
  %.pre-phi93.i.i.i.i = phi i64 [ %.pre92.i.i.i.i, %._crit_edge.loopexit.i.i.i.i83 ], [ %i.ee, %.loopexit ]
  %.029.lcssa.i.i.i.i53 = phi ptr [ %scevgep.i.i.i.i74, %._crit_edge.loopexit.i.i.i.i83 ], [ %.11628.i.i, %.loopexit ] ; 6 uses
  %i.fo = sdiv exact i64 %.pre-phi93.i.i.i.i, 152
  switch i64 %i.fo, label %"_ZN4llvm4sortIPN12lldb_private13SymbolContextEZNS1_18BreakpointResolver18SetSCMatchesByLineERNS1_12SearchFilterERNS1_17SymbolContextListEbNS_9StringRefEjSt8optionalItEE3$_2EEvT_SD_T0_.exit" [
    i64 3, label %bb.aj
    i64 2, label %._crit_edge._crit_edge.i.i.i.i67
    i64 1, label %._crit_edge._crit_edge86.i.i.i.i
  ]

._crit_edge._crit_edge86.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i52
  %.phi.trans.insert88.i.i.i.i = getelementptr i8, ptr %.11628.i.i, i64 128
  %.val.val.val.pre.i.i.i.i = load i32, ptr %.phi.trans.insert88.i.i.i.i, align 8, !tbaa !119
  %.phi.trans.insert90.i.i.i.i = getelementptr i8, ptr %.11628.i.i, i64 132
  %.val.val.val47.pre.i.i.i.i = load i16, ptr %.phi.trans.insert90.i.i.i.i, align 4, !tbaa !120
  br label %bb.an

._crit_edge._crit_edge.i.i.i.i67:                 ; preds = %._crit_edge.i.i.i.i52
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %.11628.i.i, i64 128
  %.val31.val.val.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !119
  %.phi.trans.insert84.i.i.i.i = getelementptr i8, ptr %.11628.i.i, i64 132
  %.val31.val.val48.pre.i.i.i.i = load i16, ptr %.phi.trans.insert84.i.i.i.i, align 4, !tbaa !120
  br label %bb.al

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i52
  %i.fp = getelementptr i8, ptr %.029.lcssa.i.i.i.i53, i64 128
  %.029.val.i.i.i.i71 = load i32, ptr %i.fp, align 8, !tbaa !119 ; 2 uses
  %i.fq = getelementptr i8, ptr %.029.lcssa.i.i.i.i53, i64 132
  %.029.val34.i.i.i.i72 = load i16, ptr %i.fq, align 4, !tbaa !120
  %i.fr = getelementptr i8, ptr %.11628.i.i, i64 128
  %.val33.val.val.i.i.i.i = load i32, ptr %i.fr, align 8, !tbaa !119 ; 3 uses
  %i.fs = getelementptr i8, ptr %.11628.i.i, i64 132
  %.val33.val.val49.i.i.i.i = load i16, ptr %i.fs, align 4, !tbaa !120 ; 2 uses
  %i.ft = icmp ult i32 %.val33.val.val.i.i.i.i, %.029.val.i.i.i.i71
  %i.fu = icmp ule i32 %.val33.val.val.i.i.i.i, %.029.val.i.i.i.i71
  %i.fv = icmp ult i16 %.val33.val.val49.i.i.i.i, %.029.val34.i.i.i.i72
  %spec.select.i.i60.i.i.i.i = select i1 %i.fu, i1 %i.fv, i1 false
  %.0.i.i.i61.i.i.i.i = select i1 %i.ft, i1 true, i1 %spec.select.i.i60.i.i.i.i
  br i1 %.0.i.i.i61.i.i.i.i, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_3EEET_SH_SH_T0_.exit.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i53, i64 152
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge._crit_edge.i.i.i.i67
  %.val31.val.val48.i.i.i.i = phi i16 [ %.val33.val.val49.i.i.i.i, %bb.ak ], [ %.val31.val.val48.pre.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i67 ] ; 2 uses
  %.val31.val.val.i.i.i.i = phi i32 [ %.val33.val.val.i.i.i.i, %bb.ak ], [ %.val31.val.val.pre.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i67 ] ; 3 uses
  %.1.i.i.i.i68 = phi ptr [ %i.fw, %bb.ak ], [ %.029.lcssa.i.i.i.i53, %._crit_edge._crit_edge.i.i.i.i67 ] ; 4 uses
  %i.fx = getelementptr i8, ptr %.1.i.i.i.i68, i64 128
  %.1.val.i.i.i.i69 = load i32, ptr %i.fx, align 8, !tbaa !119 ; 2 uses
  %i.fy = getelementptr i8, ptr %.1.i.i.i.i68, i64 132
  %.1.val32.i.i.i.i70 = load i16, ptr %i.fy, align 4, !tbaa !120
  %i.fz = icmp ult i32 %.val31.val.val.i.i.i.i, %.1.val.i.i.i.i69
  %i.ga = icmp ule i32 %.val31.val.val.i.i.i.i, %.1.val.i.i.i.i69
  %i.gb = icmp ult i16 %.val31.val.val48.i.i.i.i, %.1.val32.i.i.i.i70
  %spec.select.i.i62.i.i.i.i = select i1 %i.ga, i1 %i.gb, i1 false
  %.0.i.i.i63.i.i.i.i = select i1 %i.fz, i1 true, i1 %spec.select.i.i62.i.i.i.i
  br i1 %.0.i.i.i63.i.i.i.i, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_3EEET_SH_SH_T0_.exit.i.i", label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i68, i64 152
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge._crit_edge86.i.i.i.i
  %.val.val.val47.i.i.i.i = phi i16 [ %.val31.val.val48.i.i.i.i, %bb.am ], [ %.val.val.val47.pre.i.i.i.i, %._crit_edge._crit_edge86.i.i.i.i ]
  %.val.val.val.i.i.i.i = phi i32 [ %.val31.val.val.i.i.i.i, %bb.am ], [ %.val.val.val.pre.i.i.i.i, %._crit_edge._crit_edge86.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i54 = phi ptr [ %i.gc, %bb.am ], [ %.029.lcssa.i.i.i.i53, %._crit_edge._crit_edge86.i.i.i.i ] ; 3 uses
  %i.gd = getelementptr i8, ptr %.2.i.i.i.i54, i64 128
  %.2.val.i.i.i.i55 = load i32, ptr %i.gd, align 8, !tbaa !119 ; 2 uses
  %i.ge = getelementptr i8, ptr %.2.i.i.i.i54, i64 132
  %.2.val30.i.i.i.i56 = load i16, ptr %i.ge, align 4, !tbaa !120
  %i.gf = icmp ult i32 %.val.val.val.i.i.i.i, %.2.val.i.i.i.i55
  %i.gg = icmp ule i32 %.val.val.val.i.i.i.i, %.2.val.i.i.i.i55
  %i.gh = icmp ult i16 %.val.val.val47.i.i.i.i, %.2.val30.i.i.i.i56
  %spec.select.i.i64.i.i.i.i = select i1 %i.gg, i1 %i.gh, i1 false
  %.0.i.i.i65.i.i.i.i = select i1 %i.gf, i1 true, i1 %spec.select.i.i64.i.i.i.i
  br i1 %.0.i.i.i65.i.i.i.i, label %"_ZSt9__find_ifIPN12lldb_private13SymbolContextEN9__gnu_cxx5__ops10_Iter_predIZNS0_18BreakpointResolver18SetSCMatchesByLineERNS0_12SearchFilterERNS0_17SymbolContextListEbN4llvm9StringRefEjSt8optionalItEE3$_3EEET_SH_SH_T0_.exit.i.i", label %"_ZN4llvm4sortIPN12lldb_private13SymbolContextEZNS1_18BreakpointResolver18SetSCMatchesByLineERNS1_12SearchFilterERNS1_17SymbolContextListEbNS_9StringRefEjSt8optionalItEE3$_2EEvT_SD_T0_.exit"

end_hunk_0
