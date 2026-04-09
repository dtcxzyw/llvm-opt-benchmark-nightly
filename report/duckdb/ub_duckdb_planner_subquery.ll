inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6duckdb28RewriteCorrelatedExpressions12VisitReplaceERNS_23BoundSubqueryExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE:bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(97) %i.l), !inline_history !874
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.b

end_hunk_0
begin_hunk_1_@_ZN6duckdb26RewriteCorrelatedRecursive13VisitOperatorERNS_15LogicalOperatorE:bb.a

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !875, !nonnull !50, !align !51 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
end_hunk_1
begin_hunk_2_@_ZN6duckdb26RewriteCorrelatedRecursive13VisitOperatorERNS_15LogicalOperatorE:bb.a

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.f ], [ %i.az, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i ]
  %i.bm = load i64, ptr %i.n, align 8, !tbaa !877
  %i.bn = load i64, ptr %i.o, align 8, !tbaa !878
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !358
  %i.bq = add i64 %i.bp, %i.bn
end_hunk_2
begin_hunk_3_@_ZN6duckdb26RewriteCorrelatedRecursive15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE:bb.a
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !879
  switch i8 %i.c, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread [
    i8 -28, label %bb.b
    i8 -81, label %bb.k
end_hunk_3
begin_hunk_4_@_ZN6duckdb26RewriteCorrelatedRecursive15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !875, !nonnull !50, !align !51 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !341
end_hunk_4
begin_hunk_5_@_ZN6duckdb26RewriteCorrelatedRecursive15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE:bb.a
_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.f ], [ %i.ax, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !877
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !878
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !358
  %i.bq = add i64 %i.bp, %i.bn
end_hunk_5
begin_hunk_6_@_ZN6duckdb26RewriteCorrelatedRecursive15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE:bb.a
  %i.bx = load ptr, ptr %0, align 8, !tbaa !67
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(97) %i.bw), !inline_history !874
  br label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread: ; preds = %bb.j, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.e, %bb.a, %bb.g, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, %bb.k
end_hunk_6
begin_hunk_7_@llvm.umin.i64
!871 = distinct !{!871, !53}
!872 = !{!314, !8, i64 0}
!873 = !{!348, !348, i64 0}
!874 = !{ptr @_ZN6duckdb26RewriteCorrelatedRecursive25RewriteCorrelatedSubqueryERNS_6BinderERNS_15LogicalOperatorE}
!875 = !{!876, !348, i64 24}
!876 = !{!"_ZTSN6duckdb26RewriteCorrelatedRecursiveE", !347, i64 0, !28, i64 8, !348, i64 24}
!877 = !{!876, !14, i64 8}
!878 = !{!876, !14, i64 16}
!879 = !{!158, !144, i64 8}
!880 = !{!881, !348, i64 8}
!881 = !{!"_ZTSN6duckdb22RewriteCountAggregatesE", !347, i64 0, !348, i64 8}
!882 = !{!883}
end_hunk_7
