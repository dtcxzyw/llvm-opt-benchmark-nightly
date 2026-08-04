inline.NumInlined: 24952
inline.NumDeleted: 2814
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_:bb.a

bb.ag:                                            ; preds = %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit
  %i.hf = load ptr, ptr %.sroa.6.1.i, align 8, !tbaa !75, !noalias !15529
  %i.hg = ptrtoint ptr %.sroa.0.0.i to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = ashr exact i64 %i.hi, 2
  %i.hk = sub nsw i64 %i.hj, %.0                  ; 4 uses
  %or.cond.i.i.i67 = icmp ult i64 %i.hk, 256
  br i1 %or.cond.i.i.i67, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hl = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i, i64 %i.he
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit70

bb.ai:                                            ; preds = %bb.ag
  %i.hm = icmp sgt i64 %i.hk, 0
  %i.hn = lshr i64 %i.hk, 8                       ; 2 uses
  %i.ho = or disjoint i64 %i.hn, -72057594037927936
  %i.hp = select i1 %i.hm, i64 %i.hn, i64 %i.ho   ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i, i64 %i.hp ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !75, !noalias !15529
  %i.hs = shl nsw i64 %i.hp, 8
  %i.ht = sub nsw i64 %i.hk, %i.hs
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.ht
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit70

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit70: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit55, %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit, %bb.ah, %bb.ai
  %.0155 = phi i64 [ 0, %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit ], [ %.0, %bb.ah ], [ %.0, %bb.ai ], [ 0, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit55 ] ; 2 uses
  %.sroa.6.1.i68 = phi ptr [ %.sroa.6.1.i, %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit ], [ %.sroa.6.1.i, %bb.ah ], [ %i.hq, %bb.ai ], [ %.sroa.6.1.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit55 ]
  %.sroa.0.0.i69 = phi ptr [ %.sroa.0.0.i, %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit ], [ %i.hl, %bb.ah ], [ %i.hu, %bb.ai ], [ %.sroa.0.0.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit55 ]
  store ptr %.sroa.0.0.i69, ptr %13, align 8, !tbaa !1889, !alias.scope !15529
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.6.1.i68, ptr %i.hv, align 8, !tbaa !13016, !alias.scope !15529
  %i.hw = sub i64 %3, %.0155
  %i.hx = call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %i.t, i64 noundef %.0155, i64 noundef %3, i64 noundef %i.hw) ; 0 uses
  %i.hy = icmp eq i64 %i.x, %3
  %or.cond = and i1 %.not, %i.hy
  %i.hz = load ptr, ptr %0, align 8, !tbaa !1889  ; 2 uses
  br i1 %or.cond, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit70
  store ptr %i.hz, ptr %14, align 8, !tbaa !1889
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ib = load ptr, ptr %i.b, align 8, !tbaa !13016
  store ptr %i.ib, ptr %i.ia, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %i.t, i64 noundef %3)
  %i.ic = load ptr, ptr %4, align 8, !tbaa !2564  ; 3 uses
  %.idx131 = shl i64 %3, 2                        ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.idx131
  %i.ie = load ptr, ptr %0, align 8, !tbaa !1889  ; 2 uses
  %i.if = load ptr, ptr %i.b, align 8, !tbaa !13016 ; 3 uses
  %.pre133 = load ptr, ptr %i.if, align 8, !tbaa !75, !noalias !15532 ; 2 uses
  %i.ig = add i64 %.idx131, -4                    ; 2 uses
  %i.ih = lshr exact i64 %i.ig, 2
  %i.ii = add nuw nsw i64 %i.ih, 1
  %xtraiter158 = and i64 %i.ii, 3                 ; 2 uses
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol

.lr.ph.i75.prol:                                  ; preds = %bb.aj, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol
  %i.ij = phi ptr [ %i.it, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol ], [ %.pre133, %bb.aj ] ; 2 uses
  %i.ik = phi ptr [ %i.iu, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol ], [ %i.if, %bb.aj ] ; 2 uses
  %i.il = phi ptr [ %i.iv, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol ], [ %i.ie, %bb.aj ] ; 2 uses
  %.05.i76.prol = phi ptr [ %i.in, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol ], [ %i.ic, %bb.aj ] ; 2 uses
  %prol.iter160 = phi i64 [ %prol.iter160.next, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol ], [ 0, %bb.aj ]
  %i.im = load i32, ptr %.05.i76.prol, align 4, !tbaa !69, !noalias !15532
  store i32 %i.im, ptr %i.il, align 4, !tbaa !69, !noalias !15532
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i76.prol, i64 4 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 1024
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %bb.ak, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol, !prof !204

bb.ak:                                            ; preds = %.lr.ph.i75.prol
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !75, !noalias !15532 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol: ; preds = %bb.ak, %.lr.ph.i75.prol
  %i.it = phi ptr [ %i.ij, %.lr.ph.i75.prol ], [ %i.is, %bb.ak ] ; 2 uses
  %i.iu = phi ptr [ %i.ik, %.lr.ph.i75.prol ], [ %i.ir, %bb.ak ] ; 2 uses
  %i.iv = phi ptr [ %i.io, %.lr.ph.i75.prol ], [ %i.is, %bb.ak ] ; 2 uses
  %prol.iter160.next = add i64 %prol.iter160, 1   ; 2 uses
  %prol.iter160.cmp.not = icmp eq i64 %prol.iter160.next, %xtraiter158
  br i1 %prol.iter160.cmp.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol, !llvm.loop !15535

.lr.ph.i75.prol.loopexit:                         ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol, %bb.aj
  %.unr161 = phi ptr [ %.pre133, %bb.aj ], [ %i.it, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol ]
  %.unr162 = phi ptr [ %i.if, %bb.aj ], [ %i.iu, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol ]
  %.unr163 = phi ptr [ %i.ie, %bb.aj ], [ %i.iv, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol ]
  %.05.i76.unr = phi ptr [ %i.ic, %bb.aj ], [ %i.in, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.prol ]
  %i.iw = icmp ult i64 %i.ig, 12
  br i1 %i.iw, label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit79, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.prol.loopexit, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.3
  %i.ix = phi ptr [ %i.kl, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.3 ], [ %.unr161, %.lr.ph.i75.prol.loopexit ] ; 2 uses
  %i.iy = phi ptr [ %i.km, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.3 ], [ %.unr162, %.lr.ph.i75.prol.loopexit ] ; 2 uses
  %i.iz = phi ptr [ %i.kn, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.3 ], [ %.unr163, %.lr.ph.i75.prol.loopexit ] ; 2 uses
  %.05.i76 = phi ptr [ %i.kf, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.3 ], [ %.05.i76.unr, %.lr.ph.i75.prol.loopexit ] ; 5 uses
  %i.ja = load i32, ptr %.05.i76, align 4, !tbaa !69, !noalias !15532
  store i32 %i.ja, ptr %i.iz, align 4, !tbaa !69, !noalias !15532
  %i.jb = getelementptr inbounds nuw i8, ptr %.05.i76, i64 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 1024
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %bb.al, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77, !prof !204

