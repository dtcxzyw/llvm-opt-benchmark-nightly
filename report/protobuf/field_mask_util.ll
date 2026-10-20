Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/field_mask_util?download=true
inline.NumInlined: 1716
inline.NumDeleted: 657
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  %i.lr = call i32 @memcmp(ptr noundef %i.lq, ptr noundef readonly %.val99.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i) #19, !noalias !185 ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc
  %i.lt = sub i64 %i.lo, %.val98.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.lt, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lr, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.lu = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i
  %i.lv = add nuw i64 %i.ll, 1
  br label %bb.bf

bb.be:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.222.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0207.i.i.i.i.i.i.i.i.i.i, %bb.bd ], [ %i.ll, %bb.be ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lv, %bb.bd ], [ %.0198.i.i.i.i.i.i.i.i.i.i, %bb.be ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.bc

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.bf, %bb.bb
  %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bb ], [ %.222.i.i.i.i.i.i.i.i.i.i, %bb.bf ] ; 2 uses
  %i.lw = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 11
  %.val4.i.i.i.i.i.i.i = load i8, ptr %i.lw, align 1, !tbaa !27, !noalias !185
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bg, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i

bb.bg:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 256
  %i.ly = and i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i.i, 255
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.ly
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !84, !noalias !185
  br label %bb.bb

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %bb.be
  %.lcssa.sink.i.i.i.i.i.i.i = phi i64 [ %i.ll, %bb.be ], [ %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ]
  %i.mb = phi i1 [ true, %bb.be ], [ false, %.loopexit.i.i.i.i.i.i.i ]
  %i.mc = trunc i64 %.lcssa.sink.i.i.i.i.i.i.i to i32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i.i.i = phi i32 [ %i.mc, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i ], [ %i.mh, %bb.bi ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_.exit.i.i.i.i.i.i ], [ %.val2.i.i.i.i.i.i.i, %bb.bi ] ; 4 uses
  %i.md = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i119.i = load i8, ptr %i.md, align 1, !tbaa !27, !noalias !186 ; 2 uses
  %i.me = zext i8 %.val.i.i.i.i.i.i119.i to i32
  %i.mf = icmp eq i32 %.sroa.7.0.i.i.i.i.i.i.i, %i.me
  br i1 %i.mf, label %bb.bi, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.mg = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 8
  %.val3.i.i.i.i.i.i.i = load i8, ptr %i.mg, align 1, !tbaa !27, !noalias !186
  %i.mh = zext i8 %.val3.i.i.i.i.i.i.i to i32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !84, !noalias !186 ; 2 uses
  %i.mi = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i, i64 11
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.mi, align 1, !tbaa !27, !noalias !186
  %.not.i7.i.i.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i.i, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.bh, label %bb.bj, !llvm.loop !167

bb.bj:                                            ; preds = %bb.bi
  %i.mj = getelementptr i8, ptr %.val5.i.i, i64 10
  %.val.i.i11.i.i.i.i.i = load i8, ptr %i.mj, align 1, !tbaa !27, !noalias !187 ; 2 uses
  %i.mk = zext i8 %.val.i.i11.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i: ; preds = %bb.bh, %bb.bj
  %.val.i.i.i9.i.i.i.i = phi i8 [ %.val.i.i11.i.i.i.i.i, %bb.bj ], [ %.val.i.i.i.i.i.i119.i, %bb.bh ]
  %.pn3.i.i.i.i.i.i = phi ptr [ %.val5.i.i, %bb.bj ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.bh ] ; 13 uses
  %.pn1.i.i.i.i.i.i = phi i32 [ %i.mk, %bb.bj ], [ %.sroa.7.0.i.i.i.i.i.i.i, %bb.bh ] ; 11 uses
  br i1 %i.mb, label %bb.bk, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i

bb.bk:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i
  %i.ml = getelementptr i8, ptr %.pn3.i.i.i.i.i.i, i64 11
  %.val1.i.i.i7.i.i.i.i = load i8, ptr %i.ml, align 1, !tbaa !27, !noalias !188 ; 2 uses
  %.not.i.i.i8.i.i.i.i = icmp eq i8 %.val1.i.i.i7.i.i.i.i, 0
  br i1 %.not.i.i.i8.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mm = add nsw i32 %.pn1.i.i.i.i.i.i, 1        ; 3 uses
  %i.mn = zext i8 %.val.i.i.i9.i.i.i.i to i32
  %i.mo = icmp eq i32 %i.mm, %i.mn
  br i1 %i.mo, label %.lr.ph.i.i.i.i.i.i.i125.i, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i

