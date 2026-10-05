Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineBlockFrequencyInfo?download=true
inline.NumInlined: 3712
inline.NumDeleted: 1933
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE9calculateERKNS_15MachineFunctionERKNS_28MachineBranchProbabilityInfoERKNS_15MachineLoopInfoE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !64
  tail call void @_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE14initializeRPOTEv(ptr noundef nonnull align 8 dereferenceable(180) %0)
  tail call void @_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE15initializeLoopsEv(ptr noundef nonnull align 8 dereferenceable(180) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62, !noalias !542 ; 2 uses
  %.not11.i = icmp eq ptr %i.j, %i.k
  br i1 %.not11.i, label %_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE18computeMassInLoopsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE5clearEv.exit, %bb.c
  %.sroa.06.012.i = phi ptr [ %i.x, %bb.c ], [ %i.j, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE5clearEv.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = tail call noundef zeroext i1 @_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE17computeMassInLoopERNS_26BlockFrequencyInfoImplBase8LoopDataE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.n)
  br i1 %i.o, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !61, !noalias !543 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22computeIrreducibleMassEPNS_26BlockFrequencyInfoImplBase8LoopDataESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull %i.q, ptr nonnull %.sroa.06.012.i)
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !62, !noalias !544 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = tail call noundef zeroext i1 @_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE17computeMassInLoopERNS_26BlockFrequencyInfoImplBase8LoopDataE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.u) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.06.1.i = phi ptr [ %.sroa.06.012.i, %.lr.ph.i ], [ %i.r, %.preheader.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i, label %_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE18computeMassInLoopsEv.exit, label %.lr.ph.i, !llvm.loop !538

_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE18computeMassInLoopsEv.exit: ; preds = %bb.c, %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE5clearEv.exit
  tail call void @_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE21computeMassInFunctionEv(ptr noundef nonnull align 8 dereferenceable(180) %0)
  tail call void @_ZN4llvm26BlockFrequencyInfoImplBase11unwrapLoopsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #22
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseIterativeBFIInferenceE, i64 120), align 8, !tbaa !85, !range !31, !noundef !32
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit.thread