bb.al:                                            ; preds = %.lr.ph.i75
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !75, !noalias !15532 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77: ; preds = %bb.al, %.lr.ph.i75
  %i.jh = phi ptr [ %i.ix, %.lr.ph.i75 ], [ %i.jg, %bb.al ] ; 2 uses
  %i.ji = phi ptr [ %i.iy, %.lr.ph.i75 ], [ %i.jf, %bb.al ] ; 2 uses
  %i.jj = phi ptr [ %i.jc, %.lr.ph.i75 ], [ %i.jg, %bb.al ] ; 2 uses
  %i.jk = load i32, ptr %i.jb, align 4, !tbaa !69, !noalias !15532
  store i32 %i.jk, ptr %i.jj, align 4, !tbaa !69, !noalias !15532
  %i.jl = getelementptr inbounds nuw i8, ptr %.05.i76, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 1024
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.am, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.1, !prof !204

bb.am:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !75, !noalias !15532 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.1

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.1: ; preds = %bb.am, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77
  %i.jr = phi ptr [ %i.jh, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77 ], [ %i.jq, %bb.am ] ; 2 uses
  %i.js = phi ptr [ %i.ji, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77 ], [ %i.jp, %bb.am ] ; 2 uses
  %i.jt = phi ptr [ %i.jm, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77 ], [ %i.jq, %bb.am ] ; 2 uses
  %i.ju = load i32, ptr %i.jl, align 4, !tbaa !69, !noalias !15532
  store i32 %i.ju, ptr %i.jt, align 4, !tbaa !69, !noalias !15532
  %i.jv = getelementptr inbounds nuw i8, ptr %.05.i76, i64 12
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 4 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 1024
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %bb.an, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.2, !prof !204

bb.an:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !75, !noalias !15532 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.2

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.2: ; preds = %bb.an, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.1
  %i.kb = phi ptr [ %i.jr, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.1 ], [ %i.ka, %bb.an ] ; 2 uses
  %i.kc = phi ptr [ %i.js, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.1 ], [ %i.jz, %bb.an ] ; 2 uses
  %i.kd = phi ptr [ %i.jw, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.1 ], [ %i.ka, %bb.an ] ; 2 uses
  %i.ke = load i32, ptr %i.jv, align 4, !tbaa !69, !noalias !15532
  store i32 %i.ke, ptr %i.kd, align 4, !tbaa !69, !noalias !15532
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i76, i64 16 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 4 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 1024
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %bb.ao, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.3, !prof !204

bb.ao:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.2
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !75, !noalias !15532 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.3

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.3: ; preds = %bb.ao, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.2
  %i.kl = phi ptr [ %i.kb, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.2 ], [ %i.kk, %bb.ao ]
  %i.km = phi ptr [ %i.kc, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.2 ], [ %i.kj, %bb.ao ]
  %i.kn = phi ptr [ %i.kg, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.2 ], [ %i.kk, %bb.ao ]
  %.not.i78.3 = icmp eq ptr %i.kf, %i.id
  br i1 %.not.i78.3, label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit79, label %.lr.ph.i75, !llvm.loop !14188

bb.ap:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit70
  store ptr %i.hz, ptr %15, align 8, !tbaa !1889
  %i.ko = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kp = load ptr, ptr %i.b, align 8, !tbaa !13016
  store ptr %i.kp, ptr %i.ko, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %i.t, i64 noundef %3)
  br label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit79

_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit79: ; preds = %.lr.ph.i75.prol.loopexit, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i77.3, %bb.ap
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !2566
  %.not.i80 = icmp eq i64 %i.kr, 0
  br i1 %.not.i80, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit79
  store i64 0, ptr %i.kq, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit79, %.preheader.preheader.i.i
  %i.ks = shl i64 %3, 1
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.ks)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !272    ; 7 uses
  %16 = load ptr, ptr %2, align 8, !tbaa !1889, !noalias !15536 ; 4 uses
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %17, align 8, !tbaa !13016, !noalias !15536 ; 5 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.thread, label %bb.b

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.thread: ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !272
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !75, !noalias !15536
  %i.f = ptrtoint ptr %16 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = add nsw i64 %i.i, %i.b                   ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.j, 256
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds [4 x i8], ptr %16, i64 %i.b
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp sgt i64 %i.j, 0
  %i.m = lshr i64 %i.j, 8                         ; 2 uses
  %i.n = or disjoint i64 %i.m, -72057594037927936
  %i.o = select i1 %i.l, i64 %i.m, i64 %i.n       ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75, !noalias !15536
  %i.r = shl nsw i64 %i.o, 8
  %i.s = sub nsw i64 %i.j, %i.r
  %i.t = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.s
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit: ; preds = %bb.c, %bb.d
  %.sroa.6.1.i = phi ptr [ %i.p, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.t, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.u = sub i64 %3, %i.b                         ; 4 uses
  %i.v = load i64, ptr %1, align 8, !tbaa !272
  %i.w = add i64 %i.v, %i.b                       ; 3 uses
  %.not234 = icmp ugt i64 %i.u, %4
  br i1 %.not234, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !2567
  %.not235 = icmp ugt i64 %i.b, %i.y
  br i1 %.not235, label %.thread, label %.thread.thread

.thread:                                          ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.thread, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit, %bb.e
  %.sroa.6.1.i225231 = phi ptr [ %.sroa.6.1.i, %bb.e ], [ %i.c, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.thread ], [ %.sroa.6.1.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit ]
  %.sroa.0.0.i226230 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %16, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.thread ], [ %.sroa.0.0.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit ]
  %i.z = phi i64 [ %i.u, %bb.e ], [ %3, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.thread ], [ %i.u, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit ] ; 2 uses
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.thread ], [ %i.w, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit ] ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %4
  br i1 %i.ab, label %.lr.ph, label %.thread288

.thread.thread:                                   ; preds = %bb.e
  store ptr %16, ptr %7, align 8, !tbaa !1889
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.ac, align 8, !tbaa !13016
  call void @_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container14deque_iteratorIS2_Lb0ELj0ELj0EmEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.b)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.ad = phi i64 [ %i.w, %.thread.thread ], [ %i.aa, %.thread ]
  %i.ae = phi i64 [ %i.u, %.thread.thread ], [ %i.z, %.thread ] ; 8 uses
  %.sroa.0.0.i226230293 = phi ptr [ %.sroa.0.0.i, %.thread.thread ], [ %.sroa.0.0.i226230, %.thread ] ; 13 uses
  %.sroa.6.1.i225231292 = phi ptr [ %.sroa.6.1.i, %.thread.thread ], [ %.sroa.6.1.i225231, %.thread ] ; 22 uses
  %i.af = phi i1 [ true, %.thread.thread ], [ false, %.thread ] ; 7 uses
  %i.ag = ptrtoint ptr %.sroa.0.0.i226230293 to i64 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.ba
  %i.ao = select i1 %.1, i1 %i.az, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !272
  %i.ap = sub i64 %i.ad, %spec.select
  store i64 %i.ap, ptr %1, align 8, !tbaa !272
  br i1 %i.af, label %bb.bb, label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit

