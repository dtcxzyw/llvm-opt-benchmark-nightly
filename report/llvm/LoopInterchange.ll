Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopInterchange?download=true
inline.NumInlined: 4986
inline.NumDeleted: 2747
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_124LoopInterchangeTransform15removeChildLoopEPN4llvm4LoopES3_:bb.a

_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit28: ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  br label %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i

_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i: ; preds = %bb.d, %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit, %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit26, %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit28, %._crit_edge._crit_edge57.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.i, %._crit_edge.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ], [ %i.d, %._crit_edge.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %bb.i ], [ %i.al, %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit28 ], [ %i.ak, %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit26 ], [ %i.aj, %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, align 8, !tbaa !47
  %i.an = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i to i64
  %i.ao = sub i64 %i.an, %i.h
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i.i.i.i, label %_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE15removeChildLoopEPS2_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.g, %i.ar                     ; 3 uses
  %i.at = icmp sgt i64 %i.as, 8
  br i1 %i.at, label %bb.m, label %bb.n, !prof !158

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.as, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !300
  br label %_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE15removeChildLoopEPS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.o, label %_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE15removeChildLoopEPS2_.exit

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !47
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !47
  br label %_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE15removeChildLoopEPS2_.exit

_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE15removeChildLoopEPS2_.exit: ; preds = %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i, %bb.m, %bb.n, %bb.o
  %i.aw = phi ptr [ %i.d, %bb.o ], [ %i.d, %bb.n ], [ %.pre.i.i.i.i, %bb.m ], [ %i.d, %_ZN4llvm4findIRNS_8LoopBaseINS_10BasicBlockENS_4LoopEEEPS3_EEDaOT_RKT0_.exit.i ]
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !300
  store ptr null, ptr %i.am, align 8, !tbaa !154
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE15removeChildLoopEPS2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE13addBlockEntryEPS1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef) local_unnamed_addr #3 align 2

declare void @_ZN4llvm15ScalarEvolution10forgetLoopEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm10BasicBlock6spliceENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES0_EELb0ELb0EEEPS0_S6_S6_(ptr noundef nonnull align 8 dereferenceable(80), ptr, i64, ptr noundef, ptr, i64, ptr noundef byval(%"class.llvm::ilist_iterator_w_bits") align 8) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm18BlockFrequencyInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIiE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !351, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !351, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !352, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !352, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE4growEm(i64 noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 216), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 232), i64 noundef %0, i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25 ; 2 uses
  %.val2.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 216), align 8, !tbaa !33 ; 3 uses
  %.val6.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 224), align 8, !tbaa !75 ; 2 uses
  %i.c = zext i32 %.val6.i to i64
  %.idx.i = mul nuw nsw i64 %i.c, 48
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %.val6.i, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.06.08.i.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i, %bb.a ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.06.08.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !353
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.g, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %i.e, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE19moveElementsForGrowEPS6_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !970

