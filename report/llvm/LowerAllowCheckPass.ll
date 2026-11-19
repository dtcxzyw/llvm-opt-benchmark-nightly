Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerAllowCheckPass?download=true
inline.NumInlined: 862
inline.NumDeleted: 563
begin_hunk_0_@_ZN4llvm19LowerAllowCheckPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.aac = icmp eq ptr %.sroa.579.1.i, %i.y
  br i1 %i.aac, label %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit.i, label %bb.e

._crit_edge.loopexit.i:                           ; preds = %.lr.ph130.i
  %.pre145.i = load i32, ptr %i.w, align 8, !tbaa !26
  %i.aad = icmp ne i32 %.pre145.i, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit.i
  %.not.i52.i = phi i1 [ %i.aad, %._crit_edge.loopexit.i ], [ false, %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit.i ] ; 2 uses
  %.not.i53.i = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not.i53.i, label %_ZNSt10unique_ptrIN4llvm21RandomNumberGeneratorESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm21RandomNumberGeneratorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm21RandomNumberGeneratorEEclEPS1_.exit.i.i: ; preds = %._crit_edge.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1.i, i64 noundef 2504) #15
  br label %_ZNSt10unique_ptrIN4llvm21RandomNumberGeneratorESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm21RandomNumberGeneratorESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm21RandomNumberGeneratorEEclEPS1_.exit.i.i, %._crit_edge.i, %_ZN4llvm12instructionsERNS_8FunctionE.exit.i
  %.not.i52261.i = phi i1 [ %.not.i52.i, %_ZNKSt14default_deleteIN4llvm21RandomNumberGeneratorEEclEPS1_.exit.i.i ], [ %.not.i52.i, %._crit_edge.i ], [ false, %_ZN4llvm12instructionsERNS_8FunctionE.exit.i ]
  %i.aae = load ptr, ptr %17, align 8, !tbaa !25  ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.v
  br i1 %i.aaf, label %_ZL16lowerAllowChecksRN4llvm8FunctionERNS_15AnalysisManagerIS0_JEEERKNS_19LowerAllowCheckPass7OptionsE.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10unique_ptrIN4llvm21RandomNumberGeneratorESt14default_deleteIS1_EED2Ev.exit.i
  call void @free(ptr noundef %i.aae) #14
  br label %_ZL16lowerAllowChecksRN4llvm8FunctionERNS_15AnalysisManagerIS0_JEEERKNS_19LowerAllowCheckPass7OptionsE.exit

.lr.ph130.i:                                      ; preds = %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit.i, %.lr.ph130.i
  %.030129.i = phi ptr [ %i.aal, %.lr.ph130.i ], [ %.pre.i, %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit.i ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.030129.i, align 8 ; 3 uses
  %.sroa.5.0..030.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.030129.i, i64 8
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..030.sroa_idx.i, align 8
  %i.aag = trunc nuw i8 %.sroa.5.0.copyload.i to i1
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !203
  %i.aaj = call noundef ptr @_ZN4llvm11ConstantInt7getBoolEPNS_4TypeEb(ptr noundef %i.aai, i1 noundef zeroext %i.aag) #14
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.copyload.i, ptr noundef %i.aaj) #14
  %i.aak = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.copyload.i) #14 ; 0 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.030129.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.aal, %i.fa
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph130.i

_ZL16lowerAllowChecksRN4llvm8FunctionERNS_15AnalysisManagerIS0_JEEERKNS_19LowerAllowCheckPass7OptionsE.exit: ; preds = %_ZNSt10unique_ptrIN4llvm21RandomNumberGeneratorESt14default_deleteIS1_EED2Ev.exit.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br i1 %.not.i52261.i, label %.loopexit, label %.thread