.thread288:                                       ; preds = %.thread
  store i64 0, ptr %5, align 8, !tbaa !272
  store i64 %i.aa, ptr %1, align 8, !tbaa !272
  br label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit

bb.f:                                             ; preds = %.lr.ph, %bb.ba
  %.0245 = phi i64 [ %4, %.lr.ph ], [ %i.as, %bb.ba ] ; 5 uses
  %.0111244 = phi i1 [ true, %.lr.ph ], [ %i.az, %bb.ba ]
  %.0112243 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.ba ] ; 8 uses
  %.0113242 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.ba ] ; 3 uses
  %.0114241 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.ba ]
  %.0115240 = phi i64 [ 0, %.lr.ph ], [ %i.iw, %bb.ba ] ; 3 uses
  %i.aq = load i64, ptr %5, align 8, !tbaa !272   ; 2 uses
  %i.ar = load i64, ptr %1, align 8, !tbaa !272   ; 3 uses
  %i.as = shl i64 %.0245, 1                       ; 6 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.g, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.g:                                             ; preds = %bb.f
  %i.at = lshr i64 %i.ar, 1                       ; 3 uses
  %i.au = sub i64 %i.ar, %i.at                    ; 2 uses
  %i.av = icmp ugt i64 %i.au, 3
  br i1 %i.av, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.aw = udiv i64 %i.as, %i.at
  %.not237 = icmp ult i64 %i.au, %i.aw
  br i1 %.not237, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.g, %bb.h
  %i.ax = udiv i64 %i.as, %i.ar
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.f, %bb.h, %.critedge.i
  %.1 = phi i1 [ true, %bb.h ], [ false, %.critedge.i ], [ true, %bb.f ] ; 10 uses
  %.1.i = phi i64 [ %i.at, %bb.h ], [ %i.ax, %.critedge.i ], [ %i.aq, %bb.f ] ; 16 uses
  %i.ay = and i64 %.0115240, 1
  %i.az = icmp eq i64 %i.ay, 0                    ; 9 uses
  %i.ba = urem i64 %i.ae, %i.as                   ; 2 uses
  %.not.i123 = icmp ugt i64 %i.ba, %.0245
  %i.bb = select i1 %.not.i123, i64 0, i64 %i.ba
  %spec.select15.i = sub nuw i64 %i.ae, %i.bb     ; 5 uses
  %i.bc = icmp ne i64 %.0115240, 0
  %or.cond = and i1 %i.bc, %.0114241
  %or.cond3 = select i1 %or.cond, i1 %.0111244, i1 false
  br i1 %or.cond3, label %bb.i, label %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.az, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15539)
  %i.bd = sub nsw i64 0, %.0113242
  %.not.i.i.i = icmp eq i64 %.0113242, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %.sroa.6.1.i225231292, align 8, !tbaa !75, !noalias !15539
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.ag, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = sub nsw i64 %i.bh, %.0113242            ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.bi, 256
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i226230293, i64 %i.bd
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit

bb.m:                                             ; preds = %bb.k
  %i.bk = icmp sgt i64 %i.bi, 0
  %i.bl = lshr i64 %i.bi, 8                       ; 2 uses
  %i.bm = or disjoint i64 %i.bl, -72057594037927936
  %i.bn = select i1 %i.bk, i64 %i.bl, i64 %i.bm   ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i225231292, i64 %i.bn ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !75, !noalias !15539
  %i.bq = shl nsw i64 %i.bn, 8
  %i.br = sub nsw i64 %i.bi, %i.bq
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.br
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.6.1.i124 = phi ptr [ %.sroa.6.1.i225231292, %bb.j ], [ %.sroa.6.1.i225231292, %bb.l ], [ %i.bo, %bb.m ]
  %.sroa.0.0.i125 = phi ptr [ %.sroa.0.0.i226230293, %bb.j ], [ %i.bj, %bb.l ], [ %i.bs, %bb.m ]
  store ptr %.sroa.0.0.i125, ptr %8, align 8, !tbaa !1889, !alias.scope !15539
  store ptr %.sroa.6.1.i124, ptr %i.ah, align 8, !tbaa !13016, !alias.scope !15539
  store ptr %.sroa.0.0.i226230293, ptr %9, align 8, !tbaa !1889
  store ptr %.sroa.6.1.i225231292, ptr %i.ai, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive18move_data_backwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b(ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %.0112243, ptr noundef nonnull align 8 dead_on_return %9, i1 noundef zeroext %i.af)
  br label %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.n:                                             ; preds = %bb.i
  %.not.i.i126 = icmp eq i64 %.0112243, 0
  br i1 %.not.i.i126, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit130, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %.sroa.6.1.i225231292, align 8, !tbaa !75, !noalias !15542
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.ag, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = add nsw i64 %i.bw, %.0112243            ; 4 uses
  %or.cond.i.i127 = icmp ult i64 %i.bx, 256
  br i1 %or.cond.i.i127, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i226230293, i64 %.0112243
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit130

bb.q:                                             ; preds = %bb.o
  %i.bz = icmp sgt i64 %i.bx, 0
  %i.ca = lshr i64 %i.bx, 8                       ; 2 uses
  %i.cb = or disjoint i64 %i.ca, -72057594037927936
  %i.cc = select i1 %i.bz, i64 %i.ca, i64 %i.cb   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i225231292, i64 %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !75, !noalias !15542
  %i.cf = shl nsw i64 %i.cc, 8
  %i.cg = sub nsw i64 %i.bx, %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cg
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit130

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit130: ; preds = %bb.n, %bb.p, %bb.q
  %.sroa.6.1.i128 = phi ptr [ %.sroa.6.1.i225231292, %bb.n ], [ %.sroa.6.1.i225231292, %bb.p ], [ %i.cd, %bb.q ] ; 12 uses
  %.sroa.0.0.i129 = phi ptr [ %.sroa.0.0.i226230293, %bb.n ], [ %i.by, %bb.p ], [ %i.ch, %bb.q ] ; 12 uses
  %i.ci = sub nsw i64 0, %.1.i
  %.not.i.i.i131 = icmp eq i64 %.1.i, 0
  br i1 %.not.i.i.i131, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit135, label %bb.r

bb.r:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit130
  %i.cj = load ptr, ptr %.sroa.6.1.i128, align 8, !tbaa !75, !noalias !15545
  %i.ck = ptrtoint ptr %.sroa.0.0.i129 to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  %i.co = sub nsw i64 %i.cn, %.1.i                ; 4 uses
  %or.cond.i.i.i132 = icmp ult i64 %i.co, 256
  br i1 %or.cond.i.i.i132, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i129, i64 %i.ci
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit135

