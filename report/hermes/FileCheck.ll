inline.NumInlined: 1994
inline.NumDeleted: 840
begin_hunk_0_@_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEE4findERS5_:bb.a
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i, %.thread.i.i.i.i
  %.19.i.i = phi ptr [ %.0814.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i ], [ %.015.i.i, %.thread.i.i.i.i ], [ %.015.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i ] ; 5 uses
  %.pn.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i ], [ 16, %.thread.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 %.pn.i.i
  %.1.i.i = load ptr, ptr %i.h, align 8, !tbaa !90 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i, label %bb.b, !llvm.loop !91
end_hunk_0
begin_hunk_1_@_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEEixERS5_:bb.a
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i.i, %.thread.i.i.i.i.i
  %.19.i.i.i = phi ptr [ %.0814.i.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i.i ], [ %.015.i.i.i, %.thread.i.i.i.i.i ], [ %.015.i.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i.i ] ; 9 uses
  %.pn.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i.i ], [ 16, %.thread.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 %.pn.i.i.i
  %.1.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, label %bb.b, !llvm.loop !91
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_:bb.a
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread37

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread37: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit, %.thread.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread
  %2 = phi i1 [ false, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread ], [ true, %.thread.i.i ], [ true, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit ]
  %.pn = phi i64 [ 24, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread ], [ 16, %.thread.i.i ], [ 16, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.03546, i64 %.pn
  %.035 = load ptr, ptr %i.g, align 8, !tbaa !90  ; 2 uses
  %.not = icmp eq ptr %.035, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !388
end_hunk_2