.lr.ph.i.i.i.i.i.i.i125.i:                        ; preds = %bb.bl, %bb.bm
  %.01527.i.i.i.i.i.i.i.i = phi ptr [ %.015.val19.i.i.i.i.i.i.i.i, %bb.bm ], [ %.pn3.i.i.i.i.i.i, %bb.bl ] ; 2 uses
  %.015.val19.i.i.i.i.i.i.i.i = load ptr, ptr %.01527.i.i.i.i.i.i.i.i, align 8, !tbaa !84, !noalias !188 ; 4 uses
  %i.mp = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i.i, i64 11
  %.015.val19.val.i.i.i.i.i.i.i.i = load i8, ptr %i.mp, align 1, !tbaa !27, !noalias !188
  %.not22.i.i.i.i.i.i.i.i = icmp eq i8 %.015.val19.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i.i, label %bb.bm, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i125.i
  %i.mq = getelementptr i8, ptr %.01527.i.i.i.i.i.i.i.i, i64 8
  %.015.val20.i.i.i.i.i.i.i.i = load i8, ptr %i.mq, align 8, !tbaa !27, !noalias !188 ; 2 uses
  %i.mr = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i.i, i64 10
  %.015.val17.i.i.i.i.i.i.i.i = load i8, ptr %i.mr, align 1, !tbaa !27, !noalias !188
  %i.ms = icmp eq i8 %.015.val20.i.i.i.i.i.i.i.i, %.015.val17.i.i.i.i.i.i.i.i
  br i1 %i.ms, label %.lr.ph.i.i.i.i.i.i.i125.i, label %.critedge.loopexit29.i.i.i.i.i.i.i.i, !llvm.loop !8

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.bk
  %i.mt = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i, i64 256
  %i.mu = add i32 %.pn1.i.i.i.i.i.i, 1
  %i.mv = and i32 %i.mu, 255
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mw
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.thread.i.i.i.i.i.i.i
  %.116.in.i.i.i.i.i.i.i.i = phi ptr [ %i.mx, %.thread.i.i.i.i.i.i.i ], [ %i.mz, %bb.bn ]
  %.116.i.i.i.i.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i.i.i.i.i, align 8, !tbaa !84, !noalias !188 ; 3 uses
  %i.my = getelementptr i8, ptr %.116.i.i.i.i.i.i.i.i, i64 11
  %.116.val.i.i.i.i.i.i.i.i = load i8, ptr %i.my, align 1, !tbaa !27, !noalias !188
  %.not.i.i.i.i.i.i.i.i126.i = icmp eq i8 %.116.val.i.i.i.i.i.i.i.i, 0
  %i.mz = getelementptr i8, ptr %.116.i.i.i.i.i.i.i.i, i64 256
  br i1 %.not.i.i.i.i.i.i.i.i126.i, label %bb.bn, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i, !llvm.loop !9

.critedge.loopexit29.i.i.i.i.i.i.i.i:             ; preds = %bb.bm
  %i.na = zext i8 %.015.val20.i.i.i.i.i.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i: ; preds = %bb.bn, %.critedge.loopexit29.i.i.i.i.i.i.i.i
  %.sroa.024.0.sink.i.i.i.i = phi ptr [ %.015.val19.i.i.i.i.i.i.i.i, %.critedge.loopexit29.i.i.i.i.i.i.i.i ], [ %.116.i.i.i.i.i.i.i.i, %bb.bn ] ; 3 uses
  %.sroa.625.0.sink.i.i.i.i = phi i32 [ %i.na, %.critedge.loopexit29.i.i.i.i.i.i.i.i ], [ 0, %bb.bn ] ; 2 uses
  %i.nb = icmp eq ptr %.sroa.024.0.sink.i.i.i.i, %.pn3.i.i.i.i.i.i
  br i1 %i.nb, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i, label %bb.bq

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i125.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i, %bb.bl, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i
  %.sroa.625.0.sink.i.i10.i.i = phi i32 [ %.sroa.625.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ], [ %.pn1.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i ], [ %i.mm, %bb.bl ], [ %i.mm, %.lr.ph.i.i.i.i.i.i.i125.i ] ; 4 uses
  %.sroa.024.0.sink.i.i8.i.i = phi ptr [ %.sroa.024.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ], [ %.pn3.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_.exit.i.i.i.i ], [ %.pn3.i.i.i.i.i.i, %bb.bl ], [ %.pn3.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i125.i ] ; 2 uses
  %i.nc = getelementptr i8, ptr %.sroa.024.0.sink.i.i8.i.i, i64 11
  %.val.i.i.i120.i = load i8, ptr %i.nc, align 1, !tbaa !27, !noalias !189
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i120.i, 0
  br i1 %.not.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i
  %i.nd = sub nsw i32 %.sroa.625.0.sink.i.i10.i.i, %.pn1.i.i.i.i.i.i
  %i.ne = sext i32 %i.nd to i64
  br label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i