.thread:                                          ; preds = %_ZL16lowerAllowChecksRN4llvm8FunctionERNS_15AnalysisManagerIS0_JEEERKNS_19LowerAllowCheckPass7OptionsE.exit
  %.ptr1.i11 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i11, ptr %0, align 8, !tbaa !23, !alias.scope !204
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.aam, align 8, !tbaa !105, !alias.scope !204
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.aao, align 8, !tbaa !20, !alias.scope !204
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aaq, ptr %i.aap, align 8, !tbaa !23, !alias.scope !204
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.aar, align 8, !tbaa !105, !alias.scope !204
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.aas, align 4, !tbaa !106, !alias.scope !204
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.aat, align 8, !tbaa !20, !alias.scope !204
  store i32 1, ptr %i.aan, align 4, !tbaa !106, !alias.scope !204, !noalias !205
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i11, align 8, !tbaa !108, !alias.scope !204, !noalias !205
  br label %.critedge

.loopexit:                                        ; preds = %_ZL16lowerAllowChecksRN4llvm8FunctionERNS_15AnalysisManagerIS0_JEEERKNS_19LowerAllowCheckPass7OptionsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.aau = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aau, i8 0, i64 64, i1 false), !alias.scope !206
  %i.aav = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  store ptr %i.aav, ptr %18, align 8, !tbaa !23, !alias.scope !206
  %i.aaw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 2, ptr %i.aaw, align 8, !tbaa !105, !alias.scope !206
  %i.aax = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i8 1, ptr %i.aau, align 8, !tbaa !20, !alias.scope !206
  %i.aay = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %18, i64 64
  store ptr %i.aaz, ptr %i.aay, align 8, !tbaa !23, !alias.scope !206
  %i.aba = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i32 2, ptr %i.aba, align 8, !tbaa !105, !alias.scope !206
  %i.abb = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  store i8 1, ptr %i.abb, align 8, !tbaa !20, !alias.scope !206
  store i32 1, ptr %i.aax, align 4, !tbaa !106, !noalias !207
  store ptr @_ZN4llvm11CFGAnalyses6SetKeyE, ptr %i.aav, align 8, !tbaa !108, !noalias !207
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.abc, ptr noundef nonnull align 8 dereferenceable(80) %18) #14
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.abd, ptr noundef nonnull %i.abe, ptr noundef nonnull align 8 dereferenceable(40) %i.aay) #14
  %i.abf = load i8, ptr %i.abb, align 8, !tbaa !20, !range !21, !noundef !22
  %i.abg = trunc nuw i8 %i.abf to i1
  br i1 %i.abg, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %.loopexit
  %i.abh = load ptr, ptr %i.aay, align 8, !tbaa !23
  call void @free(ptr noundef %i.abh) #14
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.cd, %.loopexit
  %i.abi = load i8, ptr %i.aau, align 8, !tbaa !20, !range !21, !noundef !22
  %i.abj = trunc nuw i8 %i.abi to i1
  br i1 %i.abj, label %_ZN4llvm17PreservedAnalysesD2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.abk = load ptr, ptr %18, align 8, !tbaa !23
  call void @free(ptr noundef %i.abk) #14
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit

_ZN4llvm17PreservedAnalysesD2Ev.exit:             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_ZN4llvm17PreservedAnalysesD2Ev.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19LowerAllowCheckPass11IsRequestedEv() local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL10RandomRate, i64 8), align 8, !tbaa !41
  %.not = icmp ne i16 %i.a, 0
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19HotPercentileCutoff, i64 8), align 8
  %i.c = icmp ne i16 %i.b, 0
  %i.d = select i1 %.not, i1 true, i1 %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19LowerAllowCheckPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.22, i64 55), i64 19) #14, !inline_history !208 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 14 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213  ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #14 ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !213
  br label %_ZN4llvm13PassInfoMixinINS_19LowerAllowCheckPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_19LowerAllowCheckPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.n, ptr %i.f, align 8, !tbaa !213
  br label %_ZN4llvm13PassInfoMixinINS_19LowerAllowCheckPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_19LowerAllowCheckPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !212
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm13PassInfoMixinINS_19LowerAllowCheckPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.5, i64 noundef 1) #14 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %_ZN4llvm13PassInfoMixinINS_19LowerAllowCheckPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit
  store i8 60, ptr %i.o, align 1
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.f, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %i.u = load ptr, ptr %0, align 8, !tbaa !214    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !214  ; 2 uses
  %.not6264 = icmp eq ptr %i.u, %i.w
  br i1 %.not6264, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.n
  %i.x = trunc nuw i8 %.sroa.050.1 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.sroa.050.0.lcssa = phi i1 [ true, %_ZN4llvm11raw_ostreamlsEPKc.exit ], [ %i.x, %._crit_edge.loopexit ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !216
  %.not = icmp eq i32 %i.z, 0
  %.pre72 = load ptr, ptr %i.f, align 8, !tbaa !213 ; 4 uses
  br i1 %.not, label %bb.t, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit32

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit ] ; 2 uses
  %.sroa.041.066 = phi ptr [ %i.bk, %bb.n ], [ %i.u, %_ZN4llvm11raw_ostreamlsEPKc.exit ] ; 2 uses
  %.sroa.050.065 = phi i8 [ %.sroa.050.1, %bb.n ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit ] ; 2 uses
  %i.aa = load i32, ptr %.sroa.041.066, align 4, !tbaa !51 ; 2 uses
  %.not18 = icmp eq i32 %i.aa, 0
  br i1 %.not18, label %bb.n, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit:   ; preds = %.lr.ph
  %i.ab = trunc nuw i8 %.sroa.050.065 to i1       ; 3 uses
  %not.63 = xor i1 %i.ab, true
  %spec.select59 = zext i1 %not.63 to i64         ; 4 uses
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !212
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !213 ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, %spec.select59
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  %spec.select = select i1 %i.ab, ptr @.str.7, ptr @.str.6
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %spec.select, i64 noundef %spec.select59) #14 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.pre68 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.h:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  br i1 %i.ab, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 @.str.6, i64 %spec.select59, i1 false)
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %spec.select59 ; 2 uses
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.g, %bb.h, %bb.i
  %i.al = phi ptr [ %.pre68, %bb.g ], [ %i.ak, %bb.i ], [ %i.ad, %bb.h ] ; 2 uses
  %.0.i = phi ptr [ %i.ai, %bb.g ], [ %1, %bb.i ], [ %1, %bb.h ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 8
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.as = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.8, i64 noundef 8) #14
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i64 6589723269915768163, ptr %i.al, align 1
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !213
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.at, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.j, %bb.k
  %.0.i.i20 = phi ptr [ %i.as, %bb.j ], [ %.0.i, %bb.k ]
  %i.aw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i20, i64 noundef %indvars.iv) #14 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !212
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !213 ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ult i64 %i.bd, 2
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.bf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull @.str.9, i64 noundef 2) #14
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  store i16 15709, ptr %i.ba, align 1
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !213
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store ptr %i.bh, ptr %i.az, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

_ZN4llvm11raw_ostreamlsEPKc.exit24:               ; preds = %bb.l, %bb.m
  %.0.i.i23 = phi ptr [ %i.bf, %bb.l ], [ %i.aw, %bb.m ]
  %i.bi = zext i32 %i.aa to i64
  %i.bj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i23, i64 noundef %i.bi) #14 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit24, %.lr.ph
  %.sroa.050.1 = phi i8 [ %.sroa.050.065, %.lr.ph ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit24 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.041.066, i64 4 ; 2 uses
  %.not62 = icmp eq ptr %i.bk, %i.w
  br i1 %.not62, label %._crit_edge.loopexit, label %.lr.ph

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit32: ; preds = %._crit_edge
  %not. = xor i1 %.sroa.050.0.lcssa, true
  %spec.select61 = zext i1 %not. to i64           ; 4 uses
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !212
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %.pre72 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, %spec.select61
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit32
  %spec.select60 = select i1 %.sroa.050.0.lcssa, ptr @.str.7, ptr @.str.6
  %i.bq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %spec.select60, i64 noundef %spec.select61) #14 ; 2 uses
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %.pre70 = load ptr, ptr %.phi.trans.insert69, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit35

