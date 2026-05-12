inline.NumInlined: 1808
inline.NumDeleted: 750
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE:bb.a
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !60     ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52
  %.not = icmp eq ptr %i.b, %i.d
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE:bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #26 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %3, align 8, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.bq, align 1, !tbaa !39
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !60
  store ptr %i.bo, ptr %0, align 8, !tbaa !60
  %.pre = load ptr, ptr %1, align 8, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.br = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 11
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !39
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE:bb.a
  store i8 0, ptr %i.cb, align 2, !tbaa !39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  store i8 61, ptr %i.cc, align 1, !tbaa !39
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.br, i32 noundef %i.cd, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bx)
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !60
  %i.cf = load ptr, ptr %1, align 8, !tbaa !60
  %i.cg = icmp eq ptr %i.ce, %i.cf
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE:bb.a
  store i8 0, ptr %i.ck, align 2, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 11
  store i8 0, ptr %i.cl, align 1, !tbaa !39
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.br, i32 noundef %i.cm, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.bx)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
end_hunk_3
