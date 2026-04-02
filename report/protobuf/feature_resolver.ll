begin_hunk_0
bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bt = and i32 %i.bo, 8
  %.not50.i = icmp eq i32 %i.bt, 0
  br i1 %.not50.i, label %3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = load i32, ptr %i.x, align 4, !tbaa !39, !noalias !187
  %i.bv = load i32, ptr %i.y, align 4, !tbaa !39, !noalias !187
  %i.bw = icmp sgt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.invoke.i, label %3

3:                                                ; preds = %bb.i, %bb.h
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !195
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %.invoke.i, %3
  call void @_ZN6google8protobuf27FieldOptions_FeatureSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !187
  %.pr = load i64, ptr %0, align 8, !tbaa !7
end_hunk_0
begin_hunk_1
  br i1 %.not30, label %.lr.ph.split, label %.critedge33, !llvm.loop !193

.critedge33:                                      ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit37, %.thread.us, %.preheader, %_ZN4absl12lts_202505126StatusD2Ev.exit
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !198
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.a, %.critedge33
end_hunk_1
begin_hunk_2

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !201
  store i64 14, ptr %5, align 8, !noalias !201
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.27, ptr %i.m, align 8, !noalias !201
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.n, align 8, !noalias !201
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.o, align 8, !noalias !201
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 37, ptr %i.p, align 8, !noalias !201
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.35, ptr %i.q, align 8, !noalias !201
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.k, ptr %i.r, align 8, !noalias !201
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.j, ptr %i.s, align 8, !noalias !201
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %.sroa.0.0.i.i, ptr %i.t, align 8, !noalias !201
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %4, ptr %i.u, align 8, !noalias !201
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull %5, i64 5)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !201
  %i.v = load ptr, ptr %8, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !38
