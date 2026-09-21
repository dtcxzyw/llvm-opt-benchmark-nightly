Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugProgramInstruction?download=true
inline.NumInlined: 1037
inline.NumDeleted: 579
begin_hunk_0_@_ZN4llvm9DbgMarker12removeMarkerEv:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aa, i8 0, i64 16, i1 false)
  tail call void @_ZN4llvm9DbgRecord12deleteRecordEv(ptr noundef nonnull align 8 dereferenceable(33) %i.aa)
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.ag = icmp eq ptr %i.b, %i.af
  br i1 %i.ag, label %_ZN4llvm9DbgMarker15eraseFromParentEv.exit21, label %.lr.ph.i.i20, !llvm.loop !0

_ZN4llvm9DbgMarker15eraseFromParentEv.exit21:     ; preds = %.lr.ph.i.i20, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 24) #17
  br label %bb.l

_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !177 ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !107
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = icmp eq ptr %i.ai, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  tail call void @_ZN4llvm10BasicBlock21setTrailingDbgRecordsEPNS_9DbgMarkerE(ptr noundef nonnull align 8 dereferenceable(80) %i.al, ptr noundef nonnull %0) #16
  br label %bb.k

bb.j:                                             ; preds = %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %0, ptr %i.ap, align 8, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge = phi ptr [ %i.ao, %bb.j ], [ null, %bb.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !107
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm9DbgMarker15eraseFromParentEv.exit21, %bb.k, %_ZN4llvm9DbgMarker15eraseFromParentEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.aq, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9DbgMarker15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.b, align 8, !tbaa !119
  store ptr null, ptr %0, align 8, !tbaa !107
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm9DbgMarker14dropDbgRecordsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 16, i1 false)
  tail call void @_ZN4llvm9DbgRecord12deleteRecordEv(ptr noundef nonnull align 8 dereferenceable(33) %i.g)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.m = icmp eq ptr %i.c, %i.l
  br i1 %i.m, label %_ZN4llvm9DbgMarker14dropDbgRecordsEv.exit, label %bb.d, !llvm.loop !0

_ZN4llvm9DbgMarker14dropDbgRecordsEv.exit:        ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #17
  ret void
}

declare noundef ptr @_ZN4llvm10BasicBlock13getNextMarkerEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm9DbgMarker17absorbDebugValuesERS0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0 = select i1 %2, ptr %i.b, ptr %i.c  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 5 uses
  %.not10 = icmp eq ptr %i.f, %i.d
  br i1 %.not10, label %_ZN4llvm12simple_ilistINS_9DbgRecordEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_.exit, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.g = icmp eq ptr %.sroa.03.0, %i.d
  br i1 %i.g, label %_ZN4llvm12simple_ilistINS_9DbgRecordEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !71   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.d, ptr %i.j, align 8, !tbaa !72
  store ptr %i.i, ptr %i.d, align 8, !tbaa !71
  %i.k = load ptr, ptr %.sroa.03.0, align 8, !tbaa !71 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.03.0, ptr %i.l, align 8, !tbaa !72
  store ptr %i.k, ptr %i.f, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.f, ptr %i.m, align 8, !tbaa !72
  store ptr %i.h, ptr %.sroa.03.0, align 8, !tbaa !71
  br label %_ZN4llvm12simple_ilistINS_9DbgRecordEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_.exit