_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE19moveElementsForGrowEPS6_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 216), align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE19moveElementsForGrowEPS6_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE19moveElementsForGrowEPS6_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE19moveElementsForGrowEPS6_.exit.loopexit, %bb.a
  %i.j = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE19moveElementsForGrowEPS6_.exit.loopexit ], [ %.val2.i, %bb.a ] ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !207
  %i.l = icmp eq ptr %i.j, getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 232)
  br i1 %i.l, label %_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE21takeAllocationForGrowEPS6_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE19moveElementsForGrowEPS6_.exit
  call void @free(ptr noundef %i.j) #25
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE21takeAllocationForGrowEPS6_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE21takeAllocationForGrowEPS6_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE19moveElementsForGrowEPS6_.exit, %bb.b
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 216), align 8, !tbaa !33
  %i.m = trunc i64 %i.k to i32
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 228), align 4, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !354, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !354, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !29
  %i.j = load i8, ptr %i.d, align 8, !range !29
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm26OptimizationRemarkAnalysisC1EPKcNS_9StringRefERKNS_18DiagnosticLocationEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_LoopInterchange.cpp() #20 section ".text.startup" {
bb.a:
  %0 = alloca %"class.llvm::cl::parser<(anonymous namespace)::RuleTy>::OptionInfo", align 8 ; 14 uses
  %1 = alloca %"class.llvm::cl::ValuesClass", align 8 ; 27 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL28LoopInterchangeCostThreshold, i32 noundef 0, i32 noundef 0) #25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 120), align 8, !tbaa !982
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL28LoopInterchangeCostThreshold, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL28LoopInterchangeCostThreshold, ptr nonnull align 1 dereferenceable(27) @.str, i64 26) #25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 120), align 8, !tbaa !982
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 140), align 4, !tbaa !351
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 136), align 8, !tbaa !983
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 32), align 8, !tbaa !176
  store i64 45, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LoopInterchangeCostThreshold, i64 40), align 8, !tbaa !207
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL28LoopInterchangeCostThreshold) #25
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL28LoopInterchangeCostThreshold, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL16MaxMemInstrRatio, i32 noundef 0, i32 noundef 0) #25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 120), align 8, !tbaa !82
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL16MaxMemInstrRatio, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16MaxMemInstrRatio, ptr nonnull align 1 dereferenceable(37) @.str.3, i64 36) #25
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 120), align 8, !tbaa !82
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 140), align 4, !tbaa !352
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 136), align 8, !tbaa !984
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 10), align 2
  %i.f = and i16 %i.e, -97
  %i.g = or disjoint i16 %i.f, 32
  store i16 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 10), align 2
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 32), align 8, !tbaa !176
  store i64 169, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxMemInstrRatio, i64 40), align 8, !tbaa !207
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16MaxMemInstrRatio) #25
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL16MaxMemInstrRatio, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL16MinLoopNestDepth, i32 noundef 0, i32 noundef 0) #25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 120), align 8, !tbaa !82
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL16MinLoopNestDepth, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16MinLoopNestDepth, ptr nonnull align 1 dereferenceable(37) @.str.6, i64 36) #25
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 120), align 8, !tbaa !82
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 140), align 4, !tbaa !352
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 136), align 8, !tbaa !984
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 10), align 2
  %i.j = and i16 %i.i, -97
  %i.k = or disjoint i16 %i.j, 32
  store i16 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 10), align 2
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 32), align 8, !tbaa !176
  store i64 55, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MinLoopNestDepth, i64 40), align 8, !tbaa !207
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16MinLoopNestDepth) #25
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL16MinLoopNestDepth, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL16MaxLoopNestDepth, i32 noundef 0, i32 noundef 0) #25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 120), align 8, !tbaa !82
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL16MaxLoopNestDepth, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16MaxLoopNestDepth, ptr nonnull align 1 dereferenceable(37) @.str.9, i64 36) #25
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 120), align 8, !tbaa !82
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 140), align 4, !tbaa !352
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 136), align 8, !tbaa !984
  %i.m = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 10), align 2
  %i.n = and i16 %i.m, -97
  %i.o = or disjoint i16 %i.n, 32
  store i16 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 10), align 2
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 32), align 8, !tbaa !176
  store i64 55, ptr getelementptr inbounds nuw (i8, ptr @_ZL16MaxLoopNestDepth, i64 40), align 8, !tbaa !207
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16MaxLoopNestDepth) #25
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL16MaxLoopNestDepth, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !33, !alias.scope !985
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 4, ptr %i.s, align 4, !tbaa !76, !alias.scope !985
  store ptr @.str.14, ptr %i.q, align 8
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 5, ptr %.sroa.453.0..sroa_idx.i, align 8
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %.sroa.554.0..sroa_idx.i, align 8
  %.sroa.756.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @.str.15, ptr %.sroa.756.0..sroa_idx.i, align 8
  %.sroa.857.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 26, ptr %.sroa.857.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @.str.16, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 9, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 1, ptr %.sroa.11.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @.str.17, ptr %.sroa.13.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 44, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @.str.18, ptr %.sroa.15.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 9, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 2, ptr %.sroa.17.0..sroa_idx.i, align 8
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr @.str.19, ptr %.sroa.19.0..sroa_idx.i, align 8
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 24, ptr %.sroa.20.0..sroa_idx.i, align 8
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr @.str.20, ptr %.sroa.21.0..sroa_idx.i, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 6, ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 3, ptr %.sroa.23.0..sroa_idx.i, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr @.str.21, ptr %.sroa.25.0..sroa_idx.i, align 8
  %.sroa.2658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 74, ptr %.sroa.2658.0..sroa_idx.i, align 8
  store i32 4, ptr %i.r, align 8, !tbaa !75, !alias.scope !985
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL15Profitabilities, i32 noundef 1, i32 noundef 0) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 120), i8 0, i64 49, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl4listIN12_GLOBAL__N_16RuleTyEbNS0_6parserIS3_EEEE, i64 16), ptr @_ZL15Profitabilities, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 176), i8 0, i64 24, i1 false)
  store ptr @_ZL15Profitabilities, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 208), align 8, !tbaa !986
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2cl6parserIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 200), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 232), ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 216), align 8, !tbaa !33
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 224), align 8, !tbaa !75
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 228), align 4, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 616), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL15Profitabilities, ptr nonnull @.str.12, i64 32) #25
  %i.t = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 10), align 2
  %.masked.i.i = and i16 %i.t, -609
  %i.u = or disjoint i16 %.masked.i.i, 544
  store i16 %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 10), align 2
  store ptr @.str.13, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 32), align 8, !tbaa !176
  store i64 80, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 40), align 8, !tbaa !207
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 168), align 8, !tbaa !200
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 128), align 8, !tbaa !202 ; 4 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 136), align 8, !tbaa !45
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.v, align 4, !tbaa !100
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 128), align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 128), align 8, !tbaa !202
  br label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %.val16.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 120), align 8, !tbaa !44 ; 5 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = ptrtoint ptr %.val16.i.i.i.i.i to i64   ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.d, label %_ZNKSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.l, %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %i.ae = icmp eq ptr %i.v, %.val16.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.ae, i64 1, i64 %i.ad
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ad ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #29 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab ; 2 uses
  store i32 1, ptr %i.al, align 4, !tbaa !100
  %i.am = icmp sgt i64 %i.ab, 0
  br i1 %i.am, label %bb.e, label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %.val16.i.i.i.i.i, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.not.i21.i.i.i.i.i = icmp eq ptr %.val16.i.i.i.i.i, null
  br i1 %.not.i21.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.i
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 136), align 8, !tbaa !45
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i.i.i.i, i64 noundef %i.aq) #26
  br label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.i
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 120), align 8, !tbaa !44
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 128), align 8, !tbaa !202
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 136), align 8, !tbaa !45
  br label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, %bb.b
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 152), align 8, !tbaa !987 ; 7 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 160), align 8, !tbaa !42
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1, ptr %i.au, align 8
  %.sroa.6.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i8 1, ptr %.sroa.6.8..sroa_idx.i.i.i, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %i.as, align 8, !tbaa !21
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 152), align 8, !tbaa !987
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 152), align 8, !tbaa !987
  br label %_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.i

bb.h:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 144), align 8, !tbaa !41 ; 5 uses
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775792
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.p, %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
  unreachable

