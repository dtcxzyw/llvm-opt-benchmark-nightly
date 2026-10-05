Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegBankSelect?download=true
inline.NumInlined: 1532
inline.NumDeleted: 885
begin_hunk_0
@_ZN4llvm39MachineBranchProbabilityInfoWrapperPass2IDE = external global i8, align 1
@_ZN4llvm16TargetPassConfig2IDE = external global i8, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_RegBankSelect.cpp, ptr null }]

@_ZN4llvm13RegBankSelectC1ENS0_4ModeE = unnamed_addr alias void (ptr, i32), ptr @_ZN4llvm13RegBankSelectC2ENS0_4ModeE
@_ZN4llvm13RegBankSelect18RepairingPlacementC1ERNS_12MachineInstrEjRKNS_18TargetRegisterInfoERNS_4PassENS1_13RepairingKindE = unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i32), ptr @_ZN4llvm13RegBankSelect18RepairingPlacementC2ERNS_12MachineInstrEjRKNS_18TargetRegisterInfoERNS_4PassENS1_13RepairingKindE
@_ZN4llvm13RegBankSelect16InstrInsertPointC1ERNS_12MachineInstrEb = unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN4llvm13RegBankSelect16InstrInsertPointC2ERNS_12MachineInstrEb
@_ZN4llvm13RegBankSelect11MappingCostC1ENS_14BlockFrequencyE = unnamed_addr alias void (ptr, i64), ptr @_ZN4llvm13RegBankSelect11MappingCostC2ENS_14BlockFrequencyE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optINS_13RegBankSelect4ModeELb0ENS0_6parserIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(592) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINS_13RegBankSelect4ModeELb0ENS0_6parserIS3_EEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #23, !inline_history !342 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2cl6parserINS_13RegBankSelect4ModeEEE, i64 16), ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm2cl6parserINS_13RegBankSelect4ModeEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @free(ptr noundef %i.g) #23, !inline_history !20
  br label %_ZN4llvm2cl6parserINS_13RegBankSelect4ModeEED2Ev.exit

_ZN4llvm2cl6parserINS_13RegBankSelect4ModeEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i8, ptr %i.j, align 8, !tbaa !24, !range !25, !noundef !26
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm2cl6parserINS_13RegBankSelect4ModeEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.n) #23
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.d, %_ZN4llvm2cl6parserINS_13RegBankSelect4ModeEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.p) #23
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm27initializeRegBankSelectPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr @_ZL31initializeRegBankSelectPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !343
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !28
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL31InitializeRegBankSelectPassFlag, ptr noundef nonnull @__once_proxy) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #24
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !28
  store ptr null, ptr %i.c, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31initializeRegBankSelectPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #3 {
bb.a:
  tail call void @_ZN4llvm50initializeMachineBlockFrequencyInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #23
  tail call void @_ZN4llvm53initializeMachineBranchProbabilityInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #23
  tail call void @_ZN4llvm30initializeTargetPassConfigPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #23
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25 ; 9 uses
  store ptr @.str.14, ptr %i.a, align 8, !tbaa !31
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 49, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.15, ptr %i.b, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 13, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN4llvm13RegBankSelect2IDE, ptr %i.c, align 8, !tbaa !345
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !346
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !347
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_13RegBankSelectEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !348
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm13RegBankSelectC2ENS0_4ModeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(204) initializes((0, 28), (32, 204)) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm13RegBankSelect2IDE, ptr %i.b, align 8, !tbaa !349
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.c, align 8, !tbaa !350
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4llvm13RegBankSelectE, i64 16), ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm16MachineIRBuilderE, i64 16), ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, i8 0, i64 88, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i32 %1, ptr %i.h, align 8, !tbaa !72
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL17RegBankSelectMode, i64 8), align 8, !tbaa !351
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL17RegBankSelectMode, i64 120), align 8, !tbaa !87
  store i32 %i.j, ptr %i.h, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13RegBankSelect4initERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(204) initializes((56, 80)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !26, !align !197 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.f, ptr %i.g, align 8, !tbaa !198
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.i, ptr %i.j, align 8, !tbaa !200
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !26, !align !197 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(344) %i.k) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.o, ptr %i.p, align 8, !tbaa !201
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = load i32, ptr %i.q, align 8, !tbaa !72
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !356  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !356  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.u, %i.w
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !358  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.x, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit.thread: ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %4, ptr %5, align 8, !tbaa !203
  br label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.y, %i.w
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !358
  %.not.i.i.i = icmp eq ptr %i.z, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !203
  %.not.i3.i.i7 = icmp eq ptr %i.x, @_ZN4llvm39MachineBranchProbabilityInfoWrapperPass2IDE
  br i1 %.not.i3.i.i7, label %_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit
  br label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8.preheader, %.lr.ph.i.i.i8
  %.sroa.08.015.i4.i.i9 = phi ptr [ %i.ae, %.lr.ph.i.i.i8 ], [ %i.u, %.lr.ph.i.i.i8.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i9, i64 16 ; 4 uses
  %.not11.i.i.i10 = icmp ne ptr %i.ae, %i.w
  tail call void @llvm.assume(i1 %.not11.i.i.i10)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !358
  %.not.i.i.i11 = icmp eq ptr %i.af, @_ZN4llvm39MachineBranchProbabilityInfoWrapperPass2IDE
  br i1 %.not.i.i.i11, label %_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i8

_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i8, %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i12 = phi ptr [ %i.u, %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit ], [ %i.ae, %.lr.ph.i.i.i8 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i12, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !359
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvm16MachineIRBuilder5setMFERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef nonnull align 8 dereferenceable(1065) %1) #23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !360 ; 3 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !361, !noalias !360
  store ptr %1, ptr %i.an, align 8, !tbaa !204, !noalias !360
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !363, !noalias !360
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !205 ; 2 uses
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !205
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm32MachineOptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm32MachineOptimizationRemarkEmitterEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm32MachineOptimizationRemarkEmitterEEclEPS1_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN4llvm32MachineOptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm32MachineOptimizationRemarkEmitterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm32MachineOptimizationRemarkEmitterEEclEPS1_.exit.i.i.i.i, %bb.d
  ret void
}

