Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bytecode-generator?download=true
inline.NumInlined: 7033
inline.NumDeleted: 1742
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt8_Rb_treeISt5tupleIJN2v88internal11interpreter17BytecodeGenerator17FeedbackSlotCache8SlotKindEiPKvEESt4pairIKS9_iESt10_Select1stISC_ESt4lessIS9_ENS2_13ZoneAllocatorISC_EEE17_M_emplace_uniqueIJRSA_IS9_iEEEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_:bb.a
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8
  br label %bb.k

bb.k:                                             ; preds = %.split26.i, %_ZNKSt4lessISt5tupleIJN2v88internal11interpreter17BytecodeGenerator17FeedbackSlotCache8SlotKindEiPKvEEEclERKS9_SC_.exit6.i, %_ZNSt8_Rb_treeISt5tupleIJN2v88internal11interpreter17BytecodeGenerator17FeedbackSlotCache8SlotKindEiPKvEESt4pairIKS9_iESt10_Select1stISC_ESt4lessIS9_ENS2_13ZoneAllocatorISC_EEE10_Auto_node9_M_insertESA_IPSt18_Rb_tree_node_baseSM_E.exit
  %.sroa.07.0 = phi ptr [ %i.i, %_ZNSt8_Rb_treeISt5tupleIJN2v88internal11interpreter17BytecodeGenerator17FeedbackSlotCache8SlotKindEiPKvEESt4pairIKS9_iESt10_Select1stISC_ESt4lessIS9_ENS2_13ZoneAllocatorISC_EEE10_Auto_node9_M_insertESA_IPSt18_Rb_tree_node_baseSM_E.exit ], [ %.sroa.07.0.i, %_ZNKSt4lessISt5tupleIJN2v88internal11interpreter17BytecodeGenerator17FeedbackSlotCache8SlotKindEiPKvEEEclERKS9_SC_.exit6.i ], [ %.sroa.07.0.i, %.split26.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeISt5tupleIJN2v88internal11interpreter17BytecodeGenerator17FeedbackSlotCache8SlotKindEiPKvEESt4pairIKS9_iESt10_Select1stISC_ESt4lessIS9_ENS2_13ZoneAllocatorISC_EEE10_Auto_node9_M_insertESA_IPSt18_Rb_tree_node_baseSM_E.exit ], [ 0, %_ZNKSt4lessISt5tupleIJN2v88internal11interpreter17BytecodeGenerator17FeedbackSlotCache8SlotKindEiPKvEEEclERKS9_SC_.exit6.i ], [ 0, %.split26.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorISt4pairIPNS_8internal8PropertyEPNS3_10ExpressionEELm64ESaIS8_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(1048) %0) local_unnamed_addr #16 comdat align 2 {
_ZSt9destroy_nIPSt4pairIPN2v88internal8PropertyEPNS2_10ExpressionEElET_S9_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPSt4pairIPN2v88internal8PropertyEPNS2_10ExpressionEElET_S9_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPSt4pairIPN2v88internal8PropertyEPNS2_10ExpressionEElET_S9_T0_.exit
  ret void
}

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

declare void @_ZN2v88internal31ObjectLiteralBoilerplateBuilder27BuildBoilerplateDescriptionINS0_7IsolateEEEvPT_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal30ArrayLiteralBoilerplateBuilder27BuildBoilerplateDescriptionINS0_7IsolateEEEvPT_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal25ProtoAssignmentSeqBuilder27BuildBoilerplateDescriptionINS0_7IsolateEEEvPT_NS0_6HandleINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

declare void @_ZN2v88internal31ObjectLiteralBoilerplateBuilder27BuildBoilerplateDescriptionINS0_12LocalIsolateEEEvPT_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal30ArrayLiteralBoilerplateBuilder27BuildBoilerplateDescriptionINS0_12LocalIsolateEEEvPT_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal25ProtoAssignmentSeqBuilder27BuildBoilerplateDescriptionINS0_12LocalIsolateEEEvPT_NS0_6HandleINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter15TryCatchBuilder8BeginTryENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(56), i32) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter15TryCatchBuilder6EndTryEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter15TryCatchBuilder8EndCatchEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal11interpreter15TryCatchBuilderD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

declare noundef i32 @_ZN2v88internal11interpreter19HandlerTableBuilder15NewHandlerEntryEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal11interpreter17BytecodeGenerator23ControlScopeForTryCatch7ExecuteENS2_12ControlScope7CommandEPNS0_9StatementEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %cond = icmp eq i32 %1, 4                       ; 2 uses
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder7ReThrowEv(ptr noundef nonnull align 8 dereferenceable(480) %i.c) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %cond
}