bb.t:                                             ; preds = %bb.r
  %i.cq = icmp sgt i64 %i.co, 0
  %i.cr = lshr i64 %i.co, 8                       ; 2 uses
  %i.cs = or disjoint i64 %i.cr, -72057594037927936
  %i.ct = select i1 %i.cq, i64 %i.cr, i64 %i.cs   ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i128, i64 %i.ct ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !75, !noalias !15545
  %i.cw = shl nsw i64 %i.ct, 8
  %i.cx = sub nsw i64 %i.co, %i.cw
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cx
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit135

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit135: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit130, %bb.s, %bb.t
  %.sroa.6.1.i133 = phi ptr [ %.sroa.6.1.i128, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit130 ], [ %.sroa.6.1.i128, %bb.s ], [ %i.cu, %bb.t ] ; 5 uses
  %.sroa.0.0.i134 = phi ptr [ %.sroa.0.0.i129, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit130 ], [ %i.cp, %bb.s ], [ %i.cy, %bb.t ] ; 4 uses
  %i.cz = icmp ugt i64 %.0112243, %spec.select15.i
  br i1 %i.cz, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit135
  %i.da = sub nuw i64 %.0112243, %spec.select15.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15548)
  %i.db = sub nsw i64 0, %i.da                    ; 2 uses
  %i.dc = load ptr, ptr %.sroa.6.1.i133, align 8, !tbaa !75, !noalias !15548
  %i.dd = ptrtoint ptr %.sroa.0.0.i134 to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 2
  %i.dh = sub nsw i64 %i.dg, %i.da                ; 4 uses
  %or.cond.i.i.i137 = icmp ult i64 %i.dh, 256
  br i1 %or.cond.i.i.i137, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i134, i64 %i.db
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dj = icmp sgt i64 %i.dh, 0
  %i.dk = lshr i64 %i.dh, 8                       ; 2 uses
  %i.dl = or disjoint i64 %i.dk, -72057594037927936
  %i.dm = select i1 %i.dj, i64 %i.dk, i64 %i.dl   ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i133, i64 %i.dm ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !75, !noalias !15548
  %i.dp = shl nsw i64 %i.dm, 8
  %i.dq = sub nsw i64 %i.dh, %i.dp
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dq
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.6.1.i138.ph = phi ptr [ %i.dn, %bb.w ], [ %.sroa.6.1.i133, %bb.v ]
  %.sroa.0.0.i139.ph = phi ptr [ %i.dr, %bb.w ], [ %i.di, %bb.v ]
  store ptr %.sroa.0.0.i139.ph, ptr %10, align 8, !tbaa !1889, !alias.scope !15548
  store ptr %.sroa.6.1.i138.ph, ptr %i.aj, align 8, !tbaa !13016, !alias.scope !15548
  %i.ds = load ptr, ptr %.sroa.6.1.i128, align 8, !tbaa !75, !noalias !15551
  %i.dt = ptrtoint ptr %.sroa.0.0.i129 to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 2
  %i.dx = sub nsw i64 %i.dw, %i.da                ; 4 uses
  %or.cond.i.i.i142 = icmp ult i64 %i.dx, 256
  br i1 %or.cond.i.i.i142, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dy = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i129, i64 %i.db
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit145

bb.z:                                             ; preds = %bb.x
  %i.dz = icmp sgt i64 %i.dx, 0
  %i.ea = lshr i64 %i.dx, 8                       ; 2 uses
  %i.eb = or disjoint i64 %i.ea, -72057594037927936
  %i.ec = select i1 %i.dz, i64 %i.ea, i64 %i.eb   ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i128, i64 %i.ec ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !75, !noalias !15551
  %i.ef = shl nsw i64 %i.ec, 8
  %i.eg = sub nsw i64 %i.dx, %i.ef
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.eg
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit145

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit145: ; preds = %bb.y, %bb.z
  %.sroa.6.1.i143 = phi ptr [ %i.ed, %bb.z ], [ %.sroa.6.1.i128, %bb.y ]
  %.sroa.0.0.i144 = phi ptr [ %i.eh, %bb.z ], [ %i.dy, %bb.y ]
  store ptr %.sroa.0.0.i144, ptr %11, align 8, !tbaa !1889, !alias.scope !15551
  store ptr %.sroa.6.1.i143, ptr %i.ak, align 8, !tbaa !13016, !alias.scope !15551
  call void @_ZN5boost7movelib15detail_adaptive18move_data_backwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b(ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.da, ptr noundef nonnull align 8 dead_on_return %11, i1 noundef zeroext %i.af)
  br label %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.aa:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit135
  %i.ei = icmp ult i64 %.0112243, %spec.select15.i
  br i1 %i.ei, label %bb.ab, label %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ej = sub nuw i64 %spec.select15.i, %.0112243 ; 3 uses
  %i.ek = load ptr, ptr %.sroa.6.1.i128, align 8, !tbaa !75, !noalias !1789 ; 3 uses
  %i.el = ptrtoint ptr %.sroa.0.0.i129 to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 2
  %i.ep = add nsw i64 %i.eo, %i.ej                ; 7 uses
  %or.cond.i.i.i147 = icmp ult i64 %i.ep, 256     ; 2 uses
  br i1 %i.af, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  br i1 %or.cond.i.i.i147, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i129, i64 %i.ej
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.er = icmp sgt i64 %i.ep, 0
  %i.es = lshr i64 %i.ep, 8                       ; 2 uses
  %i.et = or disjoint i64 %i.es, -72057594037927936
  %i.eu = select i1 %i.er, i64 %i.es, i64 %i.et   ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i128, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !75, !noalias !15554
  %i.ex = shl nsw i64 %i.eu, 8
  %i.ey = sub nsw i64 %i.ep, %i.ex
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ey
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i: ; preds = %bb.ae, %bb.ad
  %.sroa.0.0.i.i = phi ptr [ %i.ez, %bb.ae ], [ %i.eq, %bb.ad ] ; 2 uses
  %.not2.i.i = icmp eq ptr %.sroa.0.0.i129, %.sroa.0.0.i.i
  br i1 %.not2.i.i, label %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i
  %i.fa = phi ptr [ %i.fi, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i ], [ %i.ek, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i ] ; 2 uses
  %.sroa.026.0.i = phi ptr [ %.sroa.026.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i ], [ %.sroa.0.0.i134, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i ] ; 2 uses
  %.sroa.527.0.i = phi ptr [ %.sroa.527.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i ], [ %.sroa.6.1.i133, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i ] ; 3 uses
  %.sroa.533.0.i = phi ptr [ %.sroa.533.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i ], [ %.sroa.6.1.i128, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i ] ; 2 uses
  %i.fb = phi ptr [ %.sroa.031.0.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i ], [ %.sroa.0.0.i129, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i ] ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !69, !noalias !15557
  store i32 %i.fc, ptr %.sroa.026.0.i, align 4, !tbaa !69, !noalias !15557
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 1024
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.af, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i, !prof !204

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.533.0.i, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !75, !noalias !15557 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.af, %.lr.ph.i.i
  %i.fi = phi ptr [ %i.fh, %bb.af ], [ %i.fa, %.lr.ph.i.i ]
  %.sroa.031.0.i = phi ptr [ %i.fh, %bb.af ], [ %i.fd, %.lr.ph.i.i ] ; 2 uses
  %.sroa.533.1.i = phi ptr [ %i.fg, %bb.af ], [ %.sroa.533.0.i, %.lr.ph.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.026.0.i, i64 4 ; 2 uses
  %i.fk = load ptr, ptr %.sroa.527.0.i, align 8, !tbaa !75, !noalias !15557
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1024
  %i.fm = icmp eq ptr %i.fj, %i.fl
  br i1 %i.fm, label %bb.ag, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i, !prof !204

bb.ag:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.527.0.i, i64 8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !75, !noalias !15557
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i: ; preds = %bb.ag, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i
  %.sroa.026.1.i = phi ptr [ %i.fo, %bb.ag ], [ %i.fj, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ]
  %.sroa.527.1.i = phi ptr [ %i.fn, %bb.ag ], [ %.sroa.527.0.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ]
  %.not.i.i148 = icmp eq ptr %.sroa.031.0.i, %.sroa.0.0.i.i
  br i1 %.not.i.i148, label %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i, !llvm.loop !14175

bb.ah:                                            ; preds = %bb.ab
  br i1 %or.cond.i.i.i147, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i129, i64 %i.ej
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i

bb.aj:                                            ; preds = %bb.ah
  %i.fq = icmp sgt i64 %i.ep, 0
  %i.fr = lshr i64 %i.ep, 8                       ; 2 uses
  %i.fs = or disjoint i64 %i.fr, -72057594037927936
  %i.ft = select i1 %i.fq, i64 %i.fr, i64 %i.fs   ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i128, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !75, !noalias !15560
  %i.fw = shl nsw i64 %i.ft, 8
  %i.fx = sub nsw i64 %i.ep, %i.fw
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fx
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i: ; preds = %bb.aj, %bb.ai
  %.sroa.0.0.i6.i = phi ptr [ %i.fy, %bb.aj ], [ %i.fp, %bb.ai ] ; 2 uses
  %.not2.i8.i = icmp eq ptr %.sroa.0.0.i129, %.sroa.0.0.i6.i
  br i1 %.not2.i8.i, label %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i
  %i.fz = phi ptr [ %i.gi, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i ], [ %i.ek, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i ] ; 2 uses
  %.sroa.523.0.i = phi ptr [ %.sroa.523.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i ], [ %.sroa.6.1.i128, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.5.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i ], [ %.sroa.6.1.i133, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i ] ; 3 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i ], [ %.sroa.0.0.i134, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i ] ; 3 uses
  %i.ga = phi ptr [ %.sroa.021.0.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i ], [ %.sroa.0.0.i129, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i ] ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !69, !noalias !15563
  %i.gc = load i32, ptr %.sroa.017.0.i, align 4, !tbaa !69, !noalias !15563
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !69, !noalias !15563
  store i32 %i.gb, ptr %.sroa.017.0.i, align 4, !tbaa !69, !noalias !15563
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 1024
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %bb.ak, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i11.i, !prof !204

