inline.NumInlined: 1665
inline.NumDeleted: 778
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16internal_emplaceIJS9_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSJ_EESM_DpOT_:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 10 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !26  ; 2 uses
  %i.bk = icmp ugt i8 %i.bj, %i.bg
  %i.bl = zext nneg i32 %i.bh to i64              ; 4 uses
  br i1 %i.bk, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16internal_emplaceIJS9_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSJ_EESM_DpOT_:bb.a
  %i.cy = zext i8 %i.cv to i32
  %i.cz = add nuw nsw i32 %i.bh, 1                ; 2 uses
  %i.da = icmp samesign ult i32 %i.cz, %i.cy
  br i1 %i.da, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJS9_EEEvhPSC_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.j
  %5 = getelementptr inbounds nuw i8, ptr %i.be, i64 240 ; 10 uses
  %6 = zext i8 %i.cv to i64                       ; 4 uses
  %7 = zext nneg i32 %i.cz to i64
  %8 = xor i64 %i.bl, -1
  %9 = add nsw i64 %8, %6
  %10 = add nsw i64 %6, -2
  %11 = sub nsw i64 %10, %i.bl
  %xtraiter = and i64 %9, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i, %.lr.ph.i.a
  %indvars.iv.prol = phi i64 [ %12, %.lr.ph.i.a ], [ %6, %.lr.ph.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.a ], [ 0, %.lr.ph.i ]
  %12 = add nsw i64 %indvars.iv.prol, -1          ; 3 uses
  %13 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !211    ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.prol
  store ptr %14, ptr %15, align 8, !tbaa !211
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %16, ptr %i.db, align 1, !tbaa !26
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.lr.ph.i.a, !llvm.loop !223

.prol.loopexit:                                   ; preds = %.lr.ph.i.a, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %6, %.lr.ph.i ], [ %12, %.lr.ph.i.a ]
  %17 = icmp ult i64 %11, 3
  br i1 %17, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJS9_EEEvhPSC_DpOT_.exit, label %bb.k