bb.d:                                             ; preds = %_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE18computeMassInLoopsEv.exit
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !237, !nonnull !32, !align !35
  %i.ac = tail call { i64, i8 } @_ZNK4llvm8Function13getEntryCountEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ab) #22
  %i.ad = extractvalue { i64, i8 } %i.ac, 1
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !62, !noalias !545
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.03.0.i = phi ptr [ %i.j, %bb.e ], [ %i.ah, %bb.g ] ; 2 uses
  %.not.not.i = icmp eq ptr %.sroa.03.0.i, %i.af
  br i1 %.not.not.i, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !61 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !255
  %i.ak = icmp ugt i32 %i.aj, 1
  br i1 %i.ak, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit, label %bb.f, !llvm.loop !541

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit: ; preds = %bb.g
  tail call void @_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE23applyIterativeInferenceEv(ptr noundef nonnull align 8 dereferenceable(180) %0)
  br label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit.thread

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit.thread: ; preds = %bb.f, %_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE18computeMassInLoopsEv.exit, %bb.d, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit
  tail call void @_ZN4llvm26BlockFrequencyInfoImplBase15finalizeMetricsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #22
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm27CheckBFIUnknownBlockQueriesE, i64 120), align 8, !tbaa !85, !range !31, !noundef !32
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.013.019 = load ptr, ptr %i.an, align 8, !tbaa !256 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.013.019, %i.ao
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.sroa.013.021 = phi ptr [ %.sroa.013.0, %bb.i ], [ %.sroa.013.019, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 220
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !306 ; 2 uses
  %i.ar = load i32, ptr %i.i, align 8, !tbaa !64
  %i.as = icmp ugt i32 %i.ar, %i.aq
  br i1 %i.as, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE7getNodeEPKS1_.exit, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE7getNodeEPKS1_.exit.thread

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE7getNodeEPKS1_.exit: ; preds = %.lr.ph
  %i.at = zext i32 %i.aq to i64
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !307
  %.not18 = icmp eq i32 %i.aw, -1
  br i1 %.not18, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE7getNodeEPKS1_.exit.thread, label %bb.i

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE7getNodeEPKS1_.exit.thread: ; preds = %.lr.ph, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE7getNodeEPKS1_.exit
  tail call void @_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12setBlockFreqEPKS1_NS_14BlockFrequencyE(ptr noundef nonnull align 8 dereferenceable(180) %0, ptr noundef nonnull %.sroa.013.021, i64 0)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE7getNodeEPKS1_.exit.thread, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE7getNodeEPKS1_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 8
  %.sroa.013.0 = load ptr, ptr %i.ax, align 8, !tbaa !256 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, %i.ao
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.i, %bb.h, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE22needIterativeInferenceEv.exit.thread
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !121 ; 2 uses
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !122
  %.not.i.i9 = icmp eq ptr %i.az, %i.ay
  br i1 %.not.i.i9, label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE5clearEv.exit10, label %bb.j

bb.j:                                             ; preds = %.loopexit
  store ptr %i.ay, ptr %i.f, align 8, !tbaa !122
  br label %_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE5clearEv.exit10

_ZNSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE5clearEv.exit10: ; preds = %.loopexit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25MachineBlockFrequencyInfo4viewERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %0, ptr %i.a, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !310
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !75
  store i8 0, ptr %i.c, align 8, !tbaa !42
  call void @_ZN4llvm10WriteGraphIPNS_25MachineBlockFrequencyInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKNS_5TwineEbSE_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
  %i.e = load ptr, ptr %4, align 8, !tbaa !76     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.c, align 8, !tbaa !42
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load ptr, ptr %3, align 8, !tbaa !76
  %i.m = call noundef zeroext i1 @_ZN4llvm12DisplayGraphENS_9StringRefEbNS_12GraphProgram4NameE(ptr %i.l, i64 %i.j, i1 noundef zeroext false, i32 noundef 0) #22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.n = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm9ViewGraphIPNS_25MachineBlockFrequencyInfoEEEvRKT_RKNS_5TwineEbS8_NS_12GraphProgram4NameE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZN4llvm9ViewGraphIPNS_25MachineBlockFrequencyInfoEEEvRKT_RKNS_5TwineEbS8_NS_12GraphProgram4NameE.exit

_ZN4llvm9ViewGraphIPNS_25MachineBlockFrequencyInfoEEEvRKT_RKNS_5TwineEbS8_NS_12GraphProgram4NameE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass20runOnMachineFunctionERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !547  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !547  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !550  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm39MachineBranchProbabilityInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !550
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm39MachineBranchProbabilityInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i3.i.i5 = icmp eq ptr %i.f, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.k, %.lr.ph.i.i.i6 ], [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 4 uses
  %.not11.i.i.i8 = icmp ne ptr %i.k, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !550
  %.not.i.i.i9 = icmp eq ptr %i.l, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i10 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_39MachineBranchProbabilityInfoWrapperPassEEERT_v.exit ], [ %i.k, %.lr.ph.i.i.i6 ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i10, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4llvm25MachineBlockFrequencyInfo9calculateERKNS_15MachineFunctionERKNS_28MachineBranchProbabilityInfoERKNS_15MachineLoopInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(184) %i.p)
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm25MachineBlockFrequencyInfo13releaseMemoryEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm22BlockFrequencyInfoImplINS0_17MachineBasicBlockEEESt14default_deleteIS3_EE5resetEPS3_.exit, label %_ZNKSt14default_deleteIN4llvm22BlockFrequencyInfoImplINS0_17MachineBasicBlockEEEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4llvm22BlockFrequencyInfoImplINS0_17MachineBasicBlockEEEEclEPS3_.exit.i.i: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(180) %i.a) #22, !inline_history !1
  br label %_ZNSt10unique_ptrIN4llvm22BlockFrequencyInfoImplINS0_17MachineBasicBlockEEESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt10unique_ptrIN4llvm22BlockFrequencyInfoImplINS0_17MachineBasicBlockEEESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm22BlockFrequencyInfoImplINS0_17MachineBasicBlockEEEEclEPS3_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.c = load i32, ptr %i.b, align 4, !tbaa !306  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !64
  %i.f = icmp ugt i32 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4, !tbaa !307
  br label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi i32 [ %i.k, %bb.c ], [ -1, %bb.b ]
  store i32 %.sroa.0.0.i.i, ptr %2, align 4
  %i.l = call i64 @_ZNK4llvm26BlockFrequencyInfoImplBase12getBlockFreqERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit
  %.sroa.0.0 = phi i64 [ %i.l, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i8 } @_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237, !nonnull !32, !align !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.f = load i32, ptr %i.e, align 4, !tbaa !306  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !64
  %i.i = icmp ugt i32 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE20getBlockProfileCountERKNS_8FunctionEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !307
  br label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE20getBlockProfileCountERKNS_8FunctionEPKS1_.exit

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE20getBlockProfileCountERKNS_8FunctionEPKS1_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi i32 [ %i.n, %bb.c ], [ -1, %bb.b ]
  store i32 %.sroa.0.0.i.i, ptr %2, align 4
  %i.o = call { i64, i8 } @_ZNK4llvm26BlockFrequencyInfoImplBase20getBlockProfileCountERKNS_8FunctionERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %2) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.p = extractvalue { i64, i8 } %i.o, 0
  %i.q = extractvalue { i64, i8 } %i.o, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE20getBlockProfileCountERKNS_8FunctionEPKS1_.exit
  %.sroa.2.0 = phi i8 [ %i.q, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE20getBlockProfileCountERKNS_8FunctionEPKS1_.exit ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.p, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE20getBlockProfileCountERKNS_8FunctionEPKS1_.exit ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i8 } @_ZNK4llvm25MachineBlockFrequencyInfo23getProfileCountFromFreqENS_14BlockFrequencyE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237, !nonnull !32, !align !35
  %i.e = tail call { i64, i8 } @_ZNK4llvm26BlockFrequencyInfoImplBase23getProfileCountFromFreqERKNS_8FunctionENS_14BlockFrequencyE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %i.d, i64 %1) #22 ; 2 uses
  %i.f = extractvalue { i64, i8 } %i.e, 0
  %i.g = extractvalue { i64, i8 } %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi i8 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm25MachineBlockFrequencyInfo15isIrrLoopHeaderEPKNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.c = load i32, ptr %i.b, align 4, !tbaa !306  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !64
  %i.f = icmp ugt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE15isIrrLoopHeaderEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4, !tbaa !307
  br label %_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE15isIrrLoopHeaderEPKS1_.exit