bb.ak:                                            ; preds = %.lr.ph.i10.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.523.0.i, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !75, !noalias !15563 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i11.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i11.i: ; preds = %bb.ak, %.lr.ph.i10.i
  %i.gi = phi ptr [ %i.gh, %bb.ak ], [ %i.fz, %.lr.ph.i10.i ]
  %.sroa.523.1.i = phi ptr [ %i.gg, %bb.ak ], [ %.sroa.523.0.i, %.lr.ph.i10.i ]
  %.sroa.021.0.i = phi ptr [ %i.gh, %bb.ak ], [ %i.gd, %.lr.ph.i10.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 4 ; 2 uses
  %i.gk = load ptr, ptr %.sroa.5.0.i, align 8, !tbaa !75, !noalias !15563
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1024
  %i.gm = icmp eq ptr %i.gj, %i.gl
  br i1 %i.gm, label %bb.al, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i, !prof !204

bb.al:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i11.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !75, !noalias !15563
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i: ; preds = %bb.al, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i11.i
  %.sroa.5.1.i = phi ptr [ %i.gn, %bb.al ], [ %.sroa.5.0.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i11.i ]
  %.sroa.017.1.i = phi ptr [ %i.go, %bb.al ], [ %i.gj, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i11.i ]
  %.not.i13.i = icmp eq ptr %.sroa.021.0.i, %.sroa.0.0.i6.i
  br i1 %.not.i13.i, label %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i, !llvm.loop !14276

_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit: ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i12.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit1.i.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit145, %bb.aa, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit7.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.gp = load i64, ptr %1, align 8, !tbaa !272
  %.not121 = icmp eq i64 %i.gp, 0
  br i1 %.not121, label %bb.av, label %bb.am

bb.am:                                            ; preds = %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.gq = udiv i64 %i.as, %.1.i
  %i.gr = icmp ugt i64 %i.gq, 256
  br i1 %i.gr, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.gs = load <2 x ptr>, ptr %0, align 8, !tbaa !1854
  store <2 x ptr> %i.gs, ptr %12, align 16, !tbaa !1854
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.az
  br i1 %or.cond8, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit153, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gt = load ptr, ptr %.sroa.6.1.i225231292, align 8, !tbaa !75, !noalias !15566
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.ag, %i.gu
  %i.gw = ashr exact i64 %i.gv, 2
  %i.gx = sub nsw i64 %i.gw, %.1.i                ; 4 uses
  %or.cond.i.i.i150 = icmp ult i64 %i.gx, 256
  br i1 %or.cond.i.i.i150, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gy = sub nsw i64 0, %.1.i
  %i.gz = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i226230293, i64 %i.gy
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit153

bb.aq:                                            ; preds = %bb.ao
  %i.ha = icmp sgt i64 %i.gx, 0
  %i.hb = lshr i64 %i.gx, 8                       ; 2 uses
  %i.hc = or disjoint i64 %i.hb, -72057594037927936
  %i.hd = select i1 %i.ha, i64 %i.hb, i64 %i.hc   ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i225231292, i64 %i.hd ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !75, !noalias !15566
  %i.hg = shl nsw i64 %i.hd, 8
  %i.hh = sub nsw i64 %i.gx, %i.hg
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hh
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit153

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit153: ; preds = %bb.aq, %bb.ap, %bb.an
  %storemerge281 = phi ptr [ %.sroa.0.0.i226230293, %bb.an ], [ %i.hi, %bb.aq ], [ %i.gz, %bb.ap ]
  %storemerge280 = phi ptr [ %.sroa.6.1.i225231292, %bb.an ], [ %i.he, %bb.aq ], [ %.sroa.6.1.i225231292, %bb.ap ]
  store ptr %storemerge281, ptr %13, align 8, !tbaa !1889
  store ptr %storemerge280, ptr %i.am, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES6_SE_NS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %i.ae, i64 noundef %.0245, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %i.af, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.az)
  br label %bb.ba

bb.ar:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.az
  br i1 %or.cond11, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit158, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hj = load ptr, ptr %.sroa.6.1.i225231292, align 8, !tbaa !75, !noalias !15569
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = sub i64 %i.ag, %i.hk
  %i.hm = ashr exact i64 %i.hl, 2
  %i.hn = sub nsw i64 %i.hm, %.1.i                ; 4 uses
  %or.cond.i.i.i155 = icmp ult i64 %i.hn, 256
  br i1 %or.cond.i.i.i155, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ho = sub nsw i64 0, %.1.i
  %i.hp = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i226230293, i64 %i.ho
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit158

