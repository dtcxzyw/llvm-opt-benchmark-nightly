Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24952
inline.NumDeleted: 2814
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_:bb.a
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nr, i64 1024
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %bb.bs, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, !prof !316

bb.bs:                                            ; preds = %bb.br
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.6167.1, i64 8 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !299
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.bs, %bb.br
  %.sroa.6167.2 = phi ptr [ %i.oe, %bb.bs ], [ %.sroa.6167.1, %bb.br ]
  %.sroa.0165.1 = phi ptr [ %i.of, %bb.bs ], [ %i.ob, %bb.br ]
  %i.og = load ptr, ptr %.sroa.6.0, align 8, !tbaa !299
  %i.oh = icmp eq ptr %.sroa.0.0, %i.og
  br i1 %i.oh, label %bb.bt, label %bb.bu, !prof !316

bb.bt:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.oi = getelementptr inbounds i8, ptr %.sroa.6.0, i64 -8 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !299
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit12.i

bb.bu:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.ol = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit12.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit12.i: ; preds = %bb.bu, %bb.bt
  %.sroa.6.1 = phi ptr [ %i.oi, %bb.bt ], [ %.sroa.6.0, %bb.bu ]
  %storemerge.i11.i = phi ptr [ %i.ok, %bb.bt ], [ %i.ol, %bb.bu ] ; 2 uses
  store i32 %i.ns, ptr %storemerge.i11.i, align 4, !tbaa !296
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit12.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit10.i
  %.sroa.6167.3 = phi ptr [ %.sroa.6167.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.6167.2, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.0165.2 = phi ptr [ %storemerge.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.0165.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.3, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.6.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.0.1 = phi ptr [ %storemerge.i9.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit10.i ], [ %storemerge.i11.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit12.i ]
  %.1.i158 = phi ptr [ %.023.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit10.i ], [ %i.nk, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit12.i ] ; 2 uses
  %.not.i159 = icmp eq ptr %i.mx, %.1.i158
  br i1 %.not.i159, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiNS2_14deque_iteratorISC_Lb0ELj0ELj0EmEEEEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i157, !llvm.loop !188

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiNS2_14deque_iteratorISC_Lb0ELj0ELj0EmEEEEvT2_SF_SF_T1_SG_T_T0_.exit: ; preds = %bb.bv, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i, %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES5_EET0_NS0_9forward_tET_S9_S7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp ult i64 %3, %4
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !401    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !491  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !299
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !401    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !491  ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !299
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.thread29, %bb.a
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %i.bs, %.thread29 ]
  ret i64 %.018.lcssa

bb.b:                                             ; preds = %.lr.ph, %.thread29
  %.032 = phi i64 [ %3, %.lr.ph ], [ %i.bt, %.thread29 ] ; 5 uses
  %.01831 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %.thread29 ] ; 5 uses
  %i.r = mul i64 %.01831, %2                      ; 2 uses
  %i.s = add nsw i64 %i.i, %i.r                   ; 4 uses
  %or.cond.i = icmp ult i64 %i.s, 256
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.r
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp sgt i64 %i.s, 0
  %i.v = lshr i64 %i.s, 8                         ; 2 uses
  %i.w = or disjoint i64 %i.v, -72057594037927936
  %i.x = select i1 %i.u, i64 %i.v, i64 %i.w       ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !299
  %i.aa = shl nsw i64 %i.x, 8
  %i.ab = sub nsw i64 %i.s, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.t, %bb.c ], [ %i.ac, %bb.d ]
  %i.ad = mul i64 %.032, %2                       ; 2 uses
  %i.ae = add nsw i64 %i.i, %i.ad                 ; 4 uses
  %or.cond.i19 = icmp ult i64 %i.ae, 256
  br i1 %or.cond.i19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit
  %i.af = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ad
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit21

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit
  %i.ag = icmp sgt i64 %i.ae, 0
  %i.ah = lshr i64 %i.ae, 8                       ; 2 uses
  %i.ai = or disjoint i64 %i.ah, -72057594037927936
  %i.aj = select i1 %i.ag, i64 %i.ah, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !299
  %i.am = shl nsw i64 %i.aj, 8
  %i.an = sub nsw i64 %i.ae, %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit21

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit21: ; preds = %bb.e, %bb.f
  %.0.i20 = phi ptr [ %i.af, %bb.e ], [ %i.ao, %bb.f ]
  %i.ap = add nsw i64 %i.q, %.01831               ; 4 uses
  %or.cond.i22 = icmp ult i64 %i.ap, 256
  br i1 %or.cond.i22, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit21
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.01831
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit24

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit21
  %i.ar = icmp sgt i64 %i.ap, 0
  %i.as = lshr i64 %i.ap, 8                       ; 2 uses
  %i.at = or disjoint i64 %i.as, -72057594037927936
  %i.au = select i1 %i.ar, i64 %i.as, i64 %i.at   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !299
  %i.ax = shl nsw i64 %i.au, 8
  %i.ay = sub nsw i64 %i.ap, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit24

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit24: ; preds = %bb.g, %bb.h
  %.0.i23 = phi ptr [ %i.aq, %bb.g ], [ %i.az, %bb.h ]
  %i.ba = add nsw i64 %i.q, %.032                 ; 4 uses
  %or.cond.i25 = icmp ult i64 %i.ba, 256
  br i1 %or.cond.i25, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit24
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.032
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit27

bb.j:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit24
  %i.bc = icmp sgt i64 %i.ba, 0
  %i.bd = lshr i64 %i.ba, 8                       ; 2 uses
  %i.be = or disjoint i64 %i.bd, -72057594037927936
  %i.bf = select i1 %i.bc, i64 %i.bd, i64 %i.be   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !299
  %i.bi = shl nsw i64 %i.bf, 8
  %i.bj = sub nsw i64 %i.ba, %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit27

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit27: ; preds = %bb.i, %bb.j
  %.0.i26 = phi ptr [ %i.bb, %bb.i ], [ %i.bk, %bb.j ]
  %i.bl = load i32, ptr %.0.i20, align 4, !tbaa !296 ; 2 uses
  %i.bm = load i32, ptr %.0.i, align 4, !tbaa !296 ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit27
  %i.bo = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bo, label %.thread29, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load i32, ptr %.0.i26, align 4, !tbaa !296
  %i.bq = load i32, ptr %.0.i23, align 4, !tbaa !296
  %i.br = icmp slt i32 %i.bp, %i.bq
  %cond.fr = freeze i1 %i.br
  br i1 %cond.fr, label %.thread, label %.thread29

.thread:                                          ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit27, %bb.l
  br label %.thread29

