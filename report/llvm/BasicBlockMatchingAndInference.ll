Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BasicBlockMatchingAndInference?download=true
inline.NumInlined: 1959
inline.NumDeleted: 1039
begin_hunk_0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIfLb0ENS0_6parserIfEEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #18, !inline_history !174 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !26, !range !27, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.i) #18
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #18
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm44initializeBasicBlockMatchingAndInferencePassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %class.anon.225, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr @_ZL48initializeBasicBlockMatchingAndInferencePassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !175
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !32
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !32
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL48InitializeBasicBlockMatchingAndInferencePassFlag, ptr noundef nonnull @__once_proxy) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #19
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !32
  store ptr null, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL48initializeBasicBlockMatchingAndInferencePassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #3 {
bb.a:
  tail call void @_ZN4llvm34initializeMachineBlockHashInfoPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  tail call void @_ZN4llvm56initializeBasicBlockSectionsProfileReaderWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 9 uses
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !35
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 45, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 25, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN4llvm30BasicBlockMatchingAndInference2IDE, ptr %i.c, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 1, ptr %i.d, align 8, !tbaa !178
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 1, ptr %i.e, align 1, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_30BasicBlockMatchingAndInferenceEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !180
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm30BasicBlockMatchingAndInferenceC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((0, 28), (32, 76)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm30BasicBlockMatchingAndInference2IDE, ptr %i.b, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.c, align 8, !tbaa !182
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4llvm30BasicBlockMatchingAndInferenceE, i64 16), ptr %0, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 16, i1 false)
  store i32 56, ptr %i.f, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm30BasicBlockMatchingAndInference16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm20MachineBlockHashInfo2IDE) #18 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm42BasicBlockSectionsProfileReaderWrapperPass2IDE) #18 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.c, align 8, !tbaa !193
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #18
  ret void
}

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm30BasicBlockMatchingAndInference13getWeightInfoENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %2, i64 %3) #18
  %i.c = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr %2, i64 %3, i32 noundef %i.b) #18 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !45
  br i1 %i.d, label %_ZNK4llvm9StringMapINS_30BasicBlockMatchingAndInference10WeightInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapINS_30BasicBlockMatchingAndInference10WeightInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit

_ZNK4llvm9StringMapINS_30BasicBlockMatchingAndInference10WeightInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit: ; preds = %bb.a
  %i.f = sext i32 %i.c to i64                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.pre5 = zext i32 %.pre to i64
  %i.g = icmp eq i64 %i.f, %.pre5
  br i1 %i.g, label %_ZNK4llvm9StringMapINS_30BasicBlockMatchingAndInference10WeightInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringMapINS_30BasicBlockMatchingAndInference10WeightInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  %i.h = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_17MachineBasicBlockES5_EmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8copyFromERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_ZNK4llvm9StringMapINS_30BasicBlockMatchingAndInference10WeightInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread

