Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmStrictScanner2?download=true
inline.NumInlined: 2290
inline.NumDeleted: 1134
begin_hunk_0_@_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = load i64, ptr %i.d, align 8
  %i.j = and i64 %i.i, -2
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #26
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.p) #26
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4gdcm7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4gdcm14StrictScanner2D0Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4gdcm14StrictScanner2D2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4gdcm14StrictScanner215ClearPublicTagsEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  tail call void @_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.c) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.d, align 8, !tbaa !38
  store ptr %i.b, ptr %i.a, align 8, !tbaa !40
  store ptr null, ptr %i.b, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4gdcm14StrictScanner216ClearPrivateTagsEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  tail call void @_ZNSt3__16__treeIN4gdcm10PrivateTagENS_4lessIS2_EENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.c) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.d, align 8, !tbaa !38
  store ptr %i.b, ptr %i.a, align 8, !tbaa !40
  store ptr null, ptr %i.b, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4gdcm14StrictScanner213ClearSkipTagsEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  tail call void @_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.c) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.d, align 8, !tbaa !38
  store ptr %i.b, ptr %i.a, align 8, !tbaa !40
  store ptr null, ptr %i.b, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm14StrictScanner210AddSkipTagERKNS_3TagE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.a
  %i.d = load i16, ptr %1, align 4, !tbaa !35     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader.i.i.i.i
  %.pr.i.i.i = phi ptr [ %i.c, %.preheader.i.i.i.i ], [ %.pr.i.i.i.be, %.backedge ] ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !35   ; 3 uses
  %i.i = icmp ult i16 %i.d, %i.h
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i16 %i.d, %i.h
  br i1 %i.j, label %bb.d, label %_ZNKSt3__14lessIN4gdcm3TagEEclB8ne180100ERKS2_S5_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 30
  %i.l = load i16, ptr %i.k, align 2, !tbaa !35
  %i.m = icmp ult i16 %i.f, %i.l
  br i1 %i.m, label %bb.e, label %_ZNKSt3__14lessIN4gdcm3TagEEclB8ne180100ERKS2_S5_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.n = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !41 ; 2 uses
  %.not31.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not31.i.i.i.i, label %_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i, label %.backedge

_ZNKSt3__14lessIN4gdcm3TagEEclB8ne180100ERKS2_S5_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.o = icmp ult i16 %i.h, %i.d
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt3__14lessIN4gdcm3TagEEclB8ne180100ERKS2_S5_.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 30
  %i.q = load i16, ptr %i.p, align 2, !tbaa !35
  %i.r = icmp ult i16 %i.q, %i.f
  br i1 %i.r, label %bb.g, label %_ZNSt3__13setIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE6insertB8ne180100ERKS2_.exit

bb.g:                                             ; preds = %bb.f, %_ZNKSt3__14lessIN4gdcm3TagEEclB8ne180100ERKS2_S5_.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %.not30.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not30.i.i.i.i, label %_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit, label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.e
  %.pr.i.i.i.be = phi ptr [ %i.n, %bb.e ], [ %i.t, %bb.g ]
  br label %bb.b, !llvm.loop !0

_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit: ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  br label %_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i

_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i: ; preds = %bb.e, %_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit, %bb.a
  %.026.i16.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.u, %_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit ], [ %.pr.i.i.i, %bb.e ]
  %.sink.i15.i.i.i = phi ptr [ %i.b, %bb.a ], [ %.pr.i.i.i, %_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i.loopexit.split.loop.exit ], [ %.pr.i.i.i, %bb.e ]
  %i.v = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27, !noalias !128 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %1, align 4, !tbaa !35, !noalias !128
  store i32 %i.x, ptr %i.w, align 4, !tbaa !35, !noalias !128
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %.sink.i15.i.i.i, ptr %i.y, align 8, !tbaa !45
  store ptr %i.v, ptr %.026.i16.i.i.i, align 8, !tbaa !41
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %.not.i7.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i7.i.i.i, label %_ZNSt3__110unique_ptrINS_11__tree_nodeIN4gdcm3TagEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2B8ne180100Ev.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !40
  br label %_ZNSt3__110unique_ptrINS_11__tree_nodeIN4gdcm3TagEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2B8ne180100Ev.exit.i.i.i

_ZNSt3__110unique_ptrINS_11__tree_nodeIN4gdcm3TagEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2B8ne180100Ev.exit.i.i.i: ; preds = %bb.h, %_ZNSt3__16__treeIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISC_EERKT_.exit.thread.i.i.i
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !28
  tail call void @_ZNSt3__127__tree_balance_after_insertB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %i.ab, ptr noundef nonnull %i.v) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !38
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !38
  br label %_ZNSt3__13setIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE6insertB8ne180100ERKS2_.exit

