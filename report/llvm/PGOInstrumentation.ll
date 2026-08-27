Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PGOInstrumentation?download=true
inline.NumInlined: 8424
inline.NumDeleted: 4072
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZL20annotateAllFunctionsRN4llvm6ModuleENS_9StringRefES2_RNS_3vfs10FileSystemENS_12function_refIFRNS_17TargetLibraryInfoERNS_8FunctionEEEENS6_IFPNS_21BranchProbabilityInfoESA_EEENS6_IFPNS_18BlockFrequencyInfoESA_EEENS6_IFPNS_8LoopInfoESA_EEEPNS_18ProfileSummaryInfoEb:bb.a
  %.idx.i.i176.i = shl nuw nsw i64 %i.but, 4
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bus, i64 %.idx.i.i176.i
  %.not10.i.i.i = icmp eq i32 %.pre303, 0
  br i1 %.not10.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i, label %.lr.ph.i1.i.i

.lr.ph.i1.i.i:                                    ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, %.lr.ph.i1.i.i
  %.011.i.i.i = phi ptr [ %i.buy, %.lr.ph.i1.i.i ], [ %i.bus, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i ] ; 3 uses
  %i.buv = load ptr, ptr %.011.i.i.i, align 8, !tbaa !755
  %i.buw = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.bux = load i64, ptr %i.buw, align 8, !tbaa !757
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.buv, i64 noundef %i.bux, i64 noundef 16) #25
  %i.buy = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.buy, %i.buu
  br i1 %.not.i2.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, label %.lr.ph.i1.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i1.i.i
  %.pre.i177.i = load ptr, ptr %i.oi, align 8, !tbaa !27
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i.thread, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i
  %i.buz = phi ptr [ %.pre.i177.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i ], [ %i.bus, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i ], [ %i.bty, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i.thread ] ; 2 uses
  %i.bva = icmp eq ptr %i.buz, %i.on
  br i1 %i.bva, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i, label %bb.ic

bb.ic:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  call void @free(ptr noundef %i.buz) #25
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i: ; preds = %bb.ic, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.bvb = load ptr, ptr %i.ok, align 8, !tbaa !27 ; 2 uses
  %i.bvc = icmp eq ptr %i.bvb, %i.oo
  br i1 %i.bvc, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i, label %bb.id

bb.id:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i
  call void @free(ptr noundef %i.bvb) #25
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i: ; preds = %bb.id, %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i
  %i.bvd = load ptr, ptr %i.of, align 8, !tbaa !752 ; 3 uses
  %.not.i.i.i.i.i133 = icmp eq ptr %i.bvd, null
  br i1 %.not.i.i.i.i.i133, label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i, label %bb.ie

bb.ie:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i
  %i.bve = load ptr, ptr %i.op, align 8, !tbaa !762
  %i.bvf = ptrtoint ptr %i.bve to i64
  %i.bvg = ptrtoint ptr %i.bvd to i64
  %i.bvh = sub i64 %i.bvf, %i.bvg
  call void @_ZdlPvm(ptr noundef nonnull %i.bvd, i64 noundef %i.bvh) #26
  br label %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i:  ; preds = %bb.ie, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i
  %i.bvi = load ptr, ptr %19, align 8, !tbaa !27  ; 2 uses
  %i.bvj = icmp eq ptr %i.bvi, %i.oq
  br i1 %i.bvj, label %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i, label %bb.if

bb.if:                                            ; preds = %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i
  call void @free(ptr noundef %i.bvi) #25
  br label %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i

_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i: ; preds = %bb.if, %_ZNSt6vectorIPN4llvm4LoopESaIS2_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.bvk = load ptr, ptr %i.mw, align 8, !tbaa !27 ; 2 uses
  %i.bvl = load i32, ptr %i.my, align 8, !tbaa !407 ; 2 uses
  %i.bvm = zext i32 %i.bvl to i64
  %.idx.i183.i = shl nuw nsw i64 %i.bvm, 3
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvk, i64 %.idx.i183.i
  %.not6.i.i184.i = icmp eq i32 %i.bvl, 0
  br i1 %.not6.i.i184.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, label %.lr.ph.i.i185.i

.lr.ph.i.i185.i:                                  ; preds = %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i, %.lr.ph.i.i185.i
  %.07.i.i186.i = phi ptr [ %i.bvx, %.lr.ph.i.i185.i ], [ %i.bvk, %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i ] ; 3 uses
  %i.bvo = load ptr, ptr %i.mw, align 8, !tbaa !27
  %i.bvp = ptrtoint ptr %.07.i.i186.i to i64
  %i.bvq = ptrtoint ptr %i.bvo to i64
  %i.bvr = sub i64 %i.bvp, %i.bvq
  %sum.shift.i.i187.i = lshr i64 %i.bvr, 4
  %i.bvs = trunc i64 %sum.shift.i.i187.i to i32
  %i.bvt = and i32 %i.bvs, 2147483647
  %i.bvu = call i32 @llvm.umin.i32(i32 %i.bvt, i32 30)
  %.sroa.speculated.i.i.i188.i = zext nneg i32 %i.bvu to i64
  %i.bvv = shl nuw nsw i64 448, %.sroa.speculated.i.i.i188.i
  %i.bvw = load ptr, ptr %.07.i.i186.i, align 8, !tbaa !57
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bvw, i64 noundef %i.bvv, i64 noundef 16) #25
  %i.bvx = getelementptr inbounds nuw i8, ptr %.07.i.i186.i, i64 8 ; 2 uses
  %.not.i.i189.i = icmp eq ptr %i.bvx, %i.bvn
  br i1 %.not.i.i189.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, label %.lr.ph.i.i185.i, !llvm.loop !763

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i: ; preds = %.lr.ph.i.i185.i, %_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEED2Ev.exit.i
  %i.bvy = load ptr, ptr %i.na, align 8, !tbaa !27 ; 3 uses
  %i.bvz = load i32, ptr %i.nc, align 8, !tbaa !407 ; 2 uses
  %i.bwa = zext i32 %i.bvz to i64
  %.idx.i.i190.i = shl nuw nsw i64 %i.bwa, 4
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bvy, i64 %.idx.i.i190.i
  %.not10.i.i191.i = icmp eq i32 %i.bvz, 0
  br i1 %.not10.i.i191.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i, label %.lr.ph.i1.i192.i

.lr.ph.i1.i192.i:                                 ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, %.lr.ph.i1.i192.i
  %.011.i.i193.i = phi ptr [ %i.bwf, %.lr.ph.i1.i192.i ], [ %i.bvy, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i ] ; 3 uses
  %i.bwc = load ptr, ptr %.011.i.i193.i, align 8, !tbaa !755
  %i.bwd = getelementptr inbounds nuw i8, ptr %.011.i.i193.i, i64 8
  %i.bwe = load i64, ptr %i.bwd, align 8, !tbaa !757
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bwc, i64 noundef %i.bwe, i64 noundef 16) #25
  %i.bwf = getelementptr inbounds nuw i8, ptr %.011.i.i193.i, i64 16 ; 2 uses
  %.not.i2.i194.i = icmp eq ptr %i.bwf, %i.bwb
  br i1 %.not.i2.i194.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, label %.lr.ph.i1.i192.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i1.i192.i
  %.pre.i195.i = load ptr, ptr %i.na, align 8, !tbaa !27
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i
  %i.bwg = phi ptr [ %.pre.i195.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i ], [ %i.bvy, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i ] ; 2 uses
  %i.bwh = icmp eq ptr %i.bwg, %i.nb
  br i1 %i.bwh, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i196.i, label %bb.ig

bb.ig:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  call void @free(ptr noundef %i.bwg) #25
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i196.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i196.i: ; preds = %bb.ig, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.bwi = load ptr, ptr %i.mw, align 8, !tbaa !27 ; 2 uses
  %i.bwj = icmp eq ptr %i.bwi, %i.mx
  br i1 %i.bwj, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i, label %bb.ih

bb.ih:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i196.i
  call void @free(ptr noundef %i.bwi) #25
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i: ; preds = %bb.ih, %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i196.i
  %i.bwk = load ptr, ptr %i.mr, align 8, !tbaa !27 ; 2 uses
  %i.bwl = icmp eq ptr %i.bwk, %i.ms
  br i1 %i.bwl, label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i, label %bb.ii

bb.ii:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i
  call void @free(ptr noundef %i.bwk) #25
  br label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i: ; preds = %bb.ii, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit.i
  %i.bwm = load ptr, ptr %18, align 8, !tbaa !27  ; 2 uses
  %i.bwn = icmp eq ptr %i.bwm, %i.mo
  br i1 %i.bwn, label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i, label %bb.ij

bb.ij:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i
  call void @free(ptr noundef %i.bwm) #25
  br label %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i

_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i: ; preds = %bb.ij, %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj6EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.bwo = load ptr, ptr %16, align 8, !tbaa !566 ; 2 uses
  %.not.i.i.i113.i = icmp eq ptr %i.bwo, null
  br i1 %.not.i.i.i113.i, label %_ZNSt5stackIPKN4llvm10BasicBlockESt5dequeIS3_SaIS3_EEED2Ev.exit.i, label %bb.ik

bb.ik:                                            ; preds = %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i
  %i.bwp = load ptr, ptr %i.mb, align 8, !tbaa !656 ; 2 uses
  %i.bwq = load ptr, ptr %i.mf, align 8, !tbaa !634 ; 2 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 8
  %i.bws = icmp ult ptr %i.bwp, %i.bwr
  br i1 %i.bws, label %.lr.ph.i.i.i.i114.i, label %_ZNSt11_Deque_baseIPKN4llvm10BasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i114.i:                              ; preds = %bb.ik, %.lr.ph.i.i.i.i114.i
  %.06.i.i.i.i.i = phi ptr [ %i.bwu, %.lr.ph.i.i.i.i114.i ], [ %i.bwp, %bb.ik ] ; 3 uses
  %i.bwt = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !567
  call void @_ZdlPvm(ptr noundef %i.bwt, i64 noundef 512) #26
  %i.bwu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.bwv = icmp ult ptr %.06.i.i.i.i.i, %i.bwq
  br i1 %i.bwv, label %.lr.ph.i.i.i.i114.i, label %_ZNSt11_Deque_baseIPKN4llvm10BasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, !llvm.loop !764

_ZNSt11_Deque_baseIPKN4llvm10BasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i114.i
  %.pre.i.i.i.i135 = load ptr, ptr %16, align 8, !tbaa !566
  br label %_ZNSt11_Deque_baseIPKN4llvm10BasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