declare noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17SetPendingMessageEv(ptr noundef nonnull align 8 dereferenceable(480)) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter17TryFinallyBuilder8BeginTryENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(96), i32) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter17TryFinallyBuilder6EndTryEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter17TryFinallyBuilder8LeaveTryEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter17TryFinallyBuilder12BeginHandlerEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter17TryFinallyBuilder12BeginFinallyEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter17TryFinallyBuilder10EndFinallyEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands21ApplyDeferredCommandsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::interpreter::BytecodeLabel", align 8 ; 7 uses
  %2 = alloca %"class.v8::internal::interpreter::BytecodeLabel", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 14 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i8 0, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.f, align 8
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i64 %i.i, 24
  br i1 %i.j, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load i8, ptr %i.k, align 4, !range !39, !noundef !40
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 32
  %i.t = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder11LoadLiteralENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(480) %i.o, i64 %i.s) #21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.021.0.copyload = load i32, ptr %i.u, align 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder16CompareReferenceENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.t, i32 %.sroa.021.0.copyload) #21
  %i.w = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder11JumpIfFalseENS2_13ToBooleanModeEPNS1_13BytecodeLabelE(ptr noundef nonnull align 8 dereferenceable(480) %i.v, i32 noundef 1, ptr noundef nonnull %1) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = load i32, ptr %i.d, align 8              ; 2 uses
  %i.y = icmp eq i32 %i.x, 4
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload.i = load i32, ptr %i.ab, align 8
  %i.ac = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.aa, i32 %.sroa.01.0.copyload.i) #21
  %i.ad = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17SetPendingMessageEv(ptr noundef nonnull align 8 dereferenceable(480) %i.ac) #21 ; 0 uses
  %.pr.i = load i32, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = phi i32 [ %.pr.i, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.ah, i32 %.sroa.0.0.copyload.i) #21 ; 0 uses
  %.pre.i = load i32, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %.pre.i, %bb.h ], [ %i.ae, %bb.g ]
  %i.al = load ptr, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 872
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i = phi ptr [ %i.an, %bb.i ], [ %i.au, %bb.k ] ; 3 uses
  %i.aq = load ptr, ptr %.0.i.i, align 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, i32 noundef %i.ak, ptr noundef %i.ap, i32 noundef -1) #21, !inline_history !259
  br i1 %i.as, label %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %bb.l, label %bb.j, !llvm.loop !0

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #23
  unreachable

bb.m:                                             ; preds = %bb.b
  %i.av = sdiv exact i64 %i.i, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4, !range !39, !noundef !40
  %i.ay = xor i8 %i.ax, 1
  %3 = zext nneg i8 %i.ay to i32                  ; 2 uses
  %4 = trunc i64 %i.av to i32
  %5 = sub i32 %4, %3                             ; 2 uses
  %i.az = icmp eq i32 %5, 1
  br i1 %i.az, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 0, ptr %2, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 32
  %i.bi = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder11LoadLiteralENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(480) %i.bd, i64 %i.bh) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.013.0.copyload = load i32, ptr %i.bj, align 8
  %i.bk = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder16CompareReferenceENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.bi, i32 %.sroa.013.0.copyload) #21
  %i.bl = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder11JumpIfFalseENS2_13ToBooleanModeEPNS1_13BytecodeLabelE(ptr noundef nonnull align 8 dereferenceable(480) %i.bk, i32 noundef 1, ptr noundef nonnull %2) #21 ; 0 uses
  %i.bm = load i32, ptr %i.d, align 8             ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 4
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload.i31 = load i32, ptr %i.bq, align 8
  %i.br = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.bp, i32 %.sroa.01.0.copyload.i31) #21
  %i.bs = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17SetPendingMessageEv(ptr noundef nonnull align 8 dereferenceable(480) %i.br) #21 ; 0 uses
  %.pr.i32 = load i32, ptr %i.d, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bt = phi i32 [ %.pr.i32, %bb.o ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, 1
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.bx, align 4
  %i.by = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.bw, i32 %.sroa.0.0.copyload.i29) #21 ; 0 uses
  %.pre.i30 = load i32, ptr %i.d, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bz = phi i32 [ %.pre.i30, %bb.q ], [ %i.bt, %bb.p ]
  %i.ca = load ptr, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 872
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.0.i.i27 = phi ptr [ %i.cc, %bb.r ], [ %i.cj, %bb.t ] ; 3 uses
  %i.cf = load ptr, ptr %.0.i.i27, align 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i27, i32 noundef %i.bz, ptr noundef %i.ce, i32 noundef -1) #21, !inline_history !259
  br i1 %i.ch, label %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit33, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i28, label %bb.u, label %bb.s, !llvm.loop !0

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit33: ; preds = %bb.s
  %i.ck = load ptr, ptr %0, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder4BindEPNS1_13BytecodeLabelE(ptr noundef nonnull align 8 dereferenceable(480) %i.cl, ptr noundef nonnull %2) #21 ; 0 uses
  %i.cn = load i32, ptr %i.bb, align 8            ; 2 uses
  %i.co = icmp eq i32 %i.cn, 4
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit33
  %i.cp = load ptr, ptr %0, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload.i38 = load i32, ptr %i.cr, align 8
  %i.cs = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.cq, i32 %.sroa.01.0.copyload.i38) #21
  %i.ct = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17SetPendingMessageEv(ptr noundef nonnull align 8 dereferenceable(480) %i.cs) #21 ; 0 uses
  %.pr.i39 = load i32, ptr %i.bb, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit33
  %i.cu = phi i32 [ %.pr.i39, %bb.v ], [ %i.cn, %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit33 ] ; 2 uses
  %i.cv = icmp ugt i32 %i.cu, 1
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.cy, align 4
  %i.cz = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.cx, i32 %.sroa.0.0.copyload.i36) #21 ; 0 uses
  %.pre.i37 = load i32, ptr %i.bb, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.da = phi i32 [ %.pre.i37, %bb.x ], [ %i.cu, %bb.w ]
  %i.db = load ptr, ptr %0, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 872
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.0.i.i34 = phi ptr [ %i.dd, %bb.y ], [ %i.dk, %bb.aa ] ; 3 uses
  %i.dg = load ptr, ptr %.0.i.i34, align 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i34, i32 noundef %i.da, ptr noundef %i.df, i32 noundef -1) #21, !inline_history !259
  br i1 %i.di, label %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit40, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i35, label %bb.ab, label %bb.z, !llvm.loop !0

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit40: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit

