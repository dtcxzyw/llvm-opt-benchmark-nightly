inline.NumInlined: 24579
inline.NumDeleted: 2912
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEENS0_9iter_sizeIT_E4typeESL_SN_SN_SN_RT1_T0_:bb.a
  %i.ge = or disjoint i64 %i.gd, -144115188075855872
  %i.gf = select i1 %i.gc, i64 %i.gd, i64 %i.ge   ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i, i64 %i.gf ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !973, !noalias !12072
  %i.gi = shl nsw i64 %i.gf, 7
  %i.gj = sub nsw i64 %i.ga, %i.gi
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gj
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit65

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit65: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit60, %bb.ac, %bb.ad
  %.sroa.6.1.i63 = phi ptr [ %.sroa.6.1.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit60 ], [ %.sroa.6.1.i, %bb.ac ], [ %i.gg, %bb.ad ]
  %.sroa.0.0.i64 = phi ptr [ %.sroa.0.0.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit60 ], [ %i.gb, %bb.ac ], [ %i.gk, %bb.ad ]
  store ptr %.sroa.0.0.i64, ptr %11, align 8, !tbaa !1931, !alias.scope !12072
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.6.1.i63, ptr %i.gl, align 8, !tbaa !1934, !alias.scope !12072
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZN5boost7movelib10rotate_gcdINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEEEET_SA_SA_SA_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator") align 8 %12, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit45, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit65
  %.0 = phi i64 [ %i.fb, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit65 ], [ %i.ca, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit45 ], [ %i.ca, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1 ], [ %i.ca, %.lr.ph.i.prol.loopexit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12075)
  %i.gm = sub nsw i64 0, %.0
  %.not.i.i.i66 = icmp eq i64 %.0, 0
  br i1 %.not.i.i.i66, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit70, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit
  %i.gn = load ptr, ptr %.sroa.6.1.i, align 8, !tbaa !973, !noalias !12075
  %i.go = ptrtoint ptr %.sroa.0.0.i to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 3
  %i.gs = sub nsw i64 %i.gr, %.0                  ; 4 uses
  %or.cond.i.i.i67 = icmp ult i64 %i.gs, 128
  br i1 %or.cond.i.i.i67, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gt = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i, i64 %i.gm
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit70

bb.ag:                                            ; preds = %bb.ae
  %i.gu = icmp sgt i64 %i.gs, 0
  %i.gv = lshr i64 %i.gs, 7                       ; 2 uses
  %i.gw = or disjoint i64 %i.gv, -144115188075855872
  %i.gx = select i1 %i.gu, i64 %i.gv, i64 %i.gw   ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !973, !noalias !12075
  %i.ha = shl nsw i64 %i.gx, 7
  %i.hb = sub nsw i64 %i.gs, %i.ha
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.hb
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit70

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit70: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit55, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit, %bb.af, %bb.ag
  %.0156 = phi i64 [ 0, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit ], [ %.0, %bb.af ], [ %.0, %bb.ag ], [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit55 ] ; 2 uses
  %.sroa.6.1.i68 = phi ptr [ %.sroa.6.1.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit ], [ %.sroa.6.1.i, %bb.af ], [ %i.gy, %bb.ag ], [ %.sroa.6.1.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit55 ]
  %.sroa.0.0.i69 = phi ptr [ %.sroa.0.0.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit ], [ %i.gt, %bb.af ], [ %i.hc, %bb.ag ], [ %.sroa.0.0.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit55 ]
  store ptr %.sroa.0.0.i69, ptr %13, align 8, !tbaa !1931, !alias.scope !12075
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.6.1.i68, ptr %i.hd, align 8, !tbaa !1934, !alias.scope !12075
  %i.he = sub i64 %3, %.0156
  %i.hf = call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESK_SM_SM_SM_SM_T0_T1_(ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %i.t, i64 noundef %.0156, i64 noundef %3, i64 noundef %i.he) ; 0 uses
  %i.hg = icmp eq i64 %i.x, %3
  %or.cond = and i1 %.not, %i.hg
  %i.hh = load ptr, ptr %0, align 8, !tbaa !1931  ; 2 uses
  br i1 %or.cond, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit70
  store ptr %i.hh, ptr %14, align 8, !tbaa !1931
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hj = load ptr, ptr %i.b, align 8, !tbaa !1934
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISJ_E4typeESM_T0_T1_(ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %i.t, i64 noundef %3)
  %i.hk = load ptr, ptr %4, align 8, !tbaa !1224  ; 6 uses
  %.idx131 = shl i64 %3, 3                        ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx131
  %i.hm = load ptr, ptr %0, align 8, !tbaa !1931  ; 4 uses
  %i.hn = load ptr, ptr %i.b, align 8, !tbaa !1934 ; 4 uses
  %.pre133 = load ptr, ptr %i.hn, align 8, !tbaa !973, !noalias !12078 ; 3 uses
  %i.ho = add i64 %.idx131, -8                    ; 2 uses
  %i.hp = and i64 %i.ho, 8
  %lcmp.mod160.not.not = icmp eq i64 %i.hp, 0
  br i1 %lcmp.mod160.not.not, label %.lr.ph.i75.prol, label %.lr.ph.i75.prol.loopexit

.lr.ph.i75.prol:                                  ; preds = %bb.ah
  %i.hq = load i32, ptr %i.hk, align 4, !tbaa !802, !noalias !12078
  store i32 %i.hq, ptr %i.hm, align 4, !tbaa !802, !noalias !12078
  store i32 0, ptr %i.hk, align 4, !tbaa !802, !noalias !12078
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ht = load i32, ptr %i.hr, align 4, !tbaa !802, !noalias !12078
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !802, !noalias !12078
  store i32 0, ptr %i.hr, align 4, !tbaa !802, !noalias !12078
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.pre133, i64 1024
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.ai, label %.lr.ph.i75.prol.loopexit, !prof !35