_ZNSt11_Deque_baseIPKN4llvm10BasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIPKN4llvm10BasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, %bb.ik
  %i.bww = phi ptr [ %.pre.i.i.i.i135, %_ZNSt11_Deque_baseIPKN4llvm10BasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i ], [ %i.bwo, %bb.ik ]
  %i.bwx = load i64, ptr %i.lz, align 8, !tbaa !561
  %i.bwy = shl i64 %i.bwx, 3
  call void @_ZdlPvm(ptr noundef %i.bww, i64 noundef %i.bwy) #26
  br label %_ZNSt5stackIPKN4llvm10BasicBlockESt5dequeIS3_SaIS3_EEED2Ev.exit.i

_ZNSt5stackIPKN4llvm10BasicBlockESt5dequeIS3_SaIS3_EEED2Ev.exit.i: ; preds = %_ZNSt11_Deque_baseIPKN4llvm10BasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i, %_ZN4llvm17DominatorTreeBaseINS_10BasicBlockELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.bwz = load i32, ptr %i.lv, align 4, !tbaa !599 ; 2 uses
  %i.bxa = icmp eq i32 %i.bwz, 0
  br i1 %i.bxa, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZNSt5stackIPKN4llvm10BasicBlockESt5dequeIS3_SaIS3_EEED2Ev.exit.i
  %i.bxb = load ptr, ptr %14, align 8, !tbaa !586
  %i.bxc = load ptr, ptr %i.lu, align 8, !tbaa !598
  %i.bxd = zext i32 %i.bwz to i64
  %i.bxe = add nuw nsw i64 %i.bxd, 31
  %i.bxf = lshr i64 %i.bxe, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i116.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i116.i ] ; 3 uses
  %i.bxg = getelementptr inbounds nuw [4 x i8], ptr %i.bxc, i64 %indvars.iv.i.i.i
  %i.bxh = load i32, ptr %i.bxg, align 4, !tbaa !442 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bxh, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i116.i, label %.lr.ph.i.i115.i

.lr.ph.i.i115.i:                                  ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.bxi = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.il

bb.il:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i115.i
  %.0.i3.i.i.i = phi i32 [ %i.bxh, %.lr.ph.i.i115.i ], [ %i.bxz, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.bxj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.bxk = or disjoint i32 %i.bxj, %i.bxi
  %i.bxl = zext i32 %i.bxk to i64
  %i.bxm = getelementptr inbounds nuw [32 x i8], ptr %i.bxb, i64 %i.bxl ; 2 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxm, i64 28
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !594 ; 2 uses
  %i.bxp = icmp eq i32 %i.bxo, 0
  br i1 %i.bxp, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxm, i64 8
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !597
  %i.bxs = zext i32 %i.bxo to i64                 ; 2 uses
  %i.bxt = shl nuw nsw i64 %i.bxs, 3
  %i.bxu = add nuw nsw i64 %i.bxs, 31
  %i.bxv = lshr i64 %i.bxu, 3
  %i.bxw = and i64 %i.bxv, 1073741820
  %i.bxx = add nuw nsw i64 %i.bxw, %i.bxt
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bxr, i64 noundef %i.bxx, i64 noundef 8) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.im, %bb.il
  %i.bxy = add i32 %.0.i3.i.i.i, -1
  %i.bxz = and i32 %i.bxy, %.0.i3.i.i.i           ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.bxz, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i116.i, label %bb.il, !llvm.loop !765

._crit_edge.i.i116.i:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i117.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bxf
  br i1 %.not.i.i.i117.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !766

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i116.i
  %.pr.i.i134 = load i32, ptr %i.lv, align 4, !tbaa !599 ; 2 uses
  %i.bya = icmp eq i32 %.pr.i.i134, 0
  br i1 %i.bya, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i, label %bb.in

bb.in:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.i.i
  %i.byb = load ptr, ptr %14, align 8, !tbaa !586
  %i.byc = zext i32 %.pr.i.i134 to i64            ; 2 uses
  %i.byd = shl nuw nsw i64 %i.byc, 5
  %i.bye = add nuw nsw i64 %i.byc, 31
  %i.byf = lshr i64 %i.bye, 3
  %i.byg = and i64 %i.byf, 1073741820
  %i.byh = add nuw nsw i64 %i.byg, %i.byd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.byb, i64 noundef %i.byh, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i: ; preds = %bb.in, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.i.i, %_ZNSt5stackIPKN4llvm10BasicBlockESt5dequeIS3_SaIS3_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.byi = load i32, ptr %i.mj, align 4, !tbaa !580 ; 2 uses
  %i.byj = icmp eq i32 %i.byi, 0
  br i1 %i.byj, label %_ZN12_GLOBAL__N_110PGOUseFunc16populateCoverageEv.exit, label %bb.io

bb.io:                                            ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i
  %i.byk = load ptr, ptr %13, align 8, !tbaa !573
  %i.byl = zext i32 %i.byi to i64                 ; 2 uses
  %i.bym = shl nuw nsw i64 %i.byl, 4
  %i.byn = add nuw nsw i64 %i.byl, 31
  %i.byo = lshr i64 %i.byn, 3
  %i.byp = and i64 %i.byo, 1073741820
  %i.byq = add nuw nsw i64 %i.byp, %i.bym
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.byk, i64 noundef %i.byq, i64 noundef 8) #25
  br label %_ZN12_GLOBAL__N_110PGOUseFunc16populateCoverageEv.exit

_ZN12_GLOBAL__N_110PGOUseFunc16populateCoverageEv.exit: ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.lt

bb.ip:                                            ; preds = %bb.ff
  %i.byr = load ptr, ptr %i.gg, align 8, !tbaa !328
  %i.bys = load ptr, ptr %i.byr, align 8, !tbaa !58, !nonnull !25, !align !160
  %i.byt = load ptr, ptr %i.kc, align 8, !tbaa !558 ; 4 uses
  %i.byu = load i64, ptr %i.byt, align 8, !tbaa !180 ; 2 uses
  %switch.selectcmp4.i.i.not = icmp eq i64 %i.byu, -1
  %.not.i139 = icmp ult i64 %i.byu, -2
  br i1 %.not.i139, label %bb.iq, label %.thread77

bb.iq:                                            ; preds = %bb.ip
  %i.byv = load ptr, ptr %i.kg, align 8, !tbaa !767
  %i.byw = ptrtoint ptr %i.byv to i64
  %i.byx = ptrtoint ptr %i.byt to i64
  %i.byy = sub i64 %i.byw, %i.byx                 ; 2 uses
  %i.byz = and i64 %i.byy, 34359738360
  %.not67.i = icmp eq i64 %i.byz, 0
  br i1 %.not67.i, label %._crit_edge.i143, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.iq
  %i.bza = lshr exact i64 %i.byy, 3               ; 2 uses
  %wide.trip.count.i = and i64 %i.bza, 4294967295 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 4
  br i1 %min.iters.check, label %.lr.ph.i141.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bza, 4294967292             ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bzd, %vector.body ]
  %vec.phi752 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bze, %vector.body ]
  %i.bzb = getelementptr inbounds nuw [8 x i8], ptr %i.byt, i64 %index ; 2 uses
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.bzb, i64 16
  %wide.load = load <2 x i64>, ptr %i.bzb, align 8, !tbaa !180
  %wide.load753 = load <2 x i64>, ptr %i.bzc, align 8, !tbaa !180
  %i.bzd = add <2 x i64> %wide.load, %vec.phi     ; 2 uses
  %i.bze = add <2 x i64> %wide.load753, %vec.phi752 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bzf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bzf, label %middle.block, label %vector.body, !llvm.loop !768

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bze, %i.bzd
  %i.bzg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i142, label %.lr.ph.i141.preheader

.lr.ph.i141.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.01465.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bzg, %middle.block ]
  br label %.lr.ph.i141

._crit_edge.loopexit.i142:                        ; preds = %.lr.ph.i141, %middle.block
  %.lcssa694 = phi i64 [ %i.bzg, %middle.block ], [ %i.ctt, %.lr.ph.i141 ]
  %i.bzh = icmp eq i64 %.lcssa694, 0
  br label %._crit_edge.i143

._crit_edge.i143:                                 ; preds = %._crit_edge.loopexit.i142, %bb.iq
  %.014.lcssa.i = phi i1 [ true, %bb.iq ], [ %i.bzh, %._crit_edge.loopexit.i142 ]
  %i.bzi = load ptr, ptr %i.ik, align 8, !tbaa !459, !noalias !771 ; 4 uses
  %i.bzj = load ptr, ptr %i.il, align 8, !tbaa !469, !noalias !771 ; 4 uses
  %i.bzk = load i32, ptr %i.im, align 4, !tbaa !470, !noalias !771 ; 5 uses
  %i.bzl = icmp eq i32 %i.bzk, 0                  ; 2 uses
  br i1 %i.bzl, label %.loopexit.i.i.i.i.i.i, label %bb.ir

bb.ir:                                            ; preds = %._crit_edge.i143
  %i.bzm = add i32 %i.bzk, -1
  %i.bzn = load i32, ptr %i.bzj, align 4, !tbaa !442, !noalias !780
  %i.bzo = trunc i32 %i.bzn to i1
  br i1 %i.bzo, label %.lr.ph.i.i.i.i.i.i.i163, label %.loopexit.i.i.i.i.i.i, !prof !472

.lr.ph.i.i.i.i.i.i.i163:                          ; preds = %bb.ir, %bb.is
  %i.bzp = phi i64 [ %i.bzv, %bb.is ], [ 0, %bb.ir ] ; 2 uses
  %.03.i.i.i.i.i.i.i = phi i32 [ %i.bzu, %bb.is ], [ 0, %bb.ir ]
  %i.bzq = getelementptr inbounds nuw [16 x i8], ptr %i.bzi, i64 %i.bzp
  %i.bzr = load ptr, ptr %i.bzq, align 8, !tbaa !413, !noalias !780
  %i.bzs = icmp eq ptr %i.bzr, null
  br i1 %i.bzs, label %_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit.i, label %bb.is, !prof !429

bb.is:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i163
  %i.bzt = add nuw i32 %.03.i.i.i.i.i.i.i, 1
  %i.bzu = and i32 %i.bzt, %i.bzm                 ; 3 uses
  %i.bzv = zext i32 %i.bzu to i64                 ; 2 uses
  %i.bzw = lshr i64 %i.bzv, 5
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %i.bzj, i64 %i.bzw
  %i.bzy = load i32, ptr %i.bzx, align 4, !tbaa !442, !noalias !780
  %i.bzz = and i32 %i.bzu, 31
  %i.caa = lshr i32 %i.bzy, %i.bzz
  %i.cab = trunc i32 %i.caa to i1
  br i1 %i.cab, label %.lr.ph.i.i.i.i.i.i.i163, label %.loopexit.i.i.i.i.i.i, !prof !473

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.is, %bb.ir, %._crit_edge.i143
  %i.cac = zext i32 %i.bzk to i64
  br label %_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit.i

