inline.NumInlined: 692
inline.NumDeleted: 427
begin_hunk_0
@_ZTSSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.16 = private unnamed_addr constant [3 x i32] [i32 2, i32 1, i32 1], align 4
@switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.17 = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 0], align 4

@_ZN5folly10symbolizer18SignalSafeElfCache4PathC1EPKcmRKNS_19reentrant_allocatorIcEE = unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN5folly10symbolizer18SignalSafeElfCache4PathC2EPKcmRKNS_19reentrant_allocatorIcEE

end_hunk_0
begin_hunk_1_@_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_:bb.a

switch.lookup:                                    ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE11rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i
  %i.aa = zext nneg i32 %i.y to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.16, i64 %i.aa
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ab = zext nneg i32 %i.y to i64
  %switch.gep112 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.17, i64 %i.ab
  %switch.load113 = load i32, ptr %switch.gep112, align 4
  store i32 %switch.load, ptr %i.h, align 8, !tbaa !274
  store i32 %switch.load113, ptr %i.e, align 8, !tbaa !274
end_hunk_1
begin_hunk_2_@_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_:bb.a

switch.lookup114:                                 ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE12rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i
  %i.bf = zext nneg i32 %i.bd to i64
  %switch.gep115 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.16, i64 %i.bf
  %switch.load116 = load i32, ptr %switch.gep115, align 4
  %i.bg = zext nneg i32 %i.bd to i64
  %switch.gep117 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.17, i64 %i.bg
  %switch.load118 = load i32, ptr %switch.gep117, align 4
  store i32 %switch.load116, ptr %i.e, align 8, !tbaa !274
  store i32 %switch.load118, ptr %i.an, align 8, !tbaa !274
end_hunk_2