bb.ai:                                            ; preds = %.lr.ph.i75.prol
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !973, !noalias !12078 ; 2 uses
  br label %.lr.ph.i75.prol.loopexit

.lr.ph.i75.prol.loopexit:                         ; preds = %.lr.ph.i75.prol, %bb.ai, %bb.ah
  %.unr161 = phi ptr [ %.pre133, %bb.ah ], [ %.pre133, %.lr.ph.i75.prol ], [ %i.hz, %bb.ai ]
  %.unr162 = phi ptr [ %i.hn, %bb.ah ], [ %i.hn, %.lr.ph.i75.prol ], [ %i.hy, %bb.ai ]
  %.unr163 = phi ptr [ %i.hm, %bb.ah ], [ %i.hv, %.lr.ph.i75.prol ], [ %i.hz, %bb.ai ]
  %.05.i76.unr = phi ptr [ %i.hk, %bb.ah ], [ %i.hu, %bb.ai ], [ %i.hu, %.lr.ph.i75.prol ]
  %i.ia = icmp eq i64 %i.ho, 0
  br i1 %i.ia, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit79, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77.1
  %i.ib = phi ptr [ %i.jb, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77.1 ], [ %.unr161, %.lr.ph.i75.prol.loopexit ] ; 2 uses
  %i.ic = phi ptr [ %i.jc, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77.1 ], [ %.unr162, %.lr.ph.i75.prol.loopexit ] ; 2 uses
  %i.id = phi ptr [ %i.jd, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77.1 ], [ %.unr163, %.lr.ph.i75.prol.loopexit ] ; 3 uses
  %.05.i76 = phi ptr [ %i.iv, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77.1 ], [ %.05.i76.unr, %.lr.ph.i75.prol.loopexit ] ; 6 uses
  %i.ie = load i32, ptr %.05.i76, align 4, !tbaa !802, !noalias !12078
  store i32 %i.ie, ptr %i.id, align 4, !tbaa !802, !noalias !12078
  store i32 0, ptr %.05.i76, align 4, !tbaa !802, !noalias !12078
  %i.if = getelementptr inbounds nuw i8, ptr %.05.i76, i64 4 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.ih = load i32, ptr %i.if, align 4, !tbaa !802, !noalias !12078
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !802, !noalias !12078
  store i32 0, ptr %i.if, align 4, !tbaa !802, !noalias !12078
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i76, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 1024
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %bb.aj, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77, !prof !35

bb.aj:                                            ; preds = %.lr.ph.i75
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !973, !noalias !12078 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77: ; preds = %bb.aj, %.lr.ph.i75
  %i.io = phi ptr [ %i.ib, %.lr.ph.i75 ], [ %i.in, %bb.aj ] ; 2 uses
  %i.ip = phi ptr [ %i.ic, %.lr.ph.i75 ], [ %i.im, %bb.aj ] ; 2 uses
  %i.iq = phi ptr [ %i.ij, %.lr.ph.i75 ], [ %i.in, %bb.aj ] ; 3 uses
  %i.ir = load i32, ptr %i.ii, align 4, !tbaa !802, !noalias !12078
  store i32 %i.ir, ptr %i.iq, align 4, !tbaa !802, !noalias !12078
  store i32 0, ptr %i.ii, align 4, !tbaa !802, !noalias !12078
  %i.is = getelementptr inbounds nuw i8, ptr %.05.i76, i64 12 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.iu = load i32, ptr %i.is, align 4, !tbaa !802, !noalias !12078
  store i32 %i.iu, ptr %i.it, align 4, !tbaa !802, !noalias !12078
  store i32 0, ptr %i.is, align 4, !tbaa !802, !noalias !12078
  %i.iv = getelementptr inbounds nuw i8, ptr %.05.i76, i64 16 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 1024
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %bb.ak, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77.1, !prof !35

bb.ak:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !973, !noalias !12078 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77.1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77.1: ; preds = %bb.ak, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77
  %i.jb = phi ptr [ %i.io, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77 ], [ %i.ja, %bb.ak ]
  %i.jc = phi ptr [ %i.ip, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77 ], [ %i.iz, %bb.ak ]
  %i.jd = phi ptr [ %i.iw, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77 ], [ %i.ja, %bb.ak ]
  %.not.i78.1 = icmp eq ptr %i.iv, %i.hl
  br i1 %.not.i78.1, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit79, label %.lr.ph.i75, !llvm.loop !10501

bb.al:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit70
  store ptr %i.hh, ptr %15, align 8, !tbaa !1931
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.jf = load ptr, ptr %i.b, align 8, !tbaa !1934
  store ptr %i.jf, ptr %i.je, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7swap_opEEEvT_NS0_9iter_sizeISJ_E4typeESM_T0_T1_(ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %i.t, i64 noundef %3)
  br label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit79

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit79: ; preds = %.lr.ph.i75.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i77.1, %bb.al
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !1222 ; 2 uses
  %.not.i80 = icmp eq i64 %i.jh, 0
  br i1 %.not.i80, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit79
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = shl i32 %i.ji, 1
  %i.jk = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.jj
  store i32 %i.jk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.jg, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit79, %.preheader.i.i
  %i.jl = shl i64 %3, 1
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.jl)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEbT_RNS0_9iter_sizeISK_E4typeESK_SN_SN_SO_RT1_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %17 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !36     ; 7 uses
  %18 = load ptr, ptr %2, align 8, !tbaa !1931, !noalias !12081 ; 4 uses
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %19, align 8, !tbaa !1934, !noalias !12081 ; 5 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.thread, label %bb.b

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.thread: ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !36
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !973, !noalias !12081
  %i.f = ptrtoint ptr %18 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, %i.b                   ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.j, 128
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds [8 x i8], ptr %18, i64 %i.b
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp sgt i64 %i.j, 0
  %i.m = lshr i64 %i.j, 7                         ; 2 uses
  %i.n = or disjoint i64 %i.m, -144115188075855872
  %i.o = select i1 %i.l, i64 %i.m, i64 %i.n       ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !973, !noalias !12081
  %i.r = shl nsw i64 %i.o, 7
  %i.s = sub nsw i64 %i.j, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.s
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit: ; preds = %bb.c, %bb.d
  %.sroa.6.1.i = phi ptr [ %i.p, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.t, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.u = sub i64 %3, %i.b                         ; 4 uses
  %i.v = load i64, ptr %1, align 8, !tbaa !36
  %i.w = add i64 %i.v, %i.b                       ; 3 uses
  %.not226 = icmp ugt i64 %i.u, %4
  br i1 %.not226, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1225
  %.not227 = icmp ugt i64 %i.b, %i.y
  br i1 %.not227, label %.thread, label %.thread.thread

.thread:                                          ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.thread, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, %bb.e
  %.sroa.6.1.i217223 = phi ptr [ %.sroa.6.1.i, %bb.e ], [ %i.c, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.thread ], [ %.sroa.6.1.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ]
  %.sroa.0.0.i218222 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %18, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.thread ], [ %.sroa.0.0.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ]
  %i.z = phi i64 [ %i.u, %bb.e ], [ %3, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.thread ], [ %i.u, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ] ; 2 uses
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.thread ], [ %i.w, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ] ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %4
  br i1 %i.ab, label %.lr.ph, label %.thread272

