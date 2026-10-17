Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-code-generator?download=true
inline.NumInlined: 32460
inline.NumDeleted: 3454
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2v88internal26DeoptimizationLiteralArray3setEiNS0_6TaggedINS0_6ObjectEEE:bb.a
  %i.av = and i64 %.sroa.014.1, -3                ; 2 uses
  %i.aw = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ax = or disjoint i64 %i.aw, 1                ; 2 uses
  %i.ay = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.az = and i64 %i.aw, -262144
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %i.ba, align 262144       ; 2 uses
  %i.bc = and i64 %i.bb, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, 0
  %i.bd = and i64 %i.bb, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not38.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = and i64 %.sroa.014.1, -262144
  %i.bf = inttoptr i64 %i.be to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.bf, align 262144
  %i.bg = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not39.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ax, i64 noundef %i.ay, i64 %i.av) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_21TrustedWeakFixedArrayENS0_26TrustedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.j, !prof !19

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ax, i64 %i.ay, i64 %i.av) #20
  br label %_ZN2v88internal15TaggedArrayBaseINS0_21TrustedWeakFixedArrayENS0_26TrustedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_21TrustedWeakFixedArrayENS0_26TrustedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal4Code40IsWeakObjectInDeoptimizationLiteralArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.i, %bb.j
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal9AssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit

_ZN2v88internal19JumpTableInfoWriterD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.06.i.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #24
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.u = icmp ult ptr %.06.i.i.i, %i.p
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !125

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, %bb.c
  %i.v = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i ], [ %i.l, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit

_ZNSt5dequeIiSaIiEED2Ev.exit:                     ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i
  tail call void @_ZN2v88internal13AssemblerBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev15MaglevAssemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(456) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(456) %0) #20
  tail call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN2v88internal9Assembler24PatchInHeapNumberRequestEmNS0_6HandleINS0_10HeapNumberEEE(ptr noundef nonnull align 8 dereferenceable(408), i64 noundef, ptr) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler22LoadFromConstantsTableENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler22LoadRootRegisterOffsetENS0_8RegisterEl(ptr noundef nonnull align 8 dereferenceable(436), i8, i64 noundef) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436), i8, i16 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN2v88internal16AssemblerOptions7DefaultEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"struct.v8::internal::AssemblerOptions") align 8, ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal18MacroAssemblerBaseC2EPNS0_7IsolateESt7variantIJPNS0_4ZoneEPNS0_19AccountingAllocatorEEENS0_16AssemblerOptionsENS0_18CodeObjectRequiredESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteISD_EE(ptr noundef nonnull align 8 dereferenceable(436), ptr noundef, ptr, i8, ptr noundef byval(%"struct.v8::internal::AssemblerOptions") align 8, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal13AssemblerBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal8MalloceddlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE13_M_assign_auxISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 8 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.c, %i.k
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.m, label %bb.c, label %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN2v88internal23StrongRootAllocatorBase13allocate_implEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d) #20 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.n, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.05.08.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %1, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i ] ; 2 uses
  %i.o = load i64, ptr %.sroa.05.08.i.i, align 8
  store i64 %i.o, ptr %.09.i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.r = icmp eq ptr %i.p, %2
  br i1 %i.r, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !127

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit: ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  tail call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.t, i64 noundef %i.y) #20
  br label %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit, %bb.d
  store ptr %i.n, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c ; 2 uses
  store ptr %i.z, ptr %i.s, align 8
  store ptr %i.z, ptr %i.f, align 8
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.j                     ; 5 uses
  %.not = icmp ult i64 %i.ad, %i.c
  br i1 %.not, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp sgt i64 %i.c, 8
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.i, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = load i64, ptr %1, align 8
  store i64 %i.ag, ptr %i.h, align 8
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ah = getelementptr inbounds i8, ptr %i.h, i64 %i.c ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8
  %.not.i18 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i18, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit
  store ptr %i.ah, ptr %i.aa, align 8
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.ad ; 2 uses
  %i.aj = icmp sgt i64 %i.ad, 8
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !19

bb.k:                                             ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %1, i64 %i.ad, i1 false)
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19

bb.l:                                             ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ak = icmp eq i64 %i.ad, 8
  br i1 %i.ak, label %bb.m, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19