bb.bp:                                            ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.thread.i.i
  %i.nf = icmp eq i32 %.sroa.625.0.sink.i.i10.i.i, %.pn1.i.i.i.i.i.i
  br i1 %i.nf, label %.loopexit158.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bp
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.pn3.i.i.i.i.i.i, i64 11
  %.val62.i.i.i.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !27, !noalias !189
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i
  %.val62.i.i.i.i.i = phi i8 [ %.val62.i.i.i.pre.i.i, %._crit_edge.i.i ], [ %.val1.i.i.i7.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ]
  %i.ng = phi i1 [ true, %._crit_edge.i.i ], [ false, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ]
  %.sroa.625.0.sink.i.i9.i.i = phi i32 [ %.sroa.625.0.sink.i.i10.i.i, %._crit_edge.i.i ], [ %.sroa.625.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ] ; 2 uses
  %.sroa.024.0.sink.i.i7.i.i = phi ptr [ %.sroa.024.0.sink.i.i8.i.i, %._crit_edge.i.i ], [ %.sroa.024.0.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_.exit.i.i ] ; 3 uses
  %.not4.i.i.i.i.i = icmp eq i8 %.val62.i.i.i.i.i, 0
  %i.nh = sub nsw i32 0, %.pn1.i.i.i.i.i.i
  %i.ni = sext i32 %i.nh to i64
  br i1 %.not4.i.i.i.i.i, label %bb.br, label %._crit_edge.i.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.nj = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i, i64 256
  %i.nk = add i32 %.pn1.i.i.i.i.i.i, 1
  %i.nl = and i32 %i.nk, 255
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !84, !noalias !189 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr i8, ptr %i.no, i64 11
  %.148.val18.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !tbaa !27, !noalias !189
  %i.np = icmp eq i8 %.148.val18.pre.i.i.i.i.i, 0
  br i1 %i.np, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.br, %.lr.ph.i.i.i.i.i
  %.14820.i.i.i.i.i = phi ptr [ %.148.val72.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.no, %bb.br ]
  %i.nq = getelementptr i8, ptr %.14820.i.i.i.i.i, i64 256
  %.148.val72.i.i.i.i.i = load ptr, ptr %i.nq, align 8, !tbaa !84, !noalias !189 ; 3 uses
  %i.nr = getelementptr i8, ptr %.148.val72.i.i.i.i.i, i64 11
  %.148.val.i.i.i.i.i = load i8, ptr %i.nr, align 1, !tbaa !27, !noalias !189
  %.not.i73.i.i.i.i.i = icmp eq i8 %.148.val.i.i.i.i.i, 0
  br i1 %.not.i73.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !170

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.br, %bb.bq
  %.04442.i.i.i.i.i = phi i64 [ 1, %bb.br ], [ %i.ni, %bb.bq ], [ 1, %.lr.ph.i.i.i.i.i ]
  %.148.lcssa.i.i.i.i.i = phi ptr [ %i.no, %bb.br ], [ %.pn3.i.i.i.i.i.i, %bb.bq ], [ %.148.val72.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ns = getelementptr i8, ptr %.148.lcssa.i.i.i.i.i, i64 8
  %.148.val69.i.i.i.i.i = load i8, ptr %i.ns, align 1, !tbaa !27, !noalias !189
  %i.nt = zext i8 %.148.val69.i.i.i.i.i to i64
  %.148.val66.i.i.i.i.i = load ptr, ptr %.148.lcssa.i.i.i.i.i, align 8, !tbaa !84, !noalias !189
  %i.nu = sext i32 %.sroa.625.0.sink.i.i9.i.i to i64 ; 3 uses
  br label %bb.bs

bb.bs:                                            ; preds = %.backedge, %._crit_edge.i.i.i.i.i
  %.246.i.i.i.i.i = phi i64 [ %.04442.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.oj, %.backedge ] ; 2 uses
  %.142.i.i.i.i.i = phi i64 [ %i.nt, %._crit_edge.i.i.i.i.i ], [ %.142.i.i.i.i.i.be, %.backedge ] ; 2 uses
  %.1.i.i.i.i.i = phi ptr [ %.148.val66.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.1.i.i.i.i.i.be, %.backedge ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 256
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %.142.i.i.i.i.i
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !84, !noalias !189 ; 3 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 11
  %.val63.i.i.i.i.i = load i8, ptr %i.ny, align 1, !tbaa !27, !noalias !189
  %.not.i74.i.i.i.i.i = icmp eq i8 %.val63.i.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %bb.bt

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.bs, %.lr.ph24.i.i.i.i.i
  %.24923.i.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i.i, %.lr.ph24.i.i.i.i.i ], [ %i.nx, %bb.bs ]
  %i.nz = getelementptr i8, ptr %.24923.i.i.i.i.i, i64 256
  %.249.val71.i.i.i.i.i = load ptr, ptr %i.nz, align 8, !tbaa !84, !noalias !189 ; 5 uses
  %i.oa = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 11
  %.249.val.i.i.i.i.i = load i8, ptr %i.oa, align 1, !tbaa !27, !noalias !189
  %.not.i75.i.i.i.i.i = icmp eq i8 %.249.val.i.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %._crit_edge25.i.i.i.i.i, !llvm.loop !171

._crit_edge25.i.i.i.i.i:                          ; preds = %.lr.ph24.i.i.i.i.i
  %i.ob = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 8
  %.249.val68.i.i.i.i.i = load i8, ptr %i.ob, align 1, !tbaa !27, !noalias !189
  %i.oc = zext i8 %.249.val68.i.i.i.i.i to i64
  %.249.val65.i.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i.i, align 8, !tbaa !84, !noalias !189
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge25.i.i.i.i.i, %bb.bs
  %.350.i.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ], [ %i.nx, %bb.bs ] ; 2 uses
  %.243.i.i.i.i.i = phi i64 [ %i.oc, %._crit_edge25.i.i.i.i.i ], [ %.142.i.i.i.i.i, %bb.bs ] ; 3 uses
  %.2.i.i.i.i.i = phi ptr [ %.249.val65.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.bs ] ; 4 uses
  %i.od = icmp eq ptr %.350.i.i.i.i.i, %.sroa.024.0.sink.i.i7.i.i
  br i1 %i.od, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oe = icmp eq ptr %.2.i.i.i.i.i, %.sroa.024.0.sink.i.i7.i.i
  %i.of = icmp eq i64 %.243.i.i.i.i.i, %i.nu
  %or.cond.i.i.i.i.i = select i1 %i.oe, i1 %i.of, i1 false
  %i.og = getelementptr i8, ptr %.350.i.i.i.i.i, i64 10
  %.350.val70.i.i.i.i.i = load i8, ptr %i.og, align 1, !tbaa !27, !noalias !189
  %i.oh = zext i8 %.350.val70.i.i.i.i.i to i64    ; 3 uses
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oi = add i64 %.246.i.i.i.i.i, 1
  %i.oj = add i64 %i.oi, %i.oh
  %i.ok = getelementptr i8, ptr %.2.i.i.i.i.i, i64 10
  %.2.val.i.i.i.i.i = load i8, ptr %i.ok, align 1, !tbaa !27, !noalias !189
  %i.ol = zext i8 %.2.val.i.i.i.i.i to i64
  %.not.not.i.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i.i, %i.ol
  br i1 %.not.not.i.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i.i