end_hunk_2
begin_hunk_3

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit16:     ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit12, %bb.d
  %.sroa.0.0.i.i15 = phi i64 [ %i.c, %bb.d ], [ 0, %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit12 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !204
  store i64 %.sroa.0.0.i.i, ptr %6, align 8, !noalias !204
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.d, align 8, !noalias !204
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %2, ptr %i.e, align 8, !noalias !204
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.f, align 8, !noalias !204
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.sroa.0.0.i.i11, ptr %i.g, align 8, !noalias !204
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %4, ptr %i.h, align 8, !noalias !204
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %.0.val, ptr %i.i, align 8, !noalias !204
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %.8.val, ptr %i.j, align 8, !noalias !204
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %.sroa.0.0.i.i15, ptr %i.k, align 8, !noalias !204
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %5, ptr %i.l, align 8, !noalias !204
  call void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull %6, i64 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !204
  %i.m = load ptr, ptr %7, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !38
end_hunk_3
begin_hunk_4

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !59, !noalias !207
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27, !noalias !207 ; 5 uses
  store ptr %i.g, ptr %i.g, align 8, !tbaa !60, !noalias !207
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.h, align 8, !tbaa !39, !noalias !207
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !60, !noalias !207
  store ptr %i.g, ptr %2, align 8, !tbaa !60, !noalias !207
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
end_hunk_4
begin_hunk_5

bb.d:                                             ; preds = %.preheader, %bb.f
  %.sroa.0.0.in.i.i = phi ptr [ %i.x, %bb.f ], [ %2, %.preheader ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !60, !noalias !207 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39, !noalias !207 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i

end_hunk_5
begin_hunk_6
  %i.n = add i64 %.01013.i.i.i.i.i, %.014.i.i.i.i.i
  %i.o = lshr i64 %i.n, 1                         ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !61, !noalias !207
  %i.r = icmp slt i32 %i.q, %0                    ; 2 uses
  %i.s = add nuw i64 %i.o, 1
  %.111.i.i.i.i.i = select i1 %i.r, i64 %.01013.i.i.i.i.i, i64 %i.o ; 3 uses
end_hunk_6
begin_hunk_7
_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.111.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.u = load i8, ptr %i.t, align 1, !tbaa !39, !noalias !207
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %bb.f, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i

end_hunk_7
begin_hunk_8
  %.sroa.7.0.i.i = phi i32 [ %i.y, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i ], [ %i.af, %bb.h ] ; 2 uses
  %.sroa.0.0.i16.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i ], [ %i.ag, %bb.h ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 10
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39, !noalias !207
  %i.ab = zext i8 %i.aa to i32
  %i.ac = icmp eq i32 %.sroa.7.0.i.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !39, !noalias !207
  %i.af = zext i8 %i.ae to i32
  %i.ag = load ptr, ptr %.sroa.0.0.i16.i, align 8, !tbaa !60, !noalias !207 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !39, !noalias !207
  %.not.i19.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i19.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i, !llvm.loop !114

end_hunk_8
begin_hunk_9
  %i.aj = sext i32 %.sroa.7.0.i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 12
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !61, !noalias !207
  %i.an = icmp slt i32 %0, %i.am
  br i1 %i.an, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i: ; preds = %bb.h, %bb.i
  %i.ao = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.0.0.i.i, i32 %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !207 ; 0 uses
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i, %bb.i, %bb.a
end_hunk_9
begin_hunk_10
  store <4 x i32> %wide.load23, ptr %i.ba, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
end_hunk_10
begin_hunk_11
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %.not.i.i.i5 = icmp eq ptr %i.bd, %i.ao
  br i1 %.not.i.i.i5, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !211

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4, %middle.block, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
end_hunk_11
begin_hunk_12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !212

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
end_hunk_12
begin_hunk_13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39   ; 2 uses
  %.not.i56 = icmp eq i8 %i.aa, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !213

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
end_hunk_13
begin_hunk_14
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.at, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.ap, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !214

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.ap, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
end_hunk_14
begin_hunk_15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39
  %.not = icmp ult i8 %i.ao, %i.as
  br i1 %.not, label %bb.g, label %.preheader58, !llvm.loop !215

bb.g:                                             ; preds = %bb.f
  %i.at = zext i8 %i.ao to i64
end_hunk_15
begin_hunk_16
  store <4 x i32> %wide.load64, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
end_hunk_16
begin_hunk_17
  store i32 %i.aj, ptr %.015.i, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i, !llvm.loop !217

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
end_hunk_17
begin_hunk_18
  store <4 x i32> %wide.load78, ptr %i.bk, align 1
  %index.next79 = add nuw i64 %index72, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next79, %n.vec70
  br i1 %i.bl, label %middle.block80, label %vector.body71, !llvm.loop !218

middle.block80:                                   ; preds = %vector.body71
  %cmp.n81 = icmp eq i64 %i.be, %n.vec70
end_hunk_18
begin_hunk_19
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.015.i48, i64 4
  %.not.i50 = icmp eq ptr %i.bn, %i.ax
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47, !llvm.loop !219

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51: ; preds = %.lr.ph.i47, %middle.block80, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11
end_hunk_19
begin_hunk_20
  store ptr %0, ptr %i.cr, align 8, !tbaa !60
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !220

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
end_hunk_20
begin_hunk_21
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !221

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51
  %i.dh = load i8, ptr %i.c, align 1, !tbaa !39
end_hunk_21
begin_hunk_22
  store <4 x i32> %wide.load67, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
end_hunk_22
begin_hunk_23
  %i.z = load i32, ptr %i.y, align 4
  store i32 %i.z, ptr %i.x, align 1
  %.not.i = icmp eq ptr %i.y, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit, label %.lr.ph.i, !llvm.loop !223

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
end_hunk_23
begin_hunk_24
  store <4 x i32> %wide.load84, ptr %i.bj, align 1
  %index.next85 = add nuw i64 %index78, 8         ; 2 uses
  %i.bk = icmp eq i64 %index.next85, %n.vec76
  br i1 %i.bk, label %middle.block86, label %vector.body77, !llvm.loop !224

middle.block86:                                   ; preds = %vector.body77
  %cmp.n87 = icmp eq i64 %i.av, %n.vec76
end_hunk_24
begin_hunk_25
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i49 = icmp eq ptr %i.bm, %i.ar
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !225

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block86
  %.pre = load i8, ptr %i.ak, align 1, !tbaa !39
end_hunk_25
begin_hunk_26
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dj = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dj, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !226

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
end_hunk_26
begin_hunk_27
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !227

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
end_hunk_27
begin_hunk_28
  store <4 x i32> %wide.load37, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
end_hunk_28
begin_hunk_29
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.ai, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i, !llvm.loop !229

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !39
end_hunk_29
begin_hunk_30
  store i8 %.019.i, ptr %i.br, align 1, !tbaa !39
  %i.bs = zext i8 %i.bl to i32
  %i.bt = icmp samesign ult i32 %i.bi, %i.bs
  br i1 %i.bt, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit, !llvm.loop !230

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i, %bb.e
  %i.bu = load ptr, ptr %0, align 8, !tbaa !60
end_hunk_30
begin_hunk_31
  %i.cl = add i8 %.02529, 1                       ; 2 uses
  %i.cm = load i8, ptr %i.l, align 1, !tbaa !39
  %.not = icmp ugt i8 %i.cl, %i.cm
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !231

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit
  ret void
end_hunk_31
begin_hunk_32
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_27FieldOptions_EditionDefaultEEEPS4_S4_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !232

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = landingpad { ptr, i32 }
end_hunk_32
begin_hunk_33

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEET_SI_SI_T0_.exit"
  %i.k = icmp eq i64 %i.dl, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph49, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa45 = phi i64 [ %i.c, %.lr.ph ], [ %i.hy, %bb.b ]
end_hunk_33
begin_hunk_34
  %i.bb = add nsw i64 %.010.i.i.i, -1
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_RT0_.exit.i.i", label %bb.c, !llvm.loop !234

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_RT0_.exit.i.i": ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
end_hunk_34
begin_hunk_35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.dj = icmp sgt i64 %i.dh, 40
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !235

.lr.ph49:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2448 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 6 uses
end_hunk_35
begin_hunk_36
  %.val.i.i14.i = load i32, ptr %i.hc, align 8, !tbaa !39
  %i.hd = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 2 uses
  br i1 %i.hd, label %bb.ct, label %.preheader.i.i, !llvm.loop !236

.preheader.i.i:                                   ; preds = %bb.ct, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.ct ] ; 3 uses
end_hunk_36
begin_hunk_37
  %i.hf = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i32, ptr %i.hf, align 8, !tbaa !39
  %i.hg = icmp slt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.hg, label %.preheader.i.i, label %bb.cu, !llvm.loop !237

bb.cu:                                            ; preds = %.preheader.i.i
  %i.hh = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
end_hunk_37
begin_hunk_38
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.backedge"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_SI_SI_T0_.exit.i.backedge": ; preds = %bb.db, %bb.da
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_SI_SI_T0_.exit.i", !llvm.loop !238

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEET_SI_SI_T0_.exit": ; preds = %bb.cu
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2448, i64 noundef %i.dl)
  %i.hx = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.hy = sub i64 %i.hx, %i.a                     ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, 640
  br i1 %i.hz, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !233

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_SI_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEET_SI_SI_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_SI_RT0_.exit", %bb.a
  ret void