_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i163, %.loopexit.i.i.i.i.i.i
  %i.cad = phi i64 [ %i.cac, %.loopexit.i.i.i.i.i.i ], [ %i.bzp, %.lr.ph.i.i.i.i.i.i.i163 ]
  %i.cae = getelementptr inbounds nuw [16 x i8], ptr %i.bzi, i64 %i.cad
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cae, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.caf, align 8, !tbaa !474
  %i.cag = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 36
  store i32 2, ptr %i.cag, align 4, !tbaa !781
  br i1 %i.bzl, label %.loopexit.i.i.i.i.i16.i, label %bb.it

bb.it:                                            ; preds = %_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit.i
  %i.cah = add i32 %i.bzk, -1
  %i.cai = load i32, ptr %i.bzj, align 4, !tbaa !442, !noalias !792
  %i.caj = trunc i32 %i.cai to i1
  br i1 %i.caj, label %.lr.ph.i.i.i.i.i.i18.i, label %.loopexit.i.i.i.i.i16.i, !prof !472

.lr.ph.i.i.i.i.i.i18.i:                           ; preds = %bb.it, %bb.iu
  %i.cak = phi i64 [ %i.caq, %bb.iu ], [ 0, %bb.it ] ; 2 uses
  %.03.i.i.i.i.i.i19.i = phi i32 [ %i.cap, %bb.iu ], [ 0, %bb.it ]
  %i.cal = getelementptr inbounds nuw [16 x i8], ptr %i.bzi, i64 %i.cak
  %i.cam = load ptr, ptr %i.cal, align 8, !tbaa !413, !noalias !792
  %i.can = icmp eq ptr %i.cam, null
  br i1 %i.can, label %_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit20.i, label %bb.iu, !prof !429

bb.iu:                                            ; preds = %.lr.ph.i.i.i.i.i.i18.i
  %i.cao = add nuw i32 %.03.i.i.i.i.i.i19.i, 1
  %i.cap = and i32 %i.cao, %i.cah                 ; 3 uses
  %i.caq = zext i32 %i.cap to i64                 ; 2 uses
  %i.car = lshr i64 %i.caq, 5
  %i.cas = getelementptr inbounds nuw [4 x i8], ptr %i.bzj, i64 %i.car
  %i.cat = load i32, ptr %i.cas, align 4, !tbaa !442, !noalias !792
  %i.cau = and i32 %i.cap, 31
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_120FunctionInstrumenter10instrumentEv:bb.a
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aym, align 8 ; 3 uses
  %i.ayn = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.ayo = icmp eq i64 %i.ayn, 0
  br i1 %i.ayo, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findEPKS2_.exit.i
  %i.ayp = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i

bb.he:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findEPKS2_.exit.i
  %i.ayq = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.ayr = inttoptr i64 %i.ayq to ptr
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !27
  %i.ayt = load ptr, ptr %i.ays, align 8, !tbaa !413
  br label %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i

_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i: ; preds = %bb.he, %bb.hd
  %.0.i8.i = phi ptr [ %i.ayp, %bb.hd ], [ %i.ayt, %bb.he ]
  %i.ayu = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i8.i) #25
  %.fca.0.extract.i = extractvalue { ptr, i64 } %i.ayu, 0
  %i.ayv = getelementptr inbounds i8, ptr %.fca.0.extract.i, i64 -24 ; 2 uses
  %i.ayw = load i8, ptr %i.ayv, align 8, !tbaa !495
  switch i8 %i.ayw, label %_ZL23populateEHOperandBundleRN4llvm21ValueProfileCollector13CandidateInfoERNS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS5_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEERNS_15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit [
    i8 41, label %bb.hf
    i8 84, label %bb.hf
    i8 83, label %bb.hf
    i8 98, label %bb.hf
  ]

bb.hf:                                            ; preds = %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i, %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i, %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i, %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr %i.ayv, ptr %i.b, align 8, !tbaa !1181
  %i.ayx = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEE12emplace_backIJRA8_KcPNS_11InstructionEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 1 dereferenceable(8) @.str.118, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZL23populateEHOperandBundleRN4llvm21ValueProfileCollector13CandidateInfoERNS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS5_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEERNS_15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit

_ZL23populateEHOperandBundleRN4llvm21ValueProfileCollector13CandidateInfoERNS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS5_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEERNS_15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit: ; preds = %bb.go, %_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread.i, %bb.gz, %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i, %bb.hf
  %i.ayy = load ptr, ptr %0, align 8, !tbaa !1123, !nonnull !25, !align !160
  %i.ayz = call noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef nonnull %i.ayy, i32 noundef 213, ptr null, i64 0) #25 ; 3 uses
  %.not.i141 = icmp eq ptr %i.ayz, null
  br i1 %.not.i141, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit, label %bb.hg

bb.hg:                                            ; preds = %_ZL23populateEHOperandBundleRN4llvm21ValueProfileCollector13CandidateInfoERNS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS5_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEERNS_15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 24
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !1157
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit: ; preds = %_ZL23populateEHOperandBundleRN4llvm21ValueProfileCollector13CandidateInfoERNS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS5_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEERNS_15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit, %bb.hg
  %i.azc = phi ptr [ %i.azb, %bb.hg ], [ null, %_ZL23populateEHOperandBundleRN4llvm21ValueProfileCollector13CandidateInfoERNS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS5_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEERNS_15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #25
  store ptr %i.atj, ptr %i.r, align 8, !tbaa !1150
  %i.azd = load i64, ptr %i.bl, align 8, !tbaa !1055
  %i.aze = load ptr, ptr %i.arc, align 8, !tbaa !1149, !nonnull !25, !align !160
  %i.azf = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aze) #25
  %i.azg = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.azf, i64 noundef %i.azd, i1 noundef zeroext false, i1 noundef zeroext false) #25
  store ptr %i.azg, ptr %i.asa, align 8, !tbaa !1150
  store ptr %.0, ptr %i.asb, align 8, !tbaa !1150
  %i.azh = load ptr, ptr %i.arc, align 8, !tbaa !1149, !nonnull !25, !align !160
  %i.azi = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.azh) #25
  %i.azj = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.azi, i64 noundef %indvars.iv, i1 noundef zeroext false, i1 noundef zeroext false) #25
  store ptr %i.azj, ptr %i.asc, align 8, !tbaa !1150
  %i.azk = add i32 %.060253, 1
  %i.azl = load ptr, ptr %i.arc, align 8, !tbaa !1149, !nonnull !25, !align !160
  %i.azm = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.azl) #25
  %i.azn = zext i32 %.060253 to i64
  %i.azo = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.azm, i64 noundef %i.azn, i1 noundef zeroext false, i1 noundef zeroext false) #25
  store ptr %i.azo, ptr %i.asd, align 8, !tbaa !1150
  %i.azp = load ptr, ptr %51, align 8, !tbaa !27
  %i.azq = load i32, ptr %i.arq, align 8, !tbaa !407
  %i.azr = zext i32 %i.azq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25
  store i16 257, ptr %i.ase, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.azp, ptr %1, align 8
  store i64 %i.azr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.azs = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %48, ptr noundef %i.azc, ptr noundef %i.ayz, ptr nonnull %i.r, i64 5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.356") align 8 %1, ptr noundef nonnull align 8 dereferenceable(34) %52, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  %i.azt = load ptr, ptr %51, align 8, !tbaa !27  ; 3 uses
  %i.azu = load i32, ptr %i.arq, align 8, !tbaa !407 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.azu, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit
  %i.azv = zext i32 %i.azu to i64
  %.idx.i143 = mul nuw nsw i64 %i.azv, 56
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azt, i64 %.idx.i143
  br label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.azx, %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i ], [ %i.azw, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.azx = getelementptr inbounds i8, ptr %.05.i.i, i64 -56 ; 3 uses
  %i.azy = getelementptr inbounds i8, ptr %.05.i.i, i64 -24
  %i.azz = load ptr, ptr %i.azy, align 8, !tbaa !1210 ; 3 uses
  %.not.i.i.i.i.i.i145 = icmp eq ptr %i.azz, null
  br i1 %.not.i.i.i.i.i.i145, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i, label %bb.hh

bb.hh:                                            ; preds = %.lr.ph.i.i144
  %i.baa = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.bab = load ptr, ptr %i.baa, align 8, !tbaa !1208
  %i.bac = ptrtoint ptr %i.bab to i64
  %i.bad = ptrtoint ptr %i.azz to i64
  %i.bae = sub i64 %i.bac, %i.bad
  call void @_ZdlPvm(ptr noundef nonnull %i.azz, i64 noundef %i.bae) #26
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.hh, %.lr.ph.i.i144
  %i.baf = load ptr, ptr %i.azx, align 8, !tbaa !14 ; 2 uses
  %i.bag = getelementptr inbounds i8, ptr %.05.i.i, i64 -40 ; 2 uses
  %i.bah = icmp eq ptr %i.baf, %i.bag
  br i1 %i.bah, label %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i
  %i.bai = load i64, ptr %i.bag, align 8, !tbaa !19
  %i.baj = add i64 %i.bai, 1
  call void @_ZdlPvm(ptr noundef %i.baf, i64 noundef %i.baj) #26
  br label %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i

_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i146 = icmp eq ptr %i.azt, %i.azx
  br i1 %.not.i.i146, label %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i144, !llvm.loop !1227

_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i
  %.pre.i147 = load ptr, ptr %51, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit
  %i.bak = phi ptr [ %.pre.i147, %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.azt, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit ] ; 2 uses
  %i.bal = icmp eq ptr %i.bak, %i.arp
  br i1 %i.bal, label %_ZN4llvm11SmallVectorINS_17OperandBundleDefTIPNS_5ValueEEELj1EED2Ev.exit, label %bb.hi

bb.hi:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i
  call void @free(ptr noundef %i.bak) #25
  br label %_ZN4llvm11SmallVectorINS_17OperandBundleDefTIPNS_5ValueEEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_17OperandBundleDefTIPNS_5ValueEEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.arb) #25
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ara) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25
  %i.bam = getelementptr inbounds nuw i8, ptr %.sroa.0171.0252, i64 24 ; 2 uses
  %.not221 = icmp eq ptr %i.bam, %i.asm
  br i1 %.not221, label %.loopexit, label %.lr.ph255