_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.bb = ashr exact i64 %i.az, 4                 ; 3 uses
  %i.bc = icmp eq ptr %i.as, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.bc, i64 1, i64 %i.bb
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.bb ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  %i.bf = call i64 @llvm.umin.i64(i64 %i.bd, i64 576460752303423487)
  %i.bg = select i1 %i.be, i64 576460752303423487, i64 %i.bf ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.bg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #29 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 1, ptr %i.bk, align 8
  %.sroa.6.8..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i8 1, ptr %.sroa.6.8..sroa_idx4.i.i.i, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %i.bj, align 8, !tbaa !21
  br i1 %i.bc, label %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bi, %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 3 uses
  %.092.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.bl = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.bm, i64 5, i1 false), !alias.scope !989
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %.03.i.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !alias.scope !990
  %i.bn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.as
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !976

_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 16
  %.not.i27.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i27.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.i
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 160), align 8, !tbaa !42
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.bs) #26
  br label %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.i
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 144), align 8, !tbaa !41
  store ptr %i.bp, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 152), align 8, !tbaa !987
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bt, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 160), align 8, !tbaa !42
  br label %_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.i

_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.i: ; preds = %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.i, %bb.g
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 128), align 8, !tbaa !202 ; 4 uses
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 136), align 8, !tbaa !45
  %.not.i.i.i.1.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.i
  store i32 2, ptr %i.bu, align 4, !tbaa !100
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 128), align 8, !tbaa !202
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store ptr %i.bx, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 128), align 8, !tbaa !202
  br label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.1.i

bb.l:                                             ; preds = %_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.i
  %.val16.i.i.i.i.1.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 120), align 8, !tbaa !44 ; 5 uses
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = ptrtoint ptr %.val16.i.i.i.i.1.i to i64 ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775804
  br i1 %i.cb, label %bb.d, label %_ZNKSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i

_ZNKSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i: ; preds = %bb.l
  %i.cc = ashr exact i64 %i.ca, 2                 ; 3 uses
  %i.cd = icmp eq ptr %i.bu, %.val16.i.i.i.i.1.i
  %.sroa.speculated.i.i.i.i.i.1.i = select i1 %i.cd, i64 1, i64 %i.cc
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i.i.1.i, %i.cc ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cc
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 2305843009213693951)
  %i.ch = select i1 %i.cf, i64 2305843009213693951, i64 %i.cg ; 3 uses
  %.not.i.i.i.i.i.1.i = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.1.i)
  %i.ci = shl nuw nsw i64 %i.ch, 2
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #29 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.ca ; 2 uses
  store i32 2, ptr %i.ck, align 4, !tbaa !100
  %i.cl = icmp sgt i64 %i.ca, 0
  br i1 %i.cl, label %bb.m, label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.1.i

bb.m:                                             ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr align 4 %.val16.i.i.i.i.1.i, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.1.i

_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.1.i: ; preds = %bb.m, %_ZNKSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %.not.i21.i.i.i.i.1.i = icmp eq ptr %.val16.i.i.i.i.1.i, null
  br i1 %.not.i21.i.i.i.i.1.i, label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.1.i
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 136), align 8, !tbaa !45
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i.i.i.1.i, i64 noundef %i.cp) #26
  br label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1.i

_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1.i: ; preds = %bb.n, %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit20.i.i.i.i.1.i
  store ptr %i.cj, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 120), align 8, !tbaa !44
  store ptr %i.cm, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 128), align 8, !tbaa !202
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.cq, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 136), align 8, !tbaa !45
  br label %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.1.i

_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.1.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1.i, %bb.k
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 152), align 8, !tbaa !987 ; 7 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 160), align 8, !tbaa !42
  %.not.i.i.i.i.1.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i.i.i.1.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.1.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 2, ptr %i.ct, align 8
  %.sroa.6.8..sroa_idx.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i8 1, ptr %.sroa.6.8..sroa_idx.i.i.1.i, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %i.cr, align 8, !tbaa !21
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 152), align 8, !tbaa !987
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.cv, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 152), align 8, !tbaa !987
  br label %_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.1.i

bb.p:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16RuleTyESaIS1_EE9push_backERKS1_.exit.i.i.1.i
  %.val.i.i.i.i.i.1.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 144), align 8, !tbaa !41 ; 5 uses
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = ptrtoint ptr %.val.i.i.i.i.i.1.i to i64 ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775792
  br i1 %i.cz, label %bb.i, label %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.1.i

_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.1.i: ; preds = %bb.p
  %i.da = ashr exact i64 %i.cy, 4                 ; 3 uses
  %i.db = icmp eq ptr %i.cr, %.val.i.i.i.i.i.1.i  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.1.i = select i1 %i.db, i64 1, i64 %i.da
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.1.i, %i.da ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.da
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 576460752303423487)
  %i.df = select i1 %i.dd, i64 576460752303423487, i64 %i.de ; 3 uses
  %.not.i.i.i.i.i.i.1.i = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.1.i)
  %i.dg = shl nuw nsw i64 %i.df, 4
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #29 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cy ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 2, ptr %i.dj, align 8
  %.sroa.6.8..sroa_idx4.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i8 1, ptr %.sroa.6.8..sroa_idx4.i.i.1.i, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %i.di, align 8, !tbaa !21
  br i1 %i.db, label %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.1.i, label %.lr.ph.i.i.i.i.i.i.i.i.1.i

.lr.ph.i.i.i.i.i.i.i.i.1.i:                       ; preds = %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.1.i, %.lr.ph.i.i.i.i.i.i.i.i.1.i
  %.03.i.i.i.i.i.i.i.i.1.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.1.i ], [ %i.dh, %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.1.i ] ; 3 uses
  %.092.i.i.i.i.i.i.i.i.1.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.1.i ], [ %.val.i.i.i.i.i.1.i, %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.1.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.1.i, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.1.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.dl, i64 5, i1 false), !alias.scope !991
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %.03.i.i.i.i.i.i.i.i.1.i, align 8, !tbaa !21, !alias.scope !990
  %i.dm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.1.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.1.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.dm, %i.cr
  br i1 %.not.i.i.i.i.i.i.i.i.1.i, label %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.1.i, label %.lr.ph.i.i.i.i.i.i.i.i.1.i, !llvm.loop !976