bb.ac:                                            ; preds = %bb.m
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = tail call noundef ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17AllocateJumpTableEii(ptr noundef nonnull align 8 dereferenceable(480) %i.dm, i32 noundef %5, i32 noundef %3) #21 ; 3 uses
  %i.do = load ptr, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load i32, ptr %i.dq, align 8
  %i.dr = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.dp, i32 %.sroa.0.0.copyload) #21
  %i.ds = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder21SwitchOnSmiNoFeedbackEPNS1_17BytecodeJumpTableE(ptr noundef nonnull align 8 dereferenceable(480) %i.dr, ptr noundef %i.dn) #21 ; 0 uses
  %i.dt = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.du = load i8, ptr %i.aw, align 4, !range !39, !noundef !40
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dw = load ptr, ptr %0, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder4JumpEPNS1_13BytecodeLabelE(ptr noundef nonnull align 8 dereferenceable(480) %i.dx, ptr noundef nonnull %1) #21 ; 0 uses
  %i.dz = load ptr, ptr %0, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder4BindEPNS1_17BytecodeJumpTableEi(ptr noundef nonnull align 8 dereferenceable(480) %i.ea, ptr noundef %i.dn, i32 noundef %i.ec) #21 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ee = load i32, ptr %i.dt, align 8            ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 4
  br i1 %i.ef, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eg = load ptr, ptr %0, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload.i45 = load i32, ptr %i.ei, align 8
  %i.ej = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.eh, i32 %.sroa.01.0.copyload.i45) #21
  %i.ek = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17SetPendingMessageEv(ptr noundef nonnull align 8 dereferenceable(480) %i.ej) #21 ; 0 uses
  %.pr.i46 = load i32, ptr %i.dt, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.el = phi i32 [ %.pr.i46, %bb.af ], [ %i.ee, %bb.ae ] ; 2 uses
  %i.em = icmp ugt i32 %i.el, 1
  br i1 %i.em, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.en = load ptr, ptr %0, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i43 = load i32, ptr %i.ep, align 4
  %i.eq = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.eo, i32 %.sroa.0.0.copyload.i43) #21 ; 0 uses
  %.pre.i44 = load i32, ptr %i.dt, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.er = phi i32 [ %.pre.i44, %bb.ah ], [ %i.el, %bb.ag ]
  %i.es = load ptr, ptr %0, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 872
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %.0.i.i41 = phi ptr [ %i.eu, %bb.ai ], [ %i.fb, %bb.ak ] ; 3 uses
  %i.ex = load ptr, ptr %.0.i.i41, align 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef zeroext i1 %i.ey(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i41, i32 noundef %i.er, ptr noundef %i.ew, i32 noundef -1) #21, !inline_history !259
  br i1 %i.ez, label %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit47, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i42, label %bb.al, label %bb.aj, !llvm.loop !0

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit47: ; preds = %bb.aj
  %i.fc = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.fd = load ptr, ptr %i.a, align 8             ; 2 uses
  %.056 = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %.not57 = icmp eq ptr %.056, %i.fd
  br i1 %.not57, label %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit47
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.am

