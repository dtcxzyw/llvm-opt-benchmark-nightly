inline.NumInlined: 1716
inline.NumDeleted: 657
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  %i.kq = call i32 @memcmp(ptr noundef %i.kp, ptr noundef readonly %.val99.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i) #19, !noalias !147 ; 2 uses
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf
  %i.ks = sub i64 %i.kn, %.val98.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ks, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kt = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.kt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ku = add nuw i64 %i.kk, 1
  br label %bb.bi

bb.bh:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.222.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0207.i.i.i.i.i.i.i.i.i.i, %bb.bg ], [ %i.kk, %bb.bh ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ku, %bb.bg ], [ %.0198.i.i.i.i.i.i.i.i.i.i, %bb.bh ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.bf

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.bi, %bb.be
  %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i.i = phi i64 [ 0, %bb.be ], [ %.222.i.i.i.i.i.i.i.i.i.i, %bb.bi ] ; 2 uses
  %i.kv = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 11
  %.val4.i.i.i.i.i.i.i = load i8, ptr %i.kv, align 1, !tbaa !15, !noalias !147
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bj, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i

bb.bj:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 256
  %i.kx = and i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i.i, 255
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !103, !noalias !147
  br label %bb.be

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %bb.bh
  %.lcssa.sink.i.i.i.i.i.i.i = phi i64 [ %i.kk, %bb.bh ], [ %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ]
  %i.la = phi i1 [ true, %bb.bh ], [ false, %.loopexit.i.i.i.i.i.i.i ]
  %i.lb = trunc i64 %.lcssa.sink.i.i.i.i.i.i.i to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i.i.i = phi i32 [ %i.lb, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i ], [ %i.lg, %bb.bl ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i ], [ %.val2.i.i.i.i.i.i.i, %bb.bl ] ; 4 uses
  %i.lc = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i119.i = load i8, ptr %i.lc, align 1, !tbaa !15, !noalias !158 ; 2 uses
  %i.ld = zext i8 %.val.i.i.i.i.i.i119.i to i32
  %i.le = icmp eq i32 %.sroa.7.0.i.i.i.i.i.i.i, %i.ld
  br i1 %i.le, label %bb.bl, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.lf = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 8
  %.val3.i.i.i.i.i.i.i = load i8, ptr %i.lf, align 1, !tbaa !15, !noalias !158
  %i.lg = zext i8 %.val3.i.i.i.i.i.i.i to i32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !158 ; 2 uses
  %i.lh = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i, i64 11
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.lh, align 1, !tbaa !15, !noalias !158
  %.not.i7.i.i.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.bk, label %bb.bm, !llvm.loop !159

bb.bm:                                            ; preds = %bb.bl
  %i.li = getelementptr i8, ptr %.val5.i.i, i64 10
  %.val.i.i11.i.i.i.i.i = load i8, ptr %i.li, align 1, !tbaa !15, !noalias !160 ; 2 uses
  %i.lj = zext i8 %.val.i.i11.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i: ; preds = %bb.bk, %bb.bm
  %.val.i.i.i9.i.i.i.i = phi i8 [ %.val.i.i11.i.i.i.i.i, %bb.bm ], [ %.val.i.i.i.i.i.i119.i, %bb.bk ]
  %.pn3.i.i.i.i.i.i = phi ptr [ %.val5.i.i, %bb.bm ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.bk ] ; 13 uses
  %.pn1.i.i.i.i.i.i = phi i32 [ %i.lj, %bb.bm ], [ %.sroa.7.0.i.i.i.i.i.i.i, %bb.bk ] ; 11 uses
  br i1 %i.la, label %bb.bn, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i

bb.bn:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i
  %i.lk = getelementptr i8, ptr %.pn3.i.i.i.i.i.i, i64 11
  %.val1.i.i.i7.i.i.i.i = load i8, ptr %i.lk, align 1, !tbaa !15, !noalias !161 ; 2 uses
  %.not.i.i.i8.i.i.i.i = icmp eq i8 %.val1.i.i.i7.i.i.i.i, 0
  br i1 %.not.i.i.i8.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ll = add nsw i32 %.pn1.i.i.i.i.i.i, 1        ; 3 uses
  %i.lm = zext i8 %.val.i.i.i9.i.i.i.i to i32
  %i.ln = icmp eq i32 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph.i.i.i.i.i.i.i125.i, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i

.lr.ph.i.i.i.i.i.i.i125.i:                        ; preds = %bb.bo, %bb.bp
  %.01527.i.i.i.i.i.i.i.i = phi ptr [ %.015.val19.i.i.i.i.i.i.i.i, %bb.bp ], [ %.pn3.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %.015.val19.i.i.i.i.i.i.i.i = load ptr, ptr %.01527.i.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !161 ; 4 uses
  %i.lo = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i.i, i64 11
  %.015.val19.val.i.i.i.i.i.i.i.i = load i8, ptr %i.lo, align 1, !tbaa !15, !noalias !161
  %.not22.i.i.i.i.i.i.i.i = icmp eq i8 %.015.val19.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i.i, label %bb.bp, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i125.i
  %i.lp = getelementptr i8, ptr %.01527.i.i.i.i.i.i.i.i, i64 8
  %.015.val20.i.i.i.i.i.i.i.i = load i8, ptr %i.lp, align 8, !tbaa !15, !noalias !161 ; 2 uses
  %i.lq = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i.i, i64 10
  %.015.val17.i.i.i.i.i.i.i.i = load i8, ptr %i.lq, align 1, !tbaa !15, !noalias !161
  %i.lr = icmp eq i8 %.015.val20.i.i.i.i.i.i.i.i, %.015.val17.i.i.i.i.i.i.i.i
  br i1 %i.lr, label %.lr.ph.i.i.i.i.i.i.i125.i, label %.critedge.loopexit29.i.i.i.i.i.i.i.i, !llvm.loop !162

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.bn
  %i.ls = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i, i64 256
  %i.lt = add i32 %.pn1.i.i.i.i.i.i, 1
  %i.lu = and i32 %i.lt, 255
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lv
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.thread.i.i.i.i.i.i.i
  %.116.in.i.i.i.i.i.i.i.i = phi ptr [ %i.lw, %.thread.i.i.i.i.i.i.i ], [ %i.ly, %bb.bq ]
  %.116.i.i.i.i.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !161 ; 3 uses
  %i.lx = getelementptr i8, ptr %.116.i.i.i.i.i.i.i.i, i64 11
  %.116.val.i.i.i.i.i.i.i.i = load i8, ptr %i.lx, align 1, !tbaa !15, !noalias !161
  %.not.i.i.i.i.i.i.i.i126.i = icmp eq i8 %.116.val.i.i.i.i.i.i.i.i, 0
  %i.ly = getelementptr i8, ptr %.116.i.i.i.i.i.i.i.i, i64 256
  br i1 %.not.i.i.i.i.i.i.i.i126.i, label %bb.bq, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i, !llvm.loop !163

.critedge.loopexit29.i.i.i.i.i.i.i.i:             ; preds = %bb.bp
  %i.lz = zext i8 %.015.val20.i.i.i.i.i.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i: ; preds = %bb.bq, %.critedge.loopexit29.i.i.i.i.i.i.i.i
  %.sroa.024.0.sink.i.i.i.i = phi ptr [ %.015.val19.i.i.i.i.i.i.i.i, %.critedge.loopexit29.i.i.i.i.i.i.i.i ], [ %.116.i.i.i.i.i.i.i.i, %bb.bq ] ; 3 uses
  %.sroa.625.0.sink.i.i.i.i = phi i32 [ %i.lz, %.critedge.loopexit29.i.i.i.i.i.i.i.i ], [ 0, %bb.bq ] ; 2 uses
  %i.ma = icmp eq ptr %.sroa.024.0.sink.i.i.i.i, %.pn3.i.i.i.i.i.i
  br i1 %i.ma, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i, label %bb.bt

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i125.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i, %bb.bo, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i
  %.sroa.625.0.sink.i.i10.i.i = phi i32 [ %.sroa.625.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ], [ %.pn1.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i ], [ %i.ll, %bb.bo ], [ %i.ll, %.lr.ph.i.i.i.i.i.i.i125.i ] ; 4 uses
  %.sroa.024.0.sink.i.i8.i.i = phi ptr [ %.sroa.024.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ], [ %.pn3.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i ], [ %.pn3.i.i.i.i.i.i, %bb.bo ], [ %.pn3.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i125.i ] ; 2 uses
  %i.mb = getelementptr i8, ptr %.sroa.024.0.sink.i.i8.i.i, i64 11
  %.val.i.i.i120.i = load i8, ptr %i.mb, align 1, !tbaa !15, !noalias !164
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i120.i, 0
  br i1 %.not.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i
  %i.mc = sub nsw i32 %.sroa.625.0.sink.i.i10.i.i, %.pn1.i.i.i.i.i.i
  %i.md = sext i32 %i.mc to i64
  br label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i

bb.bs:                                            ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i
  %i.me = icmp eq i32 %.sroa.625.0.sink.i.i10.i.i, %.pn1.i.i.i.i.i.i
  br i1 %i.me, label %.loopexit163.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bs
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.pn3.i.i.i.i.i.i, i64 11
  %.val62.i.i.i.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !15, !noalias !164
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i
  %.val62.i.i.i.i.i = phi i8 [ %.val62.i.i.i.pre.i.i, %._crit_edge.i.i ], [ %.val1.i.i.i7.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ]
  %i.mf = phi i1 [ true, %._crit_edge.i.i ], [ false, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ]
  %.sroa.625.0.sink.i.i9.i.i = phi i32 [ %.sroa.625.0.sink.i.i10.i.i, %._crit_edge.i.i ], [ %.sroa.625.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ] ; 2 uses
  %.sroa.024.0.sink.i.i7.i.i = phi ptr [ %.sroa.024.0.sink.i.i8.i.i, %._crit_edge.i.i ], [ %.sroa.024.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ] ; 3 uses
  %.not4.i.i.i.i.i = icmp eq i8 %.val62.i.i.i.i.i, 0
  %i.mg = sub nsw i32 0, %.pn1.i.i.i.i.i.i
  %i.mh = sext i32 %i.mg to i64
  br i1 %.not4.i.i.i.i.i, label %bb.bu, label %._crit_edge.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.mi = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i, i64 256
  %i.mj = add i32 %.pn1.i.i.i.i.i.i, 1
  %i.mk = and i32 %i.mj, 255
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr i8, ptr %i.mn, i64 11
  %.148.val18.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !tbaa !15, !noalias !164
  %i.mo = icmp eq i8 %.148.val18.pre.i.i.i.i.i, 0
  br i1 %i.mo, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bu, %.lr.ph.i.i.i.i.i
  %.14820.i.i.i.i.i = phi ptr [ %.148.val72.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.mn, %bb.bu ]
  %i.mp = getelementptr i8, ptr %.14820.i.i.i.i.i, i64 256
  %.148.val72.i.i.i.i.i = load ptr, ptr %i.mp, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.mq = getelementptr i8, ptr %.148.val72.i.i.i.i.i, i64 11
  %.148.val.i.i.i.i.i = load i8, ptr %i.mq, align 1, !tbaa !15, !noalias !164
  %.not.i73.i.i.i.i.i = icmp eq i8 %.148.val.i.i.i.i.i, 0
  br i1 %.not.i73.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !167

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.bu, %bb.bt
  %.04442.i.i.i.i.i = phi i64 [ 1, %bb.bu ], [ %i.mh, %bb.bt ], [ 1, %.lr.ph.i.i.i.i.i ]
  %.148.lcssa.i.i.i.i.i = phi ptr [ %i.mn, %bb.bu ], [ %.pn3.i.i.i.i.i.i, %bb.bt ], [ %.148.val72.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.mr = getelementptr i8, ptr %.148.lcssa.i.i.i.i.i, i64 8
  %.148.val69.i.i.i.i.i = load i8, ptr %i.mr, align 1, !tbaa !15, !noalias !164
  %i.ms = zext i8 %.148.val69.i.i.i.i.i to i64
  %.148.val66.i.i.i.i.i = load ptr, ptr %.148.lcssa.i.i.i.i.i, align 8, !tbaa !103, !noalias !164
  %i.mt = sext i32 %.sroa.625.0.sink.i.i9.i.i to i64 ; 3 uses
  br label %bb.bv

bb.bv:                                            ; preds = %.backedge, %._crit_edge.i.i.i.i.i
  %.246.i.i.i.i.i = phi i64 [ %.04442.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %10, %.backedge ] ; 2 uses
  %.142.i.i.i.i.i = phi i64 [ %i.ms, %._crit_edge.i.i.i.i.i ], [ %.142.i.i.i.i.i.be.in, %.backedge ] ; 2 uses
  %.1.i.i.i.i.i = phi ptr [ %.148.val66.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.1.i.i.i.i.i.be, %.backedge ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 256
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %.142.i.i.i.i.i
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 11
  %.val63.i.i.i.i.i = load i8, ptr %i.mx, align 1, !tbaa !15, !noalias !164
  %.not.i74.i.i.i.i.i = icmp eq i8 %.val63.i.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %bb.bw

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.bv, %.lr.ph24.i.i.i.i.i
  %.24923.i.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i.i, %.lr.ph24.i.i.i.i.i ], [ %i.mw, %bb.bv ]
  %i.my = getelementptr i8, ptr %.24923.i.i.i.i.i, i64 256
  %.249.val71.i.i.i.i.i = load ptr, ptr %i.my, align 8, !tbaa !103, !noalias !164 ; 5 uses
  %i.mz = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 11
  %.249.val.i.i.i.i.i = load i8, ptr %i.mz, align 1, !tbaa !15, !noalias !164
  %.not.i75.i.i.i.i.i = icmp eq i8 %.249.val.i.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %._crit_edge25.i.i.i.i.i, !llvm.loop !168

._crit_edge25.i.i.i.i.i:                          ; preds = %.lr.ph24.i.i.i.i.i
  %i.na = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 8
  %.249.val68.i.i.i.i.i = load i8, ptr %i.na, align 1, !tbaa !15, !noalias !164
  %i.nb = zext i8 %.249.val68.i.i.i.i.i to i64
  %.249.val65.i.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i.i, align 8, !tbaa !103, !noalias !164
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge25.i.i.i.i.i, %bb.bv
  %.350.i.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ], [ %i.mw, %bb.bv ] ; 2 uses
  %.243.i.i.i.i.i = phi i64 [ %i.nb, %._crit_edge25.i.i.i.i.i ], [ %.142.i.i.i.i.i, %bb.bv ] ; 2 uses
  %.2.i.i.i.i.i = phi ptr [ %.249.val65.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.bv ] ; 4 uses
  %i.nc = icmp eq ptr %.350.i.i.i.i.i, %.sroa.024.0.sink.i.i7.i.i
  br i1 %i.nc, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nd = icmp eq ptr %.2.i.i.i.i.i, %.sroa.024.0.sink.i.i7.i.i
  %i.ne = icmp eq i64 %.243.i.i.i.i.i, %i.mt
  %or.cond.i.i.i.i.i = select i1 %i.nd, i1 %i.ne, i1 false
  %i.nf = getelementptr i8, ptr %.350.i.i.i.i.i, i64 10
  %.350.val70.i.i.i.i.i = load i8, ptr %i.nf, align 1, !tbaa !15, !noalias !164
  %i.ng = zext i8 %.350.val70.i.i.i.i.i to i64    ; 3 uses
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nh = add i64 %.246.i.i.i.i.i, 1
  %10 = add i64 %i.nh, %i.ng
  %i.ni = add nuw nsw i64 %.243.i.i.i.i.i, 1      ; 2 uses
  %i.nj = getelementptr i8, ptr %.2.i.i.i.i.i, i64 10
  %.2.val.i.i.i.i.i = load i8, ptr %i.nj, align 1, !tbaa !15, !noalias !164
  %i.nk = zext i8 %.2.val.i.i.i.i.i to i64
  %.not.i.i.i.i123.i = icmp samesign ugt i64 %i.ni, %i.nk
  br i1 %.not.i.i.i.i123.i, label %.preheader5.i.i.i.i.i, label %.backedge

.backedge:                                        ; preds = %bb.bz, %bb.by
  %.142.i.i.i.i.i.be.in = phi i64 [ %i.ni, %bb.by ], [ %11, %bb.bz ]
  %.1.i.i.i.i.i.be = phi ptr [ %.2.i.i.i.i.i, %bb.by ], [ %.3.val.i.i.i.i.i, %bb.bz ]
  br label %bb.bv, !llvm.loop !169

.preheader5.i.i.i.i.i:                            ; preds = %bb.by, %bb.bz
  %.3.i.i.i.i.i = phi ptr [ %.3.val.i.i.i.i.i, %bb.bz ], [ %.2.i.i.i.i.i, %bb.by ] ; 2 uses
  %i.nl = getelementptr i8, ptr %.3.i.i.i.i.i, i64 8
  %.3.val67.i.i.i.i.i = load i8, ptr %i.nl, align 1, !tbaa !15, !noalias !164
  %i.nm = zext i8 %.3.val67.i.i.i.i.i to i64      ; 2 uses
  %.3.val.i.i.i.i.i = load ptr, ptr %.3.i.i.i.i.i, align 8, !tbaa !103, !noalias !164 ; 4 uses
  %i.nn = icmp eq ptr %.3.val.i.i.i.i.i, %.sroa.024.0.sink.i.i7.i.i
  %i.no = icmp eq i64 %i.nm, %i.mt
  %or.cond61.i.i.i.i.i = select i1 %i.nn, i1 %i.no, i1 false
  br i1 %or.cond61.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.preheader5.i.i.i.i.i
  %11 = add nuw nsw i64 %i.nm, 1                  ; 2 uses
  %i.np = getelementptr i8, ptr %.3.val.i.i.i.i.i, i64 10
  %.val.i.i.i.i123.i = load i8, ptr %i.np, align 1, !tbaa !15, !noalias !164
  %12 = zext i8 %.val.i.i.i.i123.i to i64
  %13 = icmp samesign ugt i64 %11, %12
  br i1 %13, label %.preheader5.i.i.i.i.i, label %.backedge, !llvm.loop !170

_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i: ; preds = %bb.bw, %bb.bx, %.preheader5.i.i.i.i.i
  %.pn.i.i.i.i.i = phi i64 [ %i.ng, %.preheader5.i.i.i.i.i ], [ %i.mt, %bb.bw ], [ %i.ng, %bb.bx ]
  %.051.i.i.i.i.i = add i64 %.pn.i.i.i.i.i, %.246.i.i.i.i.i
  br label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i

_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, %bb.br
  %i.nq = phi i1 [ true, %bb.br ], [ %i.mf, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i ]
  %.sroa.625.0.sink.i.i11.i.i = phi i32 [ %.sroa.625.0.sink.i.i10.i.i, %bb.br ], [ %.sroa.625.0.sink.i.i9.i.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i ]
  %.0.i.i.i.i = phi i64 [ %i.md, %bb.br ], [ %.051.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i ] ; 5 uses
  %i.nr = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %i.nr, label %.loopexit163.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 9 uses
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164 ; 4 uses
  %i.nu = icmp eq i64 %.0.i.i.i.i, %i.nt
  br i1 %i.nu, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i, label %bb.cb

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i: ; preds = %bb.ca
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val.i.i), !noalias !164, !inline_history !171
  store <2 x ptr> <ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11>, ptr %i.kb, align 8, !tbaa !103, !noalias !164
  store i64 0, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  br label %.loopexit163.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.nq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.nv = trunc i32 %.pn1.i.i.i.i.i.i to i8
  %i.nw = sub nsw i32 %.sroa.625.0.sink.i.i11.i.i, %.pn1.i.i.i.i.i.i
  %i.nx = trunc i32 %i.nw to i8
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %.pn3.i.i.i.i.i.i, i8 noundef zeroext %i.nv, i8 noundef zeroext %i.nx)
          to label %.noexc127.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc127.i:                                      ; preds = %bb.cc
  %i.ny = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.nz = sub i64 %i.ny, %.0.i.i.i.i
  store i64 %i.nz, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.oa = invoke fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr nonnull %.pn3.i.i.i.i.i.i, i32 %.pn1.i.i.i.i.i.i)
          to label %.loopexit163.i unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.cd:                                            ; preds = %bb.cb
  %i.ob = sub i64 %i.nt, %.0.i.i.i.i              ; 2 uses
  %.not122.i.i.i = icmp ult i64 %i.nt, %.0.i.i.i.i
  br i1 %.not122.i.i.i, label %.loopexit163.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cd, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i
  %i.oc = phi i64 [ %i.sn, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i ], [ %i.nt, %bb.cd ]
  %.sroa.13.091.i.i.i = phi i32 [ %.sroa.13.1.i.i.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i ], [ %.pn1.i.i.i.i.i.i, %bb.cd ] ; 9 uses
  %.sroa.063.090.i.i.i = phi ptr [ %.sroa.063.1.i.i.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i ], [ %.pn3.i.i.i.i.i.i, %bb.cd ] ; 9 uses
  %i.od = getelementptr i8, ptr %.sroa.063.090.i.i.i, i64 11 ; 2 uses
  %.val34.i.i.i = load i8, ptr %i.od, align 1, !tbaa !15, !noalias !164
  %.not.i.i.i = icmp eq i8 %.val34.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i
  %i.oe = sub i64 %i.oc, %i.ob
  %i.of = getelementptr i8, ptr %.sroa.063.090.i.i.i, i64 10
  %.val.i.i121.i = load i8, ptr %i.of, align 1, !tbaa !15, !noalias !164
  %i.og = zext i8 %.val.i.i121.i to i32
  %i.oh = sub nsw i32 %i.og, %.sroa.13.091.i.i.i
  %i.oi = sext i32 %i.oh to i64
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.oe, i64 %i.oi) ; 2 uses
  %i.oj = trunc i64 %.sroa.speculated.i.i.i to i8
  %i.ok = trunc i32 %.sroa.13.091.i.i.i to i8
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.063.090.i.i.i, i8 noundef zeroext %i.ok, i8 noundef zeroext %i.oj)
          to label %.noexc129.i unwind label %.loopexit.split-lp.loopexit.i