declare void @_ZN4llvm16MachineIRBuilder5setMFERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm13RegBankSelect16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE) #23 ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm39MachineBranchProbabilityInfoWrapperPass2IDE) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm16TargetPassConfig2IDE) #23 ; 0 uses
  tail call void @_ZN4llvm36getSelectionDAGFallbackAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(161) %1) #23
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #23
  ret void
}

declare void @_ZN4llvm36getSelectionDAGFallbackAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #5

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm13RegBankSelect15assignmentMatchENS_8RegisterERKNS_16RegisterBankInfo12ValueMappingERb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %0, i32 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %3) local_unnamed_addr #3 align 2 {
bb.a:
  store i8 0, ptr %3, align 1, !tbaa !206
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !209
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !201
  %i.i = tail call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %i.d, i32 %1, ptr noundef nonnull align 8 dereferenceable(520) %i.f, ptr noundef nonnull align 8 dereferenceable(316) %i.h) #23 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !210
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.m = icmp eq ptr %i.i, null
  %i.n = zext i1 %i.m to i8
  store i8 %i.n, ptr %3, align 1, !tbaa !206
  %i.o = icmp eq ptr %i.i, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160), i32, ptr noundef nonnull align 8 dereferenceable(520), ptr noundef nonnull align 8 dereferenceable(316)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm13RegBankSelect9repairRegERNS_14MachineOperandERKNS_16RegisterBankInfo12ValueMappingERNS0_18RepairingPlacementERKNS_14iterator_rangeIPKNS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !209  ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !214  ; 2 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !380
  %i.g = load i32, ptr %i.f, align 4, !tbaa !215  ; 2 uses
  %i.h = load i32, ptr %1, align 8
  %i.i = and i32 %i.h, 16777216
  %.not81 = icmp eq i32 %i.i, 0                   ; 2 uses
  %spec.select = select i1 %.not81, i32 %i.g, i32 %i.e
  %spec.select79 = select i1 %.not81, i32 %i.e, i32 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = tail call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %i.j, i32 noundef 20) #23 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !218, !alias.scope !381
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %spec.select, ptr %i.o, align 4, !tbaa !214, !alias.scope !381
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !381
  store i32 16777216, ptr %10, align 8, !alias.scope !381
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(1065) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !218, !alias.scope !382
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %spec.select79, ptr %i.r, align 4, !tbaa !214, !alias.scope !382
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !382
  store i32 0, ptr %9, align 8, !alias.scope !382
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(1065) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !200  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !214  ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.w, 2147483647                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !219
  %i.ab = icmp ugt i32 %i.aa, %i.y
  br i1 %i.ab, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !214
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.04.0.i = phi i64 [ %i.ag, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.ah = load i32, ptr %1, align 8
  %i.ai = and i32 %i.ah, 16777216
  %.not80 = icmp eq i32 %i.ai, 0
  br i1 %.not80, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.aj = lshr i64 %.sroa.04.0.i, 60
  %i.ak = add nsw i64 %i.aj, -5
  %switch.selectcmp.i = icmp ult i64 %i.ak, 4
  br i1 %switch.selectcmp.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = trunc i64 %.sroa.04.0.i to i1
  br i1 %i.al, label %bb.h, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.16) #24
  unreachable

end_hunk_0