.thread.thread:                                   ; preds = %bb.e
  store ptr %18, ptr %7, align 8, !tbaa !1931
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.ac, align 8, !tbaa !1934
  call void @_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignINS3_14deque_iteratorIS7_Lb0ELj0ELj0EmEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.b)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.ad = phi i64 [ %i.w, %.thread.thread ], [ %i.aa, %.thread ]
  %i.ae = phi i64 [ %i.u, %.thread.thread ], [ %i.z, %.thread ] ; 8 uses
  %.sroa.0.0.i218222280 = phi ptr [ %.sroa.0.0.i, %.thread.thread ], [ %.sroa.0.0.i218222, %.thread ] ; 13 uses
  %.sroa.6.1.i217223279 = phi ptr [ %.sroa.6.1.i, %.thread.thread ], [ %.sroa.6.1.i217223, %.thread ] ; 22 uses
  %i.af = phi i1 [ true, %.thread.thread ], [ false, %.thread ] ; 7 uses
  %i.ag = ptrtoint ptr %.sroa.0.0.i218222280 to i64 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.ar
  %i.aq = select i1 %.1, i1 %i.bb, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !36
  %i.ar = sub i64 %i.ad, %spec.select
  store i64 %i.ar, ptr %1, align 8, !tbaa !36
  br i1 %i.af, label %bb.as, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit

.thread272:                                       ; preds = %.thread
  store i64 0, ptr %5, align 8, !tbaa !36
  store i64 %i.aa, ptr %1, align 8, !tbaa !36
  br label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit

bb.f:                                             ; preds = %.lr.ph, %bb.ar
  %.0236 = phi i64 [ %4, %.lr.ph ], [ %i.au, %bb.ar ] ; 5 uses
  %.0111235 = phi i1 [ true, %.lr.ph ], [ %i.bb, %bb.ar ]
  %.0112234 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.ar ] ; 8 uses
  %.0113233 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.ar ] ; 3 uses
  %.0114232 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.ar ]
  %.0115231 = phi i64 [ 0, %.lr.ph ], [ %i.gt, %bb.ar ] ; 3 uses
  %i.as = load i64, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.at = load i64, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.au = shl i64 %.0236, 1                       ; 6 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %bb.g, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.g:                                             ; preds = %bb.f
  %i.av = lshr i64 %i.at, 1                       ; 3 uses
  %i.aw = sub i64 %i.at, %i.av                    ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, 3
  br i1 %i.ax, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.ay = udiv i64 %i.au, %i.av
  %.not229 = icmp ult i64 %i.aw, %i.ay
  br i1 %.not229, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.g, %bb.h
  %i.az = udiv i64 %i.au, %i.at
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.f, %bb.h, %.critedge.i
  %.1 = phi i1 [ true, %bb.h ], [ false, %.critedge.i ], [ true, %bb.f ] ; 10 uses
  %.1.i = phi i64 [ %i.av, %bb.h ], [ %i.az, %.critedge.i ], [ %i.as, %bb.f ] ; 16 uses
  %i.ba = and i64 %.0115231, 1
  %i.bb = icmp eq i64 %i.ba, 0                    ; 9 uses
  %i.bc = urem i64 %i.ae, %i.au                   ; 2 uses
  %.not.i123 = icmp ugt i64 %i.bc, %.0236
  %i.bd = select i1 %.not.i123, i64 0, i64 %i.bc
  %spec.select15.i = sub nuw i64 %i.ae, %i.bd     ; 5 uses
  %i.be = icmp ne i64 %.0115231, 0
  %or.cond = and i1 %i.be, %.0114232
  %or.cond3 = select i1 %or.cond, i1 %.0111235, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.bb, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !12084)
  %i.bf = sub nsw i64 0, %.0113233
  %.not.i.i.i = icmp eq i64 %.0113233, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %.sroa.6.1.i217223279, align 8, !tbaa !973, !noalias !12084
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.ag, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = sub nsw i64 %i.bj, %.0113233            ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.bk, 128
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i218222280, i64 %i.bf
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit

bb.m:                                             ; preds = %bb.k
  %i.bm = icmp sgt i64 %i.bk, 0
  %i.bn = lshr i64 %i.bk, 7                       ; 2 uses
  %i.bo = or disjoint i64 %i.bn, -144115188075855872
  %i.bp = select i1 %i.bm, i64 %i.bn, i64 %i.bo   ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i217223279, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !973, !noalias !12084
  %i.bs = shl nsw i64 %i.bp, 7
  %i.bt = sub nsw i64 %i.bk, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bt
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.6.1.i124 = phi ptr [ %.sroa.6.1.i217223279, %bb.j ], [ %.sroa.6.1.i217223279, %bb.l ], [ %i.bq, %bb.m ]
  %.sroa.0.0.i125 = phi ptr [ %.sroa.0.0.i218222280, %bb.j ], [ %i.bl, %bb.l ], [ %i.bu, %bb.m ]
  store ptr %.sroa.0.0.i125, ptr %8, align 8, !tbaa !1931, !alias.scope !12084
  store ptr %.sroa.6.1.i124, ptr %i.ah, align 8, !tbaa !1934, !alias.scope !12084
  store ptr %.sroa.0.0.i218222280, ptr %9, align 8, !tbaa !1931
  store ptr %.sroa.6.1.i217223279, ptr %i.ai, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive18move_data_backwardINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeISB_E4typeESB_b(ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %.0112234, ptr noundef nonnull align 8 dead_on_return %9, i1 noundef zeroext %i.af)
  br label %bb.ac

bb.n:                                             ; preds = %bb.i
  %.not.i.i126 = icmp eq i64 %.0112234, 0
  br i1 %.not.i.i126, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit130, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %.sroa.6.1.i217223279, align 8, !tbaa !973, !noalias !12087
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.ag, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = add nsw i64 %i.by, %.0112234            ; 4 uses
  %or.cond.i.i127 = icmp ult i64 %i.bz, 128
  br i1 %or.cond.i.i127, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i218222280, i64 %.0112234
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit130

bb.q:                                             ; preds = %bb.o
  %i.cb = icmp sgt i64 %i.bz, 0
  %i.cc = lshr i64 %i.bz, 7                       ; 2 uses
  %i.cd = or disjoint i64 %i.cc, -144115188075855872
  %i.ce = select i1 %i.cb, i64 %i.cc, i64 %i.cd   ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i217223279, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !973, !noalias !12087
  %i.ch = shl nsw i64 %i.ce, 7
  %i.ci = sub nsw i64 %i.bz, %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ci
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit130

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit130: ; preds = %bb.n, %bb.p, %bb.q
  %.sroa.6.1.i128 = phi ptr [ %.sroa.6.1.i217223279, %bb.n ], [ %.sroa.6.1.i217223279, %bb.p ], [ %i.cf, %bb.q ] ; 8 uses
  %.sroa.0.0.i129 = phi ptr [ %.sroa.0.0.i218222280, %bb.n ], [ %i.ca, %bb.p ], [ %i.cj, %bb.q ] ; 6 uses
  %i.ck = sub nsw i64 0, %.1.i
  %.not.i.i.i131 = icmp eq i64 %.1.i, 0
  br i1 %.not.i.i.i131, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit135, label %bb.r

bb.r:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit130
  %i.cl = load ptr, ptr %.sroa.6.1.i128, align 8, !tbaa !973, !noalias !12090
  %i.cm = ptrtoint ptr %.sroa.0.0.i129 to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = sub nsw i64 %i.cp, %.1.i                ; 4 uses
  %or.cond.i.i.i132 = icmp ult i64 %i.cq, 128
  br i1 %or.cond.i.i.i132, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i129, i64 %i.ck
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit135

bb.t:                                             ; preds = %bb.r
  %i.cs = icmp sgt i64 %i.cq, 0
  %i.ct = lshr i64 %i.cq, 7                       ; 2 uses
  %i.cu = or disjoint i64 %i.ct, -144115188075855872
  %i.cv = select i1 %i.cs, i64 %i.ct, i64 %i.cu   ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i128, i64 %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !973, !noalias !12090
  %i.cy = shl nsw i64 %i.cv, 7
  %i.cz = sub nsw i64 %i.cq, %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cz
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit135

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit135: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit130, %bb.s, %bb.t
  %.sroa.6.1.i133 = phi ptr [ %.sroa.6.1.i128, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit130 ], [ %.sroa.6.1.i128, %bb.s ], [ %i.cw, %bb.t ] ; 4 uses
  %.sroa.0.0.i134 = phi ptr [ %.sroa.0.0.i129, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit130 ], [ %i.cr, %bb.s ], [ %i.da, %bb.t ] ; 3 uses
  %i.db = icmp ugt i64 %.0112234, %spec.select15.i
  br i1 %i.db, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit135
  %i.dc = sub nuw i64 %.0112234, %spec.select15.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12093)
  %i.dd = sub nsw i64 0, %i.dc                    ; 2 uses
  %i.de = load ptr, ptr %.sroa.6.1.i133, align 8, !tbaa !973, !noalias !12093
  %i.df = ptrtoint ptr %.sroa.0.0.i134 to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 3
  %i.dj = sub nsw i64 %i.di, %i.dc                ; 4 uses
  %or.cond.i.i.i137 = icmp ult i64 %i.dj, 128
  br i1 %or.cond.i.i.i137, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i134, i64 %i.dd
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dl = icmp sgt i64 %i.dj, 0
  %i.dm = lshr i64 %i.dj, 7                       ; 2 uses
  %i.dn = or disjoint i64 %i.dm, -144115188075855872
  %i.do = select i1 %i.dl, i64 %i.dm, i64 %i.dn   ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i133, i64 %i.do ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !973, !noalias !12093
  %i.dr = shl nsw i64 %i.do, 7
  %i.ds = sub nsw i64 %i.dj, %i.dr
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ds
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.6.1.i138.ph = phi ptr [ %i.dp, %bb.w ], [ %.sroa.6.1.i133, %bb.v ]
  %.sroa.0.0.i139.ph = phi ptr [ %i.dt, %bb.w ], [ %i.dk, %bb.v ]
  store ptr %.sroa.0.0.i139.ph, ptr %10, align 8, !tbaa !1931, !alias.scope !12093
  store ptr %.sroa.6.1.i138.ph, ptr %i.al, align 8, !tbaa !1934, !alias.scope !12093
  %i.du = load ptr, ptr %.sroa.6.1.i128, align 8, !tbaa !973, !noalias !12096
  %i.dv = ptrtoint ptr %.sroa.0.0.i129 to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 3
  %i.dz = sub nsw i64 %i.dy, %i.dc                ; 4 uses
  %or.cond.i.i.i142 = icmp ult i64 %i.dz, 128
  br i1 %or.cond.i.i.i142, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i129, i64 %i.dd
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit145