.backedge:                                        ; preds = %bb.bw, %bb.bv
  %.142.i.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i.i, %bb.bv ], [ %i.on, %bb.bw ]
  %.1.i.i.i.i.i.be = phi ptr [ %.2.i.i.i.i.i, %bb.bv ], [ %.3.val.i.i.i.i.i, %bb.bw ]
  %.142.i.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.i.be.in, 1
  br label %bb.bs, !llvm.loop !172

.preheader5.i.i.i.i.i:                            ; preds = %bb.bv, %bb.bw
  %.3.i.i.i.i.i = phi ptr [ %.3.val.i.i.i.i.i, %bb.bw ], [ %.2.i.i.i.i.i, %bb.bv ] ; 2 uses
  %i.om = getelementptr i8, ptr %.3.i.i.i.i.i, i64 8
  %.3.val67.i.i.i.i.i = load i8, ptr %i.om, align 1, !tbaa !27, !noalias !189 ; 2 uses
  %i.on = zext i8 %.3.val67.i.i.i.i.i to i64      ; 2 uses
  %.3.val.i.i.i.i.i = load ptr, ptr %.3.i.i.i.i.i, align 8, !tbaa !84, !noalias !189 ; 4 uses
  %i.oo = icmp eq ptr %.3.val.i.i.i.i.i, %.sroa.024.0.sink.i.i7.i.i
  %i.op = icmp eq i64 %i.on, %i.nu
  %or.cond61.i.i.i.i.i = select i1 %i.oo, i1 %i.op, i1 false
  br i1 %or.cond61.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.preheader5.i.i.i.i.i
  %i.oq = getelementptr i8, ptr %.3.val.i.i.i.i.i, i64 10
  %.val.i.i.i.i123.i = load i8, ptr %i.oq, align 1, !tbaa !27, !noalias !189
  %.not.i.i.i.i124.i = icmp ult i8 %.3.val67.i.i.i.i.i, %.val.i.i.i.i123.i
  br i1 %.not.i.i.i.i124.i, label %.backedge, label %.preheader5.i.i.i.i.i, !llvm.loop !173

_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i: ; preds = %bb.bt, %bb.bu, %.preheader5.i.i.i.i.i
  %.pn.i.i.i.i.i = phi i64 [ %i.oh, %.preheader5.i.i.i.i.i ], [ %i.nu, %bb.bt ], [ %i.oh, %bb.bu ]
  %.051.i.i.i.i.i = add i64 %.pn.i.i.i.i.i, %.246.i.i.i.i.i
  br label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i

_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, %bb.bo
  %i.or = phi i1 [ true, %bb.bo ], [ %i.ng, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i ]
  %.sroa.625.0.sink.i.i11.i.i = phi i32 [ %.sroa.625.0.sink.i.i10.i.i, %bb.bo ], [ %.sroa.625.0.sink.i.i9.i.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i ]
  %.0.i.i.i.i = phi i64 [ %i.ne, %bb.bo ], [ %.051.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i ] ; 5 uses
  %i.os = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %i.os, label %.loopexit158.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 9 uses
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !83, !noalias !189 ; 4 uses
  %i.ov = icmp eq i64 %.0.i.i.i.i, %i.ou
  br i1 %i.ov, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i, label %bb.by

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i: ; preds = %bb.bx
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val.i.i), !noalias !189, !inline_history !174
  store <2 x ptr> <ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11>, ptr %i.lc, align 8, !tbaa !84, !noalias !189
  store i64 0, ptr %i.ot, align 8, !tbaa !83, !noalias !189
  br label %.loopexit158.i

bb.by:                                            ; preds = %bb.bx
  br i1 %i.or, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ow = trunc i32 %.pn1.i.i.i.i.i.i to i8
  %i.ox = sub nsw i32 %.sroa.625.0.sink.i.i11.i.i, %.pn1.i.i.i.i.i.i
  %i.oy = trunc i32 %i.ox to i8
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %.pn3.i.i.i.i.i.i, i8 noundef zeroext %i.ow, i8 noundef zeroext %i.oy)
          to label %.noexc127.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127.i:                                      ; preds = %bb.bz
  %i.oz = load i64, ptr %i.ot, align 8, !tbaa !83, !noalias !189
  %i.pa = sub i64 %i.oz, %.0.i.i.i.i
  store i64 %i.pa, ptr %i.ot, align 8, !tbaa !83, !noalias !189
  %i.pb = invoke fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr nonnull %.pn3.i.i.i.i.i.i, i32 %.pn1.i.i.i.i.i.i)
          to label %.loopexit158.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ca:                                            ; preds = %bb.by
  %i.pc = sub nuw i64 %i.ou, %.0.i.i.i.i          ; 2 uses
  %.not122.i.i.i = icmp ult i64 %i.ou, %.0.i.i.i.i
  br i1 %.not122.i.i.i, label %.loopexit158.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ca, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i
  %i.pd = phi i64 [ %i.to, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i ], [ %i.ou, %bb.ca ]
  %.sroa.13.091.i.i.i = phi i32 [ %.sroa.13.1.i.i.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i ], [ %.pn1.i.i.i.i.i.i, %bb.ca ] ; 9 uses
  %.sroa.063.090.i.i.i = phi ptr [ %.sroa.063.1.i.i.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i ], [ %.pn3.i.i.i.i.i.i, %bb.ca ] ; 9 uses
  %i.pe = getelementptr i8, ptr %.sroa.063.090.i.i.i, i64 11 ; 2 uses
  %.val34.i.i.i = load i8, ptr %i.pe, align 1, !tbaa !27, !noalias !189
  %.not.i.i.i = icmp eq i8 %.val34.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i
  %i.pf = sub nuw i64 %i.pd, %i.pc
  %i.pg = getelementptr i8, ptr %.sroa.063.090.i.i.i, i64 10
  %.val.i.i121.i = load i8, ptr %i.pg, align 1, !tbaa !27, !noalias !189
  %i.ph = zext i8 %.val.i.i121.i to i32
  %i.pi = sub nsw i32 %i.ph, %.sroa.13.091.i.i.i
  %i.pj = sext i32 %i.pi to i64
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.pf, i64 %i.pj) ; 2 uses
  %i.pk = trunc i64 %.sroa.speculated.i.i.i to i8
  %i.pl = trunc i32 %.sroa.13.091.i.i.i to i8
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.063.090.i.i.i, i8 noundef zeroext %i.pl, i8 noundef zeroext %i.pk)
          to label %.noexc129.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc129.i:                                      ; preds = %bb.cb
  %i.pm = and i64 %.sroa.speculated.i.i.i, 255
  %i.pn = load i64, ptr %i.ot, align 8, !tbaa !83, !noalias !189
  %i.po = sub i64 %i.pn, %i.pm
  store i64 %i.po, ptr %i.ot, align 8, !tbaa !83, !noalias !189
  %i.pp = invoke fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr nonnull %.sroa.063.090.i.i.i, i32 %.sroa.13.091.i.i.i)
          to label %.noexc130.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc130.i:                                      ; preds = %.noexc129.i
  %.fca.0.extract4.i.i.i = extractvalue { ptr, i32 } %i.pp, 0
  %.fca.1.extract5.i.i.i = extractvalue { ptr, i32 } %i.pp, 1
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