.loopexit:                                        ; preds = %_ZN4llvm11SmallVectorINS_17OperandBundleDefTIPNS_5ValueEEELj1EED2Ev.exit, %bb.gl, %bb.gk
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.gj, label %bb.gk, !llvm.loop !1228

_ZNK12_GLOBAL__N_120FunctionInstrumenter24isValueProfilingDisabledEv.exit.thread: ; preds = %._crit_edge, %_ZNK12_GLOBAL__N_120FunctionInstrumenter24isValueProfilingDisabledEv.exit, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  %.not.i.i.i148 = icmp eq ptr %.sroa.0198.6, null
  br i1 %.not.i.i.i148, label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit, label %bb.hj

bb.hj:                                            ; preds = %_ZNK12_GLOBAL__N_120FunctionInstrumenter24isValueProfilingDisabledEv.exit.thread
  %i.ban = ptrtoint ptr %.sroa.18.6 to i64
  %i.bao = sub i64 %i.ban, %i.ajl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0198.6, i64 noundef %i.bao) #26
  br label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit: ; preds = %bb.hj, %_ZNK12_GLOBAL__N_120FunctionInstrumenter24isValueProfilingDisabledEv.exit.thread, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  %i.bap = load i8, ptr %i.od, align 8, !tbaa !438, !range !24, !noundef !25
  %i.baq = trunc nuw i8 %i.bap to i1
  store i8 0, ptr %i.od, align 8, !tbaa !438
  br i1 %i.baq, label %bb.hk, label %_ZNSt14_Optional_baseIN4llvm22BlockCoverageInferenceELb0ELb0EED2Ev.exit.i

bb.hk:                                            ; preds = %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit
  %i.bar = getelementptr inbounds nuw i8, ptr %34, i64 344
  call void @_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bar) #25
  %i.bas = getelementptr inbounds nuw i8, ptr %34, i64 320
  call void @_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bas) #25
  br label %_ZNSt14_Optional_baseIN4llvm22BlockCoverageInferenceELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN4llvm22BlockCoverageInferenceELb0ELb0EED2Ev.exit.i: ; preds = %bb.hk, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit
  %i.bat = getelementptr inbounds nuw i8, ptr %34, i64 240 ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %34, i64 260 ; 2 uses
  %.val2.i.i.i.i = load i32, ptr %i.bau, align 4, !tbaa !1088 ; 2 uses
  %i.bav = icmp eq i32 %.val2.i.i.i.i, 0
  br i1 %i.bav, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i.i, label %.lr.ph11.preheader.i.i.i.i

.lr.ph11.preheader.i.i.i.i:                       ; preds = %_ZNSt14_Optional_baseIN4llvm22BlockCoverageInferenceELb0ELb0EED2Ev.exit.i
  %.val4.i.i.i.i = load ptr, ptr %i.bat, align 8, !tbaa !1077
  %i.baw = getelementptr inbounds nuw i8, ptr %34, i64 248
  %.val3.i.i.i.i149 = load ptr, ptr %i.baw, align 8, !tbaa !1087
  %i.bax = zext i32 %.val2.i.i.i.i to i64
  %i.bay = add nuw nsw i64 %i.bax, 31
  %i.baz = lshr i64 %i.bay, 5
  br label %.lr.ph11.i.i.i.i

.lr.ph11.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i, %.lr.ph11.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %.val3.i.i.i.i149, i64 %indvars.iv.i.i.i.i
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !442 ; 2 uses
  %.not11.i6.i.i.i.i = icmp eq i32 %i.bbb, 0
  br i1 %.not11.i6.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.bbc = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.hl

bb.hl:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i7.i.i.i.i = phi i32 [ %i.bbb, %.lr.ph.i.i.i.i ], [ %i.bbk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.bbd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i.i.i, i1 true)
  %i.bbe = or disjoint i32 %i.bbd, %i.bbc
  %i.bbf = zext i32 %i.bbe to i64
  %i.bbg = getelementptr inbounds nuw [16 x i8], ptr %.val4.i.i.i.i, i64 %i.bbf
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 8
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !1090 ; 2 uses
  %.not.i.i.i.i.i.i150 = icmp eq ptr %i.bbi, null
  br i1 %.not.i.i.i.i.i.i150, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19PGOBBInfoEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19PGOBBInfoEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.bbi, i64 noundef 16) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19PGOBBInfoEEclEPS1_.exit.i.i.i.i.i.i, %bb.hl
  %i.bbj = add i32 %.0.i7.i.i.i.i, -1
  %i.bbk = and i32 %i.bbj, %.0.i7.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.bbk, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.hl, !llvm.loop !1229

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph11.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i151 = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.baz
  br i1 %.not.i.i.i.i.i151, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.i.i.i, label %.lr.ph11.i.i.i.i, !llvm.loop !1230

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i.i152 = load i32, ptr %i.bau, align 4, !tbaa !1088 ; 2 uses
  %i.bbl = icmp eq i32 %.pr.i.i.i152, 0
  br i1 %i.bbl, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i.i, label %bb.hm

bb.hm:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.i.i.i
  %i.bbm = load ptr, ptr %i.bat, align 8, !tbaa !1077
  %i.bbn = zext i32 %.pr.i.i.i152 to i64          ; 2 uses
  %i.bbo = shl nuw nsw i64 %i.bbn, 4
  %i.bbp = add nuw nsw i64 %i.bbn, 31
  %i.bbq = lshr i64 %i.bbp, 3
  %i.bbr = and i64 %i.bbq, 1073741820
  %i.bbs = add nuw nsw i64 %i.bbr, %i.bbo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bbm, i64 noundef %i.bbs, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i.i: ; preds = %bb.hm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.i.i.i, %_ZNSt14_Optional_baseIN4llvm22BlockCoverageInferenceELb0ELb0EED2Ev.exit.i
  %i.bbt = load ptr, ptr %i.bo, align 8, !tbaa !1072 ; 3 uses
  %i.bbu = load ptr, ptr %i.fs, align 8, !tbaa !1073 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bbt, %i.bbu
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i153

.lr.ph.i.i.i.i.i153:                              ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i.i, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bbv, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.bbt, %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i.i ] ; 2 uses
  %.0.val.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !1067 ; 2 uses
  %.not.i.i.i.i.i.i.i154 = icmp eq ptr %.0.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i154, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_17PGOEdgeEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_17PGOEdgeEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i153
  call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i.i.i, i64 noundef 32) #26
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_17PGOEdgeEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i153
  %i.bbv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bbv, %i.bbu
  br i1 %.not.i.i.i1.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i153, !llvm.loop !1071

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !1072
  br label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvT_S7_.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i.i, %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i.i
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i.i ], [ %i.bbt, %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i2.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i2.i.i.i, label %_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEED2Ev.exit.i, label %bb.hn

bb.hn:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvT_S7_.exit.i.i.i
  %i.bbw = getelementptr inbounds nuw i8, ptr %34, i64 232
  %.val1.i.i.i = load ptr, ptr %i.bbw, align 8, !tbaa !1231
  %i.bbx = ptrtoint ptr %.val1.i.i.i to i64
  %i.bby = ptrtoint ptr %.val.i.i.i to i64
  %i.bbz = sub i64 %i.bbx, %i.bby
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.bbz) #26
  br label %_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEED2Ev.exit.i

_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEED2Ev.exit.i: ; preds = %bb.hn, %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEEvT_S7_.exit.i.i.i
  %i.bca = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bcb = icmp eq ptr %i.bca, %i.bj
  br i1 %i.bcb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155: ; preds = %_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEED2Ev.exit.i
  %i.bcc = load i64, ptr %i.bj, align 8, !tbaa !19
  %i.bcd = add i64 %i.bcc, 1
  call void @_ZdlPvm(ptr noundef %i.bca, i64 noundef %i.bcd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156: ; preds = %_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155
  %i.bce = load ptr, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %i.bcf = icmp eq ptr %i.bce, %i.bg
  br i1 %i.bcf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156
  %i.bcg = load i64, ptr %i.bg, align 8, !tbaa !19
  %i.bch = add i64 %i.bcg, 1
  call void @_ZdlPvm(ptr noundef %i.bce, i64 noundef %i.bch) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bci = load ptr, ptr %i.ay, align 8, !tbaa !382 ; 3 uses
  %i.bcj = load ptr, ptr %i.az, align 8, !tbaa !384 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bci, %i.bcj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i4.i

.lr.ph.i.i.i4.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZSt8_DestroyISt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bcq, %_ZSt8_DestroyISt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvPT_.exit.i.i.i.i ], [ %i.bci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i ] ; 3 uses
  %i.bck = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !446 ; 3 uses
  %.not.i.i.i.i.i.i.i.i157 = icmp eq ptr %i.bck, null
  br i1 %.not.i.i.i.i.i.i.i.i157, label %_ZSt8_DestroyISt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvPT_.exit.i.i.i.i, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph.i.i.i4.i
  %i.bcl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !449
  %i.bcn = ptrtoint ptr %i.bcm to i64
  %i.bco = ptrtoint ptr %i.bck to i64
  %i.bcp = sub i64 %i.bcn, %i.bco
  call void @_ZdlPvm(ptr noundef nonnull %i.bck, i64 noundef %i.bcp) #26
  br label %_ZSt8_DestroyISt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvPT_.exit.i.i.i.i: ; preds = %bb.ho, %.lr.ph.i.i.i4.i
  %i.bcq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i158 = icmp eq ptr %i.bcq, %i.bcj
  br i1 %.not.i.i.i.i158, label %_ZSt8_DestroyIPSt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i4.i, !llvm.loop !919

_ZSt8_DestroyIPSt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ay, align 8, !tbaa !382
  br label %_ZSt8_DestroyIPSt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bcr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.bci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bcr, null
  br i1 %.not.i.i1.i.i, label %_ZN12_GLOBAL__N_122FuncPGOInstrumentationINS_7PGOEdgeENS_9PGOBBInfoEED2Ev.exit, label %bb.hp

bb.hp:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvT_S7_.exit.i.i
  %i.bcs = load ptr, ptr %i.ba, align 8, !tbaa !383
  %i.bct = ptrtoint ptr %i.bcs to i64
  %i.bcu = ptrtoint ptr %i.bcr to i64
  %i.bcv = sub i64 %i.bct, %i.bcu
  call void @_ZdlPvm(ptr noundef nonnull %i.bcr, i64 noundef %i.bcv) #26
  br label %_ZN12_GLOBAL__N_122FuncPGOInstrumentationINS_7PGOEdgeENS_9PGOBBInfoEED2Ev.exit