_ZN4llvm12simple_ilistINS_9DbgRecordEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_.exit: ; preds = %bb.a, %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.07.011 = phi ptr [ %i.p, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16
  store ptr %0, ptr %i.n, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %.not = icmp eq ptr %i.p, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN4llvm10BasicBlock21setTrailingDbgRecordsEPNS_9DbgMarkerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm9DbgMarker16removeFromParentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.b, align 8, !tbaa !119
  store ptr null, ptr %0, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, ptr } @_ZN4llvm9DbgMarker17getDbgRecordRangeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.a, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, ptr } @_ZNK4llvm9DbgMarker17getDbgRecordRangeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.a, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9DbgRecord15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(33) initializes((16, 24)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %0, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm9DbgRecord12deleteRecordEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm9DbgMarker15insertDbgRecordEPNS_9DbgRecordEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef initializes((0, 16)) %1, i1 noundef zeroext %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.02.0 = select i1 %2, ptr %i.b, ptr %i.c  ; 3 uses
  %i.d = load ptr, ptr %.sroa.02.0, align 8, !tbaa !71 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.02.0, ptr %i.e, align 8, !tbaa !72
  store ptr %i.d, ptr %1, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !72
  store ptr %1, ptr %.sroa.02.0, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %i.g, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm9DbgMarker17absorbDebugValuesENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEERS0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #11 align 2 {
bb.a:
  %.not15 = icmp eq ptr %1, %2                    ; 2 uses
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0 = select i1 %4, ptr %i.b, ptr %i.c  ; 4 uses
  %i.d = icmp eq ptr %.sroa.03.0, %2
  %or.cond.i.i.i = or i1 %.not15, %i.d
  br i1 %or.cond.i.i.i, label %_ZN4llvm12simple_ilistINS_9DbgRecordEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_S7_S7_.exit, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.011.016 = phi ptr [ %i.g, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %.not = icmp eq ptr %i.g, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.h = load ptr, ptr %2, align 8, !tbaa !71     ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !71     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %i.j, align 8, !tbaa !72
  store ptr %i.i, ptr %2, align 8, !tbaa !71
  %i.k = load ptr, ptr %.sroa.03.0, align 8, !tbaa !71 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.03.0, ptr %i.l, align 8, !tbaa !72
  store ptr %i.k, ptr %1, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !72
  store ptr %i.h, ptr %.sroa.03.0, align 8, !tbaa !71
  br label %_ZN4llvm12simple_ilistINS_9DbgRecordEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_S7_S7_.exit

_ZN4llvm12simple_ilistINS_9DbgRecordEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_S7_S7_.exit: ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, ptr } @_ZN4llvm9DbgMarker18cloneDebugInfoFromEPS0_St8optionalINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(address) %1, ptr %2, i8 %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = trunc nuw i8 %3 to i1
  %spec.select37 = select i1 %i.d, ptr %2, ptr %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.013.0 = select i1 %4, ptr %i.f, ptr %i.g ; 3 uses
  %.not3839 = icmp eq ptr %spec.select37, %i.a
  br i1 %.not3839, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNK4llvm9DbgRecord5cloneEv.exit
  %.041 = phi ptr [ %spec.select, %_ZNK4llvm9DbgRecord5cloneEv.exit ], [ null, %bb.a ] ; 2 uses
  %.sroa.031.040 = phi ptr [ %i.u, %_ZNK4llvm9DbgRecord5cloneEv.exit ], [ %spec.select37, %bb.a ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.031.040, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !24
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18 ; 2 uses
  tail call void @_ZN4llvm17DbgVariableRecordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.031.040) #16
  br label %_ZNK4llvm9DbgRecord5cloneEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.031.040, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.031.040, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !14
  tail call void @_ZN4llvm14DbgLabelRecordC1EPNS_7DILabelENS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef %i.n, ptr %.sroa.0.0.copyload.i.i.i) #16
  br label %_ZNK4llvm9DbgRecord5cloneEv.exit

_ZNK4llvm9DbgRecord5cloneEv.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %0, ptr %i.p, align 8, !tbaa !70
  %i.q = load ptr, ptr %.sroa.013.0, align 8, !tbaa !71 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %.sroa.013.0, ptr %i.r, align 8, !tbaa !72
  store ptr %i.q, ptr %.0.i, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.0.i, ptr %i.s, align 8, !tbaa !72
  store ptr %.0.i, ptr %.sroa.013.0, align 8, !tbaa !71
  %.not27 = icmp eq ptr %.041, null
  %spec.select = select i1 %.not27, ptr %.0.i, ptr %.041 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.031.040, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72   ; 2 uses
  %.not38 = icmp eq ptr %i.u, %i.a
  br i1 %.not38, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK4llvm9DbgRecord5cloneEv.exit
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a, %bb.d
  %.sroa.036.0 = phi ptr [ %i.g, %bb.a ], [ %i.v, %bb.d ], [ %spec.select, %._crit_edge ]
  %.sroa.4.0 = phi ptr [ %i.g, %bb.a ], [ %i.f, %bb.d ], [ %i.g, %._crit_edge ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.036.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare void @_ZN4llvm14DebugValueUser16trackDebugValuesEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4llvm14DebugValueUser17untrackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm14DebugValueUser15trackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), i64) local_unnamed_addr #4