bb.cc:                                            ; preds = %.lr.ph.i.i.i
  %i.pq = trunc i32 %.sroa.13.091.i.i.i to i8
  %.mask.i.i.i.i = and i32 %.sroa.13.091.i.i.i, 255
  %i.pr = zext nneg i32 %.mask.i.i.i.i to i64     ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i.i, i64 16 ; 4 uses
  %i.pt = getelementptr inbounds nuw [40 x i8], ptr %i.ps, i64 %i.pr ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !86, !noalias !189 ; 4 uses
  %.not.i.i.i.i.i8.i.i = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i.i.i8.i.i, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pw = getelementptr i8, ptr %i.pv, i64 16
  %.val.i.i4.i.i.i.i.i.i.i = load i64, ptr %i.pw, align 8, !tbaa !83, !noalias !189
  %i.px = icmp eq i64 %.val.i.i4.i.i.i.i.i.i.i, 0
  br i1 %i.px, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val1.i.i5.i.i.i.i.i.i.i = load ptr, ptr %i.pv, align 8, !tbaa !81, !noalias !189
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i.i.i.i.i.i.i) #23, !noalias !189, !inline_history !10
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef 24) #20, !noalias !189, !inline_history !10
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i, %bb.cc
  %i.py = load ptr, ptr %i.pt, align 8, !tbaa !42, !noalias !189 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !27, !noalias !189
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #20, !noalias !189, !inline_history !11
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %.val9.i.i.i.i = load i8, ptr %i.pe, align 1, !tbaa !27, !noalias !189
  %.not.i.i45.i.i.i = icmp eq i8 %.val9.i.i.i.i, 0 ; 2 uses
  br i1 %.not.i.i45.i.i.i, label %.thread.i.i.i.i.i.i, label %bb.ch

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i.i, i64 256
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %i.pr
  %.11727.i.i.i.i.i.i.i = load ptr, ptr %i.qe, align 8, !tbaa !84, !noalias !189 ; 3 uses
  %i.qf = getelementptr i8, ptr %.11727.i.i.i.i.i.i.i, i64 11
  %.117.val1928.i.i.i.i.i.i.i = load i8, ptr %i.qf, align 1, !tbaa !27, !noalias !189
  %.not.i29.i.i.i.i.i.i.i = icmp eq i8 %.117.val1928.i.i.i.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i