_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.i, %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.1.i
  %.0.lcssa.i.i.i.i.i.i.i.i.1.i = phi ptr [ %i.dh, %_ZNKSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.1.i ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.1.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.1.i, i64 16
  %.not.i27.i.i.i.i.i.1.i = icmp eq ptr %.val.i.i.i.i.i.1.i, null
  br i1 %.not.i27.i.i.i.i.i.1.i, label %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.1.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.1.i
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 160), align 8, !tbaa !42
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.1.i, i64 noundef %i.dr) #26
  br label %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.1.i

_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.1.i: ; preds = %bb.q, %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i.i.i.i.i.1.i
  store ptr %i.dh, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 144), align 8, !tbaa !41
  store ptr %i.do, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 152), align 8, !tbaa !987
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.ds, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 160), align 8, !tbaa !42
  br label %_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.1.i

_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.1.i: ; preds = %_ZNSt6vectorIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i.1.i, %bb.o
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !33 ; 2 uses
  %.val6.i.i.i.i.i.i.i = load i32, ptr %i.r, align 8, !tbaa !75 ; 2 uses
  %i.dt = zext i32 %.val6.i.i.i.i.i.i.i to i64
  %.idx.i.i.i7.i.i.i.i.i.i.i = mul nuw nsw i64 %i.dt, 40
  %i.du = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i.i, i64 %.idx.i.i.i7.i.i.i.i.i.i.i
  %.not1.i.i.i8.i.i.i.i.i.i.i = icmp eq i32 %.val6.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i8.i.i.i.i.i.i.i, label %_ZN4llvm2cl4listIN12_GLOBAL__N_16RuleTyEbNS0_6parserIS3_EEEC2IJA33_cNS0_9MiscFlagsENS0_12OptionHiddenENS0_4descENS0_16list_initializerIS3_EENS0_11ValuesClassEEEEDpRKT_.exit.i, label %.lr.ph.i.i.i9.i.i.i.i.i.i.i

.lr.ph.i.i.i9.i.i.i.i.i.i.i:                      ; preds = %_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.1.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dz = ptrtoint ptr %0 to i64
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvm2cl6parserIN12_GLOBAL__N_16RuleTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i9.i.i.i.i.i.i.i
  %.02.i.i.i10.i.i.i.i.i.i.i = phi ptr [ %.val5.i.i.i.i.i.i.i, %.lr.ph.i.i.i9.i.i.i.i.i.i.i ], [ %i.eu, %_ZN4llvm2cl6parserIN12_GLOBAL__N_16RuleTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.02.i.i.i10.i.i.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02.i.i.i10.i.i.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !207 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.02.i.i.i10.i.i.i.i.i.i.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.02.i.i.i10.i.i.i.i.i.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !tbaa !176
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02.i.i.i10.i.i.i.i.i.i.i, i64 32
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !207
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ea, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %0, align 8, !tbaa !176
  store i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !207
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.dv, align 8, !tbaa !176
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !207
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %i.dw, align 8, !tbaa !21
  store i8 1, ptr %i.dx, align 4, !tbaa !214
  store i32 %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.dy, align 8, !tbaa !992
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 224), align 8, !tbaa !75 ; 2 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 228), align 4, !tbaa !76
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ec, %i.ef
  %.val.pre1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 216), align 8, !tbaa !33 ; 4 uses
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm2cl6parserIN12_GLOBAL__N_16RuleTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.s, !prof !158

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw [48 x i8], ptr %.val.pre1.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ed
  %i.eh = icmp uge ptr %0, %.val.pre1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ei = icmp ult ptr %0, %i.eg
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.eh, %i.ei
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !175

bb.t:                                             ; preds = %bb.s
  %i.ej = ptrtoint ptr %.val.pre1.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ek = sub i64 %i.dz, %i.ej
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE4growEm(i64 noundef %i.ee)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 216), align 8, !tbaa !33 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ek
  br label %_ZN4llvm2cl6parserIN12_GLOBAL__N_16RuleTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.s
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_2cl6parserIN12_GLOBAL__N_16RuleTyEE10OptionInfoELb0EE4growEm(i64 noundef %i.ee)
  %.val.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 216), align 8, !tbaa !33
  br label %_ZN4llvm2cl6parserIN12_GLOBAL__N_16RuleTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm2cl6parserIN12_GLOBAL__N_16RuleTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.r
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.pre1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.val.pre.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %0, %bb.r ], [ %i.el, %bb.t ], [ %0, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 224), align 8, !tbaa !75
  %i.em = zext i32 %.val3.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.en = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.em ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.en, ptr noundef nonnull readonly align 8 dereferenceable(48) %.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !353
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %i.eo, align 8, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ep, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.eq, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyIN12_GLOBAL__N_16RuleTyEEE, i64 16), ptr %i.eo, align 8, !tbaa !21
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 224), align 8, !tbaa !75
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 224), align 8, !tbaa !75
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15Profitabilities, i64 208), align 8, !tbaa !205, !nonnull !30, !align !125
  call void @_ZN4llvm2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %i.et, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %i.eu = getelementptr inbounds nuw i8, ptr %.02.i.i.i10.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i11.i.i.i.i.i.i.i = icmp eq ptr %i.eu, %i.du
  br i1 %.not.i.i.i11.i.i.i.i.i.i.i, label %_ZN4llvm2cl4listIN12_GLOBAL__N_16RuleTyEbNS0_6parserIS3_EEEC2IJA33_cNS0_9MiscFlagsENS0_12OptionHiddenENS0_4descENS0_16list_initializerIS3_EENS0_11ValuesClassEEEEDpRKT_.exit.i, label %bb.r