_ZN12_GLOBAL__N_122FuncPGOInstrumentationINS_7PGOEdgeENS_9PGOBBInfoEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4llvm21ValueProfileCollector13CandidateInfoESaIS3_EEEvT_S7_.exit.i.i, %bb.hp
  call void @_ZN4llvm21ValueProfileCollectorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS9_10_Hash_nodeIS7_Lb0EEEmSN_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !203
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !485
  %i.f = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.c, i64 noundef %i.e, i64 noundef 1) #25 ; 2 uses
  %i.g = extractvalue { i8, i64 } %i.f, 0
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i8, i64 } %i.f, 1
  tail call void @_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !203  ; 4 uses
  %i.l = urem i64 %2, %i.k                        ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !429

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !488  ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !488
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS4_m.exit.thread41, label %bb.e

_ZNKSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS4_m.exit.thread41: ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8, !tbaa !207
  store ptr %i.q, ptr %3, align 8, !tbaa !207
  store ptr %3, ptr %1, align 8, !tbaa !207
  br label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.l ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !490  ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.loopexit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:bb.a
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.u
  store ptr %.05271, ptr %i.v, align 8, !tbaa !490
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.h
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !490  ; 2 uses
  %.not65 = icmp eq ptr %i.x, null
  br i1 %.not65, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !206
  store ptr %i.y, ptr %.05668, align 8, !tbaa !207
  store ptr %.05668, ptr %i.g, align 8, !tbaa !206
  store ptr %i.g, ptr %i.w, align 8, !tbaa !490
  %i.z = load ptr, ptr %.05668, align 8, !tbaa !207
  %.not66 = icmp eq ptr %i.z, null
  br i1 %.not66, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.05469
  store ptr %.05668, ptr %i.aa, align 8, !tbaa !490
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !207
  store ptr %i.ab, ptr %.05668, align 8, !tbaa !207
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !490
  store ptr %.05668, ptr %i.ac, align 8, !tbaa !207
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.g
  %.155 = phi i64 [ %.05469, %bb.g ], [ %.05469, %bb.o ], [ %i.m, %bb.n ], [ %i.m, %bb.m ]
  %.2 = phi i8 [ 1, %bb.g ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1234

._crit_edge:                                      ; preds = %bb.p
  %i.ad = trunc nuw i8 %.2 to i1
  br i1 %i.ad, label %bb.q, label %._crit_edge.thread

bb.q:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr %.05668, align 8, !tbaa !207 ; 2 uses
  %.not60 = icmp eq ptr %i.ae, null
  br i1 %.not60, label %._crit_edge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !488
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = urem i64 %i.ah, %1                      ; 2 uses
  %.not61 = icmp eq i64 %i.ai, %i.m
  br i1 %.not61, label %._crit_edge.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ai
  store ptr %.05668, ptr %i.aj, align 8, !tbaa !490
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.r, %bb.s, %bb.q, %._crit_edge
  %i.ak = load ptr, ptr %0, align 8, !tbaa !196   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !203
  %i.ap = shl i64 %i.ao, 3
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ap) #26
  br label %_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPN4llvm6ComdatESt4pairIKS2_PNS0_11GlobalValueEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge.thread, %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aq, align 8, !tbaa !203
  store ptr %.0.i, ptr %0, align 8, !tbaa !196
  ret void
}

declare noundef ptr @_ZNK4llvm11GlobalValue9getComdatEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm8Function19getInstructionCountEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare { i64, i8 } @_ZNK4llvm8Function13getEntryCountEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm11Instruction16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #13

declare noundef zeroext i1 @_ZN4llvm14isCriticalEdgeEPKNS_11InstructionEjb(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm28SplitIndirectBrCriticalEdgesERNS_8FunctionEbPNS_21BranchProbabilityInfoEPNS_18BlockFrequencyInfoEPNS_14DomTreeUpdaterE(ptr noundef nonnull align 8 dereferenceable(140), i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12ConstantExpr32getPointerBitCastOrAddrSpaceCastEPNS_8ConstantEPNS_4TypeE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9StringSetINS_15MallocAllocatorEEC2IRNS_2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS4_6parserISB_EEEEEENS_12from_range_tEOT_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.a, align 8, !tbaa !1235
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !940  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !940  ; 2 uses
  %.not6.i = icmp eq ptr %i.c, %i.e
  br i1 %.not6.i, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISB_SaISB_EEEEEEvT_SH_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i, %.lr.ph.i
  %.sroa.02.07.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.w, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.02.07.i, align 8, !tbaa !14 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47   ; 7 uses
  %i.j = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.g, i64 %i.i) #25
  %i.k = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %i.g, i64 %i.i, i32 noundef %i.j) #25 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !1172
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1173
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %i.i, 9
  %i.q = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.p, i64 noundef 8) #25 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  store i8 0, ptr %i.s, align 1, !tbaa !19
  store i64 %i.i, ptr %i.q, align 8, !tbaa !1175
  store ptr %i.q, ptr %i.n, align 8, !tbaa !1173
  %i.t = load i32, ptr %i.f, align 4, !tbaa !1171
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.f, align 4, !tbaa !1171
  %i.v = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.k) #25 ; 0 uses
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i: ; preds = %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISB_SaISB_EEEEEEvT_SH_.exit, label %bb.b, !llvm.loop !1236

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISB_SaISB_EEEEEEvT_SH_.exit: ; preds = %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.i, %bb.a
  ret void
}

declare noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef, i32 noundef, ptr, i64) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare void @_ZN4llvm15colorEHFuncletsERNS_8FunctionE(ptr dead_on_unwind writable sret(%"class.llvm::DenseMap.387") align 8, ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1225 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1214
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1224
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !442  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.y, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 2 uses
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.r, 0
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %.not3.i.i.i = icmp eq i64 %i.s, 0
  %.not.i.i.i = or i1 %.not.i.i.i.i.i, %.not3.i.i.i
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.u) #25
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 48) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i, %bb.b
  %i.x = add i32 %.0.i3.i, -1
  %i.y = and i32 %i.x, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1237

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1238

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1225 ; 2 uses
  %i.z = icmp eq i32 %.pr, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1214
  %i.ab = zext i32 %.pr to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store <2 x ptr> %i.ai, ptr %0, align 8, !tbaa !57
  store ptr null, ptr %1, align 8, !tbaa !1239
  store ptr null, ptr %i.ah, align 8, !tbaa !441
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !442
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !442
  store i32 0, ptr %i.ak, align 8, !tbaa !442
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.an = load i32, ptr %i.a, align 4, !tbaa !442
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !442
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !442
  store i32 %i.an, ptr %i.am, align 4, !tbaa !442
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1225 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1214
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1224
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !442  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.y, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 2 uses
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.r, 0
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %.not3.i.i.i = icmp eq i64 %i.s, 0
  %.not.i.i.i = or i1 %.not.i.i.i.i.i, %.not3.i.i.i
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.u) #25
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 48) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i.i.i, %bb.b
  %i.x = add i32 %.0.i3.i, -1
  %i.y = and i32 %i.x, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1237

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1238

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1225 ; 2 uses
  %i.z = icmp eq i32 %.pr, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1214
  %i.ab = zext i32 %.pr to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS2_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase17CreateZExtOrTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !942  ; 3 uses
  %i.c = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27 ; 2 uses
  %i.d = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #27 ; 2 uses
  %i.e = icmp ult i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %i.b, %2
  br i1 %i.f, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1240, !nonnull !25, !align !160 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef 40, ptr noundef nonnull %1, ptr noundef nonnull %2) #25, !inline_history !1241 ; 2 uses
  %.not.not.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i, label %bb.d, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.n, align 8
  call void @_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, i64 0) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1242, !nonnull !25, !align !160 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #25, !inline_history !1243
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

bb.e:                                             ; preds = %bb.a
  %i.u = icmp ule i32 %i.c, %i.d
  %i.v = icmp eq ptr %i.b, %2
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1240, !nonnull !25, !align !160 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 39, ptr noundef nonnull %1, ptr noundef nonnull %2) #25, !inline_history !1244 ; 2 uses
  %.not.not.i16 = icmp eq ptr %i.ab, null
  br i1 %.not.not.i16, label %bb.g, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.ac, align 8
  %i.ad = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 39, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, i64 0) #25 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1242, !nonnull !25, !align !160 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i18 = load ptr, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i20 = load i64, ptr %.sroa.2.0..sroa_idx.i.i19, align 8
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i.i18, i64 %.sroa.2.0.copyload.i.i20) #25, !inline_history !1245
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.ad) #25
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.e
  %.0 = phi ptr [ %1, %bb.e ], [ %i.m, %bb.d ], [ %i.l, %bb.c ], [ %1, %bb.b ], [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  ret ptr %.0
}

declare void @_ZN4llvm21ValueProfileCollectorC1ERNS_8FunctionERNS_17TargetLibraryInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

declare void @_ZNK4llvm22BlockCoverageInference22viewBlockCoverageGraphEPKNS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #4

declare void @_ZNK4llvm21ValueProfileCollector3getENS_18InstrProfValueKindE(ptr dead_on_unwind writable sret(%"class.std::vector.382") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm16getIRPGOFuncNameB5cxx11ERKNS_8FunctionEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(140), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm14getPGOFuncNameB5cxx11ERKNS_8FunctionEbm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(140), i1 noundef zeroext, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm20createPGOFuncNameVarERNS_8FunctionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #4

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @_ZNK4llvm18BlockFrequencyInfo12getEntryFreqEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(27) ptr @_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE7addEdgeEPNS_10BasicBlockES6_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(90) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.443", align 8    ; 5 uses
  %5 = alloca %"struct.std::pair.443", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i32, ptr %i.b, align 8, !tbaa !1246 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS4_SA_SC_SF_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %1)
  %.sroa.0.0.copyload28 = load ptr, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !560, !range !24, !noundef !25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28, !noalias !1247 ; 5 uses
  store ptr %i.f, ptr %i.f, align 8, !tbaa !1250, !noalias !1247
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.val, ptr %i.g, align 8, !tbaa !476, !noalias !1247
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !1251, !noalias !1247
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload28, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1090 ; 2 uses
  store ptr %i.f, ptr %i.i, align 8, !tbaa !1090
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19PGOBBInfoEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19PGOBBInfoEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19PGOBBInfoEEclEPS1_.exit.i.i.i.i, %bb.b
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS4_SA_SC_SF_Lb0EEEbERKS4_DpOT_:bb.a

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = add nuw i32 %.05.i.i.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !442, !noalias !1267
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !473, !llvm.loop !1275

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1267
  store ptr %.lcssa9.sink.i.ph.i.i, ptr %i.a, align 8, !tbaa !1276, !noalias !1267
  %i.aj = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %.val5.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !1246, !noalias !1267
  %i.ak = shl i32 %.val5.i.i.i, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i.i.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i, label %bb.d, !prof !429