bb.au:                                            ; preds = %bb.as
  %i.hq = icmp sgt i64 %i.hn, 0
  %i.hr = lshr i64 %i.hn, 8                       ; 2 uses
  %i.hs = or disjoint i64 %i.hr, -72057594037927936
  %i.ht = select i1 %i.hq, i64 %i.hr, i64 %i.hs   ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i225231292, i64 %i.ht ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !75, !noalias !15569
  %i.hw = shl nsw i64 %i.ht, 8
  %i.hx = sub nsw i64 %i.hn, %i.hw
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hx
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit158

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit158: ; preds = %bb.au, %bb.at, %bb.ar
  %storemerge279 = phi ptr [ %.sroa.0.0.i226230293, %bb.ar ], [ %i.hy, %bb.au ], [ %i.hp, %bb.at ]
  %storemerge = phi ptr [ %.sroa.6.1.i225231292, %bb.ar ], [ %i.hu, %bb.au ], [ %.sroa.6.1.i225231292, %bb.at ]
  store ptr %storemerge279, ptr %14, align 8, !tbaa !1889
  store ptr %storemerge, ptr %i.al, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessENS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS7_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %i.ae, i64 noundef %.0245, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %i.af, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ba

bb.av:                                            ; preds = %_ZN5boost7movelib15detail_adaptive17move_data_forwardINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.hz = load i64, ptr %i.an, align 8, !tbaa !2566
  %i.ia = load ptr, ptr %6, align 8, !tbaa !2564
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hz
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = add i64 %i.ic, 7
  %i.ie = and i64 %i.id, -8
  %i.if = inttoptr i64 %i.ie to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.az
  br i1 %or.cond14, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit163, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ig = sub nsw i64 0, %.1.i
  %.not.i.i.i159 = icmp eq i64 %.1.i, 0
  br i1 %.not.i.i.i159, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit163, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ih = load ptr, ptr %.sroa.6.1.i225231292, align 8, !tbaa !75, !noalias !15572
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = sub i64 %i.ag, %i.ii
  %i.ik = ashr exact i64 %i.ij, 2
  %i.il = sub nsw i64 %i.ik, %.1.i                ; 4 uses
  %or.cond.i.i.i160 = icmp ult i64 %i.il, 256
  br i1 %or.cond.i.i.i160, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.im = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i226230293, i64 %i.ig
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit163

bb.az:                                            ; preds = %bb.ax
  %i.in = icmp sgt i64 %i.il, 0
  %i.io = lshr i64 %i.il, 8                       ; 2 uses
  %i.ip = or disjoint i64 %i.io, -72057594037927936
  %i.iq = select i1 %i.in, i64 %i.io, i64 %i.ip   ; 2 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i225231292, i64 %i.iq ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !75, !noalias !15572
  %i.it = shl nsw i64 %i.iq, 8
  %i.iu = sub nsw i64 %i.il, %i.it
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.iu
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit163

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit163: ; preds = %bb.az, %bb.ay, %bb.aw, %bb.av
  %storemerge283 = phi ptr [ %.sroa.0.0.i226230293, %bb.av ], [ %.sroa.0.0.i226230293, %bb.aw ], [ %i.im, %bb.ay ], [ %i.iv, %bb.az ]
  %storemerge282 = phi ptr [ %.sroa.6.1.i225231292, %bb.av ], [ %.sroa.6.1.i225231292, %bb.aw ], [ %.sroa.6.1.i225231292, %bb.ay ], [ %i.ir, %bb.az ]
  store ptr %storemerge283, ptr %15, align 8, !tbaa !1889
  store ptr %storemerge282, ptr %18, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessENS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS7_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %i.if, ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %i.ae, i64 noundef %.0245, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %i.af, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.az)
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit153, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit158, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit163
  %i.iw = add i64 %.0115240, 1
  %i.ix = icmp ugt i64 %i.ae, %i.as
  br i1 %i.ix, label %bb.f, label %._crit_edge, !llvm.loop !15575

bb.bb:                                            ; preds = %._crit_edge
  %i.iy = load ptr, ptr %6, align 8, !tbaa !2564  ; 5 uses
  %i.iz = load i64, ptr %5, align 8, !tbaa !272   ; 3 uses
  %.idx236 = shl i64 %i.iz, 2                     ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.idx236 ; 2 uses
  br i1 %i.ao, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.jb = load ptr, ptr %2, align 8, !tbaa !1889, !noalias !15576 ; 2 uses
  %i.jc = load ptr, ptr %17, align 8, !tbaa !13016, !noalias !15576 ; 3 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !75, !noalias !15576
  %i.je = ptrtoint ptr %i.jb to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = ashr exact i64 %i.jg, 2
  %i.ji = add nsw i64 %i.jh, %i.ae                ; 4 uses
  %or.cond.i.i165 = icmp ult i64 %i.ji, 256
  br i1 %or.cond.i.i165, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.ae
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit168