_ZN4llvm2cl4listIN12_GLOBAL__N_16RuleTyEbNS0_6parserIS3_EEEC2IJA33_cNS0_9MiscFlagsENS0_12OptionHiddenENS0_4descENS0_16list_initializerIS3_EENS0_11ValuesClassEEEEDpRKT_.exit.i: ; preds = %_ZN4llvm2cl6parserIN12_GLOBAL__N_16RuleTyEE16addLiteralOptionIiEEvNS_9StringRefERKT_S6_.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm2cl12list_storageIN12_GLOBAL__N_16RuleTyEbE8addValueIS3_EEvRKT_b.exit.i.1.i
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120) @_ZL15Profitabilities) #25
  %i.ev = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.q
  br i1 %i.ew, label %__cxx_global_var_init.11.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm2cl4listIN12_GLOBAL__N_16RuleTyEbNS0_6parserIS3_EEEC2IJA33_cNS0_9MiscFlagsENS0_12OptionHiddenENS0_4descENS0_16list_initializerIS3_EENS0_11ValuesClassEEEEDpRKT_.exit.i
  call void @free(ptr noundef %i.ev) #25
  br label %__cxx_global_var_init.11.exit

__cxx_global_var_init.11.exit:                    ; preds = %_ZN4llvm2cl4listIN12_GLOBAL__N_16RuleTyEbNS0_6parserIS3_EEEC2IJA33_cNS0_9MiscFlagsENS0_12OptionHiddenENS0_4descENS0_16list_initializerIS3_EENS0_11ValuesClassEEEEDpRKT_.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ex = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl4listIN12_GLOBAL__N_16RuleTyEbNS0_6parserIS3_EEED2Ev, ptr nonnull @_ZL15Profitabilities, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL22EnableReduction2Memory, i32 noundef 0, i32 noundef 0) #25
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 120), align 8, !tbaa !318
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL22EnableReduction2Memory, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 144), align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22EnableReduction2Memory, ptr nonnull align 1 dereferenceable(34) @.str.23, i64 33) #25
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 120), align 8, !tbaa !318
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 137), align 1, !tbaa !354
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 136), align 8, !tbaa !993
  %i.ey = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 10), align 2
  %i.ez = and i16 %i.ey, -97
  %i.fa = or disjoint i16 %i.ez, 32
  store i16 %i.fa, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 10), align 2
  store ptr @.str.24, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 32), align 8, !tbaa !176
  store i64 45, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableReduction2Memory, i64 40), align 8, !tbaa !207
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL22EnableReduction2Memory) #25
  %i.fb = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL22EnableReduction2Memory, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{null}