bb.d:                                             ; preds = %.loopexit.i.i
  %i.an = shl i32 %i.f, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.an), !noalias !1267
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %.0.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !1276, !noalias !1267
  %.val4.i.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !1087, !noalias !1267
  %.val6.i.pre.i.i = load ptr, ptr %1, align 8, !tbaa !1077, !noalias !1267
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i: ; preds = %bb.d, %.loopexit.i.i
  %.val6.i.i.i = phi ptr [ %.val6.i.pre.i.i, %bb.d ], [ %i.b, %.loopexit.i.i ] ; 2 uses
  %.val4.i.i.i = phi ptr [ %.val4.i.pre.i.i, %bb.d ], [ %i.d, %.loopexit.i.i ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i.i, %bb.d ], [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ] ; 4 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.val6.i.i.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 4                 ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 31
  %i.av = shl nuw i32 1, %i.au
  %i.aw = lshr i64 %i.as, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !442, !noalias !1267
  %i.az = or i32 %i.av, %i.ay
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !442, !noalias !1267
  %.val.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !1246, !noalias !1267
  %i.ba = add i32 %.val.i.i.i.i, 1
  store i32 %i.ba, ptr %i.aj, align 8, !tbaa !1246, !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1267
  store ptr %.0.val, ptr %i.ao, align 8, !tbaa !413, !noalias !1267
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !1277, !noalias !1267
  %.val.i4.pre.i = load i32, ptr %i.e, align 4, !tbaa !1088, !noalias !1279
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16try_emplace_implIRKS4_JEEESt4pairINS_16DenseMapIteratorIS4_SA_SC_SF_Lb0EEEbEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16try_emplace_implIRKS4_JEEESt4pairINS_16DenseMapIteratorIS4_SA_SC_SF_Lb0EEEbEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i
  %.val.i4.i = phi i32 [ %.val.i4.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ %i.f, %.lr.ph.i.i.i ]
  %.val2.i.i = phi ptr [ %.val4.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ %i.d, %.lr.ph.i.i.i ]
  %.val3.i.i = phi ptr [ %.val6.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ %i.b, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ %i.w, %.lr.ph.i.i.i ]
  %.sroa.3.0.i.i = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.bc = zext i32 %.val.i4.i to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.val3.i.i, i64 %i.bc
  store ptr %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !1267
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1267
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val3.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1267
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.val2.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1267
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.3.0.i.i, ptr %i.be, align 8, !tbaa !1282, !alias.scope !1267
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1077, !noalias !1285 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1087, !noalias !1285 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1088, !noalias !1285 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !442
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !472

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !413
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !429

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !442
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !473, !llvm.loop !1275

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !1276
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #10 align 2 {
_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEC2EjNS_12DenseMapBaseISF_S3_S9_SB_SE_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.339", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1088
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1077
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1087
  store i32 0, ptr %i.p, align 16, !tbaa !1246
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1276   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !441
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !57
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !442 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !442
  store <2 x i32> %i.ag, ptr %i.ad, align 8, !tbaa !442
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i:                           ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEC2EjNS_12DenseMapBaseISF_S3_S9_SB_SE_E16ExactBucketCountE.exit
  %i.ai = zext i32 %i.af to i64                   ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 31               ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph11.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !442 ; 2 uses
  %.not11.i6.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.an = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.a

bb.a:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i7.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ %i.av, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1090 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19PGOBBInfoEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19PGOBBInfoEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 16) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19PGOBBInfoEEclEPS1_.exit.i.i.i.i, %bb.a
  %i.au = add i32 %.0.i7.i.i, -1
  %i.av = and i32 %i.au, %.0.i7.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.a, !llvm.loop !1229

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph11.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.ak
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.i, label %.lr.ph11.i.i, !llvm.loop !1230

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %i.aw = shl nuw nsw i64 %i.ai, 4
  %i.ax = lshr i64 %i.aj, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.aw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.az, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEC2EjNS_12DenseMapBaseISF_S3_S9_SB_SE_E16ExactBucketCountE.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !1077 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !1087
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !1088 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !1087 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !1077
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !1088
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.h, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !442  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.j, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.j, %.lr.ph ], [ %i.at, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val11, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !413  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !442  ; 2 uses
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.016.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !442 ; 2 uses
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !1290

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa15.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %.lcssa13.i ; 2 uses
  store ptr %i.p, ptr %i.an, align 8, !tbaa !413
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !1090
  store i64 %.val.i.i.i.i, ptr %i.ao, align 8, !tbaa !1090
  store ptr null, ptr %i.ap, align 8, !tbaa !1090
  %i.aq = shl nuw i32 1, %.lcssa.i
  %i.ar = or i32 %i.aq, %.lcssa11.i
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !442
  %i.as = add i32 %.0.i21, -1
  %i.at = and i32 %i.as, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.at, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1291

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1292

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !1088
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.au = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.av, align 8, !tbaa !1246
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.aw, align 8, !tbaa !1246
  %i.ax = icmp eq i32 %i.au, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val11, i64 noundef %i.bd, i64 noundef 8) #25
  store i32 0, ptr %i.b, align 4, !tbaa !1088
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_19PGOBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #13

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm29isPresplitCoroSuspendExitEdgeERKNS_10BasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %0, ptr %1) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %0, ptr %1)
  br label %common.ret27

common.ret27:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %0, ptr %i.g)
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %i.g, ptr %1)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 3
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_SN_T0_SO_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j)
  br label %common.ret27
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret35:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_SN_T0_SO_T1_SO_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret35

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2)
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2)
  tail call fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_SN_T0_SO_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret35
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 2 uses
  %i.f = icmp sgt i64 %i.c, 48
  br i1 %i.f, label %.lr.ph.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.012.013.i = phi ptr [ %i.g, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.013.i, i64 56 ; 4 uses
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %.sroa.012.013.i, ptr nonnull %i.g)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = icmp sgt i64 %i.i, 48
  br i1 %i.j, label %.lr.ph.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_.exit, !llvm.loop !1293

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.012.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph.i ]
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %.sroa.012.0.lcssa.i, ptr %1)
  %i.k = icmp sgt i64 %i.d, 7
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_.exit
  %i.l = ptrtoint ptr %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_T1_T2_.exit
  %.060 = phi i64 [ 7, %.lr.ph ], [ %i.ay, %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_T1_T2_.exit ] ; 7 uses
end_hunk_3
begin_hunk_4_@_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_SN_T0_SO_T1_SO_T2_:bb.a
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.hj, %.0.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1353

_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lET_SD_SD_SD_T1_SE_T0_SE_.exit: ; preds = %._crit_edge69.i.i.i, %._crit_edge.i.i.i, %.lr.ph.i.i.i.i, %middle.block, %bb.d, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, %bb.g, %_ZSt13move_backwardIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, %bb.i, %bb.j
  %.sroa.032.0.i = phi ptr [ %i.bt, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ], [ %.sroa.0.0, %bb.g ], [ %i.da, %_ZSt13move_backwardIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ], [ %.sroa.090.0, %bb.d ], [ %.sroa.090.0, %bb.j ], [ %.sroa.0.0, %bb.i ], [ %.tr100115, %middle.block ], [ %.tr100115, %.lr.ph.i.i.i.i ], [ %i.ef, %._crit_edge.i.i.i ], [ %i.ef, %._crit_edge69.i.i.i ] ; 3 uses
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_17PGOEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_9PGOBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_SN_T0_SO_T1_SO_T2_(ptr %.tr114, ptr %.sroa.090.0, ptr %.sroa.032.0.i, i64 noundef %.0, i64 noundef %.062, ptr noundef %5, i64 noundef %6)
  %i.hk = sub nsw i64 %.tr103117, %.062           ; 3 uses
  %.not = icmp sgt i64 %i.al, %6
  %.not66 = icmp sgt i64 %i.hk, %6
  %or.cond = and i1 %.not, %.not66
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