bb.k:                                             ; preds = %.prol.loopexit, %bb.k
  %indvars.iv = phi i64 [ %32, %bb.k ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %18 = add nsw i64 %indvars.iv, -1               ; 3 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !211    ; 2 uses
  %21 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store ptr %20, ptr %21, align 8, !tbaa !211
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %23 = trunc nuw i64 %indvars.iv to i8
  store i8 %23, ptr %22, align 1, !tbaa !26
  %24 = add nsw i64 %indvars.iv, -2               ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !211 ; 2 uses
  %25 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %18
  store ptr %i.dd, ptr %25, align 8, !tbaa !211
  %26 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %27 = trunc nuw i64 %18 to i8
  store i8 %27, ptr %26, align 1, !tbaa !26
  %28 = add nsw i64 %indvars.iv, -3               ; 3 uses
  %29 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !211    ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %24
  store ptr %30, ptr %i.de, align 8, !tbaa !211
  %i.df = getelementptr inbounds nuw i8, ptr %30, i64 8
  %31 = trunc nuw i64 %24 to i8
  store i8 %31, ptr %i.df, align 1, !tbaa !26
  %32 = add nsw i64 %indvars.iv, -4               ; 3 uses
  %33 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !211    ; 2 uses
  %35 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %28
  store ptr %34, ptr %35, align 8, !tbaa !211
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %37 = trunc nuw i64 %28 to i8
  store i8 %37, ptr %36, align 1, !tbaa !26
  %.wide.3 = icmp ugt i64 %32, %7
  br i1 %.wide.3, label %bb.k, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJS9_EEEvhPSC_DpOT_.exit, !llvm.loop !225

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJS9_EEEvhPSC_DpOT_.exit: ; preds = %.prol.loopexit, %bb.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJS9_EEEvhPSC_DpOT_.exit.i, %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !205
  %i.di = add i64 %i.dh, 1
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSI_EE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !211    ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !226
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_:bb.a
_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit, label %.lr.ph.i, !llvm.loop !227

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i
  %.pre = load i8, ptr %i.a, align 1, !tbaa !26
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !26
  %.not.i55 = icmp eq i8 %i.z, 0
  br i1 %.not.i55, label %.lr.ph, label %._crit_edge, !llvm.loop !228

._crit_edge:                                      ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 11
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26
  %.not.i57 = icmp eq i8 %i.am, 0
  br i1 %.not.i57, label %.lr.ph85, label %._crit_edge86, !llvm.loop !229

._crit_edge86:                                    ; preds = %.lr.ph85
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_:bb.a
_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63: ; preds = %.lr.ph.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i61, i64 32 ; 2 uses
  %.not.i64 = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i64, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, label %.lr.ph.i60, !llvm.loop !227

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %.251, i64 11
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_:bb.a
  %.147.be.in = phi i64 [ %.248, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ], [ %i.ce, %bb.g ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ], [ %i.bq, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !230

.preheader77:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, %bb.f
  %i.bn = phi i8 [ %i.cd, %bb.f ], [ %i.bl, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_:bb.a
_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72: ; preds = %.lr.ph.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i70, i64 32 ; 2 uses
  %.not.i73 = icmp eq ptr %i.ca, %i.bu
  br i1 %.not.i73, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75, label %.lr.ph.i69, !llvm.loop !227

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72, %.preheader77
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 304) #26
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !26  ; 2 uses
  %.not = icmp ult i8 %i.bp, %i.cd
  br i1 %.not, label %bb.g, label %.preheader77, !llvm.loop !231

bb.g:                                             ; preds = %bb.f
  %i.ce = zext i8 %i.bp to i64
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_right_to_leftEhPSE_PSC_:bb.a
  store ptr %0, ptr %i.di, align 8, !tbaa !211
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !232

bb.g:                                             ; preds = %.lr.ph63, %bb.g
  %.062 = phi i8 [ 0, %.lr.ph63 ], [ %i.dt, %bb.g ] ; 4 uses
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_right_to_leftEhPSE_PSC_:bb.a
  %i.dw = zext i8 %i.dv to i32
  %i.dx = sub nsw i32 %i.dw, %i.x
  %.not = icmp slt i32 %i.dx, %i.du
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !233

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57
  %i.dy = load i8, ptr %i.a, align 1, !tbaa !26
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_left_to_rightEhPSE_PSC_:bb.a
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.du = and i64 %indvars.iv.next.1, 255
  %.not58.1 = icmp eq i64 %i.du, 0
  br i1 %.not58.1, label %.preheader, label %.lr.ph.new, !llvm.loop !234

bb.g:                                             ; preds = %bb.g, %.lr.ph63.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph63.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_left_to_rightEhPSE_PSC_:bb.a
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !235

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 10 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !26  ; 2 uses
  %i.aq = icmp ult i8 %i.ak, %i.ap
  %i.ar = zext i8 %i.ak to i64                    ; 4 uses
  br i1 %i.aq, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_:bb.a
  %i.ce = zext i8 %i.cb to i32
  %i.cf = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.cg = icmp samesign ult i32 %i.cf, %i.ce
  br i1 %i.cg, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.h
  %4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 240 ; 10 uses
  %5 = zext i8 %i.cb to i64                       ; 4 uses
  %6 = zext nneg i32 %i.cf to i64
  %7 = xor i64 %i.ar, -1
  %8 = add nsw i64 %7, %5
  %9 = add nsw i64 %5, -2
  %10 = sub nsw i64 %9, %i.ar
  %xtraiter = and i64 %8, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.lr.ph.i27.a

.lr.ph.i27.a:                                     ; preds = %.lr.ph.i27, %.lr.ph.i27.a
  %indvars.iv.prol = phi i64 [ %11, %.lr.ph.i27.a ], [ %5, %.lr.ph.i27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i27.a ], [ 0, %.lr.ph.i27 ]
  %11 = add nsw i64 %indvars.iv.prol, -1          ; 3 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !211    ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.prol
  store ptr %13, ptr %14, align 8, !tbaa !211
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %15, ptr %i.ch, align 1, !tbaa !26
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.lr.ph.i27.a, !llvm.loop !236

.prol.loopexit:                                   ; preds = %.lr.ph.i27.a, %.lr.ph.i27
  %indvars.iv.unr = phi i64 [ %5, %.lr.ph.i27 ], [ %11, %.lr.ph.i27.a ]
  %16 = icmp ult i64 %10, 3
  br i1 %16, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit, label %bb.i

bb.i:                                             ; preds = %.prol.loopexit, %bb.i
  %indvars.iv = phi i64 [ %31, %bb.i ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %17 = add nsw i64 %indvars.iv, -1               ; 3 uses
  %18 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !211    ; 2 uses
  %20 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store ptr %19, ptr %20, align 8, !tbaa !211
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %22 = trunc nuw i64 %indvars.iv to i8
  store i8 %22, ptr %21, align 1, !tbaa !26
  %23 = add nsw i64 %indvars.iv, -2               ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %23
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !211 ; 2 uses
  %24 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %17
  store ptr %i.cj, ptr %24, align 8, !tbaa !211
  %25 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %26 = trunc nuw i64 %17 to i8
  store i8 %26, ptr %25, align 1, !tbaa !26
  %27 = add nsw i64 %indvars.iv, -3               ; 3 uses
  %28 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !211    ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %23
  store ptr %29, ptr %i.ck, align 8, !tbaa !211
  %i.cl = getelementptr inbounds nuw i8, ptr %29, i64 8
  %30 = trunc nuw i64 %23 to i8
  store i8 %30, ptr %i.cl, align 1, !tbaa !26
  %31 = add nsw i64 %indvars.iv, -4               ; 3 uses
  %32 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !211    ; 2 uses
  %34 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %27
  store ptr %33, ptr %34, align 8, !tbaa !211
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %36 = trunc nuw i64 %27 to i8
  store i8 %36, ptr %35, align 1, !tbaa !26
  %.wide.3 = icmp ugt i64 %31, %6
  br i1 %.wide.3, label %bb.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit, !llvm.loop !237

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit: ; preds = %.prol.loopexit, %bb.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i, %bb.h
  %i.cm = load i8, ptr %i.h, align 1, !tbaa !26
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.cn ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_:bb.a
  %i.dl = add i8 %.02530, 1                       ; 2 uses
  %i.dm = load i8, ptr %i.j, align 1, !tbaa !26
  %.not = icmp ugt i8 %i.dl, %i.dm
  br i1 %.not, label %.loopexit, label %bb.k, !llvm.loop !238

.loopexit:                                        ; preds = %bb.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit
  ret void
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE:bb.a
._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !239

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bd, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
end_hunk_17
begin_hunk_18_@llvm.umin.i8
!220 = !{!217, !207, i64 0}
!221 = distinct !{!221, !117}
!222 = distinct !{!222, !117}
!223 = distinct !{!223, !224}
!224 = !{!"llvm.loop.unroll.disable"}
!225 = distinct !{!225, !117}
!226 = !{!206, !207, i64 0}
!227 = distinct !{!227, !117}
!228 = distinct !{!228, !117}
!229 = distinct !{!229, !117}
end_hunk_18
begin_hunk_19_@llvm.umin.i8
!233 = distinct !{!233, !117}
!234 = distinct !{!234, !117}
!235 = distinct !{!235, !117}
!236 = distinct !{!236, !224}
!237 = distinct !{!237, !117}
!238 = distinct !{!238, !117}
!239 = distinct !{!239, !117}
end_hunk_19