!1 = distinct !{!1, !92}
!2 = distinct !{!2, !92}
!3 = distinct !{!3, !92}
!4 = distinct !{!4, !92}
!5 = distinct !{null}
!6 = distinct !{!6, !92}
!7 = distinct !{!7, !92}
!8 = distinct !{!8, !92}
!9 = distinct !{!9, !92}
!10 = distinct !{!10, !92}
!11 = distinct !{!11, !92}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"vtable pointer", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"any pointer", !16, i64 0}
!23 = !{!"_ZTSSt14_Function_base", !16, i64 0, !22, i64 16}
!24 = !{!23, !22, i64 16}
!25 = !{!"any p2 pointer", !22, i64 0}
!26 = !{!"bool", !16, i64 0}
!27 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !25, i64 0, !17, i64 8, !17, i64 12, !26, i64 16}
!28 = !{!27, !26, i64 16}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!27, !25, i64 0}
!32 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !22, i64 0, !17, i64 8, !17, i64 12}
!33 = !{!32, !22, i64 0}
!34 = !{ptr @_ZN4llvm2cl6parserIN12_GLOBAL__N_16RuleTyEED2Ev}
!35 = !{!"p1 int", !22, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !35, i64 16}
!39 = !{!"p1 _ZTSN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEE", !22, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEESaIS5_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 0}
!42 = !{!40, !39, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_16RuleTyESaIS1_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!44 = !{!43, !22, i64 0}
!45 = !{!43, !22, i64 16}
!46 = !{!"p1 _ZTSN4llvm4LoopE", !22, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"p2 _ZTSN4llvm10BasicBlockE", !25, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!49, !48, i64 0}
!51 = !{!"p1 _ZTSN4llvm10BasicBlockE", !22, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"short", !16, i64 0}
!54 = !{!"p1 _ZTSN4llvm4TypeE", !22, i64 0}
!55 = !{!"p1 _ZTSN4llvm3UseE", !22, i64 0}
!56 = !{!"_ZTSN4llvm5ValueE", !16, i64 0, !16, i64 1, !16, i64 1, !53, i64 2, !17, i64 4, !17, i64 7, !17, i64 7, !17, i64 7, !17, i64 7, !54, i64 8, !55, i64 16}
!57 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !22, i64 0}
!58 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !57, i64 0, !57, i64 8}
!59 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !58, i64 0}
!60 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvLb0EvEEEE", !59, i64 0}
!61 = !{!"_ZTSN4llvm10ilist_nodeINS_10BasicBlockEJEEE", !60, i64 0}
!62 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_10BasicBlockENS_8FunctionEJEEE", !61, i64 0}
!63 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !22, i64 0}
!64 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0ENS_10BasicBlockEEELb0EEE", !63, i64 0, !63, i64 8}
!65 = !{!"_ZTSN4llvm12ilist_detail16node_base_parentINS_10BasicBlockEEE", !51, i64 0}
!66 = !{!"_ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !64, i64 0, !65, i64 16}
!67 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !66, i64 0}
!68 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !67, i64 0}
!69 = !{!"_ZTSN4llvm12simple_ilistINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !68, i64 0}
!70 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEENS_21SymbolTableListTraitsIS2_JS4_S7_EEEEE", !69, i64 0}
!71 = !{!"_ZTSN4llvm15SymbolTableListINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !70, i64 0}
!72 = !{!"p1 _ZTSN4llvm8FunctionE", !22, i64 0}
!73 = !{!"_ZTSN4llvm10BasicBlockE", !56, i64 0, !62, i64 24, !17, i64 40, !71, i64 48, !72, i64 72}
!74 = !{!73, !72, i64 72}
!75 = !{!32, !17, i64 8}
!76 = !{!32, !17, i64 12}
!77 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!78 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !77, i64 0, !17, i64 8, !26, i64 12}
!79 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !78, i64 0}
!80 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !79, i64 0}
!81 = !{!"_ZTSN4llvm2cl11opt_storageIjLb0ELb0EEE", !17, i64 0, !80, i64 8}
!82 = !{!81, !17, i64 0}
!83 = !{!"p1 _ZTSN4llvm18BlockFrequencyInfoE", !22, i64 0}
!84 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm18BlockFrequencyInfoELb0EE", !83, i64 0}
!85 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm18BlockFrequencyInfoESt14default_deleteIS1_EEE", !84, i64 0}
!86 = !{!"_ZTSSt5tupleIJPN4llvm18BlockFrequencyInfoESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm18BlockFrequencyInfoESt14default_deleteIS1_EE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm18BlockFrequencyInfoESt14default_deleteIS1_ELb1ELb1EE", !87, i64 0}
!89 = !{!"_ZTSSt10unique_ptrIN4llvm18BlockFrequencyInfoESt14default_deleteIS1_EE", !88, i64 0}
!90 = !{!"_ZTSN4llvm25OptimizationRemarkEmitterE", !72, i64 0, !83, i64 8, !89, i64 16}
!91 = !{!90, !72, i64 0}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"p1 omnipotent char", !22, i64 0}
!94 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !93, i64 0}
!95 = !{!94, !93, i64 0}
!96 = !{!"long", !16, i64 0}
!97 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !94, i64 0, !96, i64 8, !16, i64 16}
!98 = !{!97, !93, i64 0}
!99 = !{!97, !96, i64 8}
!100 = !{!16, !16, i64 0}
!101 = !{!"_ZTSN4llvm18DiagnosticSeverityE", !16, i64 0}
!102 = !{!"_ZTSN4llvm14DiagnosticInfoE", !17, i64 8, !101, i64 12}
!103 = !{!"p1 _ZTSN4llvm6DIFileE", !22, i64 0}
!104 = !{!"_ZTSN4llvm18DiagnosticLocationE", !103, i64 0, !17, i64 8, !17, i64 12}
!105 = !{!"_ZTSN4llvm30DiagnosticInfoWithLocationBaseE", !102, i64 0, !72, i64 16, !104, i64 24}
!106 = !{!"_ZTSN4llvm9StringRefE", !93, i64 0, !96, i64 8}
!107 = !{!"_ZTSSt22_Optional_payload_baseImE", !16, i64 0, !26, i64 8}
!108 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !107, i64 0}
!109 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !108, i64 0}
!110 = !{!"_ZTSSt8optionalImE", !109, i64 0}
!111 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_30DiagnosticInfoOptimizationBase8ArgumentEvEE", !32, i64 0}
!112 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EEE", !111, i64 0}
!113 = !{!"_ZTSN4llvm15SmallVectorImplINS_30DiagnosticInfoOptimizationBase8ArgumentEEE", !112, i64 0}
!114 = !{!"_ZTSN4llvm18SmallVectorStorageINS_30DiagnosticInfoOptimizationBase8ArgumentELj4EEE", !16, i64 0}
!115 = !{!"_ZTSN4llvm11SmallVectorINS_30DiagnosticInfoOptimizationBase8ArgumentELj4EEE", !113, i64 0, !114, i64 16}
!116 = !{!"_ZTSN4llvm30DiagnosticInfoOptimizationBaseE", !105, i64 0, !93, i64 40, !106, i64 48, !110, i64 64, !115, i64 80, !26, i64 416, !17, i64 420}
!117 = !{!"_ZTSN4llvm28DiagnosticInfoIROptimizationE", !116, i64 0, !51, i64 424}
!118 = !{!117, !51, i64 424}
!119 = !{!27, !17, i64 8}
!120 = !{!27, !17, i64 12}
!121 = !{!22, !22, i64 0}
!122 = !{!"p1 _ZTSN4llvm13DominatorTreeE", !22, i64 0}
!123 = !{!"p1 _ZTSN4llvm8LoopInfoE", !22, i64 0}
!124 = !{!"p1 _ZTSN4llvm15ScalarEvolutionE", !22, i64 0}
!125 = !{i64 8}
!126 = !{!56, !55, i64 16}
!127 = !{!"p1 _ZTSN4llvm5ValueE", !22, i64 0}
!128 = !{!"p2 _ZTSN4llvm3UseE", !25, i64 0}
!129 = !{!"p1 _ZTSN4llvm4UserE", !22, i64 0}
!130 = !{!"_ZTSN4llvm3UseE", !127, i64 0, !55, i64 8, !128, i64 16, !129, i64 24}
!131 = !{!130, !129, i64 24}
!132 = !{!65, !51, i64 0}
!133 = !{!130, !55, i64 8}
!134 = !{!"llvm.loop.unswitch.partial.disable"}
!135 = !{!"p1 _ZTSN4llvm14DependenceInfoE", !22, i64 0}
end_hunk_0
begin_hunk_1_@llvm.umax.i32
!779 = distinct !{!779, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_"}
!780 = distinct !{!780, !779, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_: argument 0"}
!781 = distinct !{!781, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!782 = distinct !{!782, !781, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!783 = distinct !{!783, i1 true, !"_ZNK4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!784 = distinct !{!784, !783, !"_ZNK4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!785 = distinct !{!785, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!786 = distinct !{!786, !785, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!787 = distinct !{!787, i1 true, !"_ZNK4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!788 = distinct !{!788, !787, !"_ZNK4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!789 = distinct !{!789, i1 true, !"_ZN4llvm6detail12DenseSetImplIPNS_11InstructionENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_"}
!790 = distinct !{!790, !789, !"_ZN4llvm6detail12DenseSetImplIPNS_11InstructionENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_: argument 0"}
!791 = distinct !{!791, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_"}
!792 = distinct !{!792, !791, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_: argument 0"}
!793 = distinct !{!793, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_"}
!794 = distinct !{!794, !793, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_: argument 0"}
!795 = distinct !{!795, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!796 = distinct !{!796, !795, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!797 = distinct !{!797, i1 true, !"_ZNK4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!798 = distinct !{!798, !797, !"_ZNK4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!799 = distinct !{!799, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!800 = distinct !{!800, !799, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!801 = distinct !{!801, i1 true, !"_ZNK4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!802 = distinct !{!802, !801, !"_ZNK4llvm8DenseMapIPNS_11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!803 = !{!284, !35, i64 0}
!804 = !{i64 4}
!805 = !{!284, !281, i64 8}
!806 = !{!284, !283, i64 24}
!807 = !{!784, !782, !780, !778, !776}
!808 = !{!780, !778, !776}
!809 = !{!788, !786, !780, !778, !776}
!810 = !{!798, !796, !794, !792, !790}
!811 = !{!794, !792, !790}
!812 = !{!802, !800, !794, !792, !790}
!813 = distinct !{null}
!814 = distinct !{!814, i1 true, !"_ZSt19__relocate_object_aIN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES5_SaIS5_EEvPT_PT0_RT1_"}
!815 = distinct !{!815, !814, !"_ZSt19__relocate_object_aIN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!816 = distinct !{!816, !814, !"_ZSt19__relocate_object_aIN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!817 = distinct !{!817, !92}
!818 = distinct !{!818, i1 true, !"_ZSt19__relocate_object_aIN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES5_SaIS5_EEvPT_PT0_RT1_"}
!819 = distinct !{!819, !818, !"_ZSt19__relocate_object_aIN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!820 = distinct !{!820, !818, !"_ZSt19__relocate_object_aIN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!821 = !{!816, !815}
!822 = !{!820, !819}
!823 = !{!"_ZTSN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEE", !17, i64 0, !17, i64 0, !16, i64 8}
!824 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_3cfg6UpdateIPNS_10BasicBlockEEEvEE", !32, i64 0}
!825 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EEE", !824, i64 0}
!826 = !{!"_ZTSN4llvm15SmallVectorImplINS_3cfg6UpdateIPNS_10BasicBlockEEEEE", !825, i64 0}
!827 = !{!"_ZTSN4llvm18SmallVectorStorageINS_3cfg6UpdateIPNS_10BasicBlockEEELj4EEE", !16, i64 0}
!828 = !{!"_ZTSN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj4EEE", !826, i64 0, !827, i64 16}
!829 = !{!"_ZTSN4llvm9GraphDiffIPNS_10BasicBlockELb0EEE", !823, i64 0, !823, i64 304, !26, i64 608, !828, i64 616}
!830 = !{!829, !26, i64 608}
!831 = distinct !{!831, i1 true, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5beginEv"}
!832 = distinct !{!832, !831, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5beginEv: argument 0"}
!833 = distinct !{!833, i1 true, !"_ZN4llvm16DenseMapIteratorISt4pairIPNS_10BasicBlockES3_EiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE"}
!834 = distinct !{!834, !833, !"_ZN4llvm16DenseMapIteratorISt4pairIPNS_10BasicBlockES3_EiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!835 = distinct !{!835, !92}
!836 = distinct !{!836, !92}
!837 = !{!832}
!838 = !{!834, !832}
!839 = !{!"_ZTSSt4pairIS_IPN4llvm10BasicBlockES2_EiE", !343, i64 0, !17, i64 16}
!840 = !{!839, !17, i64 16}
!841 = !{!839, !51, i64 0}
!842 = !{!839, !51, i64 8}
!843 = !{i64 0, i64 8, !347, i64 8, i64 8, !280, i64 16, i64 4, !212}
!844 = distinct !{!844, !92}
!845 = distinct !{!845, !92}
!846 = distinct !{!846, !92}
!847 = distinct !{!847, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!848 = distinct !{!848, !847, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!849 = distinct !{!849, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!850 = distinct !{!850, !849, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!851 = !{!850, !848}
!852 = distinct !{!852, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!853 = distinct !{!853, !852, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!854 = distinct !{!854, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!855 = distinct !{!855, !854, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!856 = !{!855, !853}
!857 = distinct !{!857, !92}
!858 = distinct !{!858, !92}
!859 = distinct !{!859, !92}
!860 = distinct !{!860, !92}
!861 = distinct !{!861, !92}
!862 = !{!"p1 _ZTSN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEE", !22, i64 0}
!863 = !{!"p1 bool", !22, i64 0}
!864 = !{!"_ZTSZN4llvm3cfg15LegalizeUpdatesIPNS_10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS7_EEbbEUlRKNS5_IS3_EESE_E_", !862, i64 0, !863, i64 8}
!865 = !{!864, !862, i64 0}
!866 = !{!862, !862, i64 0}
!867 = !{!863, !863, i64 0}
!868 = distinct !{!868, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!869 = distinct !{!869, !868, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!870 = distinct !{!870, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!871 = distinct !{!871, !870, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!872 = distinct !{!872, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!873 = distinct !{!873, !872, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!874 = distinct !{!874, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!875 = distinct !{!875, !874, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!876 = distinct !{!876, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!877 = distinct !{!877, !876, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!878 = distinct !{!878, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!879 = distinct !{!879, !878, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!880 = distinct !{!880, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!881 = distinct !{!881, !880, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!882 = distinct !{!882, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!883 = distinct !{!883, !882, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!884 = distinct !{!884, !92}
!885 = distinct !{!885, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!886 = distinct !{!886, !885, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!887 = distinct !{!887, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!888 = distinct !{!888, !887, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!889 = distinct !{!889, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!890 = distinct !{!890, !889, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!891 = distinct !{!891, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!892 = distinct !{!892, !891, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!893 = distinct !{!893, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!894 = distinct !{!894, !893, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!895 = distinct !{!895, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!896 = distinct !{!896, !895, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!897 = distinct !{!897, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!898 = distinct !{!898, !897, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!899 = distinct !{!899, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!900 = distinct !{!900, !899, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!901 = distinct !{!901, !92}
!902 = distinct !{!902, !92}
!903 = !{!871, !869}
!904 = !{!875, !873}
!905 = !{!879, !877}
!906 = !{!883, !881}
!907 = !{!888, !886}
!908 = !{!892, !890}
!909 = !{!896, !894}
!910 = !{!900, !898}
!911 = distinct !{!911, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!912 = distinct !{!912, !911, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!913 = distinct !{!913, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!914 = distinct !{!914, !913, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!915 = distinct !{!915, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!916 = distinct !{!916, !915, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!917 = distinct !{!917, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!918 = distinct !{!918, !917, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!919 = distinct !{!919, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!920 = distinct !{!920, !919, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!921 = distinct !{!921, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!922 = distinct !{!922, !921, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!923 = distinct !{!923, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!924 = distinct !{!924, !923, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!925 = distinct !{!925, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!926 = distinct !{!926, !925, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!927 = distinct !{!927, !92}
!928 = !{!914, !912}
!929 = !{!918, !916}
!930 = !{!922, !920}
!931 = !{!926, !924}
!932 = distinct !{!932, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!933 = distinct !{!933, !932, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!934 = distinct !{!934, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!935 = distinct !{!935, !934, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!936 = distinct !{!936, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!937 = distinct !{!937, !936, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!938 = distinct !{!938, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!939 = distinct !{!939, !938, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!940 = distinct !{!940, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!941 = distinct !{!941, !940, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!942 = distinct !{!942, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!943 = distinct !{!943, !942, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!944 = distinct !{!944, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv"}
!945 = distinct !{!945, !944, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E6getRepEv: argument 0"}
!946 = distinct !{!946, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv"}
!947 = distinct !{!947, !946, !"_ZNK4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE6getRepEv: argument 0"}
!948 = distinct !{!948, !92}
!949 = !{!935, !933}
!950 = !{!939, !937}
!951 = !{!943, !941}
!952 = !{!947, !945}
!953 = distinct !{!953, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6getRepEv"}
!954 = distinct !{!954, !953, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6getRepEv: argument 0"}
!955 = distinct !{!955, i1 true, !"_ZNK4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE6getRepEv"}
!956 = distinct !{!956, !955, !"_ZNK4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE6getRepEv: argument 0"}
!957 = !{!956, !954}
!958 = distinct !{!958, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6getRepEv"}
!959 = distinct !{!959, !958, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E6getRepEv: argument 0"}
!960 = distinct !{!960, i1 true, !"_ZNK4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE6getRepEv"}
!961 = distinct !{!961, !960, !"_ZNK4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE6getRepEv: argument 0"}
!962 = !{!961, !959}
!963 = !{i64 0, i64 8, !349, i64 8, i64 8, !280, i64 16, i64 4, !212}
!964 = distinct !{!964, !92}
!965 = distinct !{!965, !92}
!966 = distinct !{!966, !92}
!967 = distinct !{!967, !92}
!968 = distinct !{!968, !92}
!969 = distinct !{!969, !92}
!970 = distinct !{!970, !92}
!971 = distinct !{!971, i1 true, !"_ZN4llvm2cl6valuesIJNS0_15OptionEnumValueES2_S2_S2_EEENS0_11ValuesClassEDpT_"}
!972 = distinct !{!972, !971, !"_ZN4llvm2cl6valuesIJNS0_15OptionEnumValueES2_S2_S2_EEENS0_11ValuesClassEDpT_: argument 0"}
!973 = distinct !{!973, i1 true, !"_ZSt19__relocate_object_aIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEES5_SaIS5_EEvPT_PT0_RT1_"}
!974 = distinct !{!974, !973, !"_ZSt19__relocate_object_aIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!975 = distinct !{!975, !973, !"_ZSt19__relocate_object_aIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!976 = distinct !{!976, !92}
!977 = distinct !{!977, i1 true, !"_ZSt19__relocate_object_aIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEES5_SaIS5_EEvPT_PT0_RT1_"}
!978 = distinct !{!978, !977, !"_ZSt19__relocate_object_aIN4llvm2cl11OptionValueIN12_GLOBAL__N_16RuleTyEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1:It1"}
!979 = !{!"_ZTSN4llvm2cl15OptionValueBaseIiLb0EEE", !350, i64 0}
!980 = !{!"_ZTSN4llvm2cl11OptionValueIiEE", !979, i64 0}
!981 = !{!"_ZTSN4llvm2cl11opt_storageIiLb0ELb0EEE", !17, i64 0, !980, i64 8}
!982 = !{!981, !17, i64 0}
!983 = !{!350, !17, i64 8}
!984 = !{!78, !17, i64 8}
!985 = !{!972}
!986 = !{!203, !203, i64 0}
!987 = !{!40, !39, i64 8}
!988 = !{!974}
!989 = !{!975, !974}
!990 = !{!975}
!991 = !{!975, !978}
!992 = !{!213, !16, i64 8}
!993 = !{!314, !26, i64 8}
end_hunk_1