declare noundef zeroext i1 @_ZNK4llvm10BasicBlock12isLandingPadEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE11unionGroupsEPKNS_10BasicBlockES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(90) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1077, !noalias !1354 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1087, !noalias !1354 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1088, !noalias !1354 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = lshr i64 %i.o, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !442, !noalias !1363
  %i.s = and i32 %i.n, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !472

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.v = phi i64 [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.03.i.i.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !413, !noalias !1363
  %i.y = icmp eq ptr %1, %i.x
  br i1 %i.y, label %_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit, label %bb.c, !prof !429

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = add nuw i32 %.03.i.i.i.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !442, !noalias !1363
  %i.af = and i32 %i.aa, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !473

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ai = zext i32 %i.f to i64
  br label %_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit

_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.aj = phi i64 [ %i.ai, %.loopexit.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val2.i = load ptr, ptr %i.al, align 8, !tbaa !1090
  %i.am = tail call fastcc noundef ptr @_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE20findAndCompressGroupEPS3_(ptr noundef nonnull %.val2.i) ; 4 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !1077, !noalias !1364 ; 2 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !1087, !noalias !1364 ; 2 uses
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !1088, !noalias !1364 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.loopexit.i.i.i18, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit
  %i.ar = add i32 %i.ap, -1                       ; 2 uses
  %i.as = ptrtoint ptr %2 to i64
  %i.at = mul i64 %i.as, -4658895280553007687     ; 2 uses
  %i.au = lshr i64 %i.at, 31
  %i.av = xor i64 %i.au, %i.at
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.ar, %i.aw                    ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !442, !noalias !1373
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i20, label %.loopexit.i.i.i18, !prof !472

.lr.ph.i.i.i.i20:                                 ; preds = %bb.d, %bb.e
  %i.bf = phi i64 [ %i.bl, %bb.e ], [ %i.ay, %bb.d ] ; 2 uses
  %.03.i.i.i.i21 = phi i32 [ %i.bk, %bb.e ], [ %i.ax, %bb.d ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !413, !noalias !1373
  %i.bi = icmp eq ptr %2, %i.bh
  br i1 %i.bi, label %_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit22, label %bb.e, !prof !429

bb.e:                                             ; preds = %.lr.ph.i.i.i.i20
  %i.bj = add nuw i32 %.03.i.i.i.i21, 1
  %i.bk = and i32 %i.bj, %i.ar                    ; 3 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 5
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !442, !noalias !1373
  %i.bp = and i32 %i.bk, 31
  %i.bq = lshr i32 %i.bo, %i.bp
  %i.br = trunc i32 %i.bq to i1
  br i1 %i.br, label %.lr.ph.i.i.i.i20, label %.loopexit.i.i.i18, !prof !473

.loopexit.i.i.i18:                                ; preds = %bb.e, %bb.d, %_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit
  %i.bs = zext i32 %i.ap to i64
  br label %_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit22

_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit22: ; preds = %.lr.ph.i.i.i.i20, %.loopexit.i.i.i18
  %i.bt = phi i64 [ %i.bs, %.loopexit.i.i.i18 ], [ %i.bf, %.lr.ph.i.i.i.i20 ]
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.val2.i19 = load ptr, ptr %i.bv, align 8, !tbaa !1090
  %i.bw = tail call fastcc noundef ptr @_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE20findAndCompressGroupEPS3_(ptr noundef nonnull %.val2.i19) ; 4 uses
  %i.bx = icmp ne ptr %i.am, %i.bw                ; 2 uses
  br i1 %i.bx, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit22
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !1251 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !1251 ; 2 uses
  %i.cc = icmp ult i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.bw, ptr %i.am, align 8, !tbaa !1250
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store ptr %i.am, ptr %i.bw, align 8, !tbaa !1250
  %i.cd = icmp eq i32 %i.bz, %i.cb
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = add i32 %i.bz, 1
  store i32 %i.ce, ptr %i.by, align 4, !tbaa !1251
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %_ZNK4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE9getBBInfoEPKNS_10BasicBlockE.exit22
  ret i1 %i.bx
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE20findAndCompressGroupEPS3_(ptr nofree noundef captures(address) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1250   ; 3 uses
  %.not = icmp eq ptr %i.a, %0
  br i1 %.not, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a, %bb.b
  %common.ret.op = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %common.ret.op

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef ptr @_ZN4llvm6CFGMSTIN12_GLOBAL__N_17PGOEdgeENS1_9PGOBBInfoEE20findAndCompressGroupEPS3_(ptr noundef %i.a) ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !1250
  br label %common.ret
}

declare void @_ZN4llvm22BlockCoverageInferenceC1ERKNS_8FunctionEb(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(140), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1374 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1376
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1377
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !442  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj4EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.s) #25
  br label %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj4EED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !594  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj4EED2Ev.exit.i.i.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !597
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.z, 31
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741820
  %i.ae = add nuw nsw i64 %i.ad, %i.aa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.y, i64 noundef %i.ae, i64 noundef 8) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIPKNS_10BasicBlockELj4EED2Ev.exit.i.i.i
  %i.af = add i32 %.0.i3.i, -1
  %i.ag = and i32 %i.af, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1378

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1379

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1374 ; 2 uses
  %i.ah = icmp eq i32 %.pr, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1376
  %i.aj = zext i32 %.pr to i64                    ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 80
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS3_Lj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_14SmallSetVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_8FunctionE(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %2 = alloca %"class.llvm::ArrayRef.356", align 8 ; 4 uses
  %3 = alloca %"class.llvm::function_ref.366", align 8 ; 5 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::IRBuilder", align 8   ; 20 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.b = alloca [5 x ptr], align 8                ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %class.anon.367, align 1            ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.not4.i = icmp eq ptr %i.d, %i.e
  br i1 %.not4.i, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvLb0EvEELb0ELb0EEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 69
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 70
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ah = ptrtoint ptr %8 to i64
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_10BasicBlockE.exit.i, %.lr.ph.i
  %.sroa.02.05.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.ak, %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_10BasicBlockE.exit.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !205 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1156 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 24 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not5.i.i.i, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_11InstructionE.exit.i.i.i
  %.sroa.02.06.i.i.i = phi ptr [ %i.ap, %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_11InstructionE.exit.i.i.i ], [ %i.am, %bb.b ] ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1156 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.02.06.i.i.i, i64 -24 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !495
  %i.as = icmp eq i8 %i.ar, 89
  br i1 %i.as, label %bb.c, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_11InstructionE.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.at = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL14PGOInstrSelectE, i64 120), align 8, !tbaa !161, !range !24, !noundef !25
  %i.au = trunc nuw i8 %i.at to i1
  %.not.i.i.i.i.i = xor i1 %i.au, true
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionEntryCoverageE, i64 120), align 8, !range !24
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.aw
  %i.ax = load i8, ptr %i.f, align 8, !range !24
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond8.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 true, i1 %i.ay
  br i1 %or.cond8.i.i.i.i.i, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_11InstructionE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds i8, ptr %.sroa.02.06.i.i.i, i64 -120 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !454
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !942
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 254
  %spec.select.i.i.i.i.i.i = icmp eq i32 %i.bf, 18
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_11InstructionE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = load i32, ptr %i.g, align 4, !tbaa !444
  switch i32 %i.bg, label %bb.p [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.ai, align 8, !tbaa !443
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ai, align 8, !tbaa !443
  br label %_ZN4llvm11InstVisitorIN12_GLOBAL__N_117SelectInstVisitorEvE5visitERNS_11InstructionE.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %0, align 8, !tbaa !445, !nonnull !25, !align !160
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bm = getelementptr inbounds i8, ptr %.sroa.02.06.i.i.i, i64 -16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !942
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1183, !nonnull !25, !align !160
  store ptr null, ptr %5, align 8, !tbaa !1126
  store ptr %i.bo, ptr %i.m, align 8, !tbaa !973
  store ptr %i.k, ptr %i.n, align 8, !tbaa !1129
  store ptr %i.l, ptr %i.o, align 8, !tbaa !1131
  store ptr null, ptr %i.p, align 8, !tbaa !1133
  store i32 0, ptr %i.q, align 8, !tbaa !1143
  store i8 0, ptr %i.r, align 4, !tbaa !1144
  store i8 2, ptr %i.s, align 1, !tbaa !1145
  store i8 7, ptr %i.t, align 2, !tbaa !1146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.k, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !947
  store ptr %i.bq, ptr %i.v, align 8, !tbaa !1147
  store ptr %.sroa.02.06.i.i.i, ptr %i.w, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS4_SA_SC_SF_Lb0EEEbERKS4_DpOT_:bb.a
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1858
  store ptr %.lcssa9.sink.i.ph.i.i, ptr %i.a, align 8, !tbaa !1867, !noalias !1858
  %i.aj = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %.val5.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !1627, !noalias !1858
  %i.ak = shl i32 %.val5.i.i.i, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i.i.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i, label %bb.d, !prof !429

bb.d:                                             ; preds = %.loopexit.i.i
  %i.an = shl i32 %i.f, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.an), !noalias !1858
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %.0.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !1867, !noalias !1858
  %.val4.i.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !469, !noalias !1858
  %.val6.i.pre.i.i = load ptr, ptr %1, align 8, !tbaa !459, !noalias !1858
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i: ; preds = %bb.d, %.loopexit.i.i
  %.val6.i.i.i = phi ptr [ %.val6.i.pre.i.i, %bb.d ], [ %i.b, %.loopexit.i.i ] ; 2 uses
  %.val4.i.i.i = phi ptr [ %.val4.i.pre.i.i, %bb.d ], [ %i.d, %.loopexit.i.i ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i.i, %bb.d ], [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ] ; 4 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.val6.i.i.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 4                 ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 31
  %i.av = shl nuw i32 1, %i.au
  %i.aw = lshr i64 %i.as, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !442, !noalias !1858
  %i.az = or i32 %i.av, %i.ay
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !442, !noalias !1858
  %.val.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !1627, !noalias !1858
  %i.ba = add i32 %.val.i.i.i.i, 1
  store i32 %i.ba, ptr %i.aj, align 8, !tbaa !1627, !noalias !1858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1858
  store ptr %.0.val, ptr %i.ao, align 8, !tbaa !413, !noalias !1858
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !1868, !noalias !1858
  %.val.i4.pre.i = load i32, ptr %i.e, align 4, !tbaa !470, !noalias !1870
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16try_emplace_implIRKS4_JEEESt4pairINS_16DenseMapIteratorIS4_SA_SC_SF_Lb0EEEbEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16try_emplace_implIRKS4_JEEESt4pairINS_16DenseMapIteratorIS4_SA_SC_SF_Lb0EEEbEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i
  %.val.i4.i = phi i32 [ %.val.i4.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ %i.f, %.lr.ph.i.i.i ]
  %.val2.i.i = phi ptr [ %.val4.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ %i.d, %.lr.ph.i.i.i ]
  %.val3.i.i = phi ptr [ %.val6.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ %i.b, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ %i.w, %.lr.ph.i.i.i ]
  %.sroa.3.0.i.i = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.bc = zext i32 %.val.i4.i to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.val3.i.i, i64 %i.bc
  store ptr %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !1858
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1858
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val3.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1858
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.val2.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1858
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.3.0.i.i, ptr %i.be, align 8, !tbaa !1873, !alias.scope !1858
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !459, !noalias !1876 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !469, !noalias !1876 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !470, !noalias !1876 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !442
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !472

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !413
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !429

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !442
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !473, !llvm.loop !1866

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !1867
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #10 align 2 {
_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEC2EjNS_12DenseMapBaseISF_S3_S9_SB_SE_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.502", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !470
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !459
  store ptr %i.y, ptr %i.q, align 8, !tbaa !469
  store i32 0, ptr %i.p, align 16, !tbaa !1627
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !57
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !57
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !57
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !442
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !442
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !442
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !442
  call fastcc void @_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !459   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val8 = load i32, ptr %i.b, align 4, !tbaa !470 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.c, align 8, !tbaa !469 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !459
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val9 = load i32, ptr %i.d, align 4, !tbaa !470
  %i.e = add i32 %.val9, -1                       ; 2 uses
  %i.f = zext i32 %.val8 to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.h, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val7, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !442  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.j, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.j, %.lr.ph ], [ %i.at, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !413  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !442  ; 2 uses
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.016.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !442 ; 2 uses
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !1881

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %.lcssa15.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %.lcssa13.i ; 2 uses
  store ptr %i.p, ptr %i.an, align 8, !tbaa !413
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !474
  store i64 %.val.i.i.i.i, ptr %i.ao, align 8, !tbaa !474
  store ptr null, ptr %i.ap, align 8, !tbaa !474
  %i.aq = shl nuw i32 1, %.lcssa.i
  %i.ar = or i32 %i.aq, %.lcssa11.i
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !442
  %i.as = add i32 %.0.i21, -1
  %i.at = and i32 %i.as, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.at, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1882

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1883

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !470
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.au = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val8, %bb.a ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i32, ptr %i.av, align 8, !tbaa !1627
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val11, ptr %i.aw, align 8, !tbaa !1627
  %i.ax = icmp eq i32 %i.au, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val, i64 noundef %i.bd, i64 noundef 8) #25
  store i32 0, ptr %i.b, align 4, !tbaa !470
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.val2.i = load i32, ptr %i.a, align 4, !tbaa !470 ; 2 uses
  %i.b = icmp eq i32 %.val2.i, 0
  br i1 %i.b, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE17deallocateBucketsEv.exit, label %.lr.ph11.preheader.i