.lr.ph31.i.i.i.i.i.i.i:                           ; preds = %.thread.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i
  %.11730.i.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i ], [ %.11727.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ] ; 2 uses
  %i.qg = getelementptr i8, ptr %.11730.i.i.i.i.i.i.i, i64 10
  %.117.val18.i.i.i.i.i.i.i = load i8, ptr %i.qg, align 1, !tbaa !27, !noalias !189
  %i.qh = getelementptr inbounds nuw i8, ptr %.11730.i.i.i.i.i.i.i, i64 256
  %i.qi = zext i8 %.117.val18.i.i.i.i.i.i.i to i64
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %i.qi
  %.117.i.i.i.i.i.i.i = load ptr, ptr %i.qj, align 8, !tbaa !84, !noalias !189 ; 3 uses
  %i.qk = getelementptr i8, ptr %.117.i.i.i.i.i.i.i, i64 11
  %.117.val19.i.i.i.i.i.i.i = load i8, ptr %i.qk, align 1, !tbaa !27, !noalias !189
  %.not.i.i.i.i.i.i.i122.i = icmp eq i8 %.117.val19.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i122.i, label %.lr.ph31.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i, !llvm.loop !175

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i: ; preds = %.lr.ph31.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  %.117.lcssa.i.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.117.i.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i ] ; 4 uses
  %i.ql = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i.i, i64 10
  %.117.val.i.i.i.i.i.i.i = load i8, ptr %i.ql, align 1, !tbaa !27, !noalias !189
  %i.qm = zext i8 %.117.val.i.i.i.i.i.i.i to i32
  %i.qn = add nsw i32 %i.qm, -1                   ; 3 uses
  %i.qo = sext i32 %.sroa.13.091.i.i.i to i64
  %i.qp = sext i32 %i.qn to i64
  %i.qq = getelementptr inbounds nuw [40 x i8], ptr %i.ps, i64 %i.qo ; 7 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i.i, i64 16
  %i.qs = getelementptr inbounds nuw [40 x i8], ptr %i.qr, i64 %i.qp ; 5 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 16 ; 3 uses
  store ptr %i.qt, ptr %i.qq, align 8, !tbaa !48, !noalias !189
  %i.qu = load ptr, ptr %i.qs, align 8, !tbaa !42, !noalias !189 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !41, !noalias !189 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !189
  store i64 %i.qw, ptr %i.b, align 8, !tbaa !23, !noalias !189
  %i.qx = icmp ugt i64 %i.qw, 15
  br i1 %i.qx, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i
  %i.qy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.qq, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc131.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc131.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.qy, ptr %i.qq, align 8, !tbaa !42, !noalias !189
  %i.qz = load i64, ptr %i.b, align 8, !tbaa !23, !noalias !189
  store i64 %i.qz, ptr %i.qt, align 8, !tbaa !27, !noalias !189
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc131.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i
  %i.ra = phi ptr [ %i.qy, %.noexc131.i ], [ %i.qt, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i ] ; 2 uses
  switch i64 %i.qw, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rb = load i8, ptr %i.qu, align 1, !tbaa !27, !noalias !189
  store i8 %i.rb, ptr %i.ra, align 1, !tbaa !27, !noalias !189
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ra, ptr align 1 %i.qu, i64 %i.qw, i1 false), !noalias !189
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rc = load i64, ptr %i.b, align 8, !tbaa !23, !noalias !189 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store i64 %i.rc, ptr %i.rd, align 8, !tbaa !41, !noalias !189
  %i.re = load ptr, ptr %i.qq, align 8, !tbaa !42, !noalias !189
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rc
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.af)
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !84
  %i.at = getelementptr i8, ptr %i.as, i64 10
  %.val93 = load i8, ptr %i.at, align 1, !tbaa !27
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
  store ptr %.val98, ptr %2, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !90
  call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2)
  %i.bb = load ptr, ptr %1, align 8, !tbaa !84    ; 2 uses
  %.val97 = load ptr, ptr %i.bb, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bc = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22 ; 6 uses
  store ptr %.val98, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 0, ptr %i.bd, align 8
  %i.be = load ptr, ptr %1, align 8, !tbaa !84    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i8 0, ptr %i.bg, align 1, !tbaa !27
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !84
  store ptr %i.bc, ptr %0, align 8, !tbaa !84
  %.pre = load ptr, ptr %1, align 8, !tbaa !84
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bh = phi ptr [ %i.bb, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 2 uses
  %.083 = phi ptr [ %.val97, %bb.m ], [ %.val98, %bb.l ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 11
  %.val96 = load i8, ptr %i.bi, align 1, !tbaa !27
  %.not142 = icmp eq i8 %.val96, 0
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  %.val99 = load i8, ptr %i.bj, align 1, !tbaa !27
  %i.bk = add i8 %.val99, 1                       ; 2 uses
  br i1 %.not142, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #22 ; 9 uses
  store ptr %.083, ptr %i.bl, align 8, !tbaa !84
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i8 %i.bk, ptr %i.bm, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 9
  store i8 0, ptr %i.bn, align 1, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  store i8 0, ptr %i.bo, align 2, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 11
  store i8 6, ptr %i.bp, align 1, !tbaa !27
  %i.bq = load ptr, ptr %1, align 8, !tbaa !84
  %i.br = load i32, ptr %i.a, align 8, !tbaa !21
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i32 noundef %i.br, ptr noundef nonnull %i.bl)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val118 = load ptr, ptr %i.bs, align 8, !tbaa !84
  %i.bt = load ptr, ptr %1, align 8, !tbaa !84
  %i.bu = icmp eq ptr %.val118, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bl, ptr %i.bs, align 8, !tbaa !84
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bv = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22 ; 7 uses
  store ptr %.083, ptr %i.bv, align 8, !tbaa !84
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bk, ptr %i.bw, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 9
  store i8 0, ptr %i.bx, align 1, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 10
  store i8 0, ptr %i.by, align 2, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 11
  store i8 0, ptr %i.bz, align 1, !tbaa !27
  %i.ca = load ptr, ptr %1, align 8, !tbaa !84
  %i.cb = load i32, ptr %i.a, align 8, !tbaa !21
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.ca, i32 noundef %i.cb, ptr noundef nonnull %i.bv)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bl, %bb.q ], [ %i.bl, %bb.p ], [ %i.bv, %bb.r ]
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !84
  %i.ce = getelementptr i8, ptr %i.cd, i64 10
  %.val = load i8, ptr %i.ce, align 1, !tbaa !27
  %i.cf = zext i8 %.val to i32                    ; 2 uses
  %i.cg = icmp sgt i32 %i.cc, %i.cf
  br i1 %i.cg, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ch = xor i32 %i.cf, -1
  %i.ci = add nsw i32 %i.cc, %i.ch
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink149 = phi i32 [ %i.ax, %bb.k ], [ %i.y, %bb.f ], [ %i.ci, %bb.t ]
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.h, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink149, ptr %i.a, align 8, !tbaa !21
  store ptr %.sink, ptr %1, align 8, !tbaa !84
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11         ; 2 uses
  %.val55 = load i8, ptr %i.a, align 1, !tbaa !27 ; 2 uses
  %.not1 = icmp eq i8 %.val55, 0
  %i.b = getelementptr i8, ptr %0, i64 10
  %.val66 = load i8, ptr %i.b, align 1, !tbaa !27 ; 3 uses
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
  tail call fastcc void @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #19, !inline_history !217
  %i.g = load ptr, ptr %.0.i6, align 8, !tbaa !42 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !27
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i6, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit, label %.lr.ph, !llvm.loop !12

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.val63.pre = load i8, ptr %i.a, align 1, !tbaa !27
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
  %.val59 = load ptr, ptr %0, align 8, !tbaa !84
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %.lr.ph10
  %.0499 = phi ptr [ %.049.val69, %.lr.ph10 ], [ %0, %.lr.ph10.preheader ]
  %i.s = getelementptr i8, ptr %.0499, i64 256
  %.049.val69 = load ptr, ptr %i.s, align 8, !tbaa !84 ; 4 uses
  %i.t = getelementptr i8, ptr %.049.val69, i64 11
  %.049.val = load i8, ptr %i.t, align 1, !tbaa !27
  %.not.i70 = icmp eq i8 %.049.val, 0
  br i1 %.not.i70, label %.lr.ph10, label %._crit_edge, !llvm.loop !218

