inline.NumInlined: 1716
inline.NumDeleted: 658
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_E13distance_slowENS2_IKSS_RKSP_PSX_EE.exit.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nj = add i64 %.246.i.i.i.i.i, 1
  %i.nk = add i64 %i.nj, %i.ni
  %i.nl = getelementptr i8, ptr %.2.i.i.i.i.i, i64 10
  %.2.val.i.i.i.i.i = load i8, ptr %i.nl, align 1, !tbaa !15, !noalias !164
  %i.nm = zext i8 %.2.val.i.i.i.i.i to i64
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
bb.f:                                             ; preds = %bb.e
  %.val112 = load i8, ptr %i.i, align 1, !tbaa !15
  %i.w = zext i8 %.val112 to i32
  %i.x = add nsw i32 %i.u, 1
  %i.y = add nsw i32 %i.x, %i.w
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_:bb.a
  %lcmp.mod19 = trunc i8 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %.val46.epil = load i8, ptr %i.e, align 1, !tbaa !15
  %i.dm = trunc i64 %indvars.iv.epil.init to i8
  %i.dn = add i8 %i.dm, 1
  %i.do = add i8 %.val46.epil, %i.dn              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.epil.init
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !103 ; 3 uses
  %i.dr = zext i8 %i.do to i64
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_:bb.a
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %.val46 = load i8, ptr %i.e, align 1, !tbaa !15
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next to i8
  %i.dv = add i8 %.val46, %3                      ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !103 ; 3 uses
  %i.dy = zext i8 %i.dv to i64
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 %i.dv, ptr %i.ea, align 1, !tbaa !15
  store ptr %0, ptr %i.dx, align 8, !tbaa !103
  %.val46.1 = load i8, ptr %i.e, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %4 = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.eb = add i8 %.val46.1, %4                    ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !103 ; 3 uses
  %i.ee = zext i8 %i.eb to i64
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_:bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i8 %i.eb, ptr %i.eg, align 1, !tbaa !15
  store ptr %0, ptr %i.ed, align 8, !tbaa !103
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.j, !llvm.loop !215
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_:bb.a

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.ec, -2
  %invariant.op = sub i8 1, %1
  br label %bb.k

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_:bb.a
  store ptr %2, ptr %i.fd, align 8, !tbaa !103
  %.val49.1 = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.fh = trunc i64 %indvars.iv7 to i8
  %.reass = add i8 %i.fh, %invariant.op
  %i.fi = add i8 %.reass, %.val49.1
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !103 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_:bb.a
  br i1 %.not1.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %3 = add i8 %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_:bb.a
bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.bb = trunc nuw i64 %indvars.iv to i8
  %i.bc = add i8 %3, %i.bb
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %i.bf)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 10
  %.val76.i.peel = load i8, ptr %i.j, align 1, !tbaa !15
  %i.k = zext i8 %.val76.i.peel to i32
  %3 = add nuw nsw i32 %i.k, 1                    ; 2 uses
  %i.l = zext nneg i8 %.val9.peel to i32
  %i.m = add nuw nsw i32 %3, %i.l
  %i.n = icmp samesign ugt i32 %i.m, 6
  br i1 %i.n, label %.critedge.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %3, %2
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel

end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !103  ; 3 uses
  %narrow.peel = add nuw nsw i8 %.val9.peel, 1
  %i.w = zext nneg i8 %narrow.peel to i32
  %i.x = getelementptr i8, ptr %i.v, i64 10
  %.val72.i.peel = load i8, ptr %i.x, align 1, !tbaa !15 ; 3 uses
  %i.y = zext i8 %.val72.i.peel to i32
  %i.z = add nuw nsw i32 %i.y, %i.w
  %i.aa = icmp samesign ult i32 %i.z, 7
  br i1 %i.aa, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
  %i.bl = getelementptr i8, ptr %i.bk, i64 10
  %.val76.i = load i8, ptr %i.bl, align 1, !tbaa !15
  %i.bm = zext i8 %.val76.i to i32
  %4 = add nuw nsw i32 %i.bm, 1
  %i.bn = zext nneg i8 %.val9 to i32
  %i.bo = add nuw nsw i32 %4, %i.bn
  %i.bp = icmp samesign ugt i32 %i.bo, 6
  br i1 %i.bp, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
  %i.bu = zext i8 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !103 ; 3 uses
  %narrow = add nuw nsw i8 %.val9, 1
  %i.bx = zext nneg i8 %narrow to i32
  %i.by = getelementptr i8, ptr %i.bw, i64 10
  %.val72.i = load i8, ptr %i.by, align 1, !tbaa !15 ; 3 uses
  %i.bz = zext i8 %.val72.i to i32
  %i.ca = add nuw nsw i32 %i.bz, %i.bx
  %i.cb = icmp samesign ult i32 %i.ca, 7
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_:bb.a
_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit: ; preds = %bb.g, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i
  %.val28.i = phi i8 [ %.val28.pre.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i ], [ %.val.i, %bb.g ]
  %.val29.i = load i8, ptr %i.c, align 1, !tbaa !15
  %i.bk = add i8 %.val28.i, 1
  %i.bl = add i8 %i.bk, %.val29.i
  store i8 %i.bl, ptr %i.c, align 1, !tbaa !15
  store i8 0, ptr %i.z, align 1, !tbaa !15
  %.val24.i = load ptr, ptr %1, align 8, !tbaa !103
end_hunk_14