bb.be:                                            ; preds = %bb.bc
  %i.jk = icmp sgt i64 %i.ji, 0
  %i.jl = lshr i64 %i.ji, 8                       ; 2 uses
  %i.jm = or disjoint i64 %i.jl, -72057594037927936
  %i.jn = select i1 %i.jk, i64 %i.jl, i64 %i.jm   ; 2 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.jn ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !75, !noalias !15576
  %i.jq = shl nsw i64 %i.jn, 8
  %i.jr = sub nsw i64 %i.ji, %i.jq
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jr
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit168

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit168: ; preds = %bb.bd, %bb.be
  %.sroa.6.1.i166 = phi ptr [ %i.jo, %bb.be ], [ %i.jc, %bb.bd ] ; 3 uses
  %.sroa.0.0.i167 = phi ptr [ %i.js, %bb.be ], [ %i.jj, %bb.bd ] ; 2 uses
  %.not4.i = icmp eq i64 %i.iz, 0
  br i1 %.not4.i, label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit168
  %.pre250 = load ptr, ptr %.sroa.6.1.i166, align 8, !tbaa !75, !noalias !15579 ; 2 uses
  %i.jt = add i64 %.idx236, -4                    ; 2 uses
  %i.ju = lshr exact i64 %i.jt, 2
  %i.jv = add nuw nsw i64 %i.ju, 1
  %xtraiter302 = and i64 %i.jv, 3                 ; 2 uses
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol
  %i.jw = phi ptr [ %i.kg, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol ], [ %.pre250, %.lr.ph.i.preheader ] ; 2 uses
  %i.jx = phi ptr [ %i.kh, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol ], [ %.sroa.6.1.i166, %.lr.ph.i.preheader ] ; 2 uses
  %i.jy = phi ptr [ %i.ki, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol ], [ %.sroa.0.0.i167, %.lr.ph.i.preheader ] ; 2 uses
  %.05.i.prol = phi ptr [ %i.ka, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol ], [ %i.iy, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter304 = phi i64 [ %prol.iter304.next, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.jz = load i32, ptr %.05.i.prol, align 4, !tbaa !69, !noalias !15579
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !69, !noalias !15579
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.prol, i64 4 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 4 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 1024
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %bb.bf, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol, !prof !204

bb.bf:                                            ; preds = %.lr.ph.i.prol
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !75, !noalias !15579 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol: ; preds = %bb.bf, %.lr.ph.i.prol
  %i.kg = phi ptr [ %i.jw, %.lr.ph.i.prol ], [ %i.kf, %bb.bf ] ; 2 uses
  %i.kh = phi ptr [ %i.jx, %.lr.ph.i.prol ], [ %i.ke, %bb.bf ] ; 2 uses
  %i.ki = phi ptr [ %i.kb, %.lr.ph.i.prol ], [ %i.kf, %bb.bf ] ; 2 uses
  %prol.iter304.next = add i64 %prol.iter304, 1   ; 2 uses
  %prol.iter304.cmp.not = icmp eq i64 %prol.iter304.next, %xtraiter302
  br i1 %prol.iter304.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !15582

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol, %.lr.ph.i.preheader
  %.unr305 = phi ptr [ %.pre250, %.lr.ph.i.preheader ], [ %i.kg, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol ]
  %.unr306 = phi ptr [ %.sroa.6.1.i166, %.lr.ph.i.preheader ], [ %i.kh, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol ]
  %.unr307 = phi ptr [ %.sroa.0.0.i167, %.lr.ph.i.preheader ], [ %i.ki, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol ]
  %.05.i.unr = phi ptr [ %i.iy, %.lr.ph.i.preheader ], [ %i.ka, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.prol ]
  %i.kj = icmp ult i64 %i.jt, 12
  br i1 %i.kj, label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3
  %i.kk = phi ptr [ %i.ly, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3 ], [ %.unr305, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.kl = phi ptr [ %i.lz, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3 ], [ %.unr306, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.km = phi ptr [ %i.ma, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3 ], [ %.unr307, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.05.i = phi ptr [ %i.ls, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3 ], [ %.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.kn = load i32, ptr %.05.i, align 4, !tbaa !69, !noalias !15579
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !69, !noalias !15579
  %i.ko = getelementptr inbounds nuw i8, ptr %.05.i, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 4 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 1024
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %bb.bg, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, !prof !204

bb.bg:                                            ; preds = %.lr.ph.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !75, !noalias !15579 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.bg, %.lr.ph.i
  %i.ku = phi ptr [ %i.kk, %.lr.ph.i ], [ %i.kt, %bb.bg ] ; 2 uses
  %i.kv = phi ptr [ %i.kl, %.lr.ph.i ], [ %i.ks, %bb.bg ] ; 2 uses
  %i.kw = phi ptr [ %i.kp, %.lr.ph.i ], [ %i.kt, %bb.bg ] ; 2 uses
  %i.kx = load i32, ptr %i.ko, align 4, !tbaa !69, !noalias !15579
  store i32 %i.kx, ptr %i.kw, align 4, !tbaa !69, !noalias !15579
  %i.ky = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 4 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 1024
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %bb.bh, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.1, !prof !204

bb.bh:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !75, !noalias !15579 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.1

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.1: ; preds = %bb.bh, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.le = phi ptr [ %i.ku, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %i.ld, %bb.bh ] ; 2 uses
  %i.lf = phi ptr [ %i.kv, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %i.lc, %bb.bh ] ; 2 uses
  %i.lg = phi ptr [ %i.kz, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %i.ld, %bb.bh ] ; 2 uses
  %i.lh = load i32, ptr %i.ky, align 4, !tbaa !69, !noalias !15579
  store i32 %i.lh, ptr %i.lg, align 4, !tbaa !69, !noalias !15579
  %i.li = getelementptr inbounds nuw i8, ptr %.05.i, i64 12
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 4 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 1024
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %bb.bi, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.2, !prof !204

bb.bi:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !75, !noalias !15579 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.2

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.2: ; preds = %bb.bi, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.1
  %i.lo = phi ptr [ %i.le, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.1 ], [ %i.ln, %bb.bi ] ; 2 uses
  %i.lp = phi ptr [ %i.lf, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.1 ], [ %i.lm, %bb.bi ] ; 2 uses
  %i.lq = phi ptr [ %i.lj, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.1 ], [ %i.ln, %bb.bi ] ; 2 uses
  %i.lr = load i32, ptr %i.li, align 4, !tbaa !69, !noalias !15579
  store i32 %i.lr, ptr %i.lq, align 4, !tbaa !69, !noalias !15579
  %i.ls = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 1024
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %bb.bj, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3, !prof !204

bb.bj:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.2
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !75, !noalias !15579 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3: ; preds = %bb.bj, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.2
  %i.ly = phi ptr [ %i.lo, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.2 ], [ %i.lx, %bb.bj ]
  %i.lz = phi ptr [ %i.lp, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.2 ], [ %i.lw, %bb.bj ]
  %i.ma = phi ptr [ %i.lt, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.2 ], [ %i.lx, %bb.bj ]
  %.not.i169.3 = icmp eq ptr %i.ls, %i.ja
  br i1 %.not.i169.3, label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !14188

bb.bk:                                            ; preds = %bb.bb
  %.not4.i170 = icmp eq i64 %i.iz, 0
  br i1 %.not4.i170, label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit, label %.lr.ph.i174.preheader

.lr.ph.i174.preheader:                            ; preds = %bb.bk
  %i.mb = load ptr, ptr %17, align 8, !tbaa !13016 ; 3 uses
  %i.mc = load ptr, ptr %2, align 8, !tbaa !1889  ; 2 uses
  %.pre = load ptr, ptr %i.mb, align 8, !tbaa !75, !noalias !15583 ; 2 uses
  %i.md = add i64 %.idx236, -4                    ; 2 uses
  %i.me = lshr exact i64 %i.md, 2
  %i.mf = add nuw nsw i64 %i.me, 1
  %xtraiter = and i64 %i.mf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i174.prol.loopexit, label %.lr.ph.i174.prol

.lr.ph.i174.prol:                                 ; preds = %.lr.ph.i174.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol
  %i.mg = phi ptr [ %i.mq, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol ], [ %.pre, %.lr.ph.i174.preheader ] ; 2 uses
  %i.mh = phi ptr [ %i.mr, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol ], [ %i.mb, %.lr.ph.i174.preheader ] ; 2 uses
  %i.mi = phi ptr [ %i.ms, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol ], [ %i.mc, %.lr.ph.i174.preheader ] ; 2 uses
  %.05.i175.prol = phi ptr [ %i.mk, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol ], [ %i.iy, %.lr.ph.i174.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol ], [ 0, %.lr.ph.i174.preheader ]
  %i.mj = load i32, ptr %.05.i175.prol, align 4, !tbaa !69, !noalias !15583
  store i32 %i.mj, ptr %i.mi, align 4, !tbaa !69, !noalias !15583
  %i.mk = getelementptr inbounds nuw i8, ptr %.05.i175.prol, i64 4 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 4 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 1024
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %bb.bl, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol, !prof !204

bb.bl:                                            ; preds = %.lr.ph.i174.prol
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !75, !noalias !15583 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol: ; preds = %bb.bl, %.lr.ph.i174.prol
  %i.mq = phi ptr [ %i.mg, %.lr.ph.i174.prol ], [ %i.mp, %bb.bl ] ; 2 uses
  %i.mr = phi ptr [ %i.mh, %.lr.ph.i174.prol ], [ %i.mo, %bb.bl ] ; 2 uses
  %i.ms = phi ptr [ %i.ml, %.lr.ph.i174.prol ], [ %i.mp, %bb.bl ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i174.prol.loopexit, label %.lr.ph.i174.prol, !llvm.loop !15586

.lr.ph.i174.prol.loopexit:                        ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol, %.lr.ph.i174.preheader
  %.unr = phi ptr [ %.pre, %.lr.ph.i174.preheader ], [ %i.mq, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol ]
  %.unr300 = phi ptr [ %i.mb, %.lr.ph.i174.preheader ], [ %i.mr, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol ]
  %.unr301 = phi ptr [ %i.mc, %.lr.ph.i174.preheader ], [ %i.ms, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol ]
  %.05.i175.unr = phi ptr [ %i.iy, %.lr.ph.i174.preheader ], [ %i.mk, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.prol ]
  %i.mt = icmp ult i64 %i.md, 12
  br i1 %i.mt, label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit, label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %.lr.ph.i174.prol.loopexit, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3
  %i.mu = phi ptr [ %i.oi, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3 ], [ %.unr, %.lr.ph.i174.prol.loopexit ] ; 2 uses
  %i.mv = phi ptr [ %i.oj, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3 ], [ %.unr300, %.lr.ph.i174.prol.loopexit ] ; 2 uses
  %i.mw = phi ptr [ %i.ok, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3 ], [ %.unr301, %.lr.ph.i174.prol.loopexit ] ; 2 uses
  %.05.i175 = phi ptr [ %i.oc, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3 ], [ %.05.i175.unr, %.lr.ph.i174.prol.loopexit ] ; 5 uses
  %i.mx = load i32, ptr %.05.i175, align 4, !tbaa !69, !noalias !15583
  store i32 %i.mx, ptr %i.mw, align 4, !tbaa !69, !noalias !15583
  %i.my = getelementptr inbounds nuw i8, ptr %.05.i175, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 4 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 1024
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %bb.bm, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176, !prof !204

bb.bm:                                            ; preds = %.lr.ph.i174
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !75, !noalias !15583 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176: ; preds = %bb.bm, %.lr.ph.i174
  %i.ne = phi ptr [ %i.mu, %.lr.ph.i174 ], [ %i.nd, %bb.bm ] ; 2 uses
  %i.nf = phi ptr [ %i.mv, %.lr.ph.i174 ], [ %i.nc, %bb.bm ] ; 2 uses
  %i.ng = phi ptr [ %i.mz, %.lr.ph.i174 ], [ %i.nd, %bb.bm ] ; 2 uses
  %i.nh = load i32, ptr %i.my, align 4, !tbaa !69, !noalias !15583
  store i32 %i.nh, ptr %i.ng, align 4, !tbaa !69, !noalias !15583
  %i.ni = getelementptr inbounds nuw i8, ptr %.05.i175, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 4 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 1024
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %bb.bn, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.1, !prof !204

bb.bn:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !75, !noalias !15583 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.1

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.1: ; preds = %bb.bn, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176
  %i.no = phi ptr [ %i.ne, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176 ], [ %i.nn, %bb.bn ] ; 2 uses
  %i.np = phi ptr [ %i.nf, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176 ], [ %i.nm, %bb.bn ] ; 2 uses
  %i.nq = phi ptr [ %i.nj, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176 ], [ %i.nn, %bb.bn ] ; 2 uses
  %i.nr = load i32, ptr %i.ni, align 4, !tbaa !69, !noalias !15583
  store i32 %i.nr, ptr %i.nq, align 4, !tbaa !69, !noalias !15583
  %i.ns = getelementptr inbounds nuw i8, ptr %.05.i175, i64 12
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 1024
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %bb.bo, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.2, !prof !204

bb.bo:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.1
  %i.nw = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !75, !noalias !15583 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.2

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.2: ; preds = %bb.bo, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.1
  %i.ny = phi ptr [ %i.no, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.1 ], [ %i.nx, %bb.bo ] ; 2 uses
  %i.nz = phi ptr [ %i.np, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.1 ], [ %i.nw, %bb.bo ] ; 2 uses
  %i.oa = phi ptr [ %i.nt, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.1 ], [ %i.nx, %bb.bo ] ; 2 uses
  %i.ob = load i32, ptr %i.ns, align 4, !tbaa !69, !noalias !15583
  store i32 %i.ob, ptr %i.oa, align 4, !tbaa !69, !noalias !15583
  %i.oc = getelementptr inbounds nuw i8, ptr %.05.i175, i64 16 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 4 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 1024
  %i.of = icmp eq ptr %i.od, %i.oe
  br i1 %i.of, label %bb.bp, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3, !prof !204

bb.bp:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.2
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !75, !noalias !15583 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3: ; preds = %bb.bp, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.2
  %i.oi = phi ptr [ %i.ny, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.2 ], [ %i.oh, %bb.bp ]
  %i.oj = phi ptr [ %i.nz, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.2 ], [ %i.og, %bb.bp ]
  %i.ok = phi ptr [ %i.od, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.2 ], [ %i.oh, %bb.bp ]
  %.not.i177.3 = icmp eq ptr %i.oc, %i.ja
  br i1 %.not.i177.3, label %_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit, label %.lr.ph.i174, !llvm.loop !14188

_ZN5boost4moveIPiNS_9container14deque_iteratorIS1_Lb0ELj0ELj0EmEEEET0_T_S6_S5_.exit: ; preds = %.lr.ph.i174.prol.loopexit, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3, %.lr.ph.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3, %.thread288, %bb.bk, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit168, %._crit_edge
  %i.ol = phi i1 [ true, %.thread288 ], [ true, %.lr.ph.i.prol.loopexit ], [ %i.ao, %._crit_edge ], [ false, %bb.bk ], [ true, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit168 ], [ true, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.3 ], [ false, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i176.3 ], [ false, %.lr.ph.i174.prol.loopexit ]
  ret i1 %i.ol
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %17 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1
  %21 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %22 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %23 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %24 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %25 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
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
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %bb.a, %.preheader.preheader.i.i
  %i.d = add i64 %3, %2                           ; 10 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !1889   ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13016 ; 16 uses
  br i1 %0, label %bb.b, label %bb.am

bb.b:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit
  %.not.i.i = icmp eq i64 %4, 0                   ; 5 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75, !noalias !15587
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %i.m = add nsw i64 %i.l, %4                     ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.m, 256
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds [4 x i8], ptr %i.e, i64 %4
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp sgt i64 %i.m, 0
  %i.p = lshr i64 %i.m, 8                         ; 2 uses
  %i.q = or disjoint i64 %i.p, -72057594037927936
  %i.r = select i1 %i.o, i64 %i.p, i64 %i.q       ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r ; 2 uses
end_hunk_0