_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit54.loopexit: ; preds = %bb.ar
  %.0 = getelementptr inbounds nuw i8, ptr %.059, i64 24 ; 2 uses
  %.not = icmp eq ptr %.0, %i.fd
  br i1 %.not, label %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit, label %bb.am

bb.am:                                            ; preds = %.lr.ph, %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit54.loopexit
  %.059 = phi ptr [ %.056, %.lr.ph ], [ %.0, %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit54.loopexit ] ; 5 uses
  %.pn58 = phi ptr [ %i.fc, %.lr.ph ], [ %.059, %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit54.loopexit ] ; 2 uses
  %i.fg = load ptr, ptr %0, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn58, i64 40
  %i.fj = load i32, ptr %i.fi, align 8
  %i.fk = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder4BindEPNS1_17BytecodeJumpTableEi(ptr noundef nonnull align 8 dereferenceable(480) %i.fh, ptr noundef %i.dn, i32 noundef %i.fj) #21 ; 0 uses
  %i.fl = load i32, ptr %.059, align 8            ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 4
  br i1 %i.fm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fn = load ptr, ptr %0, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %.sroa.01.0.copyload.i52 = load i32, ptr %i.fe, align 8
  %i.fp = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.fo, i32 %.sroa.01.0.copyload.i52) #21
  %i.fq = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder17SetPendingMessageEv(ptr noundef nonnull align 8 dereferenceable(480) %i.fp) #21 ; 0 uses
  %.pr.i53 = load i32, ptr %.059, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fr = phi i32 [ %.pr.i53, %bb.an ], [ %i.fl, %bb.am ] ; 2 uses
  %i.fs = icmp ugt i32 %i.fr, 1
  br i1 %i.fs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ft = load ptr, ptr %0, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %.sroa.0.0.copyload.i50 = load i32, ptr %i.ff, align 4
  %i.fv = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder27LoadAccumulatorWithRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(480) %i.fu, i32 %.sroa.0.0.copyload.i50) #21 ; 0 uses
  %.pre.i51 = load i32, ptr %.059, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fw = phi i32 [ %.pre.i51, %bb.ap ], [ %i.fr, %bb.ao ]
  %i.fx = load ptr, ptr %0, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 872
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.pn58, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %.0.i.i48 = phi ptr [ %i.fz, %bb.aq ], [ %i.gg, %bb.as ] ; 3 uses
  %i.gc = load ptr, ptr %.0.i.i48, align 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call noundef zeroext i1 %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i48, i32 noundef %i.fw, ptr noundef %i.gb, i32 noundef -1) #21, !inline_history !259
  br i1 %i.ge, label %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit54.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i49, label %bb.at, label %bb.ar, !llvm.loop !0

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit: ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit54.loopexit, %bb.j, %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit47, %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit40
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.gi = load i8, ptr %i.gh, align 4, !range !39, !noundef !40
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit
  %i.gk = load ptr, ptr %0, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = call noundef nonnull align 8 dereferenceable(480) ptr @_ZN2v88internal11interpreter20BytecodeArrayBuilder4BindEPNS1_13BytecodeLabelE(ptr noundef nonnull align 8 dereferenceable(480) %i.gl, ptr noundef nonnull %1) #21 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN2v88internal11interpreter17BytecodeGenerator12ControlScope16DeferredCommands20ApplyDeferredCommandERKNS4_5EntryE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.aw

bb.aw:                                            ; preds = %bb.a, %bb.av
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal11interpreter17TryFinallyBuilderD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_11interpreter17BytecodeGenerator12ControlScope16DeferredCommands5EntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN2v88internal10ZoneVectorINS0_11interpreter17BytecodeGenerator12ControlScope16DeferredCommands5EntryEE11NewCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = sdiv exact i64 %i.l, 24
  %i.n = shl nsw i64 %i.m, 1
  br label %_ZN2v88internal10ZoneVectorINS0_11interpreter17BytecodeGenerator12ControlScope16DeferredCommands5EntryEE11NewCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_11interpreter17BytecodeGenerator12ControlScope16DeferredCommands5EntryEE11NewCapacityEm.exit: ; preds = %bb.a, %bb.b
end_hunk_0