.noexc129.i:                                      ; preds = %bb.ce
  %i.ol = and i64 %.sroa.speculated.i.i.i, 255
  %i.om = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.on = sub i64 %i.om, %i.ol
  store i64 %i.on, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.oo = invoke fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr nonnull %.sroa.063.090.i.i.i, i32 %.sroa.13.091.i.i.i)
          to label %.noexc130.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc130.i:                                      ; preds = %.noexc129.i
  %.fca.0.extract4.i.i.i = extractvalue { ptr, i32 } %i.oo, 0
  %.fca.1.extract5.i.i.i = extractvalue { ptr, i32 } %i.oo, 1
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

bb.cf:                                            ; preds = %.lr.ph.i.i.i
  %i.op = trunc i32 %.sroa.13.091.i.i.i to i8
  %.mask.i.i.i.i = and i32 %.sroa.13.091.i.i.i, 255
  %i.oq = zext nneg i32 %.mask.i.i.i.i to i64     ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i.i, i64 16 ; 4 uses
  %i.os = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.oq ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !107, !noalias !164 ; 4 uses
  %.not.i.i.i.i.i8.i.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i.i.i8.i.i, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ov = getelementptr i8, ptr %i.ou, i64 16
  %.val.i.i4.i.i.i.i.i.i.i = load i64, ptr %i.ov, align 8, !tbaa !94, !noalias !164
  %i.ow = icmp eq i64 %.val.i.i4.i.i.i.i.i.i.i, 0
  br i1 %i.ow, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.val1.i.i5.i.i.i.i.i.i.i = load ptr, ptr %i.ou, align 8, !tbaa !87, !noalias !164
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i.i.i.i.i.i.i) #23, !noalias !164, !inline_history !172
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.ch, %bb.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef 24) #20, !noalias !164, !inline_history !172
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i, %bb.cf
  %i.ox = load ptr, ptr %i.os, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 2 uses
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !15, !noalias !164
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pb) #20, !noalias !164, !inline_history !173
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %.val9.i.i.i.i = load i8, ptr %i.od, align 1, !tbaa !15, !noalias !164
  %.not.i.i45.i.i.i = icmp eq i8 %.val9.i.i.i.i, 0 ; 2 uses
  br i1 %.not.i.i45.i.i.i, label %.thread.i.i.i.i.i.i, label %bb.ck

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i.i, i64 256
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.oq
  %.11727.i.i.i.i.i.i.i = load ptr, ptr %i.pd, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.pe = getelementptr i8, ptr %.11727.i.i.i.i.i.i.i, i64 11
  %.117.val1928.i.i.i.i.i.i.i = load i8, ptr %i.pe, align 1, !tbaa !15, !noalias !164
  %.not.i29.i.i.i.i.i.i.i = icmp eq i8 %.117.val1928.i.i.i.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i