._crit_edge:                                      ; preds = %.lr.ph10
  %i.u = getelementptr i8, ptr %.049.val69, i64 8
  %.049.val62 = load i8, ptr %i.u, align 1, !tbaa !27
  %i.v = zext i8 %.049.val62 to i64
  %.049.val58 = load ptr, ptr %.049.val69, align 8, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.v, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %.049.val58, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.147
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !84   ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 11
  %.val56 = load i8, ptr %i.z, align 1, !tbaa !27
  %.not.i71 = icmp eq i8 %.val56, 0
  br i1 %.not.i71, label %.lr.ph14, label %bb.e

.lr.ph14:                                         ; preds = %bb.d, %.lr.ph14
  %.15013 = phi ptr [ %.150.val68, %.lr.ph14 ], [ %i.y, %bb.d ]
  %i.aa = getelementptr i8, ptr %.15013, i64 256
  %.150.val68 = load ptr, ptr %i.aa, align 8, !tbaa !84 ; 5 uses
  %i.ab = getelementptr i8, ptr %.150.val68, i64 11
  %.150.val = load i8, ptr %i.ab, align 1, !tbaa !27
  %.not.i72 = icmp eq i8 %.150.val, 0
  br i1 %.not.i72, label %.lr.ph14, label %._crit_edge15, !llvm.loop !219

._crit_edge15:                                    ; preds = %.lr.ph14
  %i.ac = getelementptr i8, ptr %.150.val68, i64 8
  %.150.val61 = load i8, ptr %i.ac, align 1, !tbaa !27
  %i.ad = zext i8 %.150.val61 to i64
  %.150.val57 = load ptr, ptr %.150.val68, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge15, %bb.d
  %.251 = phi ptr [ %.150.val68, %._crit_edge15 ], [ %i.y, %bb.d ] ; 4 uses
  %.248 = phi i64 [ %i.ad, %._crit_edge15 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %.150.val57, %._crit_edge15 ], [ %.1, %bb.d ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.251, i64 10
  %.251.val65 = load i8, ptr %i.ae, align 1, !tbaa !27 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.251, i64 16 ; 2 uses
  %i.ag = zext i8 %.251.val65 to i64
  %.idx25.a = mul nuw nsw i64 %i.ag, 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx25.a
  %.not.i7417 = icmp eq i8 %.251.val65, 0
  br i1 %.not.i7417, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.0.i7318 = phi ptr [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.af, %bb.e ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 4 uses
  %.not.i82 = icmp eq ptr %i.aj, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph20
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %.val.i.i4.i = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.al = icmp eq i64 %.val.i.i4.i, 0
  br i1 %i.al, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i5.i = load ptr, ptr %i.aj, align 8, !tbaa !81
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 24) #20, !inline_history !220
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit: ; preds = %.lr.ph20, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i
  store ptr null, ptr %i.ai, align 8, !tbaa !86
  %i.am = load ptr, ptr %.0.i7318, align 8, !tbaa !42 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !27
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 40 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ar, %i.ah
  br i1 %.not.i74, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, label %.lr.ph20, !llvm.loop !12

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.e
  %i.as = getelementptr i8, ptr %.251, i64 11
  %.251.val = load i8, ptr %i.as, align 1, !tbaa !27 ; 2 uses
  %i.at = icmp eq i8 %.251.val, 0
  %i.au = select i1 %i.at, i8 6, i8 %.251.val
  %i.av = zext i8 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.aw, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ax) #20
  %i.ay = getelementptr i8, ptr %.2, i64 10
  %.2.val = load i8, ptr %i.ay, align 1, !tbaa !27 ; 2 uses
  %i.az = zext i8 %.2.val to i64
  %.not.not = icmp ult i64 %.248, %i.az
  br i1 %.not.not, label %.backedge, label %.preheader2