_ZNSt3__13setIN4gdcm3TagENS_4lessIS2_EENS_9allocatorIS2_EEE6insertB8ne180100ERKS2_.exit: ; preds = %bb.f, %_ZNSt3__110unique_ptrINS_11__tree_nodeIN4gdcm3TagEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2B8ne180100Ev.exit.i.i.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm14StrictScanner213AddPrivateTagERKNS_10PrivateTagE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !35     ; 2 uses
  %.not.i.i = trunc i16 %i.a to i1
  br i1 %.not.i.i, label %bb.b, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.h = select i1 %i.d, ptr %i.f, ptr %i.g       ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35
  %.not17 = icmp eq i8 %i.i, 0
  %i.j = icmp ult i16 %i.a, 8
  %or.cond = or i1 %.not17, %i.j
  br i1 %or.cond, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread, label %_ZNK4gdcm3Tag9IsIllegalEv.exit

_ZNK4gdcm3Tag9IsIllegalEv.exit:                   ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !35
  %i.m = add i16 %i.l, -1
  %spec.select.i = icmp ult i16 %i.m, 15
  br i1 %spec.select.i, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4gdcm3Tag9IsIllegalEv.exit
  %i.n = load atomic i8, ptr @_ZGVZN4gdcm14StrictScanner213AddPrivateTagERKNS_10PrivateTagEE5dicts acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.h, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4gdcm14StrictScanner213AddPrivateTagERKNS_10PrivateTagEE5dicts) #25
  %.not18 = icmp eq i32 %i.p, 0
  br i1 %.not18, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4gdcm6Global8GetDictsEv(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4gdcmL14GlobalInstanceE)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.q, ptr @_ZZN4gdcm14StrictScanner213AddPrivateTagERKNS_10PrivateTagEE5dicts, align 8, !tbaa !48
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4gdcm14StrictScanner213AddPrivateTagERKNS_10PrivateTagEE5dicts) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d
  %i.r = load ptr, ptr @_ZZN4gdcm14StrictScanner213AddPrivateTagERKNS_10PrivateTagEE5dicts, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.s = tail call noundef nonnull align 8 dereferenceable(61) ptr @_ZNK4gdcm5Dicts12GetDictEntryERKNS_10PrivateTagE(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53   ; 3 uses
  %i.v = and i64 %i.u, 1685163643
  %.not19 = icmp eq i64 %i.v, 0
  br i1 %.not19, label %bb.j, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread.sink.split

bb.i:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4gdcm14StrictScanner213AddPrivateTagERKNS_10PrivateTagEE5dicts) #25
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = and i64 %i.u, 15494705540
  %.not20 = icmp eq i64 %i.y, 0
  br i1 %.not20, label %bb.l, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread.sink.split

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 70, ptr noundef nonnull @.str.3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.z) #25
  br label %bb.o

_ZNK4gdcm3Tag9IsIllegalEv.exit.thread.sink.split: ; preds = %bb.k, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = tail call { ptr, i8 } @_ZNSt3__16__treeIN4gdcm10PrivateTagENS_4lessIS2_EENS_9allocatorIS2_EEE25__emplace_unique_key_argsIS2_JRKS2_EEENS_4pairINS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread

_ZNK4gdcm3Tag9IsIllegalEv.exit.thread:            ; preds = %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread.sink.split, %bb.j, %_ZNK4gdcm3Tag9IsIllegalEv.exit, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNK4gdcm3Tag9IsIllegalEv.exit ], [ false, %bb.c ], [ false, %bb.b ], [ true, %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread.sink.split ], [ true, %bb.j ]
  ret i1 %.0

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4gdcm6Global8GetDictsEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare noundef nonnull align 8 dereferenceable(61) ptr @_ZNK4gdcm5Dicts12GetDictEntryERKNS_10PrivateTagE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::logic_error") align 8 %i.a, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %.pn
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #25
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm14StrictScanner212AddPublicTagERKNS_3TagE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 4, !tbaa !35     ; 3 uses
  %i.b = and i16 %i.a, 1
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = add i16 %i.d, -16
  %spec.select.i = icmp ult i16 %i.e, 240
  br i1 %spec.select.i, label %bb.c, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %switch.tableidx = add i16 %i.a, -1             ; 2 uses
  %i.f = icmp ult i16 %switch.tableidx, 7
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 85, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.f, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i19 = trunc i16 %i.a to i1
  br i1 %.not.i.i.i19, label %_ZNK4gdcm3Tag9IsIllegalEv.exit, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread39

_ZNK4gdcm3Tag9IsIllegalEv.exit:                   ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !35
  %i.i = add i16 %i.h, -1
  %spec.select.i20 = icmp ult i16 %i.i, 15
  br i1 %spec.select.i20, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread, label %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread39

_ZNK4gdcm3Tag9IsIllegalEv.exit.thread39:          ; preds = %bb.d, %_ZNK4gdcm3Tag9IsIllegalEv.exit
  %i.j = load atomic i8, ptr @_ZGVZN4gdcm14StrictScanner212AddPublicTagERKNS_3TagEE5dicts acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.h, !prof !46

bb.e:                                             ; preds = %_ZNK4gdcm3Tag9IsIllegalEv.exit.thread39
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4gdcm14StrictScanner212AddPublicTagERKNS_3TagEE5dicts) #25
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