.lr.ph31.i.i.i.i.i.i.i:                           ; preds = %.thread.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i
  %.11730.i.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i ], [ %.11727.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ] ; 2 uses
  %i.pf = getelementptr i8, ptr %.11730.i.i.i.i.i.i.i, i64 10
  %.117.val18.i.i.i.i.i.i.i = load i8, ptr %i.pf, align 1, !tbaa !15, !noalias !164
  %i.pg = getelementptr inbounds nuw i8, ptr %.11730.i.i.i.i.i.i.i, i64 256
  %i.ph = zext i8 %.117.val18.i.i.i.i.i.i.i to i64
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.ph
  %.117.i.i.i.i.i.i.i = load ptr, ptr %i.pi, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.pj = getelementptr i8, ptr %.117.i.i.i.i.i.i.i, i64 11
  %.117.val19.i.i.i.i.i.i.i = load i8, ptr %i.pj, align 1, !tbaa !15, !noalias !164
  %.not.i.i.i.i.i.i.i122.i = icmp eq i8 %.117.val19.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i122.i, label %.lr.ph31.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i, !llvm.loop !174

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i: ; preds = %.lr.ph31.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  %.117.lcssa.i.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.117.i.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i ] ; 4 uses
  %i.pk = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i.i, i64 10
  %.117.val.i.i.i.i.i.i.i = load i8, ptr %i.pk, align 1, !tbaa !15, !noalias !164
  %i.pl = zext i8 %.117.val.i.i.i.i.i.i.i to i32
  %i.pm = add nsw i32 %i.pl, -1                   ; 3 uses
  %i.pn = sext i32 %.sroa.13.091.i.i.i to i64
  %i.po = sext i32 %i.pm to i64
  %i.pp = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.pn ; 7 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i.i, i64 16
  %i.pr = getelementptr inbounds nuw [40 x i8], ptr %i.pq, i64 %i.po ; 5 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 16 ; 3 uses
  store ptr %i.ps, ptr %i.pp, align 8, !tbaa !39, !noalias !164
  %i.pt = load ptr, ptr %i.pr, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !30, !noalias !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !164
  store i64 %i.pv, ptr %i.b, align 8, !tbaa !7, !noalias !164
  %i.pw = icmp ugt i64 %i.pv, 15
  br i1 %i.pw, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i
  %i.px = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.pp, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc131.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc131.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.px, ptr %i.pp, align 8, !tbaa !33, !noalias !164
  %i.py = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !164
  store i64 %i.py, ptr %i.ps, align 8, !tbaa !15, !noalias !164
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc131.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i
  %i.pz = phi ptr [ %i.px, %.noexc131.i ], [ %i.ps, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i ] ; 2 uses
  switch i64 %i.pv, label %bb.cj [
    i64 1, label %bb.ci
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  ]

