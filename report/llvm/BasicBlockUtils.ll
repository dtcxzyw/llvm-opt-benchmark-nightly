Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BasicBlockUtils?download=true
inline.NumInlined: 4143
inline.NumDeleted: 2327
begin_hunk_0_@_Znwm
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr, i64) unnamed_addr #5

declare noundef ptr @_ZN4llvm7PHINode19removeIncomingValueEjb(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !36
  %i.g = load i32, ptr %i.a, align 8, !tbaa !65
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !65
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !65
  ret void
}

declare void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare void @_ZN4llvm14FuncletPadInstC2ENS_11Instruction13FuncletPadOpsEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef, ptr, i64, i32, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::InsertPosition") align 8) unnamed_addr #5

declare void @_ZN4llvm17CleanupReturnInstC1EPNS_5ValueEPNS_10BasicBlockENS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, i32, ptr, i64) unnamed_addr #5

declare noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32, ptr, i64) unnamed_addr #5

declare void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

declare void @_ZN4llvm4User16allocHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

declare void @_ZN4llvm16MemorySSAUpdater24moveAllAfterSpliceBlocksEPNS_10BasicBlockES2_PNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(624), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE10createNodeEPS1_PNS_15DomTreeNodeBaseIS1_EE(ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef) local_unnamed_addr #4 align 2

