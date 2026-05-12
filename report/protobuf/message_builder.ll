inline.NumInlined: 2245
inline.NumDeleted: 1028
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE7emplaceIJiRS9_EEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbEDpOT_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.b, align 1, !tbaa !96, !alias.scope !93
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %scevgep.i.i.i, align 8, !alias.scope !93
  %i.c = load i32, ptr %2, align 4, !tbaa !3, !noalias !93 ; 2 uses
  store i32 %i.c, ptr %scevgep.i.i.i, align 8, !tbaa !98, !alias.scope !93
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %3, align 8, !tbaa !81, !noalias !93
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE7emplaceIJiRS9_EEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbEDpOT_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !106, !noalias !103
  store ptr %i.i, ptr %1, align 8, !tbaa !106, !noalias !103
  %.pre = load i32, ptr %scevgep.i.i.i, align 8, !noalias !103
  br label %.preheader

.preheader:                                       ; preds = %.noexc, %bb.a
  %5 = phi i32 [ %.pre, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader
  %.sroa.0.0.in.i.i = phi ptr [ %1, %.preheader ], [ %i.x, %bb.d ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !106, !noalias !103 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.m = load i8, ptr %i.l, align 1, !tbaa !107, !noalias !103 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE7emplaceIJiRS9_EEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbEDpOT_:bb.a
  %.07.i.i.i.i.i = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.07.i.i.i.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3, !noalias !103
  %i.r = icmp slt i32 %i.q, %5
  br i1 %i.r, label %bb.c, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE7emplaceIJiRS9_EEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbEDpOT_:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 16
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !103
  %i.an = icmp slt i32 %5, %i.am
  br i1 %i.an, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i, label %bb.h

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i: ; preds = %bb.f, %bb.g
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !106    ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !34
  %.not = icmp eq ptr %i.b, %i.d
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #27 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !106
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 0, ptr %i.bp, align 8
  %3 = load ptr, ptr %1, align 8, !tbaa !106      ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  store ptr %3, ptr %4, align 8, !tbaa !106
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bq, align 1, !tbaa !107
  store ptr %i.bo, ptr %3, align 8, !tbaa !106
  store ptr %i.bo, ptr %0, align 8, !tbaa !106
  %.pre = load ptr, ptr %1, align 8, !tbaa !106
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.br = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 2 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 11
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !107
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
  store i8 0, ptr %i.cb, align 2, !tbaa !107
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  store i8 15, ptr %i.cc, align 1, !tbaa !107
  %5 = load ptr, ptr %1, align 8, !tbaa !106
  %i.cd = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %i.cd, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bx)
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !106
  %i.cf = load ptr, ptr %1, align 8, !tbaa !106
  %i.cg = icmp eq ptr %i.ce, %i.cf
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
  store i8 0, ptr %i.ck, align 2, !tbaa !107
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 11
  store i8 0, ptr %i.cl, align 1, !tbaa !107
  %6 = load ptr, ptr %1, align 8, !tbaa !106
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef %i.cm, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.bx)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
end_hunk_7