.backedge:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, %1
  %.147.be.in = phi i64 [ %.248, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ], [ %2, %1 ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ], [ %.3.val, %1 ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !221

.preheader2:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, %bb.j
  %.3.val64 = phi i8 [ %.val, %bb.j ], [ %.2.val, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ] ; 2 uses
  %.3 = phi ptr [ %.3.val, %bb.j ], [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ] ; 4 uses
  %i.ba = getelementptr i8, ptr %.3, i64 8
  %.3.val60 = load i8, ptr %i.ba, align 1, !tbaa !27 ; 2 uses
  %.3.val = load ptr, ptr %.3, align 8, !tbaa !84 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.bc = zext i8 %.3.val64 to i64
  %.idx26 = mul nuw nsw i64 %i.bc, 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx26
  %.not.i7721 = icmp eq i8 %.3.val64, 0
  br i1 %.not.i7721, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.0.i7622 = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.bb, %.preheader2 ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !86 ; 4 uses
  %.not.i86 = icmp eq ptr %i.bf, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96, label %bb.h

bb.h:                                             ; preds = %.lr.ph24
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %.val.i.i4.i87 = load i64, ptr %i.bg, align 8, !tbaa !83
  %i.bh = icmp eq i64 %.val.i.i4.i87, 0
  br i1 %i.bh, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i5.i88 = load ptr, ptr %i.bf, align 8, !tbaa !81
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i88)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95: ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 24) #20, !inline_history !220
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96: ; preds = %.lr.ph24, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95
  store ptr null, ptr %i.be, align 8, !tbaa !86
  %i.bi = load ptr, ptr %.0.i7622, align 8, !tbaa !42 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !27
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 40 ; 2 uses
  %.not.i77 = icmp eq ptr %i.bn, %i.bd
  br i1 %.not.i77, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, label %.lr.ph24, !llvm.loop !12

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %.preheader2
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 312) #20
  %i.bo = icmp eq ptr %.3.val, %.val59
  br i1 %i.bo, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78
  %i.bp = getelementptr i8, ptr %.3.val, i64 10
  %.val = load i8, ptr %i.bp, align 1, !tbaa !27  ; 2 uses
  %.not = icmp ult i8 %.3.val60, %.val
  br i1 %.not, label %1, label %.preheader2, !llvm.loop !222

1:                                                ; preds = %bb.j
  %2 = zext i8 %.3.val60 to i64
  br label %.backedge

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
  %.val48 = load i8, ptr %i.e, align 1, !tbaa !27
  %i.f = zext i8 %.val48 to i64
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val53 = load i8, ptr %i.g, align 1, !tbaa !27
  %i.h = zext i8 %.val53 to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.f ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val51, i64 16
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.h ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !48
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.p, ptr %i.d, align 8, !tbaa !23
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !42
  %i.s = load i64, ptr %i.d, align 8, !tbaa !23
  store i64 %i.s, ptr %i.m, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.a
  %i.t = phi ptr [ %i.r, %.noexc.i.i.i.i.i.i.i ], [ %i.m, %bb.a ] ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !27
  store i8 %i.u, ptr %i.t, align 1, !tbaa !27
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !41
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !86
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !86
  store ptr null, ptr %i.aa, align 8, !tbaa !86
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !42  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #20, !inline_history !3
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
  %.val47 = load i8, ptr %i.e, align 2, !tbaa !27
  %i.al = zext i8 %.val47 to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.al
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i.pn = phi ptr [ %.03.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.am, %.lr.ph.preheader.i ] ; 4 uses
  %.0122.i = phi ptr [ %i.bh, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.aj, %.lr.ph.preheader.i ] ; 6 uses
  %.03.i = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 40 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 56 ; 3 uses
  store ptr %i.an, ptr %.03.i, align 8, !tbaa !48
  %i.ao = load ptr, ptr %.0122.i, align 8, !tbaa !42 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !23
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i.i.i.i.i.i.i60, label %._crit_edge.i.i.i.i.i.i.i.i55

.noexc.i.i.i.i.i.i.i60:                           ; preds = %.lr.ph.i
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %.03.i, align 8, !tbaa !42
  %i.at = load i64, ptr %i.c, align 8, !tbaa !23
  store i64 %i.at, ptr %i.an, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i.i.i.i.i55

._crit_edge.i.i.i.i.i.i.i.i55:                    ; preds = %.noexc.i.i.i.i.i.i.i60, %.lr.ph.i
  %i.au = phi ptr [ %i.as, %.noexc.i.i.i.i.i.i.i60 ], [ %i.an, %.lr.ph.i ] ; 2 uses
  switch i64 %i.aq, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i55
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !27
  store i8 %i.av, ptr %i.au, align 1, !tbaa !27
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ao, i64 %i.aq, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i55
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !23  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 48
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !41
  %i.ay = load ptr, ptr %.03.i, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i57 = load i64, ptr %i.bb, align 8, !tbaa !86
  store i64 %.val.i.i.i.i.i.i.i.i.i57, ptr %i.ba, align 8, !tbaa !86
  store ptr null, ptr %i.bb, align 8, !tbaa !86
  %i.bc = load ptr, ptr %.0122.i, align 8, !tbaa !42 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !27
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20, !inline_history !3
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58
  %i.bh = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, %i.ak
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.i, !llvm.loop !4

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.val50 = load ptr, ptr %0, align 8, !tbaa !84
  %.val52 = load i8, ptr %i.g, align 8, !tbaa !27
  %i.bi = zext i8 %.val52 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bi ; 7 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.ai ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !48
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !23
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc.i.i.i.i.i.i.i67, label %._crit_edge.i.i.i.i.i.i.i.i61

.noexc.i.i.i.i.i.i.i67:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.br = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.br, ptr %i.bk, align 8, !tbaa !42
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !23
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i61:                    ; preds = %.noexc.i.i.i.i.i.i.i67, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.bt = phi ptr [ %i.br, %.noexc.i.i.i.i.i.i.i67 ], [ %i.bm, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.bp, label %bb.g [
    i64 1, label %bb.f
end_hunk_1