end_hunk_38
begin_hunk_39

_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit: ; preds = %.lr.ph, %bb.g, %bb.h
  %i.af = icmp slt i64 %spec.select, %i.b
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !239

._crit_edge:                                      ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit ] ; 7 uses
end_hunk_39
begin_hunk_40

_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i: ; preds = %bb.al, %bb.ak, %bb.ae
  %i.cz = icmp sgt i64 %.0911.i, %1
  br i1 %i.cz, label %bb.ad, label %.critedge.i, !llvm.loop !240

.critedge.i:                                      ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i, %bb.ad, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit
  %.0.lcssa.i = phi i64 [ %.1, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit ], [ %.010.i, %bb.ad ], [ %.0911.i, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i ]
end_hunk_40
begin_hunk_41
_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.az = add nsw i64 %.011.i.i.i.i.i, -1
  %i.ba = icmp sgt i64 %.011.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.n, label %.loopexit, !llvm.loop !241

.loopexit:                                        ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit.i.i.i.i.i, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit
  br i1 %i.e, label %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit, label %bb.v
end_hunk_41
begin_hunk_42
bb.ae:                                            ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit, %bb.ad
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit16, label %bb.b, !llvm.loop !242

.loopexit16:                                      ; preds = %bb.ae, %.preheader, %bb.a
  ret void
end_hunk_42
begin_hunk_43
  %i.ao = getelementptr i8, ptr %.sroa.08.015, i64 -48
  %.val2.i = load i32, ptr %i.ao, align 8, !tbaa !39
  %i.ap = icmp slt i32 %.val, %.val2.i
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !243

._crit_edge:                                      ; preds = %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit
  %.sroa.08.0.lcssa = phi ptr [ %0, %_ZN6google8protobuf27FieldOptions_EditionDefaultC2EOS1_.exit ], [ %.sroa.0.016, %_ZN6google8protobuf27FieldOptions_EditionDefaultaSEOS1_.exit ] ; 4 uses