bb.m:                                             ; preds = %bb.l
  %i.al = load i64, ptr %1, align 8
  store i64 %i.al, ptr %i.h, align 8
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19: ; preds = %bb.k, %bb.l, %bb.m
  %i.am = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.an = icmp eq ptr %.sink.i, %2
  br i1 %i.an, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_S8_ET0_T_SD_SC_RT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19, %.lr.ph.i
  %.09.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.am, %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19 ] ; 2 uses
  %.sroa.05.08.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %.sink.i, %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19 ] ; 2 uses
  %i.ao = load i64, ptr %.sroa.05.08.i, align 8
  store i64 %i.ao, ptr %.09.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %2
  br i1 %i.ar, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_S8_ET0_T_SD_SC_RT1_.exit, label %.lr.ph.i, !llvm.loop !127

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_S8_ET0_T_SD_SC_RT1_.exit: ; preds = %.lr.ph.i, %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19
  %.0.lcssa.i = phi ptr [ %i.am, %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19 ], [ %i.aq, %.lr.ph.i ]
  store ptr %.0.lcssa.i, ptr %i.aa, align 8
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit: ; preds = %bb.j, %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_S8_ET0_T_SD_SC_RT1_.exit, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN2v88internal23StrongRootAllocatorBase13allocate_implEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZNK2v88internal6maglev21MaglevCompilationUnit6is_osrEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler9CodeEntryEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #1

declare void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15BuildBeginDeoptEPNS1_9DeoptInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit

_ZNSt6vectorIlSaIlEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i, %_ZNSt6vectorIlSaIlEE5clearEv.exit
  %.07.i = phi ptr [ %i.e, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ %i.o, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i ] ; 3 uses
  %.06.i = phi i32 [ 0, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ %i.m, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i ]
  %.0.i = phi i32 [ 0, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ %i.l, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  %i.g = load i8, ptr %i.f, align 8
  switch i8 %i.g, label %bb.d [
    i8 0, label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread.i
    i8 3, label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.i
    i8 2, label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i
    i8 1, label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i
  ]

_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread.i: ; preds = %bb.c
  %i.h = add nsw i32 %.0.i, 1
  br label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i

bb.d:                                             ; preds = %bb.c
  unreachable

_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %.fr.i = freeze ptr %i.j
  %.not14.i = icmp ne ptr %.fr.i, null
  %i.k = zext i1 %.not14.i to i32
  %spec.select.i = add nsw i32 %.0.i, %i.k
  br label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i

_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i: ; preds = %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.i, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread.i, %bb.c, %bb.c
  %i.l = phi i32 [ %.0.i, %bb.c ], [ %spec.select.i, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.i ], [ %i.h, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread.i ], [ %.0.i, %bb.c ] ; 2 uses
  %i.m = add nuw nsw i32 %.06.i, 1                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN2v88internal6maglev12_GLOBAL__N_112_GLOBAL__N_113GetFrameCountEPKNS1_10DeoptFrameE.exit, label %bb.c, !llvm.loop !128

_ZN2v88internal6maglev12_GLOBAL__N_112_GLOBAL__N_113GetFrameCountEPKNS1_10DeoptFrameE.exit: ; preds = %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp ne ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp ne i32 %i.v, -1
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  %i.y = tail call noundef i32 @_ZN2v88internal23FrameTranslationBuilder16BeginTranslationEiib(ptr noundef nonnull align 8 dereferenceable(133) %i.q, i32 noundef %i.m, i32 noundef %i.l, i1 noundef zeroext %i.x) #20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = load i32, ptr %i.u, align 8
  %i.ad = icmp ne i32 %i.ac, -1
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_112_GLOBAL__N_113GetFrameCountEPKNS1_10DeoptFrameE.exit
  %i.af = load ptr, ptr %i.p, align 8
  %i.ag = load i64, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call { ptr, i8 } @_ZN2v88internal15IdentityMapBase17FindOrInsertEntryEm(ptr noundef nonnull align 8 dereferenceable(66) %i.ai, i64 noundef %i.ag) #20 ; 2 uses
  %i.ak = extractvalue { ptr, i8 } %i.aj, 1
  %i.al = extractvalue { ptr, i8 } %i.aj, 0       ; 2 uses
  %i.am = trunc i8 %i.ak to i1
  br i1 %i.am, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i32, ptr %i.al, align 4
end_hunk_0