bb.p:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit32
  br i1 %.sroa.050.0.lcssa, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit35, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre72, ptr nonnull align 1 @.str.6, i64 %spec.select61, i1 false)
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %spec.select61 ; 2 uses
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit35

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit35:    ; preds = %bb.o, %bb.p, %bb.q
  %i.bt = phi ptr [ %.pre70, %bb.o ], [ %i.bs, %bb.q ], [ %.pre72, %bb.p ] ; 2 uses
  %.0.i34 = phi ptr [ %i.bq, %bb.o ], [ %1, %bb.q ], [ %1, %bb.p ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i34, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !212
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ult i64 %i.by, 14
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit35
  %i.ca = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i34, ptr noundef nonnull @.str.10, i64 noundef 14) #14
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit38

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit35
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i34, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.bt, ptr noundef nonnull align 1 dereferenceable(14) @.str.10, i64 14, i1 false)
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !213
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 14
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit38

_ZN4llvm11raw_ostreamlsEPKc.exit38:               ; preds = %bb.r, %bb.s
  %.0.i.i37 = phi ptr [ %i.ca, %bb.r ], [ %.0.i34, %bb.s ]
  %i.ce = load i32, ptr %i.y, align 8, !tbaa !216
  %i.cf = zext i32 %i.ce to i64
  %i.cg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i37, i64 noundef %i.cf) #14 ; 0 uses
  %.pre71 = load ptr, ptr %i.f, align 8, !tbaa !213
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit38, %._crit_edge
  %i.ch = phi ptr [ %.pre71, %_ZN4llvm11raw_ostreamlsEPKc.exit38 ], [ %.pre72, %._crit_edge ] ; 3 uses
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !212
  %.not.i39 = icmp ult ptr %i.ch, %i.ci
  br i1 %.not.i39, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 62) #14 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.v:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ck, ptr %i.f, align 8, !tbaa !213
  store i8 62, ptr %i.ch, align 1, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.u, %bb.v
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEE16handleOccurrenceEjNS_9StringRefES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !218
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = call noundef zeroext i1 @_ZN4llvm2cl6parserIfE5parseERNS0_6OptionENS_9StringRefES5_Rf(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #14 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load float, ptr %i.a, align 4, !tbaa !218
  store float %i.e, ptr %i.d, align 8, !tbaa !61
  %i.f = trunc i32 %1 to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.f, ptr %i.g, align 4, !tbaa !219
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %.not.i.i.not = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not, label %bb.c, label %_ZNKSt8functionIFvRKfEEclES1_.exit

_ZNKSt8functionIFvRKfEEclES1_.exit:               ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !221
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #14, !inline_history !217
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt8functionIFvRKfEEclES1_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm2cl3optIfLb0ENS0_6parserIfEEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 2
}

declare void @_ZN4llvm2cl6Option6anchorEv(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIfLb0ENS0_6parserIfEEEE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #14, !inline_history !222 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.i) #14, !inline_history !223
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  tail call void @free(ptr noundef %i.k) #14, !inline_history !223
  br label %_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEED2Ev.exit

_ZN4llvm2cl3optIfLb0ENS0_6parserIfEEED2Ev.exit:   ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm2cl3optIfLb0ENS0_6parserIfEEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef i64 @_ZNK4llvm2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %0) #14
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm2cl3optIfLb0ENS0_6parserIfEEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZNK4llvm2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm2cl3optIfLb0ENS0_6parserIfEEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::cl::OptionValue.2", align 8 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !61 ; 2 uses
  br i1 %2, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i8, ptr %i.a, align 4, !tbaa !71, !range !21, !noundef !22
end_hunk_0