end_hunk_43
begin_hunk_44
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.y = load ptr, ptr %18, align 8, !tbaa !35
  %i.z = load i64, ptr %i.r, align 8, !tbaa !38
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 12 uses
  store ptr %i.aa, ptr %16, align 8, !tbaa !77, !alias.scope !244
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !38, !alias.scope !244
  store i8 0, ptr %i.aa, align 8, !tbaa !39, !alias.scope !244
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !244
  store i64 %1, ptr %11, align 16, !noalias !244
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %2, ptr %i.ac, align 8, !noalias !244
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.o, ptr %i.ad, align 16, !noalias !244
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.n, ptr %i.ae, align 8, !noalias !244
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.z, ptr %i.af, align 16, !noalias !244
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.y, ptr %i.ag, align 8, !noalias !244
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %16, i64 69, ptr nonnull @.str.62, ptr noundef nonnull %11, i64 noundef 3)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %16, align 8, !tbaa !35, !alias.scope !244 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.aa
  br i1 %i.aj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.aa, align 8, !tbaa !39, !alias.scope !244
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #25
  br label %.body

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !244
  %i.am = load ptr, ptr %18, align 8, !tbaa !35   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.q
  br i1 %i.an, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
end_hunk_44
begin_hunk_45
bb.t:                                             ; preds = %._crit_edge, %._crit_edge.i.i
  %i.df = phi i64 [ %.pre213, %._crit_edge ], [ 0, %._crit_edge.i.i ]
  %i.dg = phi ptr [ %.pre212, %._crit_edge ], [ %i.dd, %._crit_edge.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 11 uses
  store ptr %i.dh, ptr %19, align 8, !tbaa !77, !alias.scope !247
  %i.di = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 0, ptr %i.di, align 8, !tbaa !38, !alias.scope !247
  store i8 0, ptr %i.dh, align 8, !tbaa !39, !alias.scope !247
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !247
  store i64 %1, ptr %8, align 16, !noalias !247
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.dj, align 8, !noalias !247
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.cq, ptr %i.dk, align 16, !noalias !247
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.cp, ptr %i.dl, align 8, !noalias !247
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.df, ptr %i.dm, align 16, !noalias !247
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.dg, ptr %i.dn, align 8, !noalias !247
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %19, i64 35, ptr nonnull @.str.63, ptr noundef nonnull %8, i64 noundef 3)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %19, align 8, !tbaa !35, !alias.scope !247 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dh
  br i1 %i.dq, label %.body101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98: ; preds = %bb.u
  %i.dr = load i64, ptr %i.dh, align 8, !tbaa !39, !alias.scope !247
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #25
  br label %.body101

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !247
  %i.dt = load ptr, ptr %21, align 8, !tbaa !35   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
end_hunk_45
begin_hunk_46
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !38
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.gg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 11 uses
  store ptr %i.gg, ptr %24, align 8, !tbaa !77, !alias.scope !250
  %i.gh = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 0, ptr %i.gh, align 8, !tbaa !38, !alias.scope !250
  store i8 0, ptr %i.gg, align 8, !tbaa !39, !alias.scope !250
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !250
  store i64 %1, ptr %5, align 16, !noalias !250
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.gi, align 8, !noalias !250
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.fx, ptr %i.gj, align 16, !noalias !250
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.fw, ptr %i.gk, align 8, !noalias !250
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.gf, ptr %i.gl, align 16, !noalias !250
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.gd, ptr %i.gm, align 8, !noalias !250
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %24, i64 40, ptr nonnull @.str.66, ptr noundef nonnull %5, i64 noundef 3)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %24, align 8, !tbaa !35, !alias.scope !250 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gg
  br i1 %i.gp, label %.body146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %bb.ah
  %i.gq = load i64, ptr %i.gg, align 8, !tbaa !39, !alias.scope !250
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #25
  br label %.body146

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !250
  %i.gs = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fo
  br i1 %i.gt, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149