bb.ci:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qa = load i8, ptr %i.pt, align 1, !tbaa !15, !noalias !164
  store i8 %i.qa, ptr %i.pz, align 1, !tbaa !15, !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pz, ptr align 1 %i.pt, i64 %i.pv, i1 false), !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cj, %bb.ci, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qb = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !164 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !30, !noalias !164
  %i.qd = load ptr, ptr %i.pp, align 8, !tbaa !33, !noalias !164
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qb
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
  %i.aq = icmp samesign ult i8 %narrow141, 6
  %or.cond138 = select i1 %.not86, i1 true, i1 %i.aq
  br i1 %or.cond138, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.af)
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !103
  %i.at = getelementptr i8, ptr %i.as, i64 10
  %.val93 = load i8, ptr %i.at, align 1, !tbaa !15
  %i.au = zext i8 %.val93 to i32                  ; 2 uses
  %i.av = icmp sgt i32 %i.ar, %i.au
  br i1 %i.av, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aw = xor i32 %i.au, -1
  %i.ax = add nsw i32 %i.ar, %i.aw
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ay = icmp eq i8 %.val95, 6
  br i1 %i.ay, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.az = zext i8 %.val105 to i32
  store ptr %.val98, ptr %2, align 8, !tbaa !131
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !135
  call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2)
  %i.bb = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %.val97 = load ptr, ptr %i.bb, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bc = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22 ; 6 uses
  store ptr %.val98, ptr %i.bc, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  store i32 0, ptr %i.bd, align 8
  store ptr %i.b, ptr %i.be, align 8, !tbaa !103
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.bf, align 8, !tbaa !15
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !103
  store ptr %i.bc, ptr %0, align 8, !tbaa !103
  %.pre = load ptr, ptr %1, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bg = phi ptr [ %i.bb, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %.val97, %bb.m ], [ %.val98, %bb.l ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 11
  %.val96 = load i8, ptr %i.bh, align 1, !tbaa !15
  %.not142 = icmp eq i8 %.val96, 0
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  %.val99 = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bj = add i8 %.val99, 1                       ; 2 uses
  br i1 %.not142, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #22 ; 9 uses
  store ptr %.082, ptr %i.bk, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bj, ptr %i.bl, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  store i8 0, ptr %i.bm, align 1, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  store i8 0, ptr %i.bn, align 2, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  store i8 6, ptr %i.bo, align 1, !tbaa !15
  %i.bp = load i32, ptr %i.a, align 8, !tbaa !3
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i32 noundef %i.bp, ptr noundef nonnull %i.bk)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val118 = load ptr, ptr %i.bq, align 8, !tbaa !103
  %i.br = load ptr, ptr %1, align 8, !tbaa !103
  %i.bs = icmp eq ptr %.val118, %i.br
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bk, ptr %i.bq, align 8, !tbaa !103
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bt = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22 ; 7 uses
  store ptr %.082, ptr %i.bt, align 8, !tbaa !103
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %i.bj, ptr %i.bu, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  store i8 0, ptr %i.bv, align 1, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  store i8 0, ptr %i.bw, align 2, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  store i8 0, ptr %i.bx, align 1, !tbaa !15
  %i.by = load i32, ptr %i.a, align 8, !tbaa !3
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i32 noundef %i.by, ptr noundef nonnull %i.bt)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %bb.p ], [ %i.bt, %bb.r ]
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !103
  %i.cb = getelementptr i8, ptr %i.ca, i64 10
  %.val = load i8, ptr %i.cb, align 1, !tbaa !15
  %i.cc = zext i8 %.val to i32                    ; 2 uses
  %i.cd = icmp sgt i32 %i.bz, %i.cc
  br i1 %i.cd, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ce = xor i32 %i.cc, -1
  %i.cf = add nsw i32 %i.bz, %i.ce
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink149 = phi i32 [ %i.ax, %bb.k ], [ %i.y, %bb.f ], [ %i.cf, %bb.t ]
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.h, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink149, ptr %i.a, align 8, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !103
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11         ; 2 uses
  %.val55 = load i8, ptr %i.a, align 1, !tbaa !15 ; 2 uses
  %.not1 = icmp eq i8 %.val55, 0
  %i.b = getelementptr i8, ptr %0, i64 10
  %.val66 = load i8, ptr %i.b, align 1, !tbaa !15 ; 3 uses
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = zext i8 %.val66 to i64
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not.i5 = icmp eq i8 %.val66, 0
  br i1 %.not.i5, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i6 = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i6, i64 32
  tail call fastcc void @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #19, !inline_history !208
  %i.g = load ptr, ptr %.0.i6, align 8, !tbaa !33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !15
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i6, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit, label %.lr.ph, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.val63.pre = load i8, ptr %i.a, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit, %bb.b
  %.val63 = phi i8 [ %.val63.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit ], [ %.val55, %bb.b ] ; 2 uses
  %i.m = icmp eq i8 %.val63, 0
  %i.n = select i1 %i.m, i8 6, i8 %.val63
  %i.o = zext i8 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 40
  %i.q = add nuw nsw i64 %i.p, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i8 %.val66, 0
  br i1 %i.r, label %.loopexit.sink.split, label %.lr.ph10.preheader