bb.z:                                             ; preds = %bb.x
  %i.eb = icmp sgt i64 %i.dz, 0
  %i.ec = lshr i64 %i.dz, 7                       ; 2 uses
  %i.ed = or disjoint i64 %i.ec, -144115188075855872
  %i.ee = select i1 %i.eb, i64 %i.ec, i64 %i.ed   ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i128, i64 %i.ee ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !973, !noalias !12096
  %i.eh = shl nsw i64 %i.ee, 7
  %i.ei = sub nsw i64 %i.dz, %i.eh
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ei
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit145

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit145: ; preds = %bb.y, %bb.z
  %.sroa.6.1.i143 = phi ptr [ %i.ef, %bb.z ], [ %.sroa.6.1.i128, %bb.y ]
  %.sroa.0.0.i144 = phi ptr [ %i.ej, %bb.z ], [ %i.ea, %bb.y ]
  store ptr %.sroa.0.0.i144, ptr %11, align 8, !tbaa !1931, !alias.scope !12096
  store ptr %.sroa.6.1.i143, ptr %i.am, align 8, !tbaa !1934, !alias.scope !12096
  call void @_ZN5boost7movelib15detail_adaptive18move_data_backwardINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeISB_E4typeESB_b(ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.dc, ptr noundef nonnull align 8 dead_on_return %11, i1 noundef zeroext %i.af)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit135
  %i.ek = icmp ult i64 %.0112234, %spec.select15.i
  br i1 %i.ek, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.el = sub nuw i64 %spec.select15.i, %.0112234
  store ptr %.sroa.0.0.i129, ptr %12, align 8, !tbaa !1931
  store ptr %.sroa.6.1.i128, ptr %i.aj, align 8, !tbaa !1934
  store ptr %.sroa.0.0.i134, ptr %13, align 8, !tbaa !1931
  store ptr %.sroa.6.1.i133, ptr %i.ak, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeISB_E4typeESB_b(ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.el, ptr noundef nonnull align 8 dead_on_return %13, i1 noundef zeroext %i.af)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit145, %bb.ab, %bb.aa, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.em = load i64, ptr %1, align 8, !tbaa !36
  %.not121 = icmp eq i64 %i.em, 0
  br i1 %.not121, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = udiv i64 %i.au, %.1.i
  %i.eo = icmp ugt i64 %i.en, 256
  br i1 %i.eo, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load <2 x ptr>, ptr %0, align 8, !tbaa !2154
  store <2 x ptr> %i.ep, ptr %14, align 16, !tbaa !2154
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.bb
  br i1 %or.cond8, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit150, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eq = load ptr, ptr %.sroa.6.1.i217223279, align 8, !tbaa !973, !noalias !12099
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = sub i64 %i.ag, %i.er
  %i.et = ashr exact i64 %i.es, 3
  %i.eu = sub nsw i64 %i.et, %.1.i                ; 4 uses
  %or.cond.i.i.i147 = icmp ult i64 %i.eu, 128
  br i1 %or.cond.i.i.i147, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ev = sub nsw i64 0, %.1.i
  %i.ew = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i218222280, i64 %i.ev
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit150

bb.ah:                                            ; preds = %bb.af
  %i.ex = icmp sgt i64 %i.eu, 0
  %i.ey = lshr i64 %i.eu, 7                       ; 2 uses
  %i.ez = or disjoint i64 %i.ey, -144115188075855872
  %i.fa = select i1 %i.ex, i64 %i.ey, i64 %i.ez   ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i217223279, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !973, !noalias !12099
  %i.fd = shl nsw i64 %i.fa, 7
  %i.fe = sub nsw i64 %i.eu, %i.fd
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fe
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit150

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit150: ; preds = %bb.ah, %bb.ag, %bb.ae
  %storemerge265 = phi ptr [ %.sroa.0.0.i218222280, %bb.ae ], [ %i.ff, %bb.ah ], [ %i.ew, %bb.ag ]
  %storemerge264 = phi ptr [ %.sroa.6.1.i217223279, %bb.ae ], [ %i.fb, %bb.ah ], [ %.sroa.6.1.i217223279, %bb.ag ]
  store ptr %storemerge265, ptr %15, align 8, !tbaa !1931
  store ptr %storemerge264, ptr %i.ao, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b(ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %i.ae, i64 noundef %.0236, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %i.af, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.bb)
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.bb
  br i1 %or.cond11, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit155, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load ptr, ptr %.sroa.6.1.i217223279, align 8, !tbaa !973, !noalias !12102
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = sub i64 %i.ag, %i.fh
  %i.fj = ashr exact i64 %i.fi, 3
  %i.fk = sub nsw i64 %i.fj, %.1.i                ; 4 uses
  %or.cond.i.i.i152 = icmp ult i64 %i.fk, 128
  br i1 %or.cond.i.i.i152, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fl = sub nsw i64 0, %.1.i
  %i.fm = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i218222280, i64 %i.fl
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit155

bb.al:                                            ; preds = %bb.aj
  %i.fn = icmp sgt i64 %i.fk, 0
  %i.fo = lshr i64 %i.fk, 7                       ; 2 uses
  %i.fp = or disjoint i64 %i.fo, -144115188075855872
  %i.fq = select i1 %i.fn, i64 %i.fo, i64 %i.fp   ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i217223279, i64 %i.fq ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !973, !noalias !12102
  %i.ft = shl nsw i64 %i.fq, 7
  %i.fu = sub nsw i64 %i.fk, %i.ft
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fu
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit155

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit155: ; preds = %bb.al, %bb.ak, %bb.ai
  %storemerge263 = phi ptr [ %.sroa.0.0.i218222280, %bb.ai ], [ %i.fv, %bb.al ], [ %i.fm, %bb.ak ]
  %storemerge = phi ptr [ %.sroa.6.1.i217223279, %bb.ai ], [ %i.fr, %bb.al ], [ %.sroa.6.1.i217223279, %bb.ak ]
  store ptr %storemerge263, ptr %16, align 8, !tbaa !1931
  store ptr %storemerge, ptr %i.an, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessENS_9container14deque_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_13adaptive_xbufISA_SB_mEEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %i.ae, i64 noundef %.0236, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %i.af, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ar