end_hunk_46
begin_hunk_47
.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !77, !alias.scope !253, !noalias !256
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !256, !noalias !253 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !38, !alias.scope !256, !noalias !253 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !258
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !35, !alias.scope !253, !noalias !256
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !39, !alias.scope !256, !noalias !253
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !39, !alias.scope !253, !noalias !256
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !38, !alias.scope !256, !noalias !253
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.an = phi i64 [ %i.aj, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !38, !alias.scope !253, !noalias !256
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !256, !noalias !253
  store i64 0, ptr %i.ao, align 8, !tbaa !38, !alias.scope !256, !noalias !253
  store i8 0, ptr %i.ag, align 8, !tbaa !39, !alias.scope !256, !noalias !253
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !259

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
end_hunk_47
begin_hunk_48
.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !77, !alias.scope !260, !noalias !263
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !35, !alias.scope !263, !noalias !260 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !38, !alias.scope !263, !noalias !260 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !265
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !tbaa !35, !alias.scope !260, !noalias !263
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !39, !alias.scope !263, !noalias !260
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !39, !alias.scope !260, !noalias !263
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !38, !alias.scope !263, !noalias !260
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.f
  %i.bc = phi i64 [ %i.ay, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !38, !alias.scope !260, !noalias !263
  store ptr %i.av, ptr %.0911.i.i.i19, align 8, !tbaa !35, !alias.scope !263, !noalias !260
  store i64 0, ptr %i.bd, align 8, !tbaa !38, !alias.scope !263, !noalias !260
  store i8 0, ptr %i.av, align 8, !tbaa !39, !alias.scope !263, !noalias !260
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !259

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
end_hunk_48
begin_hunk_49
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 2, ptr %i.q, align 4, !tbaa !266
  store i32 2, ptr %i.h, align 8, !tbaa !3
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

end_hunk_49
begin_hunk_50
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !95   ; 5 uses
  %i.v = load i32, ptr %i.s, align 8, !tbaa !268
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, !prof !10

end_hunk_50
begin_hunk_51
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !266
  %.pre21.i = load i32, ptr %i.t, align 8, !tbaa !95
  br label %bb.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !266 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, %i.u
  br i1 %i.ae, label %bb.h, label %bb.i

end_hunk_51
begin_hunk_52
  %.015.i = phi ptr [ %i.ab, %bb.g ], [ %i.s, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %i.am = add nsw i32 %i.ak, 1
  store i32 %i.am, ptr %i.al, align 4, !tbaa !266
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.ao = add nsw i32 %i.aj, 1
  store i32 %i.ao, ptr %i.t, align 8, !tbaa !3
end_hunk_52
begin_hunk_53
!192 = distinct !{!192, !"_ZN4absl12lts_202505128OkStatusEv"}
!193 = distinct !{!193, !75}
!194 = !{!183, !185, i64 56}
!195 = !{!196, !188}
!196 = distinct !{!196, !197, !"_ZN4absl12lts_202505128OkStatusEv: argument 0"}
!197 = distinct !{!197, !"_ZN4absl12lts_202505128OkStatusEv"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN4absl12lts_202505128OkStatusEv: argument 0"}
!200 = distinct !{!200, !"_ZN4absl12lts_202505128OkStatusEv"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!203 = distinct !{!203, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!206 = distinct !{!206, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_: argument 0"}
!209 = distinct !{!209, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_"}
!210 = distinct !{!210, !75, !120, !121}
!211 = distinct !{!211, !75, !120}
!212 = distinct !{!212, !75}
!213 = distinct !{!213, !75}
!214 = distinct !{!214, !75}
!215 = distinct !{!215, !75}
!216 = distinct !{!216, !75, !120, !121}
!217 = distinct !{!217, !75, !120}
!218 = distinct !{!218, !75, !120, !121}
!219 = distinct !{!219, !75, !121, !120}
!220 = distinct !{!220, !75}
!221 = distinct !{!221, !75}
!222 = distinct !{!222, !75, !120, !121}
!223 = distinct !{!223, !75, !121, !120}
!224 = distinct !{!224, !75, !120, !121}
!225 = distinct !{!225, !75, !120}
!226 = distinct !{!226, !75}
!227 = distinct !{!227, !75}
!228 = distinct !{!228, !75, !120, !121}
!229 = distinct !{!229, !75, !120}
!230 = distinct !{!230, !75}
!231 = distinct !{!231, !75}
!232 = distinct !{!232, !75}
end_hunk_53
begin_hunk_54
!238 = distinct !{!238, !75}
!239 = distinct !{!239, !75}
!240 = distinct !{!240, !75}
!241 = distinct !{!241, !75}
!242 = distinct !{!242, !75}
!243 = distinct !{!243, !75}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_S8_: argument 0"}
!246 = distinct !{!246, !"_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_S8_"}
end_hunk_54
begin_hunk_55
!248 = distinct !{!248, !249, !"_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_S8_: argument 0"}
!249 = distinct !{!249, !"_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_S8_"}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_S8_: argument 0"}
!252 = distinct !{!252, !"_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_S8_"}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!255 = distinct !{!255, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!256 = !{!257}
!257 = distinct !{!257, !255, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!258 = !{!254, !257}
!259 = distinct !{!259, !75}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!262 = distinct !{!262, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!263 = !{!264}
!264 = distinct !{!264, !262, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!265 = !{!261, !264}
!266 = !{!267, !4, i64 4}
!267 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBase3RepE", !4, i64 0, !4, i64 4, !5, i64 8}
!268 = !{!267, !4, i64 0}
end_hunk_55