.lr.ph10.preheader:                               ; preds = %bb.c
  %.val59 = load ptr, ptr %0, align 8, !tbaa !103
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %.lr.ph10
  %.0499 = phi ptr [ %.049.val69, %.lr.ph10 ], [ %0, %.lr.ph10.preheader ]
  %i.s = getelementptr i8, ptr %.0499, i64 256
  %.049.val69 = load ptr, ptr %i.s, align 8, !tbaa !103 ; 4 uses
  %i.t = getelementptr i8, ptr %.049.val69, i64 11
  %.049.val = load i8, ptr %i.t, align 1, !tbaa !15
  %.not.i70 = icmp eq i8 %.049.val, 0
  br i1 %.not.i70, label %.lr.ph10, label %._crit_edge, !llvm.loop !210

._crit_edge:                                      ; preds = %.lr.ph10
  %i.u = getelementptr i8, ptr %.049.val69, i64 8
  %.049.val62 = load i8, ptr %i.u, align 1, !tbaa !15
  %i.v = zext i8 %.049.val62 to i64
  %.049.val58 = load ptr, ptr %.049.val69, align 8, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.v, %._crit_edge ], [ %.147.be.in, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %.049.val58, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.147
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103  ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 11
  %.val56 = load i8, ptr %i.z, align 1, !tbaa !15
  %.not.i71 = icmp eq i8 %.val56, 0
  br i1 %.not.i71, label %.lr.ph14, label %bb.e

.lr.ph14:                                         ; preds = %bb.d, %.lr.ph14
  %.15013 = phi ptr [ %.150.val68, %.lr.ph14 ], [ %i.y, %bb.d ]
  %i.aa = getelementptr i8, ptr %.15013, i64 256
  %.150.val68 = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 5 uses
  %i.ab = getelementptr i8, ptr %.150.val68, i64 11
  %.150.val = load i8, ptr %i.ab, align 1, !tbaa !15
  %.not.i72 = icmp eq i8 %.150.val, 0
  br i1 %.not.i72, label %.lr.ph14, label %._crit_edge15, !llvm.loop !211

._crit_edge15:                                    ; preds = %.lr.ph14
  %i.ac = getelementptr i8, ptr %.150.val68, i64 8
  %.150.val61 = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ad = zext i8 %.150.val61 to i64
  %.150.val57 = load ptr, ptr %.150.val68, align 8, !tbaa !103
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge15, %bb.d
  %.251 = phi ptr [ %.150.val68, %._crit_edge15 ], [ %i.y, %bb.d ] ; 4 uses
  %.248 = phi i64 [ %i.ad, %._crit_edge15 ], [ %.147, %bb.d ]
  %.2 = phi ptr [ %.150.val57, %._crit_edge15 ], [ %.1, %bb.d ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.251, i64 10
  %.251.val65 = load i8, ptr %i.ae, align 1, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.251, i64 16 ; 2 uses
  %i.ag = zext i8 %.251.val65 to i64
  %.idx25.a = mul nuw nsw i64 %i.ag, 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx25.a
  %.not.i7417 = icmp eq i8 %.251.val65, 0
  br i1 %.not.i7417, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.0.i7318 = phi ptr [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.af, %bb.e ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107 ; 4 uses
  %.not.i82 = icmp eq ptr %i.aj, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph20
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %.val.i.i4.i = load i64, ptr %i.ak, align 8, !tbaa !94
  %i.al = icmp eq i64 %.val.i.i4.i, 0
  br i1 %i.al, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i5.i = load ptr, ptr %i.aj, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 24) #20, !inline_history !212
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit: ; preds = %.lr.ph20, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i
  store ptr null, ptr %i.ai, align 8, !tbaa !107
  %i.am = load ptr, ptr %.0.i7318, align 8, !tbaa !33 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 40 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ar, %i.ah
  br i1 %.not.i74, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, label %.lr.ph20, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.e
  %i.as = getelementptr i8, ptr %.251, i64 11
  %.251.val = load i8, ptr %i.as, align 1, !tbaa !15 ; 2 uses
  %i.at = icmp eq i8 %.251.val, 0
  %i.au = select i1 %i.at, i8 6, i8 %.251.val
  %i.av = zext i8 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.aw, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ax) #20
  %1 = add nuw nsw i64 %.248, 1                   ; 2 uses
  %i.ay = getelementptr i8, ptr %.2, i64 10
  %.2.val = load i8, ptr %i.ay, align 1, !tbaa !15 ; 2 uses
  %i.az = zext i8 %.2.val to i64
  %.not = icmp ugt i64 %1, %i.az
  br i1 %.not, label %.preheader2, label %.backedge

.backedge:                                        ; preds = %bb.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75
  %.147.be.in = phi i64 [ %1, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ], [ %3, %bb.j ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ], [ %.3.val, %bb.j ]
  br label %bb.d, !llvm.loop !213

.preheader2:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, %bb.j
  %.3.val64 = phi i8 [ %.val, %bb.j ], [ %.2.val, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ] ; 2 uses
  %.3 = phi ptr [ %.3.val, %bb.j ], [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ] ; 4 uses
  %i.ba = getelementptr i8, ptr %.3, i64 8
  %.3.val60 = load i8, ptr %i.ba, align 1, !tbaa !15
  %.3.val = load ptr, ptr %.3, align 8, !tbaa !103 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.bc = zext i8 %.3.val64 to i64
  %.idx26 = mul nuw nsw i64 %i.bc, 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx26
  %.not.i7721 = icmp eq i8 %.3.val64, 0
  br i1 %.not.i7721, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.0.i7622 = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.bb, %.preheader2 ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107 ; 4 uses
  %.not.i86 = icmp eq ptr %i.bf, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96, label %bb.h

bb.h:                                             ; preds = %.lr.ph24
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %.val.i.i4.i87 = load i64, ptr %i.bg, align 8, !tbaa !94
  %i.bh = icmp eq i64 %.val.i.i4.i87, 0
  br i1 %i.bh, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i5.i88 = load ptr, ptr %i.bf, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i88)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95: ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 24) #20, !inline_history !212
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96: ; preds = %.lr.ph24, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95
  store ptr null, ptr %i.be, align 8, !tbaa !107
  %i.bi = load ptr, ptr %.0.i7622, align 8, !tbaa !33 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 40 ; 2 uses
  %.not.i77 = icmp eq ptr %i.bn, %i.bd
  br i1 %.not.i77, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, label %.lr.ph24, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %.preheader2
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 312) #20
  %i.bo = icmp eq ptr %.3.val, %.val59
  br i1 %i.bo, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78
  %2 = zext i8 %.3.val60 to i64
  %3 = add nuw nsw i64 %2, 1                      ; 2 uses
  %i.bp = getelementptr i8, ptr %.3.val, i64 10
  %.val = load i8, ptr %i.bp, align 1, !tbaa !15  ; 2 uses
  %4 = zext i8 %.val to i64
  %5 = icmp samesign ugt i64 %3, %4
  br i1 %5, label %.preheader2, label %.backedge, !llvm.loop !214