bb.am:                                            ; preds = %bb.ac
  %i.fw = load i64, ptr %i.ap, align 8, !tbaa !1222
  %i.fx = load ptr, ptr %6, align 8, !tbaa !1224
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fw
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = add i64 %i.fz, 7
  %i.gb = and i64 %i.ga, -8
  %i.gc = inttoptr i64 %i.gb to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.bb
  br i1 %or.cond14, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit160, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gd = sub nsw i64 0, %.1.i
  %.not.i.i.i156 = icmp eq i64 %.1.i, 0
  br i1 %.not.i.i.i156, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit160, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ge = load ptr, ptr %.sroa.6.1.i217223279, align 8, !tbaa !973, !noalias !12105
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.ag, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3
  %i.gi = sub nsw i64 %i.gh, %.1.i                ; 4 uses
  %or.cond.i.i.i157 = icmp ult i64 %i.gi, 128
  br i1 %or.cond.i.i.i157, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gj = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i218222280, i64 %i.gd
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit160

bb.aq:                                            ; preds = %bb.ao
  %i.gk = icmp sgt i64 %i.gi, 0
  %i.gl = lshr i64 %i.gi, 7                       ; 2 uses
  %i.gm = or disjoint i64 %i.gl, -144115188075855872
  %i.gn = select i1 %i.gk, i64 %i.gl, i64 %i.gm   ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i217223279, i64 %i.gn ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !973, !noalias !12105
  %i.gq = shl nsw i64 %i.gn, 7
  %i.gr = sub nsw i64 %i.gi, %i.gq
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.gr
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit160

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit160: ; preds = %bb.aq, %bb.ap, %bb.an, %bb.am
  %storemerge267 = phi ptr [ %.sroa.0.0.i218222280, %bb.am ], [ %.sroa.0.0.i218222280, %bb.an ], [ %i.gj, %bb.ap ], [ %i.gs, %bb.aq ]
  %storemerge266 = phi ptr [ %.sroa.6.1.i217223279, %bb.am ], [ %.sroa.6.1.i217223279, %bb.an ], [ %.sroa.6.1.i217223279, %bb.ap ], [ %i.go, %bb.aq ]
  store ptr %storemerge267, ptr %17, align 8, !tbaa !1931
  store ptr %storemerge266, ptr %20, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_13adaptive_xbufISA_SB_mEEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_bbRT3_T2_b(ptr noundef %i.gc, ptr noundef nonnull align 8 dead_on_return %17, i64 noundef %i.ae, i64 noundef %.0236, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %i.af, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.bb)
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit150, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit155, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit160
  %i.gt = add i64 %.0115231, 1
  %i.gu = icmp ugt i64 %i.ae, %i.au
  br i1 %i.gu, label %bb.f, label %._crit_edge, !llvm.loop !12108

bb.as:                                            ; preds = %._crit_edge
  %i.gv = load ptr, ptr %6, align 8, !tbaa !1224  ; 11 uses
  %i.gw = load i64, ptr %5, align 8, !tbaa !36    ; 3 uses
  %.idx228275 = shl i64 %i.gw, 3                  ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx228275 ; 2 uses
  br i1 %i.aq, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.gy = load ptr, ptr %2, align 8, !tbaa !1931, !noalias !12109 ; 2 uses
  %i.gz = load ptr, ptr %19, align 8, !tbaa !1934, !noalias !12109 ; 3 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !973, !noalias !12109
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = ashr exact i64 %i.hd, 3
  %i.hf = add nsw i64 %i.he, %i.ae                ; 4 uses
  %or.cond.i.i162 = icmp ult i64 %i.hf, 128
  br i1 %or.cond.i.i162, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.ae
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit165

bb.av:                                            ; preds = %bb.at
  %i.hh = icmp sgt i64 %i.hf, 0
  %i.hi = lshr i64 %i.hf, 7                       ; 2 uses
  %i.hj = or disjoint i64 %i.hi, -144115188075855872
  %i.hk = select i1 %i.hh, i64 %i.hi, i64 %i.hj   ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.hk ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !973, !noalias !12109
  %i.hn = shl nsw i64 %i.hk, 7
  %i.ho = sub nsw i64 %i.hf, %i.hn
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ho
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit165

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit165: ; preds = %bb.au, %bb.av
  %.sroa.6.1.i163 = phi ptr [ %i.hl, %bb.av ], [ %i.gz, %bb.au ] ; 4 uses
  %.sroa.0.0.i164 = phi ptr [ %i.hp, %bb.av ], [ %i.hg, %bb.au ] ; 4 uses
  %.not4.i = icmp eq i64 %i.gw, 0
  br i1 %.not4.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit165
  %.pre240 = load ptr, ptr %.sroa.6.1.i163, align 8, !tbaa !973, !noalias !12112 ; 3 uses
  %i.hq = add i64 %.idx228275, -8                 ; 2 uses
  %i.hr = and i64 %i.hq, 8
  %lcmp.mod287.not.not = icmp eq i64 %i.hr, 0
  br i1 %lcmp.mod287.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.hs = load i32, ptr %i.gv, align 4, !tbaa !802, !noalias !12112
  store i32 %i.hs, ptr %.sroa.0.0.i164, align 4, !tbaa !802, !noalias !12112
  store i32 0, ptr %i.gv, align 4, !tbaa !802, !noalias !12112
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i164, i64 4
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !802, !noalias !12112
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !802, !noalias !12112
  store i32 0, ptr %i.ht, align 4, !tbaa !802, !noalias !12112
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i164, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.pre240, i64 1024
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %bb.aw, label %.lr.ph.i.prol.loopexit, !prof !35

