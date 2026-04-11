inline.NumInlined: 127525
inline.NumDeleted: 25083
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_:bb.a
  br i1 %.not.i46, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_upper_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph.i34, !llvm.loop !628

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57
  %.sink = phi i64 [ 24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ 24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57 ], [ 24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread ], [ 16, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32 ]
  %.123 = phi ptr [ %.02267, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.02267, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57 ], [ %.02267, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread ], [ %.068, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32 ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.068, i64 %.sink
  %.0 = load ptr, ptr %i.an, align 8, !tbaa !593  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_upper_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit, label %bb.b, !llvm.loop !629
end_hunk_0
begin_hunk_1_@_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE:bb.a

bb.i:                                             ; preds = %.lr.ph.i46.2
  %i.an = icmp samesign ugt i64 %i.h, 7
  br i1 %i.an, label %.lr.ph.i52, label %_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit57

.lr.ph.i52:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.035, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !26
  %i.aq = and i8 %i.ap, -33
  %.not.i54 = icmp eq i8 %i.aq, 73
  br i1 %.not.i54, label %.lr.ph.i52.1, label %_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit57

.lr.ph.i52.1:                                     ; preds = %.lr.ph.i52
  %i.ar = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !26
  %i.at = and i8 %i.as, -33
  %.not.i54.1 = icmp eq i8 %i.at, 78
  br i1 %.not.i54.1, label %.lr.ph.i52.2, label %_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit57

.lr.ph.i52.2:                                     ; preds = %.lr.ph.i52.1
  %i.au = getelementptr inbounds nuw i8, ptr %.035, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !26
  %i.aw = and i8 %i.av, -33
  %.not.i54.2 = icmp eq i8 %i.aw, 73
  br i1 %.not.i54.2, label %.lr.ph.i52.3, label %_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit57

.lr.ph.i52.3:                                     ; preds = %.lr.ph.i52.2
  %i.ax = getelementptr inbounds nuw i8, ptr %.035, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !26
  %i.az = and i8 %i.ay, -33
  %.not.i54.3 = icmp eq i8 %i.az, 84
  br i1 %.not.i54.3, label %.lr.ph.i52.4, label %_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit57

.lr.ph.i52.4:                                     ; preds = %.lr.ph.i52.3
  %i.ba = getelementptr inbounds nuw i8, ptr %.035, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !26
  %i.bc = and i8 %i.bb, -33
  %.not.i54.4 = icmp eq i8 %i.bc, 89
  br i1 %.not.i54.4, label %bb.j, label %_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit57

_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit57: ; preds = %.lr.ph.i52, %.lr.ph.i52.1, %.lr.ph.i52.2, %.lr.ph.i52.3, %.lr.ph.i52.4, %bb.i
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i52.4, %_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit57
  %.sink = phi i64 [ 3, %_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit57 ], [ 8, %.lr.ph.i52.4 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.035, i64 %.sink
  %i.be = select i1 %i.b, double 0xFFF0000000000000, double 0x7FF0000000000000
  store double %i.be, ptr %2, align 8, !tbaa !983
  br label %_ZN10fast_float21fastfloat_strncasecmpIcEEbPKT_S3_m.exit51
end_hunk_1