declare void @_ZN4llvm14DebugValueUser18untrackDebugValuesEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm12DIExpression15getFragmentInfoENS0_16expr_op_iteratorES1_(ptr dead_on_unwind writable sret(%"class.std::optional.19") align 8, ptr, ptr) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm4UsernwEmNS0_41IntrusiveOperandsAndDescriptorAllocMarkerE(i64 noundef, i64) local_unnamed_addr #4

declare void @_ZN4llvm8CallInst4initEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef, ptr noundef, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.36") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32, ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load i32, ptr %i.a, align 8, !tbaa !85
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !85
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !85
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !90}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN4llvm8MetadataE", !9, i64 0}
!11 = !{!"_ZTSN4llvm13TrackingMDRefE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"p1 _ZTSN4llvm10DILocationE", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !9, i64 0}
!16 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !15, i64 0, !15, i64 8}
!17 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !16, i64 0}
!18 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEEEE", !17, i64 0}
!19 = !{!"_ZTSN4llvm10ilist_nodeINS_9DbgRecordEJEEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4llvm9DbgMarkerE", !9, i64 0}
!21 = !{!"_ZTSN4llvm8DebugLocE", !13, i64 0}
!22 = !{!"_ZTSN4llvm9DbgRecord4KindE", !5, i64 0}
!23 = !{!"_ZTSN4llvm9DbgRecordE", !19, i64 0, !20, i64 16, !21, i64 24, !22, i64 32}
!24 = !{!23, !22, i64 32}
!25 = !{!"p1 _ZTSN4llvm5ValueE", !9, i64 0}
!26 = !{!"p1 _ZTSN4llvm3UseE", !9, i64 0}
!27 = !{!"any p2 pointer", !9, i64 0}
!28 = !{!"short", !5, i64 0}
!29 = !{!"p1 _ZTSN4llvm4TypeE", !9, i64 0}
!30 = !{!"_ZTSN4llvm5ValueE", !5, i64 0, !5, i64 1, !5, i64 1, !28, i64 2, !6, i64 4, !6, i64 7, !6, i64 7, !6, i64 7, !6, i64 7, !29, i64 8, !26, i64 16}
!31 = !{!"_ZTSN4llvm15MetadataAsValueE", !30, i64 0, !10, i64 24}
!32 = !{!31, !10, i64 24}
!33 = !{!"_ZTSN4llvm4UserE", !30, i64 0}
!34 = !{!"_ZTSN4llvm8ConstantE", !33, i64 0}
!35 = !{!"p1 _ZTSN4llvm6ModuleE", !9, i64 0}
!36 = !{!"_ZTSN4llvm11GlobalValueE", !34, i64 0, !29, i64 24, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 34, !6, i64 34, !6, i64 36, !35, i64 40}
!37 = !{!"_ZTSSt5arrayIPN4llvm8MetadataELm3EE", !5, i64 0}
!38 = !{!"_ZTSN4llvm14DebugValueUserE", !37, i64 0}
!39 = !{!"_ZTSN4llvm17DbgVariableRecord12LocationTypeE", !5, i64 0}
!40 = !{!"_ZTSN4llvm18TypedTrackingMDRefINS_6MDNodeEEE", !11, i64 0}
!41 = !{!"_ZTSN4llvm17DbgRecordParamRefINS_15DILocalVariableEEE", !40, i64 0}
!42 = !{!"_ZTSN4llvm17DbgRecordParamRefINS_12DIExpressionEEE", !40, i64 0}
!43 = !{!"_ZTSN4llvm17DbgVariableRecordE", !23, i64 0, !38, i64 40, !39, i64 64, !41, i64 72, !42, i64 80, !42, i64 88}
end_hunk_0