_ZNK4llvm9StringMapINS_30BasicBlockMatchingAndInference10WeightInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread: ; preds = %bb.a, %_ZNK4llvm9StringMapINS_30BasicBlockMatchingAndInference10WeightInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %_ZNK4llvm9StringMapINS_30BasicBlockMatchingAndInference10WeightInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %i.m, align 8, !tbaa !195
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm30BasicBlockMatchingAndInference24initWeightInfoByMatchingERNS_15MachineFunctionE(ptr dead_on_unwind noalias writable sret(%"struct.llvm::BasicBlockMatchingAndInference::WeightInfo") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::vector.22", align 8    ; 9 uses
  %4 = alloca %"class.std::vector.27", align 8    ; 9 uses
  %5 = alloca %class.StaleMatcher, align 8        ; 15 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !259  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !259  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.d, %i.f
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.g, @_ZN4llvm42BasicBlockSectionsProfileReaderWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_42BasicBlockSectionsProfileReaderWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.h, %i.f
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !262
  %.not.i.i.i = icmp eq ptr %i.i, @_ZN4llvm42BasicBlockSectionsProfileReaderWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_42BasicBlockSectionsProfileReaderWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_42BasicBlockSectionsProfileReaderWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %.lr.ph.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %.not.i3.i.i43 = icmp eq ptr %i.g, @_ZN4llvm20MachineBlockHashInfo2IDE
  br i1 %.not.i3.i.i43, label %_ZNK4llvm4Pass11getAnalysisINS_20MachineBlockHashInfoEEERT_v.exit, label %.lr.ph.i.i.i44

.lr.ph.i.i.i44:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_42BasicBlockSectionsProfileReaderWrapperPassEEERT_v.exit, %.lr.ph.i.i.i44
  %.sroa.08.015.i4.i.i45 = phi ptr [ %i.l, %.lr.ph.i.i.i44 ], [ %i.d, %_ZNK4llvm4Pass11getAnalysisINS_42BasicBlockSectionsProfileReaderWrapperPassEEERT_v.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i45, i64 16 ; 4 uses
  %.not11.i.i.i46 = icmp ne ptr %i.l, %i.f
  tail call void @llvm.assume(i1 %.not11.i.i.i46)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !262
  %.not.i.i.i47 = icmp eq ptr %i.m, @_ZN4llvm20MachineBlockHashInfo2IDE
  br i1 %.not.i.i.i47, label %_ZNK4llvm4Pass11getAnalysisINS_20MachineBlockHashInfoEEERT_v.exit, label %.lr.ph.i.i.i44

_ZNK4llvm4Pass11getAnalysisINS_20MachineBlockHashInfoEEERT_v.exit: ; preds = %.lr.ph.i.i.i44, %_ZNK4llvm4Pass11getAnalysisINS_42BasicBlockSectionsProfileReaderWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i48 = phi ptr [ %i.d, %_ZNK4llvm4Pass11getAnalysisINS_42BasicBlockSectionsProfileReaderWrapperPassEEERT_v.exit ], [ %i.l, %.lr.ph.i.i.i44 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i48, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %.sroa.0235.0291 = load ptr, ptr %i.p, align 8, !tbaa !51 ; 2 uses
  %.not292 = icmp eq ptr %.sroa.0235.0291, %i.q
  br i1 %.not292, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm4Pass11getAnalysisINS_20MachineBlockHashInfoEEERT_v.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit, %_ZNK4llvm4Pass11getAnalysisINS_20MachineBlockHashInfoEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN12StaleMatcher4initERKSt6vectorIPN4llvm17MachineBasicBlockESaIS3_EERKS0_INS1_16BlendedBlockHashESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.v = call { ptr, i64 } @_ZNK4llvm15MachineFunction7getNameEv(ptr noundef nonnull align 8 dereferenceable(1065) %2) #18 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  %i.y = call noundef ptr @_ZNK4llvm42BasicBlockSectionsProfileReaderWrapperPass21getFunctionCFGProfileENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(176) %i.k, ptr %i.w, i64 %i.x) #18 ; 15 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit, label %bb.l

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.bs, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %i.ab = phi ptr [ null, %.lr.ph ], [ %i.bt, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.ac = phi ptr [ null, %.lr.ph ], [ %i.bu, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.ad = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.ae = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.af = phi ptr [ null, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0235.0293 = phi ptr [ %.sroa.0235.0291, %.lr.ph ], [ %.sroa.0235.0, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.sroa.0235.0293, ptr %i.af, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !56
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.e, label %_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
  unreachable

_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #20 ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store ptr %.sroa.0235.0293, ptr %i.as, align 8, !tbaa !53
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.ad, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.aj) #21
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ar, ptr %3, align 8, !tbaa !57
  store ptr %i.au, ptr %i.r, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap ; 2 uses
  store ptr %i.av, ptr %i.s, align 8, !tbaa !263
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.aw = phi ptr [ %i.ad, %bb.c ], [ %i.ar, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ax = phi ptr [ %i.ae, %bb.c ], [ %i.av, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ay = phi ptr [ %i.ag, %bb.c ], [ %i.au, %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.az = tail call noundef i64 @_ZNK4llvm20MachineBlockHashInfo10getMBBHashERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0235.0293) #18 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE9push_backEOS2_.exit
  store i64 %i.az, ptr %i.ac, align 2, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !264
  br label %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE9push_backEOS2_.exit
  %i.bb = ptrtoint ptr %i.ab to i64
  %i.bc = ptrtoint ptr %i.aa to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.j, label %_ZNKSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
  unreachable

_ZNKSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i50 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i50, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i51 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i51)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #20 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i64 %i.az, ptr %i.bm, align 2, !tbaa !59
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.bl, %_ZNKSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i.i, align 2, !tbaa !59, !alias.scope !266, !noalias !265
  store i64 %i.bn, ptr %.012.i.i.i.i.i.i, align 2, !tbaa !59, !alias.scope !265, !noalias !266
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !199

_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bl, %_ZNKSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.bd) #21
  br label %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bl, ptr %4, align 8, !tbaa !63
  store ptr %i.bq, ptr %i.t, align 8, !tbaa !264
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  store ptr %i.br, ptr %i.u, align 8, !tbaa !267
  br label %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bs = phi ptr [ %i.aa, %bb.h ], [ %i.bl, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bt = phi ptr [ %i.ab, %bb.h ], [ %i.br, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bu = phi ptr [ %i.ba, %bb.h ], [ %i.bq, %_ZNSt6vectorIN4llvm16BlendedBlockHashESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0235.0293, i64 8
  %.sroa.0235.0 = load ptr, ptr %i.bv, align 8, !tbaa !51 ; 2 uses
  %.not = icmp eq ptr %.sroa.0235.0, %i.q
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %._crit_edge
  %i.bw = load ptr, ptr %i.y, align 8, !tbaa !270, !noalias !271
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !272, !noalias !271 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !273, !noalias !271 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !274, !noalias !271
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = zext i32 %i.ca to i64                   ; 4 uses
  %.idx452.a = shl nuw nsw i64 %i.ce, 4           ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.ca, 0
  %or.cond = select i1 %i.cd, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge297, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nuw nsw i64 %i.ce, 31
  %i.cg = lshr i64 %i.cf, 5                       ; 2 uses
  %i.ch = load i32, ptr %i.by, align 4, !tbaa !65, !noalias !275 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.i.i52.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit

.lr.ph.i.i.i52.preheader:                         ; preds = %bb.m
  %i.cj = icmp eq i64 %i.cg, 1
  br i1 %i.cj, label %._crit_edge297, label %.lr.ph503.a

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph503.a
  %i.ck = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %i.cg
  br i1 %i.cl, label %._crit_edge297, label %.lr.ph503.a, !llvm.loop !204

.lr.ph503.a:                                      ; preds = %.lr.ph.i.i.i52.preheader, %.lr.ph.i.i.i52
  %i.cm = phi i64 [ %i.ck, %.lr.ph.i.i.i52 ], [ 1, %.lr.ph.i.i.i52.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !65, !noalias !275 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i.i52, label %._crit_edge.i.loopexit.i.i, !llvm.loop !204

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph503.a
  %i.cq = shl i64 %i.cm, 9
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit: ; preds = %bb.m, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cq, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.ch, %bb.m ], [ %i.co, %._crit_edge.i.loopexit.i.i ]
  %i.cr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.cs = shl nuw nsw i32 %i.cr, 4
  %.idx = zext nneg i32 %i.cs to i64
  %i.ct = or disjoint i64 %.012.lcssa.i.i.i, %.idx ; 2 uses
  %.not252294 = icmp eq i64 %i.ct, %.idx452.a
  br i1 %.not252294, label %._crit_edge297, label %.lr.ph296

.lr.ph296:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10UniqueBBIDEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E5beginEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 48
end_hunk_0