bb.aw:                                            ; preds = %.lr.ph.i.prol
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i163, i64 8 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !973, !noalias !12112 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %bb.aw, %.lr.ph.i.preheader
  %.unr288 = phi ptr [ %.pre240, %.lr.ph.i.preheader ], [ %.pre240, %.lr.ph.i.prol ], [ %i.ib, %bb.aw ]
  %.unr289 = phi ptr [ %.sroa.6.1.i163, %.lr.ph.i.preheader ], [ %.sroa.6.1.i163, %.lr.ph.i.prol ], [ %i.ia, %bb.aw ]
  %.unr290 = phi ptr [ %.sroa.0.0.i164, %.lr.ph.i.preheader ], [ %i.hx, %.lr.ph.i.prol ], [ %i.ib, %bb.aw ]
  %.05.i.unr = phi ptr [ %i.gv, %.lr.ph.i.preheader ], [ %i.hw, %bb.aw ], [ %i.hw, %.lr.ph.i.prol ]
  %i.ic = icmp eq i64 %i.hq, 0
  br i1 %i.ic, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1
  %i.id = phi ptr [ %i.jd, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1 ], [ %.unr288, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ie = phi ptr [ %i.je, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1 ], [ %.unr289, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.if = phi ptr [ %i.jf, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1 ], [ %.unr290, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.05.i = phi ptr [ %i.ix, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1 ], [ %.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ig = load i32, ptr %.05.i, align 4, !tbaa !802, !noalias !12112
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !802, !noalias !12112
  store i32 0, ptr %.05.i, align 4, !tbaa !802, !noalias !12112
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i, i64 4 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !802, !noalias !12112
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !802, !noalias !12112
  store i32 0, ptr %i.ih, align 4, !tbaa !802, !noalias !12112
  %i.ik = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 1024
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %bb.ax, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i, !prof !35

bb.ax:                                            ; preds = %.lr.ph.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !973, !noalias !12112 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.ax, %.lr.ph.i
  %i.iq = phi ptr [ %i.id, %.lr.ph.i ], [ %i.ip, %bb.ax ] ; 2 uses
  %i.ir = phi ptr [ %i.ie, %.lr.ph.i ], [ %i.io, %bb.ax ] ; 2 uses
  %i.is = phi ptr [ %i.il, %.lr.ph.i ], [ %i.ip, %bb.ax ] ; 3 uses
  %i.it = load i32, ptr %i.ik, align 4, !tbaa !802, !noalias !12112
  store i32 %i.it, ptr %i.is, align 4, !tbaa !802, !noalias !12112
  store i32 0, ptr %i.ik, align 4, !tbaa !802, !noalias !12112
  %i.iu = getelementptr inbounds nuw i8, ptr %.05.i, i64 12 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iw = load i32, ptr %i.iu, align 4, !tbaa !802, !noalias !12112
  store i32 %i.iw, ptr %i.iv, align 4, !tbaa !802, !noalias !12112
  store i32 0, ptr %i.iu, align 4, !tbaa !802, !noalias !12112
  %i.ix = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 1024
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %bb.ay, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1, !prof !35

bb.ay:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !973, !noalias !12112 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1: ; preds = %bb.ay, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i
  %i.jd = phi ptr [ %i.iq, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ], [ %i.jc, %bb.ay ]
  %i.je = phi ptr [ %i.ir, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ], [ %i.jb, %bb.ay ]
  %i.jf = phi ptr [ %i.iy, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ], [ %i.jc, %bb.ay ]
  %.not.i166.1 = icmp eq ptr %i.ix, %i.gx
  br i1 %.not.i166.1, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !10501

bb.az:                                            ; preds = %bb.as
  %.not4.i167 = icmp eq i64 %i.gw, 0
  br i1 %.not4.i167, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit, label %.lr.ph.i171.preheader

.lr.ph.i171.preheader:                            ; preds = %bb.az
  %i.jg = load ptr, ptr %19, align 8, !tbaa !1934 ; 4 uses
  %i.jh = load ptr, ptr %2, align 8, !tbaa !1931  ; 4 uses
  %.pre = load ptr, ptr %i.jg, align 8, !tbaa !973, !noalias !12115 ; 3 uses
  %i.ji = add i64 %.idx228275, -8                 ; 2 uses
  %i.jj = and i64 %i.ji, 8
  %lcmp.mod.not.not = icmp eq i64 %i.jj, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i171.prol, label %.lr.ph.i171.prol.loopexit

.lr.ph.i171.prol:                                 ; preds = %.lr.ph.i171.preheader
  %i.jk = load i32, ptr %i.gv, align 4, !tbaa !802, !noalias !12115
  store i32 %i.jk, ptr %i.jh, align 4, !tbaa !802, !noalias !12115
  store i32 0, ptr %i.gv, align 4, !tbaa !802, !noalias !12115
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !802, !noalias !12115
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !802, !noalias !12115
  store i32 0, ptr %i.jl, align 4, !tbaa !802, !noalias !12115
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre, i64 1024
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.ba, label %.lr.ph.i171.prol.loopexit, !prof !35

bb.ba:                                            ; preds = %.lr.ph.i171.prol
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !973, !noalias !12115 ; 2 uses
  br label %.lr.ph.i171.prol.loopexit

.lr.ph.i171.prol.loopexit:                        ; preds = %.lr.ph.i171.prol, %bb.ba, %.lr.ph.i171.preheader
  %.unr = phi ptr [ %.pre, %.lr.ph.i171.preheader ], [ %.pre, %.lr.ph.i171.prol ], [ %i.jt, %bb.ba ]
  %.unr284 = phi ptr [ %i.jg, %.lr.ph.i171.preheader ], [ %i.jg, %.lr.ph.i171.prol ], [ %i.js, %bb.ba ]
  %.unr285 = phi ptr [ %i.jh, %.lr.ph.i171.preheader ], [ %i.jp, %.lr.ph.i171.prol ], [ %i.jt, %bb.ba ]
  %.05.i172.unr = phi ptr [ %i.gv, %.lr.ph.i171.preheader ], [ %i.jo, %bb.ba ], [ %i.jo, %.lr.ph.i171.prol ]
  %i.ju = icmp eq i64 %i.ji, 0
  br i1 %i.ju, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %.lr.ph.i171.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1
  %i.jv = phi ptr [ %i.kv, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1 ], [ %.unr, %.lr.ph.i171.prol.loopexit ] ; 2 uses
  %i.jw = phi ptr [ %i.kw, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1 ], [ %.unr284, %.lr.ph.i171.prol.loopexit ] ; 2 uses
  %i.jx = phi ptr [ %i.kx, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1 ], [ %.unr285, %.lr.ph.i171.prol.loopexit ] ; 3 uses
  %.05.i172 = phi ptr [ %i.kp, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1 ], [ %.05.i172.unr, %.lr.ph.i171.prol.loopexit ] ; 6 uses
  %i.jy = load i32, ptr %.05.i172, align 4, !tbaa !802, !noalias !12115
  store i32 %i.jy, ptr %i.jx, align 4, !tbaa !802, !noalias !12115
  store i32 0, ptr %.05.i172, align 4, !tbaa !802, !noalias !12115
  %i.jz = getelementptr inbounds nuw i8, ptr %.05.i172, i64 4 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.kb = load i32, ptr %i.jz, align 4, !tbaa !802, !noalias !12115
  store i32 %i.kb, ptr %i.ka, align 4, !tbaa !802, !noalias !12115
  store i32 0, ptr %i.jz, align 4, !tbaa !802, !noalias !12115
  %i.kc = getelementptr inbounds nuw i8, ptr %.05.i172, i64 8 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 1024
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %bb.bb, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173, !prof !35

bb.bb:                                            ; preds = %.lr.ph.i171
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !973, !noalias !12115 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173: ; preds = %bb.bb, %.lr.ph.i171
  %i.ki = phi ptr [ %i.jv, %.lr.ph.i171 ], [ %i.kh, %bb.bb ] ; 2 uses
  %i.kj = phi ptr [ %i.jw, %.lr.ph.i171 ], [ %i.kg, %bb.bb ] ; 2 uses
  %i.kk = phi ptr [ %i.kd, %.lr.ph.i171 ], [ %i.kh, %bb.bb ] ; 3 uses
  %i.kl = load i32, ptr %i.kc, align 4, !tbaa !802, !noalias !12115
  store i32 %i.kl, ptr %i.kk, align 4, !tbaa !802, !noalias !12115
  store i32 0, ptr %i.kc, align 4, !tbaa !802, !noalias !12115
  %i.km = getelementptr inbounds nuw i8, ptr %.05.i172, i64 12 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !802, !noalias !12115
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !802, !noalias !12115
  store i32 0, ptr %i.km, align 4, !tbaa !802, !noalias !12115
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i172, i64 16 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 1024
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %bb.bc, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1, !prof !35

bb.bc:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !973, !noalias !12115 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1: ; preds = %bb.bc, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173
  %i.kv = phi ptr [ %i.ki, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173 ], [ %i.ku, %bb.bc ]
  %i.kw = phi ptr [ %i.kj, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173 ], [ %i.kt, %bb.bc ]
  %i.kx = phi ptr [ %i.kq, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173 ], [ %i.ku, %bb.bc ]
  %.not.i174.1 = icmp eq ptr %i.kp, %i.gx
  br i1 %.not.i174.1, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit, label %.lr.ph.i171, !llvm.loop !10501

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i171.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1, %.lr.ph.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1, %.thread272, %bb.az, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit165, %._crit_edge
  %i.ky = phi i1 [ true, %.thread272 ], [ true, %.lr.ph.i.prol.loopexit ], [ %i.aq, %._crit_edge ], [ false, %bb.az ], [ true, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit165 ], [ true, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.1 ], [ false, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i173.1 ], [ false, %.lr.ph.i171.prol.loopexit ]
  ret i1 %i.ky
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvbT_NS0_9iter_sizeISK_E4typeESN_SN_RT1_T0_(i1 noundef zeroext %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %17 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1
  %22 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %23 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %24 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %25 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %26 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %27 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %28 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %29 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %30 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %31 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %32 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %33 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %34 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %35 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %36 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %37 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1222 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.a, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %bb.a, %.preheader.i.i
  %i.f = add i64 %3, %2                           ; 10 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !1931   ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1934 ; 16 uses
  br i1 %0, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit
  %.not.i.i = icmp eq i64 %4, 0                   ; 5 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !973, !noalias !12118
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = add nsw i64 %i.n, %4                     ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.o, 128
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds [8 x i8], ptr %i.g, i64 %4
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp sgt i64 %i.o, 0
  %i.r = lshr i64 %i.o, 7                         ; 2 uses
  %i.s = or disjoint i64 %i.r, -144115188075855872
  %i.t = select i1 %i.q, i64 %i.r, i64 %i.s       ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !973, !noalias !12118
  %i.w = shl nsw i64 %i.t, 7
  %i.x = sub nsw i64 %i.o, %i.w
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.x
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.6.1.i = phi ptr [ %i.i, %bb.b ], [ %i.i, %bb.d ], [ %i.u, %bb.e ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.b ], [ %i.p, %bb.d ], [ %i.y, %bb.e ] ; 3 uses
  %i.z = sub nsw i64 0, %2                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %2, 0                 ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit
  %i.aa = load ptr, ptr %.sroa.6.1.i, align 8, !tbaa !973, !noalias !12121
  %i.ab = ptrtoint ptr %.sroa.0.0.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = sub nsw i64 %i.ae, %2                   ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.af, 128
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i, i64 %i.z
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit
end_hunk_0