.lr.ph11.preheader.i:                             ; preds = %bb.a
  %.val4.i = load ptr, ptr %0, align 8, !tbaa !459
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !tbaa !469
  %i.d = zext i32 %.val2.i to i64
  %i.e = add nuw nsw i64 %i.d, 31
  %i.f = lshr i64 %i.e, 5
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %._crit_edge.i, %.lr.ph11.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph11.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !442  ; 2 uses
  %.not11.i6.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i6.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph11.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.i = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i7.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.y, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.j = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i, i1 true)
  %i.k = or disjoint i32 %i.j, %i.i
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val4.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !474  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvm11SmallVectorIPN12_GLOBAL__N_110PGOUseEdgeELj2EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.q) #25
  br label %_ZN4llvm11SmallVectorIPN12_GLOBAL__N_110PGOUseEdgeELj2EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPN12_GLOBAL__N_110PGOUseEdgeELj2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt14default_deleteIN12_GLOBAL__N_112PGOUseBBInfoEEclEPS1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPN12_GLOBAL__N_110PGOUseEdgeELj2EED2Ev.exit.i.i.i.i.i
  tail call void @free(ptr noundef %i.u) #25
  br label %_ZNKSt14default_deleteIN12_GLOBAL__N_112PGOUseBBInfoEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_112PGOUseBBInfoEEclEPS1_.exit.i.i.i: ; preds = %bb.e, %_ZN4llvm11SmallVectorIPN12_GLOBAL__N_110PGOUseEdgeELj2EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 104) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_112PGOUseBBInfoEEclEPS1_.exit.i.i.i, %bb.b
  %i.x = add i32 %.0.i7.i, -1
  %i.y = and i32 %i.x, %.0.i7.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1884

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph11.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit, label %.lr.ph11.i, !llvm.loop !1885

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !470  ; 2 uses
  %i.z = icmp eq i32 %.pr, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !459
  %i.ab = zext i32 %.pr to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %0, ptr %1) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %0, ptr %1)
  br label %common.ret27

common.ret27:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %0, ptr %i.g)
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %i.g, ptr %1)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 3
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_SN_T0_SO_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j)
  br label %common.ret27
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret35:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_SN_T0_SO_T1_SO_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret35

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2)
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2)
  tail call fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_SN_T0_SO_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret35
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 2 uses
  %i.f = icmp sgt i64 %i.c, 48
  br i1 %i.f, label %.lr.ph.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.012.013.i = phi ptr [ %i.g, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.013.i, i64 56 ; 4 uses
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %.sroa.012.013.i, ptr nonnull %i.g)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = icmp sgt i64 %i.i, 48
  br i1 %i.j, label %.lr.ph.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_.exit, !llvm.loop !1886

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.012.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph.i ]
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_(ptr %.sroa.012.0.lcssa.i, ptr %1)
  %i.k = icmp sgt i64 %i.d, 7
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_.exit
  %i.l = ptrtoint ptr %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_T1_T2_.exit
  %.060 = phi i64 [ 7, %.lr.ph ], [ %i.ay, %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_T1_T2_.exit ] ; 7 uses
  %i.m = shl nsw i64 %.060, 1                     ; 3 uses
  %.not31.i = icmp slt i64 %i.d, %i.m
  br i1 %.not31.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_.exit, label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %bb.b
  %.idx = shl nsw i64 %.060, 3                    ; 2 uses
  %.idx45 = shl nsw i64 %.060, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx45
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit
  %.033.i = phi ptr [ %.08.lcssa.i.i.i.i.i17.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ], [ %2, %.lr.ph.i22.preheader ] ; 2 uses
  %.sroa.030.032.i = phi ptr [ %i.o, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_12PGOUseBBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ], [ %0, %.lr.ph.i22.preheader ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.030.032.i, i64 %.idx ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.030.032.i, i64 %.idx45 ; 4 uses
  br i1 %.not, label %.critedge.i, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i22, %bb.e
  %.033.i30 = phi ptr [ %i.w, %bb.e ], [ %.033.i, %.lr.ph.i22 ] ; 5 uses
  %.sroa.028.032.i = phi ptr [ %.sroa.028.1.i, %bb.e ], [ %.sroa.030.032.i, %.lr.ph.i22 ] ; 4 uses
  %.sroa.026.031.i = phi ptr [ %.sroa.026.1.i, %bb.e ], [ %i.n, %.lr.ph.i22 ] ; 4 uses
  %.val2.i.i = load ptr, ptr %.sroa.026.031.i, align 8, !tbaa !424 ; 2 uses
  %.val3.i.i = load ptr, ptr %.sroa.028.032.i, align 8, !tbaa !424 ; 2 uses
  %i.p = getelementptr i8, ptr %.val2.i.i, i64 16
  %.val2.val.i.i = load i64, ptr %i.p, align 8, !tbaa !421
  %i.q = getelementptr i8, ptr %.val3.i.i, i64 16
  %.val3.val.i.i = load i64, ptr %i.q, align 8, !tbaa !421
  %i.r = icmp ugt i64 %.val2.val.i.i, %.val3.val.i.i
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i29
  store ptr null, ptr %.sroa.026.031.i, align 8, !tbaa !424
  %i.s = load ptr, ptr %.033.i30, align 8, !tbaa !424 ; 2 uses
  store ptr %.val2.i.i, ptr %.033.i30, align 8, !tbaa !424
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110PGOUseEdgeESt14default_deleteIS1_EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_110PGOUseEdgeEEclEPS1_.exit.i.i.i.i.i

end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !429

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2039
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !579
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !573
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !442
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !442
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !581
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !413
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !413
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 0, ptr %i.bi, align 8, !tbaa !560
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !573, !noalias !2040 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !579, !noalias !2040 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !580, !noalias !2040 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !413    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !442
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !472

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !413
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !429

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !442
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !473, !llvm.loop !650

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2039
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.820", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !580
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !573
  store ptr %i.y, ptr %i.q, align 8, !tbaa !579
  store i32 0, ptr %i.p, align 16, !tbaa !581
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !57
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2039
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !57
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !57
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !442 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !442
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !442
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !442
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !442
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !573    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !579
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !580  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !579  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !573
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !580
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !442  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !413  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !442 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !442 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2045

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !413
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !560, !range !24, !noundef !25
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !560
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !442
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2046

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2047

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !580
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !581
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !581
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !580
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEbNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_bEEEES7_bS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !586, !noalias !2048 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !598, !noalias !2048 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !599, !noalias !2048 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !413    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !442
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !472

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !413
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.c, !prof !429

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !442
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !473, !llvm.loop !600

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2053
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !601
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !429

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2053
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !598
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !586
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !442
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !442
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !601
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !413
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !413
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !586, !noalias !2054 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !598, !noalias !2054 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !599, !noalias !2054 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !413    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !442
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !472

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !413
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !429

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !442
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !473, !llvm.loop !600

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2053
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.822", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !599
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !586
  store ptr %i.y, ptr %i.q, align 8, !tbaa !598
  store i32 0, ptr %i.p, align 16, !tbaa !601
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2053   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !441 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !57
  store ptr %i.z, ptr %2, align 16, !tbaa !2053
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !57
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !441
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !442 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !442
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !442
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !442
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !442
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !442 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !594 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !597
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !765

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !766

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !599 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !586
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !586
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !598
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !599  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !598  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !586
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !599
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEESA_NS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SA_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !442  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.br, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !413  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !442
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !442
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2059

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !413
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !tbaa !57
  store <2 x ptr> %i.aw, ptr %i.at, align 8, !tbaa !57
  store ptr null, ptr %i.au, align 8, !tbaa !2060
  store ptr null, ptr %i.av, align 8, !tbaa !441
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !442
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !442
  store i32 0, ptr %i.ay, align 8, !tbaa !442
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 28 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !442
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !442
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !442
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !442
  %i.be = shl nuw i32 1, %.lcssa.i
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !442
  %i.bh = or i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !442
  %i.bi = load i32, ptr %i.bb, align 4, !tbaa !594 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bk = zext i32 %i.bi to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef null, i64 noundef %i.bp, i64 noundef 8) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bq = add i32 %.0.i17, -1
  %i.br = and i32 %i.bq, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.br, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2061

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEESA_NS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SA_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2062

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEESA_NS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SA_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !599
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEESA_NS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SA_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEESA_NS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SA_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEESA_NS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SA_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bs = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEESA_NS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SA_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !601
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !601
  %i.bw = icmp eq i32 %i.bs, 0
  br i1 %i.bw, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEESA_NS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SA_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bx = load ptr, ptr %1, align 8, !tbaa !586
  %i.by = zext i32 %i.bs to i64                   ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 5
  %i.ca = add nuw nsw i64 %i.by, 31
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = and i64 %i.cb, 1073741820
  %i.cd = add nuw nsw i64 %i.cc, %i.bz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bx, i64 noundef %i.cd, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !599
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEES6_NS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEESA_NS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SA_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.481", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !594
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !597
  store ptr %i.y, ptr %i.q, align 8, !tbaa !618
  store i32 0, ptr %i.p, align 16, !tbaa !621
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !57
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2060
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !57
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !57
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !442 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !442
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !442
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !442
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !442
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !597    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !594  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !618  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !597
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !594
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !442  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !413  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !442 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !442 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2063

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !413
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !442
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2064

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2065

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !594
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !621
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !621
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !594
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPKN4llvm10BasicBlockESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !568  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !568
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !627
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !569
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !570
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !627
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !561
  %i.ag = load ptr, ptr %0, align 8, !tbaa !566
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPKN4llvm10BasicBlockESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPKN4llvm10BasicBlockESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPKN4llvm10BasicBlockESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPKN4llvm10BasicBlockESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !634
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !567
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !572
  %i.aq = load ptr, ptr %1, align 8, !tbaa !413
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !413
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !568
  store ptr %i.am, ptr %i.o, align 8, !tbaa !569
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !570
  store ptr %i.am, ptr %i.a, align 8, !tbaa !572
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPKN4llvm10BasicBlockESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !634  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !656  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !561  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !566
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !429

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPPKN4llvm10BasicBlockES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
end_hunk_6