_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE15isIrrLoopHeaderEPKS1_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  store i32 %.sroa.0.0.i.i, ptr %2, align 4
  %i.l = call noundef zeroext i1 @_ZN4llvm26BlockFrequencyInfoImplBase15isIrrLoopHeaderERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm25MachineBlockFrequencyInfo11onEdgeSplitERKNS_17MachineBasicBlockES3_RKNS_28MachineBranchProbabilityInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %5 = alloca %"class.llvm::BlockFrequency", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.c = load i32, ptr %i.b, align 4, !tbaa !306  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !64
  %i.f = icmp ugt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4, !tbaa !307
  br label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  store i32 %.sroa.0.0.i.i, ptr %4, align 4
  %i.l = call i64 @_ZNK4llvm26BlockFrequencyInfoImplBase12getBlockFreqERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store i64 %i.l, ptr %5, align 8
  %i.m = call i32 @_ZNK4llvm28MachineBranchProbabilityInfo18getEdgeProbabilityEPKNS_17MachineBasicBlockES3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %i.n = call i64 @_ZNK4llvm14BlockFrequencymlENS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.o = load ptr, ptr %0, align 8, !tbaa !44
  call void @_ZN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12setBlockFreqEPKS1_NS_14BlockFrequencyE(ptr noundef nonnull align 8 dereferenceable(180) %i.o, ptr noundef nonnull %2, i64 %i.n)
  ret void
end_hunk_0