declare void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE11recalculateINS_8FunctionEEEvRT_(ptr noundef nonnull align 8 dereferenceable(658), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #5

declare void @_ZN4llvm16MemorySSAUpdater44wireOldPredecessorsToNewImmediatePredecessorEPNS_10BasicBlockES2_NS_8ArrayRefIS2_EEb(ptr noundef nonnull align 8 dereferenceable(624), ptr noundef, ptr noundef, ptr, i64, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm8LoopInfo5eraseEPNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZN4llvm15DomTreeNodeBaseINS_10BasicBlockEE11UpdateLevelEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE5SplitIPS1_EEvNS_11GraphTraitsIT_E7NodeRefE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.293", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = tail call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c) #25
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.k, align 4, !tbaa !66
  %.not4.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i.i, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EEC2INS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.h, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !153  ; 2 uses
  %i.n = add nuw nsw i64 %.06.i.i.i, 1            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZSt10__distanceIN4llvm12PredIteratorINS0_10BasicBlockENS0_5Value18user_iterator_implINS0_4UserEEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt10__distanceIN4llvm12PredIteratorINS0_10BasicBlockENS0_5Value18user_iterator_implINS0_4UserEEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = icmp samesign ugt i64 %.06.i.i.i, 3
  br i1 %i.o, label %bb.b, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

bb.b:                                             ; preds = %_ZSt10__distanceIN4llvm12PredIteratorINS0_10BasicBlockENS0_5Value18user_iterator_implINS0_4UserEEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.i, i64 noundef %i.n, i64 noundef 8) #24
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !65 ; 2 uses
  %.pre9.i.i = zext i32 %.pre.i.i to i64
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !36
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %bb.b, %_ZSt10__distanceIN4llvm12PredIteratorINS0_10BasicBlockENS0_5Value18user_iterator_implINS0_4UserEEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i
  %i.p = phi ptr [ %.pre.i, %bb.b ], [ %i.i, %_ZSt10__distanceIN4llvm12PredIteratorINS0_10BasicBlockENS0_5Value18user_iterator_implINS0_4UserEEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i ]
  %.pre-phi.i.ph.i = phi i64 [ %.pre9.i.i, %bb.b ], [ 0, %_ZSt10__distanceIN4llvm12PredIteratorINS0_10BasicBlockENS0_5Value18user_iterator_implINS0_4UserEEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i ]
  %.ph.i = phi i32 [ %.pre.i.i, %bb.b ], [ 0, %_ZSt10__distanceIN4llvm12PredIteratorINS0_10BasicBlockENS0_5Value18user_iterator_implINS0_4UserEEEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi.i.ph.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63
  store ptr %i.u, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !153  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendINS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEvEEvT_SB_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !10

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendINS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEvEEvT_SB_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.y = trunc i64 %i.n to i32
  %i.z = add i32 %.ph.i, %i.y
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EEC2INS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEEERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EEC2INS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEEERKNS_14iterator_rangeIT_EE.exit: ; preds = %bb.a, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendINS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEvEEvT_SB_.exit.loopexit.i
  %i.aa = phi i32 [ 0, %bb.a ], [ %i.z, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendINS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEvEEvT_SB_.exit.loopexit.i ] ; 2 uses
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.039.066 = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %.not5767 = icmp eq ptr %.sroa.039.066, null
  br i1 %.not5767, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EEC2INS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEEERKNS_14iterator_rangeIT_EE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread
  %.sroa.039.068 = phi ptr [ %.sroa.039.066, %.lr.ph ], [ %.sroa.039.0, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.039.068, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63 ; 3 uses
  %.not = icmp eq ptr %i.ah, %1
  br i1 %.not, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %i.f, ptr noundef %i.ah) #24
  br i1 %i.ai, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !106
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.an = icmp ugt i32 %i.am, %i.al
  br i1 %i.an, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit: ; preds = %bb.e
  %i.ao = zext i32 %i.al to i64
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108
  %.not58 = icmp eq ptr %i.ar, null
  br i1 %.not58, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread: ; preds = %bb.e, %bb.c, %bb.d, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.039.068, i64 8
  %.sroa.039.0 = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not57 = icmp eq ptr %.sroa.039.0, null
  br i1 %.not57, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit, label %bb.c

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread
  %.not57.lcssa.ph = phi i1 [ true, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread ], [ false, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit ]
  %.pre = load i32, ptr %i.j, align 8, !tbaa !65
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EEC2INS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEEERKNS_14iterator_rangeIT_EE.exit
  %i.at = phi i32 [ %i.aa, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EEC2INS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEEERKNS_14iterator_rangeIT_EE.exit ], [ %.pre, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit ] ; 4 uses
  %.not57.lcssa = phi i1 [ true, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EEC2INS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEEERKNS_14iterator_rangeIT_EE.exit ], [ %.not57.lcssa.ph, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit ]
  %.not80 = icmp eq i32 %i.at, 0
  br i1 %.not80, label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %.lr.ph73

.lr.ph73:                                         ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge
  %i.au = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !65 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %wide.trip.count = zext i32 %i.at to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph73, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34.thread ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !106
  %i.bc = add i32 %i.bb, 1                        ; 3 uses
  %i.bd = icmp ugt i32 %i.aw, %i.bc
  br i1 %i.bd, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34.thread

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34: ; preds = %bb.f
  %i.be = zext i32 %i.bc to i64
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !36 ; 5 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !108
  %.not59 = icmp eq ptr %i.bh, null
  br i1 %.not59, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34
  %i.bi = trunc nuw i64 %indvars.iv to i32
  %.12274 = add nuw i32 %i.bi, 1                  ; 2 uses
  %i.bj = icmp ugt i32 %i.at, %.12274
  br i1 %i.bj, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %.preheader
  %3 = zext i32 %.12274 to i64
  br label %.lr.ph77.a

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34.thread: ; preds = %bb.f, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %bb.f, !llvm.loop !650

.lr.ph77.a:                                       ; preds = %.lr.ph77, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit
  %indvars.iv89 = phi i64 [ %3, %.lr.ph77 ], [ %indvars.iv.next90, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit ] ; 2 uses
  %.12475 = phi ptr [ %i.az, %.lr.ph77 ], [ %.225, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv89
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !106
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  %i.bp = icmp ugt i32 %i.aw, %i.bo
  br i1 %i.bp, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit35, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit35: ; preds = %.lr.ph77.a
  %i.bq = zext i32 %i.bo to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !108
  %.not60 = icmp eq ptr %i.bs, null
  br i1 %.not60, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit35
  %i.bt = getelementptr inbounds nuw i8, ptr %.12475, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !174
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !72
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -24 ; 3 uses
  %i.by = icmp ne ptr %.12475, %i.bx
  %i.bz = icmp ne ptr %i.bl, %i.bx
  %or.cond.not.i = and i1 %i.by, %i.bz
  br i1 %or.cond.not.i, label %bb.h, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %.12475, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !106
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  %i.cd = icmp ugt i32 %i.aw, %i.cc
  br i1 %i.cd, label %bb.i, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i

bb.i:                                             ; preds = %bb.h
  %i.ce = zext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !108
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i: ; preds = %bb.i, %bb.h
  %i.ch = phi ptr [ %i.cg, %bb.i ], [ null, %bb.h ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bq
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not26.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.pre.i36 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !653
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.ck = phi i32 [ %i.cq, %.lr.ph.i ], [ %.pre.i36, %.lr.ph.preheader.i ] ; 2 uses
  %.028.i = phi ptr [ %spec.select23.i, %.lr.ph.i ], [ %i.cj, %.lr.ph.preheader.i ] ; 2 uses
  %.02127.i = phi ptr [ %i.cp, %.lr.ph.i ], [ %i.ch, %.lr.ph.preheader.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.02127.i, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !653 ; 2 uses
  %i.cn = icmp ult i32 %i.cm, %i.ck               ; 2 uses
  %spec.select.i = select i1 %i.cn, ptr %.028.i, ptr %.02127.i
  %spec.select23.i = select i1 %i.cn, ptr %.02127.i, ptr %.028.i ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !112 ; 3 uses
  %.not.i = icmp eq ptr %i.cp, %spec.select23.i
  %i.cq = call i32 @llvm.umin.i32(i32 %i.cm, i32 %i.ck)
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !651

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i
  %.021.lcssa.i = phi ptr [ %i.ch, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i ], [ %i.cp, %.lr.ph.i ]
  %i.cr = load ptr, ptr %.021.lcssa.i, align 8, !tbaa !274
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit: ; preds = %.lr.ph77.a, %._crit_edge.i, %bb.g, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit35
  %.225 = phi ptr [ %i.bx, %bb.g ], [ %.12475, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit35 ], [ %i.cr, %._crit_edge.i ], [ %.12475, %.lr.ph77.a ] ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next90 to i32
  %exitcond92.not = icmp eq i32 %i.at, %lftr.wideiv
  br i1 %exitcond92.not, label %._crit_edge78.loopexit, label %.lr.ph77.a, !llvm.loop !652

._crit_edge78.loopexit:                           ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.225, i64 40
  %.pre93 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !106
  %.pre94 = add i32 %.pre93, 1
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %.preheader
  %.pre-phi = phi i32 [ %.pre94, %._crit_edge78.loopexit ], [ %i.bc, %.preheader ] ; 2 uses
  %i.cs = icmp ugt i32 %i.aw, %.pre-phi
  br i1 %i.cs, label %bb.j, label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE11addNewBlockEPS1_S3_.exit

bb.j:                                             ; preds = %._crit_edge78
  %i.ct = zext i32 %.pre-phi to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !108
  br label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE11addNewBlockEPS1_S3_.exit

_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE11addNewBlockEPS1_S3_.exit: ; preds = %._crit_edge78, %bb.j
  %i.cw = phi ptr [ %i.cv, %bb.j ], [ null, %._crit_edge78 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store i8 0, ptr %i.cx, align 8, !tbaa !271
  %i.cy = call noundef ptr @_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE10createNodeEPS1_PNS_15DomTreeNodeBaseIS1_EE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, ptr noundef %i.cw) ; 3 uses
  br i1 %.not57.lcssa, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit, label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit: ; preds = %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE11addNewBlockEPS1_S3_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !106
  %i.db = add i32 %i.da, 1                        ; 2 uses
  %i.dc = load i32, ptr %i.av, align 8, !tbaa !65
  %i.dd = icmp ugt i32 %i.dc, %i.db
  call void @llvm.assume(i1 %i.dd)
  %i.de = zext i32 %i.db to i64
  %i.df = load ptr, ptr %i.ax, align 8, !tbaa !36
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !108 ; 5 uses
  store i8 0, ptr %i.cx, align 8, !tbaa !271
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !112 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, %i.cy
  br i1 %i.dk, label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ %i.dl, %bb.k ], [ %i.dn, %bb.l ] ; 3 uses
  %i.dm = load ptr, ptr %.0.i.i.i, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.dm, %i.dh
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  br i1 %.not.i.i.i38, label %bb.m, label %bb.l, !llvm.loop !2

bb.m:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !113 ; 2 uses
  store ptr %i.dp, ptr %.0.i.i.i, align 8, !tbaa !108
  %.not11.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not11.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.do, align 8, !tbaa !113
  br label %_ZN4llvm15DomTreeNodeBaseINS_10BasicBlockEE11removeChildEPS2_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store ptr %.0.i.i.i, ptr %i.dq, align 8, !tbaa !114
  br label %_ZN4llvm15DomTreeNodeBaseINS_10BasicBlockEE11removeChildEPS2_.exit.i.i

_ZN4llvm15DomTreeNodeBaseINS_10BasicBlockEE11removeChildEPS2_.exit.i.i: ; preds = %bb.o, %bb.n
  store ptr %i.cy, ptr %i.di, align 8, !tbaa !112
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !114
  store ptr %i.dh, ptr %i.ds, align 8, !tbaa !108
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !114
  call void @_ZN4llvm15DomTreeNodeBaseINS_10BasicBlockEE11UpdateLevelEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dh)
  br label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit

_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit34.thread, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge, %_ZN4llvm15DomTreeNodeBaseINS_10BasicBlockEE11removeChildEPS2_.exit.i.i, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit, %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE11addNewBlockEPS1_S3_.exit
  %i.dt = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.i
  br i1 %i.du, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit
  call void @free(ptr noundef %i.dt) #24
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit: ; preds = %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm10BasicBlock20canSplitPredecessorsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare ptr @_ZNK4llvm4Loop11getStartLocEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #5

declare void @_ZN4llvm11Instruction20replaceSuccessorWithEPNS_10BasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14UpdatePHINodesPN4llvm10BasicBlockES1_NS_8ArrayRefIS1_EEPNS_11InstructionEb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readonly captures(address) %2, i64 %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"class.llvm::SmallPtrSet.499", align 8 ; 15 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %7 = alloca %class.anon.500, align 8            ; 5 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %.idx.i = shl nuw nsw i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %6, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 16, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 5 uses
  store i32 0, ptr %i.e, align 4, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store i8 1, ptr %i.f, align 8, !tbaa !31
  %.not6.i.i.i = icmp eq i64 %3, 0
  br i1 %.not6.i.i.i, label %_ZN4llvm11SmallPtrSetIPNS_10BasicBlockELj16EEC2IRNS_8ArrayRefIS2_EEEENS_12from_range_tEOT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit.i.i.i
  %i.g = phi i8 [ %i.u, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit.i.i.i ], [ 1, %bb.a ] ; 2 uses
end_hunk_0