.loopexit.sink.split:                             ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit
  %.sink = phi i64 [ %i.q, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit ], [ 312, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #20
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, %.loopexit.sink.split
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 10         ; 7 uses
  %.val48 = load i8, ptr %i.e, align 1, !tbaa !15
  %i.f = zext i8 %.val48 to i64
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val53 = load i8, ptr %i.g, align 1, !tbaa !15
  %i.h = zext i8 %.val53 to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.f ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val51, i64 16
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.h ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !39
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.p, ptr %i.d, align 8, !tbaa !7
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !33
  %i.s = load i64, ptr %i.d, align 8, !tbaa !7
  store i64 %i.s, ptr %i.m, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.a
  %i.t = phi ptr [ %i.r, %.noexc.i.i.i.i.i.i.i ], [ %i.m, %bb.a ] ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !15
  store i8 %i.u, ptr %i.t, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !30
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !107
  store ptr null, ptr %i.aa, align 8, !tbaa !107
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !33  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ag = zext i8 %1 to i32                       ; 3 uses
  %i.ah = add nsw i32 %i.ag, -1                   ; 3 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.ai, 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  %.not1.i = icmp eq i32 %i.ah, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.val47 = load i8, ptr %i.e, align 2, !tbaa !15
  %i.al = zext i8 %.val47 to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.al
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i.pn = phi ptr [ %.03.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.am, %.lr.ph.preheader.i ] ; 4 uses
  %.0122.i = phi ptr [ %i.bh, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.aj, %.lr.ph.preheader.i ] ; 6 uses
  %.03.i = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 40 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 56 ; 3 uses
  store ptr %i.an, ptr %.03.i, align 8, !tbaa !39
  %i.ao = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !7
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i.i.i.i.i.i.i60, label %._crit_edge.i.i.i.i.i.i.i.i55

.noexc.i.i.i.i.i.i.i60:                           ; preds = %.lr.ph.i
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %.03.i, align 8, !tbaa !33
  %i.at = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.at, ptr %i.an, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i55

._crit_edge.i.i.i.i.i.i.i.i55:                    ; preds = %.noexc.i.i.i.i.i.i.i60, %.lr.ph.i
  %i.au = phi ptr [ %i.as, %.noexc.i.i.i.i.i.i.i60 ], [ %i.an, %.lr.ph.i ] ; 2 uses
  switch i64 %i.aq, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i55
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !15
  store i8 %i.av, ptr %i.au, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ao, i64 %i.aq, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i55
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 48
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !30
  %i.ay = load ptr, ptr %.03.i, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i57 = load i64, ptr %i.bb, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i57, ptr %i.ba, align 8, !tbaa !107
  store ptr null, ptr %i.bb, align 8, !tbaa !107
  %i.bc = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20, !inline_history !133
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58
  %i.bh = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, %i.ak
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.i, !llvm.loop !134

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.val50 = load ptr, ptr %0, align 8, !tbaa !103
  %.val52 = load i8, ptr %i.g, align 8, !tbaa !15
  %i.bi = zext i8 %.val52 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bi ; 7 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.ai ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !39
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !7
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc.i.i.i.i.i.i.i67, label %._crit_edge.i.i.i.i.i.i.i.i61

.noexc.i.i.i.i.i.i.i67:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.br = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.br, ptr %i.bk, align 8, !tbaa !33
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i61:                    ; preds = %.noexc.i.i.i.i.i.i.i67, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.bt = phi ptr [ %i.br, %.noexc.i.i.i.i.i.i.i67 ], [ %i.bm, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.bp, label %bb.g [
    i64 1, label %bb.f
end_hunk_1