.thread29:                                        ; preds = %bb.k, %bb.l, %.thread
  %i.bs = phi i64 [ %.032, %.thread ], [ %.01831, %bb.l ], [ %.01831, %bb.k ] ; 2 uses
  %i.bt = add nuw i64 %.032, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !14723
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES8_NS3_IS6_EES8_SI_NS0_7move_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #1 comdat {
bb.a:
  %12 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 3 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 6 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 3 uses
  %17 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  %.not330 = icmp eq i64 %8, 0
  br i1 %.not330, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.c = sub nsw i64 0, %7                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %7, 0               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %1, align 8, !tbaa !401, !noalias !14791
  %.pre373 = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !14791
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit
  %19 = phi ptr [ %.pre373, %.lr.ph ], [ %i.lq, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ]
  %20 = phi ptr [ %.pre, %.lr.ph ], [ %storemerge.i.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ]
  %i.h = phi i64 [ %10, %.lr.ph ], [ %i.lu, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  %.0332 = phi i64 [ %9, %.lr.ph ], [ %i.ls, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ] ; 3 uses
  %.0245331 = phi i64 [ %8, %.lr.ph ], [ %i.lv, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14791)
  store ptr %20, ptr %12, align 8, !tbaa !401, !alias.scope !14791
  store ptr %19, ptr %18, align 8, !tbaa !491, !alias.scope !14791
  call void @llvm.experimental.noalias.scope.decl(metadata !14792)
  %i.i = load <2 x ptr>, ptr %3, align 8, !tbaa !399, !noalias !14792
  store <2 x ptr> %i.i, ptr %13, align 16, !tbaa !399, !alias.scope !14792
  %i.j = call noundef i64 @_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_(ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %7, i64 noundef %.0332, i64 noundef %i.h) ; 5 uses
  %i.k = add i64 %i.j, 2
  %i.l = call i64 @llvm.umax.i64(i64 %i.h, i64 %i.k) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.l, i64 %.0245331)
  %i.m = load ptr, ptr %3, align 8, !tbaa !401, !noalias !14793 ; 9 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !491, !noalias !14793 ; 10 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !299, !noalias !14794
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = sub nsw i64 %i.s, %7                     ; 4 uses
  %or.cond.i.i.i.i = icmp ult i64 %i.t, 256
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp sgt i64 %i.t, 0
  %i.w = lshr i64 %i.t, 8                         ; 2 uses
  %i.x = or disjoint i64 %i.w, -72057594037927936
  %i.y = select i1 %i.v, i64 %i.w, i64 %i.x       ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !299, !noalias !14794
  %i.ab = shl nsw i64 %i.y, 8
  %i.ac = sub nsw i64 %i.t, %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.ae = phi ptr [ %i.n, %bb.b ], [ %i.z, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.af = phi ptr [ %i.m, %bb.b ], [ %i.ad, %bb.e ], [ %i.u, %bb.d ] ; 11 uses
  %i.ag = mul i64 %i.j, %7                        ; 3 uses
  %i.ah = sub nsw i64 0, %i.ag
  %.not.i.i.i.i25 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i25, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !299, !noalias !14795
  %i.aj = ptrtoint ptr %i.m to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = sub nsw i64 %i.am, %i.ag                ; 4 uses
  %or.cond.i.i.i.i29 = icmp ult i64 %i.an, 256
  br i1 %or.cond.i.i.i.i29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ah
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30

bb.h:                                             ; preds = %bb.f
  %i.ap = icmp sgt i64 %i.an, 0
  %i.aq = lshr i64 %i.an, 8                       ; 2 uses
  %i.ar = or disjoint i64 %i.aq, -72057594037927936
  %i.as = select i1 %i.ap, i64 %i.aq, i64 %i.ar   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !299, !noalias !14795
  %i.av = shl nsw i64 %i.as, 8
  %i.aw = sub nsw i64 %i.an, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit, %bb.g, %bb.h
  %i.ay = phi ptr [ %i.n, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit ], [ %i.at, %bb.h ], [ %i.n, %bb.g ] ; 8 uses
  %i.az = phi ptr [ %i.m, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit ], [ %i.ax, %bb.h ], [ %i.ao, %bb.g ] ; 9 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !299, !noalias !14796
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %i.bf = sub nsw i64 %i.be, %7                   ; 4 uses
  %or.cond.i.i.i.i35 = icmp ult i64 %i.bf, 256
  br i1 %or.cond.i.i.i.i35, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36

bb.k:                                             ; preds = %bb.i
  %i.bh = icmp sgt i64 %i.bf, 0
  %i.bi = lshr i64 %i.bf, 8                       ; 2 uses
  %i.bj = or disjoint i64 %i.bi, -72057594037927936
  %i.bk = select i1 %i.bh, i64 %i.bi, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !299, !noalias !14796
  %i.bn = shl nsw i64 %i.bk, 8
  %i.bo = sub nsw i64 %i.bf, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bo
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30, %bb.j, %bb.k
  %i.bq = phi ptr [ %i.az, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30 ], [ %i.bp, %bb.k ], [ %i.bg, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %.not23 = icmp eq i64 %i.j, 0                   ; 2 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !441   ; 6 uses
  br i1 %.not23, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36
  %i.bs = load ptr, ptr %6, align 8, !tbaa !401, !noalias !14797 ; 4 uses
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !491, !noalias !14797 ; 4 uses
  %.not.i92 = icmp eq ptr %i.m, %i.af
  %i.bu = load ptr, ptr %4, align 8, !tbaa !441, !noalias !398 ; 3 uses
  %.not42.i93 = icmp eq ptr %i.br, %i.bu
  %or.cond = select i1 %.not.i92, i1 true, i1 %.not42.i93 ; 2 uses
  br i1 %11, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit, label %.outer.i94.preheader

.outer.i94.preheader:                             ; preds = %bb.m
  %.pre375 = load ptr, ptr %i.ay, align 8, !tbaa !299, !noalias !14798
  br label %.outer.i94

.outer.i94:                                       ; preds = %.outer.i94.preheader, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i127
  %i.bv = phi ptr [ %i.cx, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i127 ], [ %.pre375, %.outer.i94.preheader ] ; 2 uses
  %.sroa.0235.0 = phi ptr [ %storemerge.i.i9.i120, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i127 ], [ %i.bs, %.outer.i94.preheader ] ; 2 uses
  %.sroa.8238.0 = phi ptr [ %.sroa.8238.4, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i127 ], [ %i.bt, %.outer.i94.preheader ] ; 2 uses
  %.sroa.022.0.ph.i95 = phi ptr [ %storemerge.i.i7.i118, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i127 ], [ %i.az, %.outer.i94.preheader ] ; 4 uses
  %.sroa.7.0.ph.i96 = phi ptr [ %.sroa.7.2.i117, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i127 ], [ %i.ay, %.outer.i94.preheader ] ; 4 uses
  %.sroa.027.0.ph.i97 = phi ptr [ %storemerge.i.i6.i115, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i127 ], [ %i.m, %.outer.i94.preheader ] ; 5 uses
  %.sroa.8.0.ph.i98 = phi ptr [ %.sroa.8.2.i114, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i127 ], [ %i.n, %.outer.i94.preheader ] ; 6 uses
  %.sroa.032.0.ph.i99 = phi ptr [ %.us-phi321, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i127 ], [ %i.bu, %.outer.i94.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.022.0.ph.i95, i64 -4 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.7.0.ph.i96, i64 -8 ; 5 uses
  %i.by = icmp eq ptr %.sroa.022.0.ph.i95, %i.bv  ; 4 uses
  br i1 %i.by, label %.outer.i94.split.us, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101, !prof !316

.outer.i94.split.us:                              ; preds = %.outer.i94
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !299, !noalias !14798
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101.us

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101.us: ; preds = %bb.q, %.outer.i94.split.us
  %.sroa.0235.1.us = phi ptr [ %.sroa.0235.0, %.outer.i94.split.us ], [ %storemerge.i.i11.i104250.us, %bb.q ] ; 3 uses
  %.sroa.8238.1.us = phi ptr [ %.sroa.8238.0, %.outer.i94.split.us ], [ %.sroa.8238.2248.us, %bb.q ] ; 4 uses
  %.sroa.032.0.i100.us = phi ptr [ %.sroa.032.0.ph.i99, %.outer.i94.split.us ], [ %i.cb, %bb.q ] ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.032.0.i100.us, i64 -4 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !296, !noalias !14798 ; 2 uses
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !296, !noalias !14798
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %.split318.us, label %bb.n

bb.n:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101.us
  %i.cf = load ptr, ptr %.sroa.8238.1.us, align 8, !tbaa !299, !noalias !14799
  %i.cg = icmp eq ptr %.sroa.0235.1.us, %i.cf
  br i1 %i.cg, label %bb.p, label %bb.o, !prof !316

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds i8, ptr %.sroa.0235.1.us, i64 -4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds i8, ptr %.sroa.8238.1.us, i64 -8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !299, !noalias !14799
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1020
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge.i.i11.i104250.us = phi ptr [ %i.ch, %bb.o ], [ %i.ck, %bb.p ] ; 3 uses
  %.sroa.8238.2248.us = phi ptr [ %.sroa.8238.1.us, %bb.o ], [ %i.ci, %bb.p ] ; 2 uses
  store i32 %i.cc, ptr %storemerge.i.i11.i104250.us, align 4, !tbaa !296, !noalias !14798
  %.not43.i106.us = icmp eq ptr %i.cb, %i.br
  br i1 %.not43.i106.us, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.sink.split, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101.us, !llvm.loop !193

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101: ; preds = %.outer.i94, %bb.af
  %.sroa.0235.1 = phi ptr [ %storemerge.i.i11.i104250, %bb.af ], [ %.sroa.0235.0, %.outer.i94 ] ; 3 uses
  %.sroa.8238.1 = phi ptr [ %.sroa.8238.2248, %bb.af ], [ %.sroa.8238.0, %.outer.i94 ] ; 4 uses
  %.sroa.032.0.i100 = phi ptr [ %i.cl, %bb.af ], [ %.sroa.032.0.ph.i99, %.outer.i94 ] ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.032.0.i100, i64 -4 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !296, !noalias !14798 ; 2 uses
  %i.cn = load i32, ptr %i.bw, align 4, !tbaa !296, !noalias !14798
  %i.co = icmp slt i32 %i.cm, %i.cn
  br i1 %i.co, label %.split318.us, label %bb.ac

.split318.us:                                     ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101.us
  %.us-phi319 = phi ptr [ %.sroa.0235.1.us, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101.us ], [ %.sroa.0235.1, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101 ] ; 3 uses
  %.us-phi320 = phi ptr [ %.sroa.8238.1.us, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101.us ], [ %.sroa.8238.1, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101 ] ; 4 uses
  %.us-phi321 = phi ptr [ %.sroa.032.0.i100.us, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101.us ], [ %.sroa.032.0.i100, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i101 ] ; 2 uses
  %i.cp = load ptr, ptr %.sroa.8.0.ph.i98, align 8, !tbaa !299, !noalias !14800
  %i.cq = icmp eq ptr %.sroa.027.0.ph.i97, %i.cp  ; 2 uses
  br i1 %i.cq, label %bb.r, label %bb.s, !prof !316

bb.r:                                             ; preds = %.split318.us
  %i.cr = getelementptr inbounds i8, ptr %.sroa.8.0.ph.i98, i64 -8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !299, !noalias !14800
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i113

end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES8_NS3_IS6_EES8_SI_NS0_7move_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_:bb.a
_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i48: ; preds = %bb.bz, %bb.by
  %storemerge.i.i.i.i49 = phi ptr [ %i.jb, %bb.bz ], [ %i.ja, %bb.by ]
  %i.jc = load i32, ptr %storemerge.i.i.i.i49, align 4, !tbaa !296, !noalias !14819
  %i.jd = load ptr, ptr %.sroa.5.0.i, align 8, !tbaa !299, !noalias !14819
  %i.je = icmp eq ptr %.sroa.0.0.i, %i.jd         ; 2 uses
  br i1 %i.je, label %bb.ca, label %bb.cb, !prof !316

bb.ca:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i48
  %i.jf = getelementptr inbounds i8, ptr %.sroa.5.0.i, i64 -8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !299, !noalias !14819
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50

bb.cb:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i48
  %i.ji = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50: ; preds = %bb.cb, %bb.ca
  %storemerge.i.i1.i.i51 = phi ptr [ %i.ji, %bb.cb ], [ %i.jh, %bb.ca ]
  store i32 %i.jc, ptr %storemerge.i.i1.i.i51, align 4, !tbaa !296, !noalias !14819
  br i1 %i.ix, label %bb.cc, label %bb.cd, !prof !316

bb.cc:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.jj = getelementptr inbounds i8, ptr %.sroa.4.0.i, i64 -8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !299, !noalias !14819 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i

bb.cd:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.jm = getelementptr inbounds i8, ptr %i.iw, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i: ; preds = %bb.cd, %bb.cc
  %i.jn = phi ptr [ %i.jk, %bb.cc ], [ %i.iv, %bb.cd ]
  %.sroa.4.1.i = phi ptr [ %i.jj, %bb.cc ], [ %.sroa.4.0.i, %bb.cd ]
  %storemerge.i.i3.i.i52 = phi ptr [ %i.jl, %bb.cc ], [ %i.jm, %bb.cd ] ; 2 uses
  br i1 %i.je, label %bb.ce, label %bb.cf, !prof !316

bb.ce:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.jo = getelementptr inbounds i8, ptr %.sroa.5.0.i, i64 -8 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !299, !noalias !14819
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i

bb.cf:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.jr = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i: ; preds = %bb.cf, %bb.ce
  %.sroa.5.1.i = phi ptr [ %i.jo, %bb.ce ], [ %.sroa.5.0.i, %bb.cf ] ; 2 uses
  %storemerge.i.i4.i.i = phi ptr [ %i.jq, %bb.ce ], [ %i.jr, %bb.cf ] ; 2 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i3.i.i52, %i.af
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !197

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread: ; preds = %.thread272, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.thread
  %storemerge281.ph = phi ptr [ %i.ge, %.thread272 ], [ %i.af, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.thread ]
  %storemerge.ph = phi ptr [ %i.gf, %.thread272 ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit.thread ]
  store ptr %storemerge281.ph, ptr %6, align 8, !tbaa !401
  store ptr %storemerge.ph, ptr %i.d, align 8, !tbaa !491
  %i.js = load ptr, ptr %1, align 8, !tbaa !401, !noalias !14820 ; 2 uses
  %i.jt = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !14820 ; 2 uses
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit: ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i, %bb.bj, %bb.ba
  %storemerge281 = phi ptr [ %storemerge.i.i4.i.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %i.gb, %bb.ba ], [ %storemerge.i.i4.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i ], [ %i.ga, %bb.bj ], [ %storemerge.i.i3.i42, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  %storemerge = phi ptr [ %.sroa.5.1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %i.gi, %bb.ba ], [ %.sroa.5161.1, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i ], [ %i.fz, %bb.bj ], [ %.sroa.4150.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  %.sroa.0187.0260 = phi ptr [ %i.az, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %i.bq, %bb.ba ], [ %.sroa.0187.0, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i ], [ %.sroa.0187.0, %bb.bj ], [ %.sroa.0187.0, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i ] ; 3 uses
  store ptr %storemerge281, ptr %6, align 8, !tbaa !401
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !491
  %i.ju = load ptr, ptr %1, align 8, !tbaa !401, !noalias !14820 ; 6 uses
  %i.jv = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !14820 ; 7 uses
  %i.jw = sub nsw i64 0, %i.j
  br i1 %.not23, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58, label %bb.cg

bb.cg:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !299, !noalias !14821
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = ashr exact i64 %i.ka, 2
  %i.kc = sub nsw i64 %i.kb, %i.j                 ; 4 uses
  %or.cond.i.i.i.i57 = icmp ult i64 %i.kc, 256
  br i1 %or.cond.i.i.i.i57, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %i.jw
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58

bb.ci:                                            ; preds = %bb.cg
  %i.ke = icmp sgt i64 %i.kc, 0
  %i.kf = lshr i64 %i.kc, 8                       ; 2 uses
  %i.kg = or disjoint i64 %i.kf, -72057594037927936
  %i.kh = select i1 %i.ke, i64 %i.kf, i64 %i.kg   ; 2 uses
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.kh ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !299, !noalias !14821
  %i.kk = shl nsw i64 %i.kh, 8
  %i.kl = sub nsw i64 %i.kc, %i.kk
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.kl
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit, %bb.ch, %bb.ci
  %i.kn = phi ptr [ %i.jv, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.jv, %bb.ci ], [ %i.jv, %bb.ch ], [ %i.jt, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ] ; 3 uses
  %i.ko = phi ptr [ %i.ju, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.ju, %bb.ci ], [ %i.ju, %bb.ch ], [ %i.js, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ] ; 5 uses
  %.sroa.0187.0260434 = phi ptr [ %.sroa.0187.0260, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %.sroa.0187.0260, %bb.ci ], [ %.sroa.0187.0260, %bb.ch ], [ %i.az, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ]
  %i.kp = phi ptr [ %i.jv, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.ki, %bb.ci ], [ %i.jv, %bb.ch ], [ %i.jt, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ] ; 3 uses
  %i.kq = phi ptr [ %i.ju, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.km, %bb.ci ], [ %i.kd, %bb.ch ], [ %i.js, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ] ; 5 uses
  %.not.i59 = icmp eq ptr %i.af, %.sroa.0187.0260434
  br i1 %.not.i59, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58
  %.not13.i = icmp eq ptr %i.kq, %i.ko
  br i1 %.not13.i, label %bb.co, label %bb.cj

bb.cj:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i
  %i.kr = load ptr, ptr %i.kp, align 8, !tbaa !299
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %bb.ck, label %bb.cl, !prof !316

bb.ck:                                            ; preds = %bb.cj
  %i.kt = getelementptr inbounds i8, ptr %i.kp, i64 -8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !299
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77

bb.cl:                                            ; preds = %bb.cj
  %i.kw = getelementptr inbounds i8, ptr %i.kq, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77: ; preds = %bb.cl, %bb.ck
  %storemerge.i.i.i78 = phi ptr [ %i.kw, %bb.cl ], [ %i.kv, %bb.ck ] ; 2 uses
  %i.kx = load ptr, ptr %i.kn, align 8, !tbaa !299
  %i.ky = icmp eq ptr %i.ko, %i.kx
  br i1 %i.ky, label %bb.cm, label %bb.cn, !prof !316

bb.cm:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.kz = getelementptr inbounds i8, ptr %i.kn, i64 -8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !299
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i

bb.cn:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.lc = getelementptr inbounds i8, ptr %i.ko, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i: ; preds = %bb.cn, %bb.cm
  %storemerge.i.i4.i79 = phi ptr [ %i.lc, %bb.cn ], [ %i.lb, %bb.cm ] ; 2 uses
  %i.ld = load i32, ptr %storemerge.i.i.i78, align 4, !tbaa !296
  %i.le = load i32, ptr %storemerge.i.i4.i79, align 4, !tbaa !296
  store i32 %i.le, ptr %storemerge.i.i.i78, align 4, !tbaa !296
  store i32 %i.ld, ptr %storemerge.i.i4.i79, align 4, !tbaa !296
  br label %bb.co

bb.co:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i
  %i.lf = load ptr, ptr %2, align 8, !tbaa !401   ; 2 uses
  %i.lg = icmp eq ptr %i.kq, %i.lf
  br i1 %i.lg, label %.sink.split.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lh = icmp eq ptr %i.lf, %i.ko
  br i1 %i.lh, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

.sink.split.i:                                    ; preds = %bb.cp, %bb.co
  %.sink.i.sroa.phi.sroa.speculated = phi ptr [ %i.kn, %bb.co ], [ %i.kp, %bb.cp ]
  %.sink23.i = phi ptr [ %i.ko, %bb.co ], [ %i.kq, %bb.cp ]
  store ptr %.sink23.i, ptr %2, align 8, !tbaa !401
  store ptr %.sink.i.sroa.phi.sroa.speculated, ptr %i.g, align 8, !tbaa !491
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58, %bb.cp, %.sink.split.i
  store ptr %i.af, ptr %3, align 8, !tbaa !401
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !491
  %i.li = load ptr, ptr %i.a, align 8, !tbaa !491 ; 3 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !299
  %i.lk = load ptr, ptr %1, align 8, !tbaa !401   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.lj
  br i1 %i.ll, label %bb.cq, label %bb.cr, !prof !316

bb.cq:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %i.lm = getelementptr inbounds i8, ptr %i.li, i64 -8 ; 3 uses
  store ptr %i.lm, ptr %i.a, align 8, !tbaa !491
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !299
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit

bb.cr:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %i.lp = getelementptr inbounds i8, ptr %i.lk, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit: ; preds = %bb.cq, %bb.cr
  %i.lq = phi ptr [ %i.li, %bb.cr ], [ %i.lm, %bb.cq ]
  %storemerge.i.i = phi ptr [ %i.lp, %bb.cr ], [ %i.lo, %bb.cq ] ; 2 uses
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !401
  %i.lr = icmp ne i64 %.0332, 0
  %.neg = sext i1 %i.lr to i64
  %i.ls = add i64 %.0332, %.neg
  %i.lt = icmp ne i64 %i.l, 0
  %.neg24 = sext i1 %i.lt to i64
  %i.lu = add i64 %.sroa.speculated, %.neg24
  %i.lv = add i64 %.0245331, -1                   ; 2 uses
  %.not = icmp eq i64 %i.lv, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14788

._crit_edge:                                      ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14822)
  %i.lw = load <2 x ptr>, ptr %6, align 8, !tbaa !399, !noalias !14822
  store <2 x ptr> %i.lw, ptr %0, align 8, !tbaa !399, !alias.scope !14822
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES5_NS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load ptr, ptr %6, align 8, !tbaa !299    ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !299
  %i.c = load ptr, ptr %7, align 8, !tbaa !299    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.d = load ptr, ptr %3, align 8, !tbaa !401    ; 5 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !401
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !491  ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !491
  %i.h = load ptr, ptr %5, align 8, !tbaa !401    ; 2 uses
  %.not = icmp eq ptr %i.d, %i.h                  ; 2 uses
  %i.i = icmp eq ptr %i.b, %i.c
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !401    ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !491  ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !401    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not1.i = icmp eq ptr %i.j, %i.m
  br i1 %.not1.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = load i32, ptr %i.h, align 4, !tbaa !296, !noalias !14854
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, %.lr.ph.i
  %.sroa.456.0 = phi ptr [ %i.l, %.lr.ph.i ], [ %.sroa.456.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 4 uses
  %i.p = phi ptr [ %i.j, %.lr.ph.i ], [ %i.y, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !296, !noalias !14854
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.t = load ptr, ptr %.sroa.456.0, align 8, !tbaa !299, !noalias !14854
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1024
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, !prof !316

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.456.0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !299, !noalias !14854
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.456.1 = phi ptr [ %i.w, %bb.e ], [ %.sroa.456.0, %bb.d ] ; 2 uses
  %i.y = phi ptr [ %i.x, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.y, %i.m
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.c, !llvm.loop !198

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.c, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %.sroa.456.2 = phi ptr [ %.sroa.456.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %.sroa.456.0, %bb.c ] ; 4 uses
  %.lcssa.i = phi ptr [ %i.y, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %i.p, %bb.c ] ; 4 uses
  %i.z = icmp eq ptr %.lcssa.i, %i.j
  br i1 %i.z, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.aa = ptrtoint ptr %.sroa.456.2 to i64
  %i.ab = ptrtoint ptr %i.l to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = shl nsw i64 %i.ac, 5
  %i.ae = load ptr, ptr %.sroa.456.2, align 8, !tbaa !299
  %i.af = ptrtoint ptr %.lcssa.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !299
  %i.al = ptrtoint ptr %i.j to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2
  %i.ap = sub i64 %i.aj, %i.ao
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %bb.b, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, %bb.f
  %.lcssa.i65 = phi ptr [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ], [ %i.j, %bb.b ] ; 6 uses
  %.sroa.456.264 = phi ptr [ %.sroa.456.2, %bb.f ], [ %.sroa.456.2, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ], [ %i.l, %bb.b ] ; 5 uses
  %.0.i = phi i64 [ %i.ap, %bb.f ], [ 0, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ], [ 0, %bb.b ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.0.i ; 6 uses
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !299
  store ptr %.lcssa.i65, ptr %1, align 8, !tbaa !401
  store ptr %.sroa.456.264, ptr %i.k, align 8, !tbaa !491
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  store ptr %.lcssa.i65, ptr %9, align 8, !tbaa !401
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.456.264, ptr %i.ar, align 8, !tbaa !491
  %i.as = load <2 x ptr>, ptr %2, align 8, !tbaa !399
  store <2 x ptr> %i.as, ptr %10, align 16, !tbaa !399
  %i.at = load <2 x ptr>, ptr %4, align 8, !tbaa !399
  store <2 x ptr> %i.at, ptr %11, align 16, !tbaa !399
  %i.au = call noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES6_S5_NS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %2, align 8, !tbaa !401
  br label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES6_S5_NS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SH_RT0_SI_RSG_T2_T3_.exit

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %i.av = load ptr, ptr %2, align 8, !tbaa !401   ; 6 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !401   ; 2 uses
  %.not.i12 = icmp eq ptr %.lcssa.i65, %i.av
  %.not39.i = icmp eq ptr %i.d, %i.aw
  %or.cond = select i1 %.not.i12, i1 true, i1 %.not39.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES6_S5_NS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SH_RT0_SI_RSG_T2_T3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !299, !noalias !14855 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1024
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit.i, !prof !316

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !299, !noalias !14855 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit.i: ; preds = %bb.j, %bb.i
  %i.bd = phi ptr [ %i.bc, %bb.j ], [ %i.ay, %bb.i ]
  %.sroa.031.2.i = phi ptr [ %i.bc, %bb.j ], [ %i.ax, %bb.i ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %i.bb, %bb.j ], [ %i.g, %bb.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i65, i64 4 ; 2 uses
  %i.bf = load ptr, ptr %.sroa.456.264, align 8, !tbaa !299, !noalias !14856 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1024
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i, !prof !316

bb.k:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.456.264, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !299, !noalias !14856 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i: ; preds = %bb.k, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit.i
  %i.bk = phi ptr [ %i.bj, %bb.k ], [ %i.bf, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit.i ]
  %.sroa.7.0 = phi ptr [ %i.bi, %bb.k ], [ %.sroa.456.264, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit.i ]
  %i.bl = phi ptr [ %i.bj, %bb.k ], [ %i.be, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit.i ] ; 2 uses
  %i.bm = load i32, ptr %.lcssa.i65, align 4, !tbaa !296
  store i32 %i.bm, ptr %i.aq, align 4, !tbaa !296
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !296
  store i32 %i.bn, ptr %.lcssa.i65, align 4, !tbaa !296
  %.053.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.bo = icmp eq ptr %i.bl, %i.av
  br i1 %i.bo, label %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES5_EET0_NS0_9forward_tET_S9_S7_.exit.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit17.i
  %i.bp = phi ptr [ %i.da, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit17.i ], [ %i.bd, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i ] ; 4 uses
  %i.bq = phi ptr [ %i.db, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit17.i ], [ %i.bk, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i ] ; 2 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.2, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit17.i ], [ %.sroa.7.0, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i ] ; 6 uses
  %i.br = phi ptr [ %i.dc, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit17.i ], [ %i.bl, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i ] ; 5 uses
  %.057.i = phi ptr [ %.0.i14, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit17.i ], [ %.053.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i ] ; 2 uses
  %.01356.i = phi ptr [ %.114.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit17.i ], [ %i.aq, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i ] ; 8 uses
  %.sroa.13.055.i = phi ptr [ %.sroa.13.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit17.i ], [ %.sroa.13.2.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i ] ; 5 uses
  %.sroa.031.054.i = phi ptr [ %.sroa.031.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit17.i ], [ %.sroa.031.2.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEi.exit15.i ] ; 8 uses
  %i.bs = icmp eq ptr %.sroa.031.054.i, %i.aw
  br i1 %i.bs, label %.lr.ph.i.preheader.i.i, label %bb.m

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i13
  %.pre.i.i = load ptr, ptr %.sroa.7.1, align 8, !tbaa !299
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %i.bt = phi ptr [ %i.cc, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i ], [ %.pre.i.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.bu = phi ptr [ %i.ce, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i ], [ %.sroa.7.1, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.bv = phi ptr [ %i.cd, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i ], [ %i.br, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.04.i.i.i = phi ptr [ %i.cf, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i ], [ %.01356.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !296
  store i32 %i.bw, ptr %.04.i.i.i, align 4, !tbaa !296
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 1024
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.l, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i, !prof !316

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !299 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.cc = phi ptr [ %i.bt, %.lr.ph.i.i.i ], [ %i.cb, %bb.l ]
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive16op_partial_mergeINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SL_T2_T3_b:bb.a
  %i.ak = load i32, ptr %storemerge.i.i.i.i, align 4, !tbaa !296, !noalias !14972
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !316

bb.g:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i
  %i.al = getelementptr inbounds i8, ptr %.sroa.642.0, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !299, !noalias !14972
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1020
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i

bb.h:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i
  %i.ao = getelementptr inbounds i8, ptr %.sroa.039.0, i64 -4
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i1.i.i = phi ptr [ %i.ao, %bb.h ], [ %i.an, %bb.g ]
  store i32 %i.ak, ptr %storemerge.i.i1.i.i, align 4, !tbaa !296, !noalias !14972
  %i.ap = icmp eq ptr %storemerge.i.i4.i, %i.b
  br i1 %i.ap, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SL_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !14962

bb.i:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i
  %i.aq = phi i32 [ %i.u, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.q, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i ]
  %i.ar = phi ptr [ %i.t, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.p, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.642.0, align 8, !tbaa !299, !noalias !14974
  %i.at = icmp eq ptr %.sroa.039.0, %i.as
  br i1 %i.at, label %bb.j, label %bb.k, !prof !316

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds i8, ptr %.sroa.642.0, i64 -8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !299, !noalias !14974
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1020
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds i8, ptr %.sroa.039.0, i64 -4
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i: ; preds = %bb.k, %bb.j
  %storemerge.i.i7.i53 = phi ptr [ %i.ax, %bb.k ], [ %i.aw, %bb.j ] ; 3 uses
  %.sroa.642.151 = phi ptr [ %.sroa.642.0, %bb.k ], [ %i.au, %bb.j ] ; 2 uses
  store i32 %i.aq, ptr %storemerge.i.i7.i53, align 4, !tbaa !296, !noalias !14972
  %i.ay = icmp eq ptr %i.ar, %i.a
  br i1 %i.ay, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SL_T2_T3_.exit, label %.preheader.i, !llvm.loop !14962

bb.l:                                             ; preds = %bb.a
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SL_T2_T3_.exit, label %.preheader.i6.outer

.preheader.i6.outer:                              ; preds = %bb.l, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18
  %.sroa.6.0.ph = phi ptr [ %.sroa.6.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ], [ %i.e, %bb.l ]
  %.sroa.031.0.ph = phi ptr [ %storemerge.i.i5.i15, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ], [ %i.c, %bb.l ]
  %.sroa.016.0.i7.ph = phi ptr [ %storemerge.i.i4.i13, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ], [ %i.h, %bb.l ] ; 5 uses
  %.sroa.9.0.i8.ph = phi ptr [ %.sroa.9.3.i12, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ], [ %i.i, %bb.l ] ; 6 uses
  %.sroa.023.0.i9.ph = phi ptr [ %.sroa.023.0.i9, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ], [ %i.g, %bb.l ]
  %i.az = load ptr, ptr %.sroa.9.0.i8.ph, align 8, !tbaa !299, !noalias !14975
  %i.ba = icmp eq ptr %.sroa.016.0.i7.ph, %i.az   ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.016.0.i7.ph, i64 -4
  %i.bc = getelementptr inbounds i8, ptr %.sroa.9.0.i8.ph, i64 -8
  br label %.preheader.i6

.preheader.i6:                                    ; preds = %.preheader.i6.outer, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28
  %.sroa.6.0 = phi ptr [ %.sroa.6.357, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28 ], [ %.sroa.6.0.ph, %.preheader.i6.outer ] ; 7 uses
  %.sroa.031.0 = phi ptr [ %storemerge.i.i7.i2759, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28 ], [ %.sroa.031.0.ph, %.preheader.i6.outer ] ; 5 uses
  %.sroa.023.0.i9 = phi ptr [ %i.cf, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28 ], [ %.sroa.023.0.i9.ph, %.preheader.i6.outer ] ; 4 uses
  br i1 %i.ba, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i30, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i10, !prof !316

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i30: ; preds = %.preheader.i6
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !299, !noalias !14975 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1020
  %i.bf = getelementptr inbounds i8, ptr %.sroa.023.0.i9, i64 -4 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !296, !noalias !14975
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !296, !noalias !14975 ; 2 uses
  %.not31.i = icmp slt i32 %i.bg, %i.bh
  br i1 %.not31.i, label %bb.s, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit120

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i10: ; preds = %.preheader.i6
  %i.bi = getelementptr inbounds i8, ptr %.sroa.023.0.i9, i64 -4 ; 2 uses
  %i.bj = load i32, ptr %i.bb, align 4, !tbaa !296, !noalias !14975
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !296, !noalias !14975 ; 2 uses
  %.not30.i = icmp slt i32 %i.bj, %i.bk
  br i1 %.not30.i, label %bb.s, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i10
  %i.bl = getelementptr inbounds i8, ptr %.sroa.016.0.i7.ph, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit120: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i30
  %i.bm = getelementptr inbounds i8, ptr %.sroa.9.0.i8.ph, i64 -8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11: ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit120, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit
  %.sroa.9.3.i12 = phi ptr [ %.sroa.9.0.i8.ph, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit ], [ %i.bm, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit120 ] ; 2 uses
  %storemerge.i.i4.i13 = phi ptr [ %i.bl, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit ], [ %i.bn, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11.split.loop.exit120 ] ; 3 uses
  %i.bo = load ptr, ptr %.sroa.6.0, align 8, !tbaa !299, !noalias !14976
  %i.bp = icmp eq ptr %.sroa.031.0, %i.bo         ; 2 uses
  br i1 %i.bp, label %bb.m, label %bb.n, !prof !316

bb.m:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11
  %i.bq = getelementptr inbounds i8, ptr %.sroa.6.0, i64 -8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !299, !noalias !14976
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit6.i14

bb.n:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit.i11
  %i.bt = getelementptr inbounds i8, ptr %.sroa.031.0, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit6.i14

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit6.i14: ; preds = %bb.n, %bb.m
  %.sroa.6.1 = phi ptr [ %i.bq, %bb.m ], [ %.sroa.6.0, %bb.n ] ; 2 uses
  %storemerge.i.i5.i15 = phi ptr [ %i.bs, %bb.m ], [ %i.bt, %bb.n ] ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.p, !prof !316

bb.o:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit6.i14
  %i.bu = getelementptr inbounds i8, ptr %.sroa.9.0.i8.ph, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !299, !noalias !14975
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i16

bb.p:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit6.i14
  %i.bx = getelementptr inbounds i8, ptr %.sroa.016.0.i7.ph, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i16

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i16: ; preds = %bb.p, %bb.o
  %storemerge.i.i.i.i17 = phi ptr [ %i.bx, %bb.p ], [ %i.bw, %bb.o ]
  %i.by = load i32, ptr %storemerge.i.i.i.i17, align 4, !tbaa !296, !noalias !14975
  br i1 %i.bp, label %bb.q, label %bb.r, !prof !316

bb.q:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i16
  %i.bz = getelementptr inbounds i8, ptr %.sroa.6.0, i64 -8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !299, !noalias !14975
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1020
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18

bb.r:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i16
  %i.cc = getelementptr inbounds i8, ptr %.sroa.031.0, i64 -4
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18: ; preds = %bb.r, %bb.q
  %storemerge.i.i1.i.i19 = phi ptr [ %i.cc, %bb.r ], [ %i.cb, %bb.q ]
  store i32 %i.by, ptr %storemerge.i.i1.i.i19, align 4, !tbaa !296, !noalias !14975
  %i.cd = icmp eq ptr %storemerge.i.i4.i13, %i.b
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SL_T2_T3_.exit, label %.preheader.i6.outer, !llvm.loop !14969

bb.s:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i10, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i30
  %i.ce = phi i32 [ %i.bk, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i10 ], [ %i.bh, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i30 ]
  %i.cf = phi ptr [ %i.bi, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i10 ], [ %i.bf, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i30 ] ; 3 uses
  %i.cg = load ptr, ptr %.sroa.6.0, align 8, !tbaa !299, !noalias !14977
  %i.ch = icmp eq ptr %.sroa.031.0, %i.cg
  br i1 %i.ch, label %bb.t, label %bb.u, !prof !316

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds i8, ptr %.sroa.6.0, i64 -8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !299, !noalias !14977
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1020
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28

bb.u:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds i8, ptr %.sroa.031.0, i64 -4
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28: ; preds = %bb.u, %bb.t
  %storemerge.i.i7.i2759 = phi ptr [ %i.cl, %bb.u ], [ %i.ck, %bb.t ] ; 3 uses
  %.sroa.6.357 = phi ptr [ %.sroa.6.0, %bb.u ], [ %i.ci, %bb.t ] ; 2 uses
  store i32 %i.ce, ptr %storemerge.i.i7.i2759, align 4, !tbaa !296, !noalias !14975
  %i.cm = icmp eq ptr %i.cf, %i.a
  br i1 %i.cm, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SL_T2_T3_.exit, label %.preheader.i6, !llvm.loop !14969

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SL_T2_T3_.exit: ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i, %bb.l, %bb.b
  %.sroa.023.2.i25.sink = phi ptr [ %i.g, %bb.l ], [ %i.g, %bb.b ], [ %.sroa.023.0.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %i.ar, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i ], [ %i.cf, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28 ], [ %.sroa.023.0.i9, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ]
  %.sroa.016.2.i23.sink = phi ptr [ %i.h, %bb.l ], [ %i.h, %bb.b ], [ %storemerge.i.i4.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %.sroa.016.0.i.ph, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i ], [ %.sroa.016.0.i7.ph, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28 ], [ %storemerge.i.i4.i13, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ]
  %.sroa.9.2.i24.sink = phi ptr [ %i.i, %bb.l ], [ %i.i, %bb.b ], [ %.sroa.9.3.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %.sroa.9.0.i.ph, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i ], [ %.sroa.9.0.i8.ph, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28 ], [ %.sroa.9.3.i12, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ]
  %.sroa.031.2.sink = phi ptr [ %i.c, %bb.l ], [ %i.c, %bb.b ], [ %storemerge.i.i5.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %storemerge.i.i7.i53, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i ], [ %storemerge.i.i7.i2759, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28 ], [ %storemerge.i.i5.i15, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ]
  %.sroa.6.4.sink = phi ptr [ %i.e, %bb.l ], [ %i.e, %bb.b ], [ %.sroa.642.3, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %.sroa.642.151, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i ], [ %.sroa.6.357, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEENS3_INS_9container14deque_iteratorIS4_Lb0ELj0ELj0EmEEEEEEvT_T0_.exit.i28 ], [ %.sroa.6.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i18 ]
  store ptr %.sroa.023.2.i25.sink, ptr %1, align 8, !tbaa !441, !noalias !398
  store ptr %.sroa.016.2.i23.sink, ptr %3, align 8, !tbaa !401, !noalias !398
  store ptr %.sroa.9.2.i24.sink, ptr %i.f, align 8, !tbaa !491, !noalias !398
  store ptr %.sroa.031.2.sink, ptr %0, align 8, !tbaa !401
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.4.sink, ptr %i.cn, align 8, !tbaa !491
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #1 comdat {
bb.a:
  %12 = alloca %"class.boost::movelib::inverse", align 1 ; 3 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %19 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 4 uses
  %20 = alloca %"class.boost::movelib::inverse", align 1 ; 3 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %27 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 4 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 3 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 9 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 10 uses
  %.not191 = icmp eq i64 %8, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.c = sub nsw i64 0, %7                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %7, 0               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %1, align 8, !tbaa !401, !noalias !15055
  %.pre198 = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !15055
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit
  %33 = phi ptr [ %.pre198, %.lr.ph ], [ %i.io, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ]
  %34 = phi ptr [ %.pre, %.lr.ph ], [ %storemerge.i.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ]
  %i.u = phi i64 [ %10, %.lr.ph ], [ %i.is, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  %.0193 = phi i64 [ %9, %.lr.ph ], [ %i.iq, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ] ; 3 uses
  %.0178192 = phi i64 [ %8, %.lr.ph ], [ %i.it, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15055)
  store ptr %34, ptr %28, align 8, !tbaa !401, !alias.scope !15055
  store ptr %33, ptr %32, align 8, !tbaa !491, !alias.scope !15055
  call void @llvm.experimental.noalias.scope.decl(metadata !15056)
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !399, !noalias !15056
  store <2 x ptr> %i.v, ptr %29, align 16, !tbaa !399, !alias.scope !15056
  %i.w = call noundef i64 @_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_(ptr noundef nonnull align 8 dead_on_return %28, ptr noundef nonnull align 8 dead_on_return %29, i64 noundef %7, i64 noundef %.0193, i64 noundef %i.u) ; 5 uses
  %i.x = add i64 %i.w, 2
  %i.y = call i64 @llvm.umax.i64(i64 %i.u, i64 %i.x) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.y, i64 %.0178192)
  %i.z = load ptr, ptr %3, align 8, !tbaa !401, !noalias !15057 ; 6 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !491, !noalias !15057 ; 8 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !299, !noalias !15058
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = sub nsw i64 %i.af, %7                   ; 4 uses
  %or.cond.i.i.i.i = icmp ult i64 %i.ag, 256
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp sgt i64 %i.ag, 0
  %i.aj = lshr i64 %i.ag, 8                       ; 2 uses
  %i.ak = or disjoint i64 %i.aj, -72057594037927936
  %i.al = select i1 %i.ai, i64 %i.aj, i64 %i.ak   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !299, !noalias !15058
  %i.ao = shl nsw i64 %i.al, 8
  %i.ap = sub nsw i64 %i.ag, %i.ao
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.ar = phi ptr [ %i.aa, %bb.b ], [ %i.am, %bb.e ], [ %i.aa, %bb.d ] ; 6 uses
  %i.as = phi ptr [ %i.z, %bb.b ], [ %i.aq, %bb.e ], [ %i.ah, %bb.d ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.at = mul i64 %i.w, %7                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15059)
  %i.au = sub nsw i64 0, %i.at
  %.not.i.i.i.i25 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i25, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !299, !noalias !15059
  %i.aw = ptrtoint ptr %i.z to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 2
  %i.ba = sub nsw i64 %i.az, %i.at                ; 4 uses
  %or.cond.i.i.i.i29 = icmp ult i64 %i.ba, 256
  br i1 %or.cond.i.i.i.i29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.au
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30

bb.h:                                             ; preds = %bb.f
  %i.bc = icmp sgt i64 %i.ba, 0
  %i.bd = lshr i64 %i.ba, 8                       ; 2 uses
  %i.be = or disjoint i64 %i.bd, -72057594037927936
  %i.bf = select i1 %i.bc, i64 %i.bd, i64 %i.be   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !299, !noalias !15059
  %i.bi = shl nsw i64 %i.bf, 8
  %i.bj = sub nsw i64 %i.ba, %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit, %bb.g, %bb.h
  %i.bl = phi ptr [ %i.aa, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit ], [ %i.bg, %bb.h ], [ %i.aa, %bb.g ] ; 3 uses
  %i.bm = phi ptr [ %i.z, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit ], [ %i.bk, %bb.h ], [ %i.bb, %bb.g ] ; 4 uses
  store ptr %i.bm, ptr %30, align 8, !tbaa !401, !alias.scope !15060
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !491, !alias.scope !15060
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !299, !noalias !15061
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 2
  %i.bs = sub nsw i64 %i.br, %7                   ; 4 uses
  %or.cond.i.i.i.i35 = icmp ult i64 %i.bs, 256
  br i1 %or.cond.i.i.i.i35, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36

bb.k:                                             ; preds = %bb.i
  %i.bu = icmp sgt i64 %i.bs, 0
  %i.bv = lshr i64 %i.bs, 8                       ; 2 uses
  %i.bw = or disjoint i64 %i.bv, -72057594037927936
  %i.bx = select i1 %i.bu, i64 %i.bv, i64 %i.bw   ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !299, !noalias !15061
  %i.ca = shl nsw i64 %i.bx, 8
  %i.cb = sub nsw i64 %i.bs, %i.ca
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30, %bb.j, %bb.k
  %i.cd = phi ptr [ %i.bm, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30 ], [ %i.cc, %bb.k ], [ %i.bt, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %.not23 = icmp eq i64 %i.w, 0                   ; 2 uses
  %i.ce = load ptr, ptr %5, align 8, !tbaa !401, !noalias !398 ; 4 uses
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !491, !noalias !398 ; 4 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !401, !noalias !398 ; 4 uses
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !491, !noalias !398 ; 4 uses
  br i1 %.not23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.ce, ptr %21, align 8, !tbaa !401, !alias.scope !15062, !noalias !15063
  store ptr %i.cf, ptr %i.j, align 8, !tbaa !491, !alias.scope !15062, !noalias !15063
  store ptr %i.as, ptr %22, align 8, !tbaa !401, !alias.scope !15064, !noalias !15063
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !491, !alias.scope !15064, !noalias !15063
  store ptr %i.cg, ptr %23, align 8, !tbaa !401, !alias.scope !15065, !noalias !15063
  store ptr %i.ch, ptr %i.l, align 8, !tbaa !491, !alias.scope !15065, !noalias !15063
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dead_on_return %23)
  br label %.thread

bb.n:                                             ; preds = %bb.l
  store ptr %i.ce, ptr %24, align 8, !tbaa !401, !alias.scope !15066, !noalias !15063
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !491, !alias.scope !15066, !noalias !15063
  store ptr %i.as, ptr %25, align 8, !tbaa !401, !alias.scope !15067, !noalias !15063
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !491, !alias.scope !15067, !noalias !15063
  store ptr %i.cg, ptr %26, align 8, !tbaa !401, !alias.scope !15068, !noalias !15063
  store ptr %i.ch, ptr %i.i, align 8, !tbaa !491, !alias.scope !15068, !noalias !15063
  store ptr %20, ptr %27, align 8, !tbaa !455, !noalias !15063
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dead_on_return %27)
  br label %.thread

bb.o:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  br i1 %11, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ce, ptr %13, align 8, !tbaa !401, !alias.scope !15069, !noalias !15070
  store ptr %i.cf, ptr %i.q, align 8, !tbaa !491, !alias.scope !15069, !noalias !15070
  store ptr %i.as, ptr %14, align 8, !tbaa !401, !alias.scope !15071, !noalias !15070
  store ptr %i.ar, ptr %i.r, align 8, !tbaa !491, !alias.scope !15071, !noalias !15070
  store ptr %i.cg, ptr %15, align 8, !tbaa !401, !alias.scope !15072, !noalias !15070
  store ptr %i.ch, ptr %i.s, align 8, !tbaa !491, !alias.scope !15072, !noalias !15070
  call void @_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %i.ce, ptr %16, align 8, !tbaa !401, !alias.scope !15073, !noalias !15070
  store ptr %i.cf, ptr %i.n, align 8, !tbaa !491, !alias.scope !15073, !noalias !15070
  store ptr %i.as, ptr %17, align 8, !tbaa !401, !alias.scope !15074, !noalias !15070
  store ptr %i.ar, ptr %i.o, align 8, !tbaa !491, !alias.scope !15074, !noalias !15070
  store ptr %i.cg, ptr %18, align 8, !tbaa !401, !alias.scope !15075, !noalias !15070
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !491, !alias.scope !15075, !noalias !15070
  store ptr %12, ptr %19, align 8, !tbaa !455, !noalias !15070
  call void @_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SN_RT0_SP_SM_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.ci = load ptr, ptr %31, align 8, !tbaa !401, !noalias !15076 ; 4 uses
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !491, !noalias !15076 ; 3 uses
  store ptr %i.ci, ptr %6, align 8, !tbaa !401
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !491
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.ck = load ptr, ptr %3, align 8, !tbaa !401   ; 3 uses
  %i.cl = icmp eq ptr %i.ck, %i.ci
  br i1 %i.cl, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread, label %bb.aq

.thread:                                          ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_:bb.a
  %i.fz = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50: ; preds = %bb.au, %bb.at
  %storemerge.i.i1.i.i51 = phi ptr [ %i.fz, %bb.au ], [ %i.fy, %bb.at ] ; 2 uses
  %i.ga = load i32, ptr %storemerge.i.i.i.i49, align 4, !tbaa !296, !noalias !15087
  %i.gb = load i32, ptr %storemerge.i.i1.i.i51, align 4, !tbaa !296, !noalias !15087
  store i32 %i.gb, ptr %storemerge.i.i.i.i49, align 4, !tbaa !296, !noalias !15087
  store i32 %i.ga, ptr %storemerge.i.i1.i.i51, align 4, !tbaa !296, !noalias !15087
  br i1 %i.fp, label %bb.av, label %bb.aw, !prof !316

bb.av:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.gc = getelementptr inbounds i8, ptr %.sroa.4.0.i, i64 -8 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !299, !noalias !15087 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i

bb.aw:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.gf = getelementptr inbounds i8, ptr %i.fo, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i: ; preds = %bb.aw, %bb.av
  %i.gg = phi ptr [ %i.gd, %bb.av ], [ %i.fn, %bb.aw ]
  %.sroa.4.1.i = phi ptr [ %i.gc, %bb.av ], [ %.sroa.4.0.i, %bb.aw ]
  %storemerge.i.i3.i.i52 = phi ptr [ %i.ge, %bb.av ], [ %i.gf, %bb.aw ] ; 2 uses
  br i1 %i.fv, label %bb.ax, label %bb.ay, !prof !316

bb.ax:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.gh = getelementptr inbounds i8, ptr %.sroa.5.0.i, i64 -8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !299, !noalias !15087
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i

bb.ay:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i: ; preds = %bb.ay, %bb.ax
  %.sroa.5.1.i = phi ptr [ %i.gh, %bb.ax ], [ %.sroa.5.0.i, %bb.ay ] ; 2 uses
  %storemerge.i.i4.i.i = phi ptr [ %i.gj, %bb.ax ], [ %i.gk, %bb.ay ] ; 2 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i3.i.i52, %i.as
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !195

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread: ; preds = %bb.aq, %bb.r
  %storemerge188.ph = phi ptr [ %i.ci, %bb.aq ], [ %i.as, %bb.r ]
  %storemerge.ph = phi ptr [ %i.cj, %bb.aq ], [ %i.ar, %bb.r ]
  store ptr %storemerge188.ph, ptr %6, align 8, !tbaa !401
  store ptr %storemerge.ph, ptr %i.e, align 8, !tbaa !491
  %i.gl = load ptr, ptr %1, align 8, !tbaa !401, !noalias !15088 ; 2 uses
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !15088 ; 2 uses
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread237: ; preds = %.thread180, %.thread179
  %storemerge188.ph235 = phi ptr [ %i.cm, %.thread180 ], [ %i.co, %.thread179 ]
  %storemerge.ph236 = phi ptr [ %i.cn, %.thread180 ], [ %i.cr, %.thread179 ]
  store ptr %storemerge188.ph235, ptr %6, align 8, !tbaa !401
  store ptr %storemerge.ph236, ptr %i.e, align 8, !tbaa !491
  %i.gn = load ptr, ptr %1, align 8, !tbaa !401, !noalias !15088
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !15088
  br label %bb.az

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit: ; preds = %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i
  %storemerge188 = phi ptr [ %storemerge.i.i4.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i ], [ %storemerge.i.i4.i.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %storemerge.i.i3.i42185, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  %storemerge = phi ptr [ %.sroa.5111.1, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i ], [ %.sroa.5.1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %i.eo, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  store ptr %storemerge188, ptr %6, align 8, !tbaa !401
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !491
  %i.gp = load ptr, ptr %1, align 8, !tbaa !401, !noalias !15088 ; 3 uses
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !15088 ; 3 uses
  br i1 %.not23, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58, label %bb.az

bb.az:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread237, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit
  %i.gr = phi ptr [ %i.go, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread237 ], [ %i.gq, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ] ; 5 uses
  %i.gs = phi ptr [ %i.gn, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread237 ], [ %i.gp, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ] ; 4 uses
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !299, !noalias !15089
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 2
  %i.gy = sub nsw i64 %i.gx, %i.w                 ; 4 uses
  %or.cond.i.i.i.i57 = icmp ult i64 %i.gy, 256
  br i1 %or.cond.i.i.i.i57, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gz = sub nsw i64 0, %i.w
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.gz
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58

bb.bb:                                            ; preds = %bb.az
  %i.hb = icmp sgt i64 %i.gy, 0
  %i.hc = lshr i64 %i.gy, 8                       ; 2 uses
  %i.hd = or disjoint i64 %i.hc, -72057594037927936
  %i.he = select i1 %i.hb, i64 %i.hc, i64 %i.hd   ; 2 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.he ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !299, !noalias !15089
  %i.hh = shl nsw i64 %i.he, 8
  %i.hi = sub nsw i64 %i.gy, %i.hh
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.hi
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit, %bb.ba, %bb.bb
  %i.hk = phi ptr [ %i.gq, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.gr, %bb.bb ], [ %i.gr, %bb.ba ], [ %i.gm, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ] ; 3 uses
  %i.hl = phi ptr [ %i.gp, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.gs, %bb.bb ], [ %i.gs, %bb.ba ], [ %i.gl, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ] ; 5 uses
  %i.hm = phi ptr [ %i.gq, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.hf, %bb.bb ], [ %i.gr, %bb.ba ], [ %i.gm, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ] ; 3 uses
  %i.hn = phi ptr [ %i.gp, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.hj, %bb.bb ], [ %i.ha, %bb.ba ], [ %i.gl, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ] ; 5 uses
  %i.ho = load ptr, ptr %30, align 8, !tbaa !401, !noalias !15090
  %.not.i59 = icmp eq ptr %i.as, %i.ho
  br i1 %.not.i59, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58
  %.not13.i = icmp eq ptr %i.hn, %i.hl
  br i1 %.not13.i, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !299
  %i.hq = icmp eq ptr %i.hn, %i.hp
  br i1 %i.hq, label %bb.bd, label %bb.be, !prof !316

bb.bd:                                            ; preds = %bb.bc
  %i.hr = getelementptr inbounds i8, ptr %i.hm, i64 -8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !299
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77

bb.be:                                            ; preds = %bb.bc
  %i.hu = getelementptr inbounds i8, ptr %i.hn, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77: ; preds = %bb.be, %bb.bd
  %storemerge.i.i.i78 = phi ptr [ %i.hu, %bb.be ], [ %i.ht, %bb.bd ] ; 2 uses
  %i.hv = load ptr, ptr %i.hk, align 8, !tbaa !299
  %i.hw = icmp eq ptr %i.hl, %i.hv
  br i1 %i.hw, label %bb.bf, label %bb.bg, !prof !316

bb.bf:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.hx = getelementptr inbounds i8, ptr %i.hk, i64 -8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !299
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i

bb.bg:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.ia = getelementptr inbounds i8, ptr %i.hl, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i: ; preds = %bb.bg, %bb.bf
  %storemerge.i.i4.i79 = phi ptr [ %i.ia, %bb.bg ], [ %i.hz, %bb.bf ] ; 2 uses
  %i.ib = load i32, ptr %storemerge.i.i.i78, align 4, !tbaa !296
  %i.ic = load i32, ptr %storemerge.i.i4.i79, align 4, !tbaa !296
  store i32 %i.ic, ptr %storemerge.i.i.i78, align 4, !tbaa !296
  store i32 %i.ib, ptr %storemerge.i.i4.i79, align 4, !tbaa !296
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i
  %i.id = load ptr, ptr %2, align 8, !tbaa !401   ; 2 uses
  %i.ie = icmp eq ptr %i.hn, %i.id
  br i1 %i.ie, label %.sink.split.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.if = icmp eq ptr %i.id, %i.hl
  br i1 %i.if, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

.sink.split.i:                                    ; preds = %bb.bi, %bb.bh
  %.sink.i.sroa.phi.sroa.speculated = phi ptr [ %i.hk, %bb.bh ], [ %i.hm, %bb.bi ]
  %.sink23.i = phi ptr [ %i.hl, %bb.bh ], [ %i.hn, %bb.bi ]
  store ptr %.sink23.i, ptr %2, align 8, !tbaa !401
  store ptr %.sink.i.sroa.phi.sroa.speculated, ptr %i.t, align 8, !tbaa !491
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58, %bb.bi, %.sink.split.i
  store ptr %i.as, ptr %3, align 8, !tbaa !401
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !491
  %i.ig = load ptr, ptr %i.a, align 8, !tbaa !491 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !299
  %i.ii = load ptr, ptr %1, align 8, !tbaa !401   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.ih
  br i1 %i.ij, label %bb.bj, label %bb.bk, !prof !316

bb.bj:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %i.ik = getelementptr inbounds i8, ptr %i.ig, i64 -8 ; 3 uses
  store ptr %i.ik, ptr %i.a, align 8, !tbaa !491
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !299
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit

bb.bk:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %i.in = getelementptr inbounds i8, ptr %i.ii, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit: ; preds = %bb.bj, %bb.bk
  %i.io = phi ptr [ %i.ig, %bb.bk ], [ %i.ik, %bb.bj ]
  %storemerge.i.i = phi ptr [ %i.in, %bb.bk ], [ %i.im, %bb.bj ] ; 2 uses
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !401
  %i.ip = icmp ne i64 %.0193, 0
  %.neg = sext i1 %i.ip to i64
  %i.iq = add i64 %.0193, %.neg
  %i.ir = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ir to i64
  %i.is = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.it = add i64 %.0178192, -1                   ; 2 uses
  %.not = icmp eq i64 %i.it, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !15052

._crit_edge:                                      ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !15091)
  %i.iu = load <2 x ptr>, ptr %6, align 8, !tbaa !399, !noalias !15091
  store <2 x ptr> %i.iu, ptr %0, align 8, !tbaa !399, !alias.scope !15091
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES6_NS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 8 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 16 ; 8 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.a = load ptr, ptr %6, align 8, !tbaa !401    ; 4 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !401
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !491  ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !491
  %i.e = load ptr, ptr %7, align 8, !tbaa !401    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !491
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %3, align 8, !tbaa !399
  %i.j = load ptr, ptr %3, align 8, !tbaa !401
  store <2 x ptr> %i.i, ptr %9, align 16, !tbaa !399
  %i.k = load ptr, ptr %5, align 8, !tbaa !401    ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k                  ; 2 uses
  %i.l = icmp eq ptr %i.a, %i.e
  br i1 %i.l, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !401    ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !491  ; 4 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !401    ; 2 uses
  %.not1.i = icmp eq ptr %i.m, %i.p
  br i1 %.not1.i, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = load i32, ptr %i.k, align 4, !tbaa !296, !noalias !15116
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, %.lr.ph.i
  %.sroa.4.0 = phi ptr [ %i.o, %.lr.ph.i ], [ %.sroa.4.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 4 uses
  %i.r = phi ptr [ %i.m, %.lr.ph.i ], [ %i.aa, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !296, !noalias !15116
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.v = load ptr, ptr %.sroa.4.0, align 8, !tbaa !299, !noalias !15116
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1024
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.e, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, !prof !316

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !299, !noalias !15116
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.4.1 = phi ptr [ %i.y, %bb.e ], [ %.sroa.4.0, %bb.d ] ; 2 uses
  %i.aa = phi ptr [ %i.z, %bb.e ], [ %i.u, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.aa, %i.p
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.c, !llvm.loop !198

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.c, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %.sroa.4.2 = phi ptr [ %.sroa.4.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %.sroa.4.0, %bb.c ] ; 5 uses
  %.lcssa.i = phi ptr [ %i.aa, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %i.r, %bb.c ] ; 5 uses
  %i.ab = icmp eq ptr %.lcssa.i, %i.m
  br i1 %i.ab, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.ac = ptrtoint ptr %.sroa.4.2 to i64
  %i.ad = ptrtoint ptr %i.o to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = shl nsw i64 %i.ae, 5
  %i.ag = load ptr, ptr %.sroa.4.2, align 8, !tbaa !299
  %i.ah = ptrtoint ptr %.lcssa.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = add nsw i64 %i.ak, %i.af                ; 2 uses
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !299
  %i.an = ptrtoint ptr %i.m to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 2 uses
  %i.ar = sub i64 %i.al, %i.aq                    ; 2 uses
  %.not.i7 = icmp eq i64 %i.al, %i.aq
  br i1 %.not.i7, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !299
  %i.at = ptrtoint ptr %i.a to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = add nsw i64 %i.aw, %i.ar                ; 4 uses
  %or.cond.i = icmp ult i64 %i.ax, 256
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ar
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = icmp sgt i64 %i.ax, 0
  %i.ba = lshr i64 %i.ax, 8                       ; 2 uses
  %i.bb = or disjoint i64 %i.ba, -72057594037927936
  %i.bc = select i1 %i.az, i64 %i.ba, i64 %i.bb   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bc ; 2 uses
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !491
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !299
  %i.bf = shl nsw i64 %i.bc, 8
  %i.bg = sub nsw i64 %i.ax, %i.bf
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge.i = phi ptr [ %i.bh, %bb.h ], [ %i.ay, %bb.g ]
  store ptr %storemerge.i, ptr %8, align 8, !tbaa !401
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit: ; preds = %bb.b, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, %bb.i
  %.sroa.4.25562 = phi ptr [ %.sroa.4.2, %bb.i ], [ %.sroa.4.2, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit ], [ %.sroa.4.2, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ], [ %i.o, %bb.b ] ; 3 uses
  %.lcssa.i5661 = phi ptr [ %.lcssa.i, %bb.i ], [ %.lcssa.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit ], [ %.lcssa.i, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ], [ %i.m, %bb.b ] ; 3 uses
  store ptr %.lcssa.i5661, ptr %1, align 8, !tbaa !401
  store ptr %.sroa.4.25562, ptr %i.n, align 8, !tbaa !491
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit
  store ptr %.lcssa.i5661, ptr %11, align 8, !tbaa !401
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.4.25562, ptr %i.bi, align 8, !tbaa !491
  %i.bj = load <2 x ptr>, ptr %2, align 8, !tbaa !399
  store <2 x ptr> %i.bj, ptr %12, align 16, !tbaa !399
  %i.bk = load <2 x ptr>, ptr %4, align 8, !tbaa !399
  store <2 x ptr> %i.bk, ptr %13, align 16, !tbaa !399
  call void @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator") align 8 %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit
  store ptr %.lcssa.i5661, ptr %14, align 8, !tbaa !401
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.4.25562, ptr %i.bl, align 8, !tbaa !491
  %i.bm = load <2 x ptr>, ptr %2, align 8, !tbaa !399
  store <2 x ptr> %i.bm, ptr %15, align 16, !tbaa !399
  %i.bn = load <2 x ptr>, ptr %4, align 8, !tbaa !399
  store <2 x ptr> %i.bn, ptr %16, align 16, !tbaa !399
  call void @_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SH_RT0_SI_RSG_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator") align 8 %10, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bo = load ptr, ptr %10, align 8, !tbaa !401
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !491
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.br = load <2 x ptr>, ptr %2, align 8, !tbaa !399
  store <2 x ptr> %i.br, ptr %1, align 8, !tbaa !399
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.sroa.046.0 = phi ptr [ %i.bo, %bb.l ], [ %i.e, %bb.a ] ; 5 uses
  %.sroa.850.0 = phi ptr [ %i.bq, %bb.l ], [ %i.g, %bb.a ]
  %i.bs = load ptr, ptr %4, align 8, !tbaa !401   ; 4 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !401   ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !491 ; 4 uses
  %i.bw = load ptr, ptr %8, align 8, !tbaa !401, !noalias !398 ; 6 uses
  br i1 %.not, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %9, align 16, !tbaa !401, !noalias !15117 ; 3 uses
  %.not.i8 = icmp eq ptr %i.bx, %i.bs
  %.not39.i = icmp eq ptr %.sroa.046.0, %i.bw
  %or.cond = select i1 %.not.i8, i1 true, i1 %.not39.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !491 ; 2 uses
  %.pre84 = load ptr, ptr %i.h, align 8, !tbaa !491 ; 2 uses
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %5, align 8, !tbaa !401, !noalias !15117
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !491, !noalias !15117
  br label %.outer.i

end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.outer, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16
  %.sroa.030.0 = phi ptr [ %storemerge.i.i9, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16 ], [ %.sroa.030.0.ph, %.outer ] ; 6 uses
  %.sroa.935.0 = phi ptr [ %.sroa.935.3, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16 ], [ %.sroa.935.0.ph, %.outer ] ; 7 uses
  %i.l = load ptr, ptr %.sroa.9.0.ph, align 8, !tbaa !299
  %i.m = icmp eq ptr %.sroa.023.0.ph, %i.l        ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit, !prof !316

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.935.0, align 8, !tbaa !299
  %i.q = icmp eq ptr %.sroa.030.0, %i.p
  br i1 %i.q, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.thread, !prof !316

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit
  %i.r = getelementptr inbounds i8, ptr %.sroa.935.0, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !299
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1020 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !296
  %i.v = load i32, ptr %storemerge.i.i, align 4, !tbaa !296
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit10

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.thread: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit
  %i.x = getelementptr inbounds i8, ptr %.sroa.030.0, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !296
  %i.z = load i32, ptr %storemerge.i.i, align 4, !tbaa !296
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit10

bb.e:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.thread, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5
  br i1 %i.m, label %bb.f, label %bb.g, !prof !316

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %.sroa.9.0.ph, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !299, !noalias !17278
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %.sroa.023.0.ph, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit: ; preds = %bb.f, %bb.g
  %.sroa.9.3 = phi ptr [ %i.ab, %bb.f ], [ %.sroa.9.0.ph, %bb.g ] ; 2 uses
  %storemerge.i.i6 = phi ptr [ %i.ad, %bb.f ], [ %i.ae, %bb.g ] ; 3 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !401, !noalias !17279 ; 4 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !491, !noalias !17279 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !299, !noalias !17280
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !316

bb.h:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !491, !noalias !17280
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !299, !noalias !17280
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit8

bb.i:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit8

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit8: ; preds = %bb.h, %bb.i
  %storemerge.i.i7 = phi ptr [ %i.am, %bb.i ], [ %i.al, %bb.h ]
  store ptr %storemerge.i.i7, ptr %5, align 8, !tbaa !401, !noalias !17280
  %i.an = load ptr, ptr %.sroa.9.0.ph, align 8, !tbaa !299
  %i.ao = icmp eq ptr %.sroa.023.0.ph, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k, !prof !316

bb.j:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit8
  %i.ap = getelementptr inbounds i8, ptr %.sroa.9.0.ph, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !299
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i

bb.k:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit8
  %i.as = getelementptr inbounds i8, ptr %.sroa.023.0.ph, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i: ; preds = %bb.k, %bb.j
  %storemerge.i.i.i = phi ptr [ %i.as, %bb.k ], [ %i.ar, %bb.j ]
  %i.at = load i32, ptr %storemerge.i.i.i, align 4, !tbaa !296
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !299
  %i.av = icmp eq ptr %i.af, %i.au
  br i1 %i.av, label %bb.l, label %bb.m, !prof !316

bb.l:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i
  %i.aw = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !299
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1020
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit

bb.m:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i
  %i.az = getelementptr inbounds i8, ptr %i.af, i64 -4
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit: ; preds = %bb.l, %bb.m
  %storemerge.i.i1.i = phi ptr [ %i.az, %bb.m ], [ %i.ay, %bb.l ]
  store i32 %i.at, ptr %storemerge.i.i1.i, align 4, !tbaa !296
  %i.ba = load ptr, ptr %4, align 8, !tbaa !401
  %i.bb = icmp eq ptr %storemerge.i.i6, %i.ba
  br i1 %i.bb, label %.loopexit, label %.outer, !llvm.loop !219

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit10: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.thread, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5
  %.sroa.935.3 = phi ptr [ %i.r, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5 ], [ %.sroa.935.0, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.thread ] ; 2 uses
  %storemerge.i.i9 = phi ptr [ %i.t, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5 ], [ %i.x, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.thread ] ; 3 uses
  %i.bc = load ptr, ptr %5, align 8, !tbaa !401, !noalias !17281 ; 4 uses
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !491, !noalias !17281 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !299, !noalias !17282
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.n, label %bb.o, !prof !316

bb.n:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit10
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 2 uses
  store ptr %i.bg, ptr %i.i, align 8, !tbaa !491, !noalias !17282
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !299, !noalias !17282
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit12

bb.o:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit10
  %i.bj = getelementptr inbounds i8, ptr %i.bc, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit12

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit12: ; preds = %bb.n, %bb.o
  %storemerge.i.i11 = phi ptr [ %i.bj, %bb.o ], [ %i.bi, %bb.n ]
  store ptr %storemerge.i.i11, ptr %5, align 8, !tbaa !401, !noalias !17282
  %i.bk = load ptr, ptr %.sroa.935.0, align 8, !tbaa !299
  %i.bl = icmp eq ptr %.sroa.030.0, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.q, !prof !316

bb.p:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit12
  %i.bm = getelementptr inbounds i8, ptr %.sroa.935.0, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !299
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i13

bb.q:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEi.exit12
  %i.bp = getelementptr inbounds i8, ptr %.sroa.030.0, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i13

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i13: ; preds = %bb.q, %bb.p
  %storemerge.i.i.i14 = phi ptr [ %i.bp, %bb.q ], [ %i.bo, %bb.p ]
  %i.bq = load i32, ptr %storemerge.i.i.i14, align 4, !tbaa !296
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !299
  %i.bs = icmp eq ptr %i.bc, %i.br
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !316

bb.r:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i13
  %i.bt = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !299
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1020
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16

bb.s:                                             ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i13
  %i.bw = getelementptr inbounds i8, ptr %i.bc, i64 -4
  br label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16: ; preds = %bb.r, %bb.s
  %storemerge.i.i1.i15 = phi ptr [ %i.bw, %bb.s ], [ %i.bv, %bb.r ]
  store i32 %i.bq, ptr %storemerge.i.i1.i15, align 4, !tbaa !296
  %i.bx = load ptr, ptr %2, align 8, !tbaa !401
  %i.by = icmp eq ptr %storemerge.i.i9, %i.bx
  br i1 %i.by, label %.loopexit, label %bb.c, !llvm.loop !219

.loopexit:                                        ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit, %bb.b, %bb.a
  %.sroa.023.2 = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %.sroa.023.0.ph, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16 ], [ %storemerge.i.i6, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit ]
  %.sroa.9.2 = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.a ], [ %.sroa.9.0.ph, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16 ], [ %.sroa.9.3, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit ]
  %.sroa.030.2 = phi ptr [ %i.a, %bb.b ], [ %i.a, %bb.a ], [ %storemerge.i.i9, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16 ], [ %.sroa.030.0, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit ]
  %.sroa.935.2 = phi ptr [ %i.c, %bb.b ], [ %i.c, %bb.a ], [ %.sroa.935.3, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16 ], [ %.sroa.935.0, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit ]
  store ptr %.sroa.030.2, ptr %1, align 8, !tbaa !401
  store ptr %.sroa.935.2, ptr %i.b, align 8, !tbaa !491
  store ptr %.sroa.023.2, ptr %3, align 8, !tbaa !401
  store ptr %.sroa.9.2, ptr %i.e, align 8, !tbaa !491
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17283)
  %i.bz = load <2 x ptr>, ptr %5, align 8, !tbaa !399, !noalias !17283
  store <2 x ptr> %i.bz, ptr %0, align 8, !tbaa !399, !alias.scope !17283
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #1 comdat {
bb.a:
  %12 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 6 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 6 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 6 uses
  %15 = alloca %"class.boost::movelib::inverse", align 1 ; 3 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %22 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 4 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 3 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 9 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 10 uses
  %.not208 = icmp eq i64 %8, 0
  br i1 %.not208, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %27 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.c = sub nsw i64 0, %7                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %7, 0               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %1, align 8, !tbaa !401, !noalias !17365
  %.pre213 = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !17365
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit
  %28 = phi ptr [ %.pre213, %.lr.ph ], [ %i.km, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ]
  %29 = phi ptr [ %.pre, %.lr.ph ], [ %storemerge.i.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ]
  %i.s = phi i64 [ %10, %.lr.ph ], [ %i.kq, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  %.0210 = phi i64 [ %9, %.lr.ph ], [ %i.ko, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ] ; 3 uses
  %.0198209 = phi i64 [ %8, %.lr.ph ], [ %i.kr, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17365)
  store ptr %29, ptr %23, align 8, !tbaa !401, !alias.scope !17365
  store ptr %28, ptr %27, align 8, !tbaa !491, !alias.scope !17365
  call void @llvm.experimental.noalias.scope.decl(metadata !17366)
  %i.t = load <2 x ptr>, ptr %3, align 8, !tbaa !399, !noalias !17366
  store <2 x ptr> %i.t, ptr %24, align 16, !tbaa !399, !alias.scope !17366
  %i.u = call noundef i64 @_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_(ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24, i64 noundef %7, i64 noundef %.0210, i64 noundef %i.s) ; 5 uses
  %i.v = add i64 %i.u, 2
  %i.w = call i64 @llvm.umax.i64(i64 %i.s, i64 %i.v) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.w, i64 %.0198209)
  %i.x = load ptr, ptr %3, align 8, !tbaa !401, !noalias !17367 ; 9 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !491, !noalias !17367 ; 11 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !299, !noalias !17368
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  %i.ae = sub nsw i64 %i.ad, %7                   ; 4 uses
  %or.cond.i.i.i.i = icmp ult i64 %i.ae, 256
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp sgt i64 %i.ae, 0
  %i.ah = lshr i64 %i.ae, 8                       ; 2 uses
  %i.ai = or disjoint i64 %i.ah, -72057594037927936
  %i.aj = select i1 %i.ag, i64 %i.ah, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !299, !noalias !17368
  %i.am = shl nsw i64 %i.aj, 8
  %i.an = sub nsw i64 %i.ae, %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.ap = phi ptr [ %i.y, %bb.b ], [ %i.ak, %bb.e ], [ %i.y, %bb.d ] ; 6 uses
  %i.aq = phi ptr [ %i.x, %bb.b ], [ %i.ao, %bb.e ], [ %i.af, %bb.d ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.ar = mul i64 %i.u, %7                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17369)
  %i.as = sub nsw i64 0, %i.ar
  %.not.i.i.i.i25 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i25, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !299, !noalias !17369
  %i.au = ptrtoint ptr %i.x to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = sub nsw i64 %i.ax, %i.ar                ; 4 uses
  %or.cond.i.i.i.i29 = icmp ult i64 %i.ay, 256
  br i1 %or.cond.i.i.i.i29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.as
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30

bb.h:                                             ; preds = %bb.f
  %i.ba = icmp sgt i64 %i.ay, 0
  %i.bb = lshr i64 %i.ay, 8                       ; 2 uses
  %i.bc = or disjoint i64 %i.bb, -72057594037927936
  %i.bd = select i1 %i.ba, i64 %i.bb, i64 %i.bc   ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !299, !noalias !17369
  %i.bg = shl nsw i64 %i.bd, 8
  %i.bh = sub nsw i64 %i.ay, %i.bg
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bh
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit, %bb.g, %bb.h
  %i.bj = phi ptr [ %i.y, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit ], [ %i.be, %bb.h ], [ %i.y, %bb.g ] ; 3 uses
  %i.bk = phi ptr [ %i.x, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit ], [ %i.bi, %bb.h ], [ %i.az, %bb.g ] ; 4 uses
  store ptr %i.bk, ptr %25, align 8, !tbaa !401, !alias.scope !17370
  store ptr %i.bj, ptr %i.d, align 8, !tbaa !491, !alias.scope !17370
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !299, !noalias !17371
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  %i.bq = sub nsw i64 %i.bp, %7                   ; 4 uses
  %or.cond.i.i.i.i35 = icmp ult i64 %i.bq, 256
  br i1 %or.cond.i.i.i.i35, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.c
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36

bb.k:                                             ; preds = %bb.i
  %i.bs = icmp sgt i64 %i.bq, 0
  %i.bt = lshr i64 %i.bq, 8                       ; 2 uses
  %i.bu = or disjoint i64 %i.bt, -72057594037927936
  %i.bv = select i1 %i.bs, i64 %i.bt, i64 %i.bu   ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !299, !noalias !17371
  %i.by = shl nsw i64 %i.bv, 8
  %i.bz = sub nsw i64 %i.bq, %i.by
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bz
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30, %bb.j, %bb.k
  %i.cb = phi ptr [ %i.bk, %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit30 ], [ %i.ca, %bb.k ], [ %i.br, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %.not23 = icmp eq i64 %i.u, 0                   ; 2 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !401, !noalias !398 ; 5 uses
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !491, !noalias !398 ; 3 uses
  %i.ce = load ptr, ptr %6, align 8, !tbaa !401, !noalias !398 ; 5 uses
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !491, !noalias !398 ; 5 uses
  br i1 %.not23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  br i1 %11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.cc, ptr %16, align 8, !tbaa !401, !alias.scope !17372, !noalias !17373
  store ptr %i.cd, ptr %i.j, align 8, !tbaa !491, !alias.scope !17372, !noalias !17373
  store ptr %i.aq, ptr %17, align 8, !tbaa !401, !alias.scope !17374, !noalias !17373
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !491, !alias.scope !17374, !noalias !17373
  store ptr %i.ce, ptr %18, align 8, !tbaa !401, !alias.scope !17375, !noalias !17373
  store ptr %i.cf, ptr %i.l, align 8, !tbaa !491, !alias.scope !17375, !noalias !17373
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dead_on_return %18)
  br label %.thread

bb.n:                                             ; preds = %bb.l
  store ptr %i.cc, ptr %19, align 8, !tbaa !401, !alias.scope !17376, !noalias !17373
  store ptr %i.cd, ptr %i.g, align 8, !tbaa !491, !alias.scope !17376, !noalias !17373
  store ptr %i.aq, ptr %20, align 8, !tbaa !401, !alias.scope !17377, !noalias !17373
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !491, !alias.scope !17377, !noalias !17373
  store ptr %i.ce, ptr %21, align 8, !tbaa !401, !alias.scope !17378, !noalias !17373
  store ptr %i.cf, ptr %i.i, align 8, !tbaa !491, !alias.scope !17378, !noalias !17373
  store ptr %15, ptr %22, align 8, !tbaa !455, !noalias !17373
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dead_on_return %22)
  br label %.thread

bb.o:                                             ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  br i1 %11, label %.thread201, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %4, align 8, !tbaa !401, !noalias !17379 ; 3 uses
  %i.ch = load ptr, ptr %i.n, align 8, !tbaa !491, !noalias !17379 ; 2 uses
  %.not.i80 = icmp eq ptr %i.x, %i.aq
  %.not39.i = icmp eq ptr %i.cc, %i.cg
  %or.cond = select i1 %.not.i80, i1 true, i1 %.not39.i
  br i1 %or.cond, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.p
  %.pre216 = load ptr, ptr %i.y, align 8, !tbaa !299, !noalias !17380
  br label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i, %.preheader.i.preheader
  %.ph = phi ptr [ %i.db, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %.pre216, %.preheader.i.preheader ] ; 2 uses
  %.sroa.0187.0.ph = phi ptr [ %storemerge.i.i7.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %i.ce, %.preheader.i.preheader ]
  %.sroa.8.0.ph = phi ptr [ %.sroa.8.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %i.cf, %.preheader.i.preheader ]
  %.sroa.023.0.i.ph = phi ptr [ %storemerge.i.i6.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %i.x, %.preheader.i.preheader ] ; 5 uses
  %.sroa.9.0.i.ph = phi ptr [ %.sroa.9.3.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %i.y, %.preheader.i.preheader ] ; 5 uses
  %.sroa.030.0.i.ph = phi ptr [ %.sroa.030.0.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %i.cg, %.preheader.i.preheader ]
  %.sroa.935.0.i.ph = phi ptr [ %.sroa.935.0.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit.i ], [ %i.ch, %.preheader.i.preheader ]
  %i.ci = icmp eq ptr %.sroa.023.0.i.ph, %.ph     ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.023.0.i.ph, i64 -4
  %i.ck = getelementptr inbounds i8, ptr %.sroa.9.0.i.ph, i64 -8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16.i
  %.sroa.0187.0 = phi ptr [ %storemerge.i.i11.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16.i ], [ %.sroa.0187.0.ph, %.preheader.i.outer ] ; 6 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.3, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16.i ], [ %.sroa.8.0.ph, %.preheader.i.outer ] ; 8 uses
  %.sroa.030.0.i = phi ptr [ %storemerge.i.i9.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16.i ], [ %.sroa.030.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %.sroa.935.0.i = phi ptr [ %.sroa.935.3.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_T0_.exit16.i ], [ %.sroa.935.0.i.ph, %.preheader.i.outer ] ; 6 uses
  br i1 %i.ci, label %bb.q, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i81, !prof !316

bb.q:                                             ; preds = %.preheader.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !299, !noalias !17380
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i81

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i81: ; preds = %.preheader.i, %bb.q
  %storemerge.i.i.i82 = phi ptr [ %i.cm, %bb.q ], [ %i.cj, %.preheader.i ] ; 2 uses
  %i.cn = load ptr, ptr %.sroa.935.0.i, align 8, !tbaa !299, !noalias !17380
  %i.co = icmp eq ptr %.sroa.030.0.i, %i.cn       ; 2 uses
  br i1 %i.co, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i87, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.thread.i, !prof !316

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i87: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i81
  %i.cp = getelementptr inbounds i8, ptr %.sroa.935.0.i, i64 -8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !299, !noalias !17380
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_:bb.a
  %i.hv = load i32, ptr %storemerge.i.i.i.i49, align 4, !tbaa !296, !noalias !17400
  %i.hw = load ptr, ptr %.sroa.5.0.i, align 8, !tbaa !299, !noalias !17400
  %i.hx = icmp eq ptr %.sroa.0.0.i, %i.hw         ; 2 uses
  br i1 %i.hx, label %bb.be, label %bb.bf, !prof !316

bb.be:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i48
  %i.hy = getelementptr inbounds i8, ptr %.sroa.5.0.i, i64 -8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !299, !noalias !17400
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50

bb.bf:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i.i48
  %i.ib = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50: ; preds = %bb.bf, %bb.be
  %storemerge.i.i1.i.i51 = phi ptr [ %i.ib, %bb.bf ], [ %i.ia, %bb.be ]
  store i32 %i.hv, ptr %storemerge.i.i1.i.i51, align 4, !tbaa !296, !noalias !17400
  br i1 %i.hq, label %bb.bg, label %bb.bh, !prof !316

bb.bg:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.ic = getelementptr inbounds i8, ptr %.sroa.4.0.i, i64 -8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !299, !noalias !17400 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i

bb.bh:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit2.i.i50
  %i.if = getelementptr inbounds i8, ptr %i.hp, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i: ; preds = %bb.bh, %bb.bg
  %i.ig = phi ptr [ %i.id, %bb.bg ], [ %i.ho, %bb.bh ]
  %.sroa.4.1.i = phi ptr [ %i.ic, %bb.bg ], [ %.sroa.4.0.i, %bb.bh ]
  %storemerge.i.i3.i.i52 = phi ptr [ %i.ie, %bb.bg ], [ %i.if, %bb.bh ] ; 2 uses
  br i1 %i.hx, label %bb.bi, label %bb.bj, !prof !316

bb.bi:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.ih = getelementptr inbounds i8, ptr %.sroa.5.0.i, i64 -8 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !299, !noalias !17400
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i

bb.bj:                                            ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i.i
  %i.ik = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i: ; preds = %bb.bj, %bb.bi
  %.sroa.5.1.i = phi ptr [ %i.ih, %bb.bi ], [ %.sroa.5.0.i, %bb.bj ] ; 2 uses
  %storemerge.i.i4.i.i = phi ptr [ %i.ij, %bb.bi ], [ %i.ik, %bb.bj ] ; 2 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i3.i.i52, %i.aq
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !197

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread: ; preds = %.thread200, %.thread199
  %storemerge205.ph = phi ptr [ %i.eq, %.thread200 ], [ %i.es, %.thread199 ]
  %storemerge.ph = phi ptr [ %i.er, %.thread200 ], [ %i.ev, %.thread199 ]
  store ptr %storemerge205.ph, ptr %6, align 8, !tbaa !401
  store ptr %storemerge.ph, ptr %i.e, align 8, !tbaa !491
  %i.il = load ptr, ptr %1, align 8, !tbaa !401, !noalias !17389
  %i.im = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !17389
  br label %bb.bk

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit: ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i, %.thread203, %.loopexit
  %storemerge205 = phi ptr [ %i.hk, %.thread203 ], [ %storemerge.i.i4.i.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %storemerge.i.i4.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i ], [ %i.aq, %.loopexit ], [ %storemerge.i.i3.i42, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  %storemerge = phi ptr [ %i.hl, %.thread203 ], [ %.sroa.5.1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i.i ], [ %.sroa.5119.1, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit5.i ], [ %i.ap, %.loopexit ], [ %.sroa.4108.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_EEvNS0_11three_way_tET_T0_T1_.exit.i ]
  store ptr %storemerge205, ptr %6, align 8, !tbaa !401
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !491
  %i.in = load ptr, ptr %1, align 8, !tbaa !401, !noalias !17389 ; 3 uses
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !491, !noalias !17389 ; 3 uses
  br i1 %.not23, label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58, label %bb.bk

bb.bk:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit
  %i.ip = phi ptr [ %i.im, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ], [ %i.io, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ] ; 5 uses
  %i.iq = phi ptr [ %i.il, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread ], [ %i.in, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ] ; 4 uses
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !299, !noalias !17401
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = ashr exact i64 %i.iu, 2
  %i.iw = sub nsw i64 %i.iv, %i.u                 ; 4 uses
  %or.cond.i.i.i.i57 = icmp ult i64 %i.iw, 256
  br i1 %or.cond.i.i.i.i57, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ix = sub nsw i64 0, %i.u
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ix
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58

bb.bm:                                            ; preds = %bb.bk
  %i.iz = icmp sgt i64 %i.iw, 0
  %i.ja = lshr i64 %i.iw, 8                       ; 2 uses
  %i.jb = or disjoint i64 %i.ja, -72057594037927936
  %i.jc = select i1 %i.iz, i64 %i.ja, i64 %i.jb   ; 2 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.jc ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !299, !noalias !17401
  %i.jf = shl nsw i64 %i.jc, 8
  %i.jg = sub nsw i64 %i.iw, %i.jf
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.jg
  br label %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58

_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread256, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit, %bb.bl, %bb.bm
  %i.ji = phi ptr [ %i.io, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.ip, %bb.bm ], [ %i.ip, %bb.bl ], [ %i.ep, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread256 ] ; 3 uses
  %i.jj = phi ptr [ %i.in, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.iq, %bb.bm ], [ %i.iq, %bb.bl ], [ %i.eo, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread256 ] ; 5 uses
  %i.jk = phi ptr [ %i.io, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.jd, %bb.bm ], [ %i.ip, %bb.bl ], [ %i.ep, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread256 ] ; 3 uses
  %i.jl = phi ptr [ %i.in, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit ], [ %i.jh, %bb.bm ], [ %i.iy, %bb.bl ], [ %i.eo, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.thread256 ] ; 5 uses
  %i.jm = load ptr, ptr %25, align 8, !tbaa !401, !noalias !17402
  %.not.i59 = icmp eq ptr %i.aq, %i.jm
  br i1 %.not.i59, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58
  %.not13.i = icmp eq ptr %i.jl, %i.jj
  br i1 %.not13.i, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i
  %i.jn = load ptr, ptr %i.jk, align 8, !tbaa !299
  %i.jo = icmp eq ptr %i.jl, %i.jn
  br i1 %i.jo, label %bb.bo, label %bb.bp, !prof !316

bb.bo:                                            ; preds = %bb.bn
  %i.jp = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !299
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77

bb.bp:                                            ; preds = %bb.bn
  %i.js = getelementptr inbounds i8, ptr %i.jl, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77: ; preds = %bb.bp, %bb.bo
  %storemerge.i.i.i78 = phi ptr [ %i.js, %bb.bp ], [ %i.jr, %bb.bo ] ; 2 uses
  %i.jt = load ptr, ptr %i.ji, align 8, !tbaa !299
  %i.ju = icmp eq ptr %i.jj, %i.jt
  br i1 %i.ju, label %bb.bq, label %bb.br, !prof !316

bb.bq:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.jv = getelementptr inbounds i8, ptr %i.ji, i64 -8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !299
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i

bb.br:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i77
  %i.jy = getelementptr inbounds i8, ptr %i.jj, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i: ; preds = %bb.br, %bb.bq
  %storemerge.i.i4.i79 = phi ptr [ %i.jy, %bb.br ], [ %i.jx, %bb.bq ] ; 2 uses
  %i.jz = load i32, ptr %storemerge.i.i.i78, align 4, !tbaa !296
  %i.ka = load i32, ptr %storemerge.i.i4.i79, align 4, !tbaa !296
  store i32 %i.ka, ptr %storemerge.i.i.i78, align 4, !tbaa !296
  store i32 %i.jz, ptr %storemerge.i.i4.i79, align 4, !tbaa !296
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit5.i, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES7_EET0_T_S9_S8_.exit.i
  %i.kb = load ptr, ptr %2, align 8, !tbaa !401   ; 2 uses
  %i.kc = icmp eq ptr %i.jl, %i.kb
  br i1 %i.kc, label %.sink.split.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kd = icmp eq ptr %i.kb, %i.jj
  br i1 %i.kd, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

.sink.split.i:                                    ; preds = %bb.bt, %bb.bs
  %.sink.i.sroa.phi.sroa.speculated = phi ptr [ %i.ji, %bb.bs ], [ %i.jk, %bb.bt ]
  %.sink23.i = phi ptr [ %i.jj, %bb.bs ], [ %i.jl, %bb.bt ]
  store ptr %.sink23.i, ptr %2, align 8, !tbaa !401
  store ptr %.sink.i.sroa.phi.sroa.speculated, ptr %i.r, align 8, !tbaa !491
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost7movelibplENS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEEl.exit58, %bb.bt, %.sink.split.i
  store ptr %i.aq, ptr %3, align 8, !tbaa !401
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !491
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !491 ; 3 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !299
  %i.kg = load ptr, ptr %1, align 8, !tbaa !401   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.kf
  br i1 %i.kh, label %bb.bu, label %bb.bv, !prof !316

bb.bu:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %i.ki = getelementptr inbounds i8, ptr %i.ke, i64 -8 ; 3 uses
  store ptr %i.ki, ptr %i.a, align 8, !tbaa !491
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !299
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 1020
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit

bb.bv:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %i.kl = getelementptr inbounds i8, ptr %i.kg, i64 -4
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit: ; preds = %bb.bu, %bb.bv
  %i.km = phi ptr [ %i.ke, %bb.bv ], [ %i.ki, %bb.bu ]
  %storemerge.i.i = phi ptr [ %i.kl, %bb.bv ], [ %i.kk, %bb.bu ] ; 2 uses
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !401
  %i.kn = icmp ne i64 %.0210, 0
  %.neg = sext i1 %i.kn to i64
  %i.ko = add i64 %.0210, %.neg
  %i.kp = icmp ne i64 %i.w, 0
  %.neg24 = sext i1 %i.kp to i64
  %i.kq = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.kr = add i64 %.0198209, -1                   ; 2 uses
  %.not = icmp eq i64 %i.kr, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17362

._crit_edge:                                      ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !17403)
  %i.ks = load <2 x ptr>, ptr %6, align 8, !tbaa !399, !noalias !17403
  store <2 x ptr> %i.ks, ptr %0, align 8, !tbaa !399, !alias.scope !17403
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 10 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 9 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 6 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 3 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 3 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  %17 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 3 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator.159", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17462)
  %i.a = load ptr, ptr %6, align 8, !tbaa !401, !noalias !17462 ; 4 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !401, !alias.scope !17462
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !491, !noalias !17462 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !491, !alias.scope !17462
  %i.e = load ptr, ptr %7, align 8, !tbaa !401, !noalias !17463 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !491, !noalias !17463
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17464)
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %3, align 8, !tbaa !399, !noalias !17464
  %i.j = load ptr, ptr %3, align 8, !tbaa !401, !noalias !17464
  store <2 x ptr> %i.i, ptr %9, align 16, !tbaa !399, !alias.scope !17464
  %i.k = load ptr, ptr %5, align 8, !tbaa !401    ; 3 uses
  %.not = icmp eq ptr %i.j, %i.k                  ; 2 uses
  %i.l = icmp eq ptr %i.a, %i.e
  br i1 %i.l, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !401, !noalias !17465 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !491, !noalias !17465 ; 4 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !401, !noalias !17466 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !491  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !299
  %i.t = icmp eq ptr %i.k, %i.s
  br i1 %i.t, label %bb.c, label %bb.d, !prof !316

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !299
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1020
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds i8, ptr %i.k, i64 -4
  br label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ %i.x, %bb.d ], [ %i.w, %bb.c ]
  %.not3.i = icmp eq ptr %i.m, %i.p
  br i1 %.not3.i, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEpLEl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit
  %i.y = load i32, ptr %storemerge.i.i, align 4, !noalias !17467 ; 2 uses
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !299, !noalias !17467 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i, %.lr.ph.i
  %i.z = phi ptr [ %.pre, %.lr.ph.i ], [ %i.al, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i ] ; 2 uses
  %i.aa = phi ptr [ %i.o, %.lr.ph.i ], [ %i.am, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i ] ; 4 uses
  %i.ab = phi ptr [ %i.m, %.lr.ph.i ], [ %storemerge.i.i1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i ] ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %i.z
  br i1 %i.ac, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i, label %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i, !prof !316

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !299, !noalias !17467 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1020 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !296, !noalias !17467
  %i.ah = icmp slt i32 %i.ag, %i.y
  br i1 %i.ah, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i

_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i: ; preds = %bb.e
  %i.ai = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !296, !noalias !17467
  %i.ak = icmp slt i32 %i.aj, %i.y
  br i1 %i.ak, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i
  %i.al = phi ptr [ %i.z, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.ae, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i ]
  %i.am = phi ptr [ %i.aa, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.ad, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i ] ; 2 uses
  %storemerge.i.i1.i = phi ptr [ %i.ai, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.af, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i ] ; 3 uses
  %.not.i = icmp eq ptr %storemerge.i.i1.i, %i.p
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.e, !llvm.loop !218

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i
  %i.an = phi ptr [ %i.aa, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i ], [ %i.aa, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %i.am, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i ] ; 5 uses
  %.lcssa.i = phi ptr [ %i.ab, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.i ], [ %i.ab, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit.thread.i ], [ %storemerge.i.i1.i, %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEppEv.exit.i ] ; 5 uses
  %i.ao = icmp eq ptr %i.m, %.lcssa.i
  br i1 %i.ao, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEpLEl.exit, label %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_.exit

_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.ap = ptrtoint ptr %i.o to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = shl nsw i64 %i.ar, 5
  %i.at = ptrtoint ptr %i.m to i64
  %i.au = ptrtoint ptr %.pre to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = add nsw i64 %i.aw, %i.as                ; 2 uses
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !299
  %i.az = ptrtoint ptr %.lcssa.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2                 ; 2 uses
  %i.bd = sub i64 %i.ax, %i.bc                    ; 2 uses
  %i.be = sub nsw i64 0, %i.bd
  %.not.i.i.i = icmp eq i64 %i.ax, %i.bc
  br i1 %.not.i.i.i, label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEpLEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_.exit
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !299
  %i.bg = ptrtoint ptr %i.a to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 2
  %i.bk = sub nsw i64 %i.bj, %i.bd                ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.bk, 256
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.be
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bm = icmp sgt i64 %i.bk, 0
  %i.bn = lshr i64 %i.bk, 8                       ; 2 uses
  %i.bo = or disjoint i64 %i.bn, -72057594037927936
  %i.bp = select i1 %i.bm, i64 %i.bn, i64 %i.bo   ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bp ; 2 uses
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !491
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !299
  %i.bs = shl nsw i64 %i.bp, 8
  %i.bt = sub nsw i64 %i.bk, %i.bs
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bt
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge.i.i.i = phi ptr [ %i.bu, %bb.h ], [ %i.bl, %bb.g ]
  store ptr %storemerge.i.i.i, ptr %8, align 8, !tbaa !401
  br label %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEpLEl.exit

_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEpLEl.exit: ; preds = %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_.exit, %bb.i
  %i.bv = phi ptr [ %i.an, %bb.i ], [ %i.an, %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_.exit ], [ %i.an, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit ], [ %i.o, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit ] ; 3 uses
  %.lcssa.i4347 = phi ptr [ %.lcssa.i, %bb.i ], [ %.lcssa.i, %_ZN5boost7movelibmiERKNS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_.exit ], [ %.lcssa.i, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit ], [ %i.m, %_ZNK5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEdeEv.exit ] ; 3 uses
  store ptr %.lcssa.i4347, ptr %1, align 8, !tbaa !401
  store ptr %i.bv, ptr %i.n, align 8, !tbaa !491
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEpLEl.exit
  store ptr %.lcssa.i4347, ptr %11, align 8, !tbaa !401, !alias.scope !17468
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !491, !alias.scope !17468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17469)
  %i.bx = load <2 x ptr>, ptr %2, align 8, !tbaa !399, !noalias !17469
  store <2 x ptr> %i.bx, ptr %12, align 16, !tbaa !399, !alias.scope !17469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17470)
  %i.by = load <2 x ptr>, ptr %4, align 8, !tbaa !399, !noalias !17470
  store <2 x ptr> %i.by, ptr %13, align 16, !tbaa !399, !alias.scope !17470
  call void @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost7movelib16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEpLEl.exit
  store ptr %.lcssa.i4347, ptr %14, align 8, !tbaa !401, !alias.scope !17471
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bv, ptr %i.bz, align 8, !tbaa !491, !alias.scope !17471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17472)
  %i.ca = load <2 x ptr>, ptr %2, align 8, !tbaa !399, !noalias !17472
  store <2 x ptr> %i.ca, ptr %15, align 16, !tbaa !399, !alias.scope !17472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17473)
  %i.cb = load <2 x ptr>, ptr %4, align 8, !tbaa !399, !noalias !17473
  store <2 x ptr> %i.cb, ptr %16, align 16, !tbaa !399, !alias.scope !17473
  call void @_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS0_16reverse_iteratorINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_RSK_T2_T3_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.159") align 8 %10, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = load ptr, ptr %10, align 8, !tbaa !401, !noalias !17474
end_hunk_5
