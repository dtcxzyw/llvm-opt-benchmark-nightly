inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 251
loop-unroll.NumUnrolled: 522
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive14collect_uniqueIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEENS0_9iter_sizeIT_E4typeESH_SH_SJ_T0_RT1_:bb.a
._crit_edge117:                                   ; preds = %bb.m, %.preheader
  %.269.lcssa = phi ptr [ %0, %.preheader ], [ %.370, %bb.m ] ; 2 uses
  %.2.lcssa = phi i64 [ 1, %.preheader ], [ %.3, %bb.m ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.269.lcssa, i64 %.2.lcssa
  %i.fl = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_(ptr noundef %0, ptr noundef %.269.lcssa, ptr noundef %i.fk) ; 0 uses
  br label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit95

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit95: ; preds = %.lr.ph.i90, %middle.block194, %_ZN5boost13move_backwardIPSt4pairIiiES3_EET0_T_S5_S4_.exit, %._crit_edge117, %bb.a
  %.5 = phi i64 [ 0, %bb.a ], [ %.2.lcssa, %._crit_edge117 ], [ %.0.lcssa135, %_ZN5boost13move_backwardIPSt4pairIiiES3_EET0_T_S5_S4_.exit ], [ %.0.lcssa135, %middle.block194 ], [ %.0.lcssa135, %.lr.ph.i90 ]
  ret i64 %.5
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add i64 %2, %1
  %i.b = sub i64 %i.a, %3                         ; 6 uses
  %i.c = sub i64 %1, %3                           ; 6 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3 ; 4 uses
  br i1 %7, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1561 ; 2 uses
  %i.g = icmp ult i64 %i.f, %5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %8, align 8, !tbaa !1559
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.j = load i64, ptr %0, align 4
  store i64 %i.j, ptr %i.i, align 4
  %storemerge.in6.i = load i64, ptr %i.e, align 8, !tbaa !1561 ; 3 uses
  %storemerge7.i = add i64 %storemerge.in6.i, 1   ; 3 uses
  store i64 %storemerge7.i, ptr %i.e, align 8, !tbaa !1561
  %.not8.i = icmp eq i64 %storemerge7.i, %5
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge7.i, %bb.d ]
  %storemerge.in9.i = phi i64 [ %storemerge.in.i, %.lr.ph.i ], [ %storemerge.in6.i, %bb.d ]
  %i.k = load ptr, ptr %8, align 8, !tbaa !1559   ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %storemerge10.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %storemerge.in9.i
  %i.n = load i64, ptr %i.m, align 4
  store i64 %i.n, ptr %i.l, align 4
  %storemerge.in.i = load i64, ptr %i.e, align 8, !tbaa !1561 ; 3 uses
  %storemerge.i = add i64 %storemerge.in.i, 1     ; 3 uses
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !1995

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ %storemerge.in6.i, %bb.d ], [ %storemerge.in.i, %.lr.ph.i ]
  %i.o = load ptr, ptr %8, align 8, !tbaa !1559
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !87
  store i32 %i.q, ptr %0, align 4, !tbaa !292
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !294
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.c
  %i.u = urem i64 %i.c, %5                        ; 3 uses
  %i.v = sub i64 %i.b, %i.u
  %i.w = urem i64 %i.v, %5                        ; 2 uses
  %i.x = add i64 %i.u, %i.w
  %i.y = sub i64 %i.b, %i.x
  %i.z = udiv i64 %i.y, %5                        ; 2 uses
  %i.aa = udiv i64 %i.c, %5                       ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %0, i64 %i.z
  tail call void @_ZN5boost7movelib16heap_sort_helperIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEE4sortES4_S4_SC_(ptr noundef %0, ptr noundef %i.ac)
  %i.ad = load ptr, ptr %8, align 8, !tbaa !1559
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_(ptr noundef %0, ptr noundef %i.d, i64 noundef %5, i64 noundef %i.u, i64 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.w, ptr noundef %i.ad)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.f:                                             ; preds = %bb.b
  %i.ae = urem i64 %i.c, %5                       ; 4 uses
  %i.af = sub i64 %i.b, %i.ae
  %i.ag = urem i64 %i.af, %5                      ; 3 uses
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = sub i64 %i.b, %i.ah
  %i.aj = udiv i64 %i.ai, %5                      ; 2 uses
  %i.ak = udiv i64 %i.c, %5                       ; 3 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %0, i64 %i.aj
  tail call void @_ZN5boost7movelib16heap_sort_helperIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEE4sortES4_S4_SC_(ptr noundef %0, ptr noundef %i.am)
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = sub i64 0, %5
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.an
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7swap_opES5_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_(ptr noundef %0, ptr noundef %i.d, i64 noundef %5, i64 noundef %i.ae, i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.ag, ptr noundef nonnull %i.ao)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_(ptr noundef %0, ptr noundef %i.d, i64 noundef %5, i64 noundef %i.ae, i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.ag)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.i:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1561 ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, %5
  br i1 %i.ar, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.i
  store i64 %5, ptr %i.ap, align 8, !tbaa !1561
  %.pre103 = load ptr, ptr %8, align 8, !tbaa !1559
  br label %bb.k

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit: ; preds = %bb.i
  %i.as = icmp ult i64 %i.aq, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.aq
  %i.au = load i64, ptr %0, align 4
  store i64 %i.au, ptr %i.at, align 4
  %storemerge.in6.i57 = load i64, ptr %i.ap, align 8, !tbaa !1561 ; 3 uses
  %storemerge7.i58 = add i64 %storemerge.in6.i57, 1 ; 3 uses
  store i64 %storemerge7.i58, ptr %i.ap, align 8, !tbaa !1561
  %.not8.i59 = icmp eq i64 %storemerge7.i58, %5
  br i1 %.not8.i59, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.j, %.lr.ph.i60
  %storemerge10.i61 = phi i64 [ %storemerge.i64, %.lr.ph.i60 ], [ %storemerge7.i58, %bb.j ]
  %storemerge.in9.i62 = phi i64 [ %storemerge.in.i63, %.lr.ph.i60 ], [ %storemerge.in6.i57, %bb.j ]
  %i.av = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %storemerge10.i61
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %storemerge.in9.i62
  %i.ay = load i64, ptr %i.ax, align 4
  store i64 %i.ay, ptr %i.aw, align 4
  %storemerge.in.i63 = load i64, ptr %i.ap, align 8, !tbaa !1561 ; 3 uses
  %storemerge.i64 = add i64 %storemerge.in.i63, 1 ; 3 uses
  store i64 %storemerge.i64, ptr %i.ap, align 8, !tbaa !1561
  %.not.i65 = icmp eq i64 %storemerge.i64, %5
  br i1 %.not.i65, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68, label %.lr.ph.i60, !llvm.loop !1995

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68: ; preds = %.lr.ph.i60, %bb.j
  %storemerge.in.lcssa.i67 = phi i64 [ %storemerge.in6.i57, %bb.j ], [ %storemerge.in.i63, %.lr.ph.i60 ]
  %i.az = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %storemerge.in.lcssa.i67 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !87
  store i32 %i.bb, ptr %0, align 4, !tbaa !292
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !294
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.bf = phi ptr [ %i.az, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit ], [ %.pre103, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %5
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = add i64 %i.bh, 7
  %i.bj = and i64 %i.bi, -8
  %i.bk = inttoptr i64 %i.bj to ptr               ; 4 uses
  %i.bl = urem i64 %i.c, %5                       ; 3 uses
  %i.bm = sub i64 %i.b, %i.bl
  %i.bn = urem i64 %i.bm, %5                      ; 2 uses
  %i.bo = add i64 %i.bl, %i.bn
  %i.bp = sub i64 %i.b, %i.bo
  %i.bq = udiv i64 %i.bp, %5                      ; 4 uses
  %i.br = udiv i64 %i.c, %5                       ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = shl i64 %i.bq, 3
  %i.bu = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.mask.i = and i64 %i.bq, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.bu, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.bv = and i64 %i.bq, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.bu, %i.bv           ; 3 uses
  %i.bw = shl i64 %n.vec, 3
  %i.bx = getelementptr i8, ptr %i.bk, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.by = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !708
  store <2 x i64> %step.add, ptr %i.bz, align 8, !tbaa !708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !1996

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i.preheader105

.lr.ph.i.i.preheader105:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader105, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.cc, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader105 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader105 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !708
  %i.cb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.cc = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.cc, %i.bu
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i, !llvm.loop !1997

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %i.bk, ptr noundef %0, i64 noundef %5, i64 noundef %i.bl, i64 noundef %i.br, i64 noundef %i.bs, i64 noundef %i.bn, ptr noundef %i.bf)
  %i.cd = load i64, ptr %i.ap, align 8, !tbaa !1561
  %.not.i69 = icmp eq i64 %i.cd, 0
  br i1 %.not.i69, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit
  store i64 0, ptr %i.ap, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %1, align 4, !tbaa !87     ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !87   ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 13 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 21 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %bb.d, !llvm.loop !1998

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i134.le = ptrtoaddr ptr %.114.i to i64    ; 6 uses
  %i.q = ptrtoint ptr %.114.i to i64
  %i.r = sub i64 %i.e, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1561 ; 4 uses
  %.not.i39 = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre101 = load ptr, ptr %3, align 8, !tbaa !1559 ; 10 uses
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.v = add i64 %i.e, -8
  %i.w = sub i64 %i.v, %.114.i134.le              ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 88
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader318, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.pre101, i64 8
  %i.z = add i64 %i.e, -8
  %i.aa = sub i64 %i.z, %.114.i134.le
  %i.ab = and i64 %i.aa, -8                       ; 2 uses
  %scevgep135 = getelementptr i8, ptr %scevgep, i64 %i.ab
  %scevgep136 = getelementptr i8, ptr %.114.i, i64 8
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %i.ab
  %bound0 = icmp ult ptr %.pre101, %scevgep137
  %bound1 = icmp ult ptr %.114.i, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader318, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %.pre101, i64 %i.ac
  %i.ae = getelementptr i8, ptr %.114.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre101, i64 %i.af
  %next.gep138 = getelementptr i8, ptr %.pre101, i64 %i.ag
  %next.gep139 = getelementptr i8, ptr %.114.i, i64 %i.af
  %next.gep140 = getelementptr i8, ptr %.114.i, i64 %i.ag
  %wide.vec = load <4 x i32>, ptr %next.gep139, align 4, !tbaa !87, !alias.scope !1999
  %wide.vec142 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !87, !alias.scope !1999
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2002, !noalias !1999
  store <4 x i32> %wide.vec142, ptr %next.gep138, align 4, !tbaa !87, !alias.scope !2002, !noalias !1999
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2004

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader318

.lr.ph.i.i.preheader318:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.pre101, %vector.memcheck ], [ %.pre101, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader318, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader318 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader318 ] ; 3 uses
  %i.ai = load i32, ptr %.079.i.i, align 4, !tbaa !87
  store i32 %i.ai, ptr %.010.i.i, align 4, !tbaa !292
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !294
  %i.am = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !2005

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.u, 3                     ; 5 uses
  %i.ao = getelementptr i8, ptr %.114.i, i64 %.idx26.i ; 6 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !1559  ; 9 uses
  %.not8.i17.i = icmp eq i64 %i.u, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.f
  %i.aq = add i64 %.idx26.i, -8                   ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check153 = icmp ult i64 %i.aq, 40
  br i1 %min.iters.check153, label %.lr.ph.i18.i.preheader316, label %vector.memcheck147

vector.memcheck147:                               ; preds = %.lr.ph.i18.i.preheader
  %scevgep148 = getelementptr i8, ptr %i.ap, i64 %.idx26.i
  %bound0149 = icmp ult ptr %i.ap, %i.ao
  %bound1150 = icmp ult ptr %.114.i, %scevgep148
  %found.conflict151 = and i1 %bound0149, %bound1150
  br i1 %found.conflict151, label %.lr.ph.i18.i.preheader316, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck147
  %n.vec155 = and i64 %i.as, 4611686018427387900  ; 3 uses
  %i.at = shl i64 %n.vec155, 3                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %.114.i, i64 %i.at
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next170, %vector.body156 ] ; 2 uses
  %i.aw = shl i64 %index157, 3                    ; 3 uses
  %i.ax = or disjoint i64 %i.aw, 16               ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.ap, i64 %i.aw
  %next.gep159 = getelementptr i8, ptr %i.ap, i64 %i.ax
  %next.gep160 = getelementptr i8, ptr %.114.i, i64 %i.aw
  %next.gep161 = getelementptr i8, ptr %.114.i, i64 %i.ax
  %wide.vec162 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !87, !alias.scope !2006
  %wide.vec165 = load <4 x i32>, ptr %next.gep161, align 4, !tbaa !87, !alias.scope !2006
  store <4 x i32> %wide.vec162, ptr %next.gep158, align 4, !tbaa !87, !alias.scope !2009, !noalias !2006
  store <4 x i32> %wide.vec165, ptr %next.gep159, align 4, !tbaa !87, !alias.scope !2009, !noalias !2006
  %index.next170 = add nuw i64 %index157, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next170, %n.vec155
  br i1 %i.ay, label %middle.block171, label %vector.body156, !llvm.loop !2011

middle.block171:                                  ; preds = %vector.body156
  %cmp.n172 = icmp eq i64 %i.as, %n.vec155
  br i1 %cmp.n172, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader316

.lr.ph.i18.i.preheader316:                        ; preds = %vector.memcheck147, %.lr.ph.i18.i.preheader, %middle.block171
  %.010.i19.i.ph = phi ptr [ %i.ap, %vector.memcheck147 ], [ %i.ap, %.lr.ph.i18.i.preheader ], [ %i.au, %middle.block171 ]
  %.079.i20.i.ph = phi ptr [ %.114.i, %vector.memcheck147 ], [ %.114.i, %.lr.ph.i18.i.preheader ], [ %i.av, %middle.block171 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader316, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.be, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader316 ] ; 3 uses
  %.079.i20.i = phi ptr [ %i.bd, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader316 ] ; 3 uses
  %i.az = load i32, ptr %.079.i20.i, align 4, !tbaa !87
  store i32 %i.az, ptr %.010.i19.i, align 4, !tbaa !292
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEESC_SC_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7move_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !87, !noalias !2404
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !87, !noalias !2404
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !87, !noalias !2404
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !87, !noalias !2404
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !87, !noalias !2404
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !87, !noalias !2404
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !87, !noalias !2404
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !87, !noalias !2404
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !2265

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !87, !noalias !2407
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !292, !noalias !2407
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !87, !noalias !2407
  %i.dh = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !294, !noalias !2407
  %i.di = load i32, ptr %i.db, align 4, !tbaa !87, !noalias !2407
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !292, !noalias !2407
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !87, !noalias !2407
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !294, !noalias !2407
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !2269

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !87, !noalias !2410
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !292, !noalias !2410
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87, !noalias !2410
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !294, !noalias !2410
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2275

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.dn, %.lr.ph.i.i ], [ %i.cp, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2099
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !708
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !708
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !708
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !708
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !2219  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2219
  %.pre182 = load ptr, ptr %1, align 8, !tbaa !2219
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit ], [ %i.c, %bb.z ], [ %.pre182, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !2099
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !2219
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2415

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.eh = load ptr, ptr %6, align 8, !tbaa !2099
  store ptr %i.eh, ptr %0, align 8, !tbaa !2099
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1562 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.j, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !1559   ; 5 uses
  %i.m = icmp eq ptr %0, %1
  %i.n = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.m, %i.n
  br i1 %or.cond.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %0, align 4                ; 4 uses
  store i64 %i.o, ptr %i.l, align 4
  %.not8.i.i = icmp eq i64 %i.i, 1
  %i.p = trunc i64 %i.o to i32
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.q = add i64 %i.i, -1                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.q, -4                       ; 4 uses
  %i.r = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.t, align 4
  store <2 x i64> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !2416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i.preheader22

.lr.ph.i.i.preheader22:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.8.0.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader22, %.lr.ph.i.i
  %.sroa.8.0.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %.sroa.8.0.i.ph, %.lr.ph.i.i.preheader22 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.8.0.i
  store i64 %i.o, ptr %i.w, align 4
  %storemerge.i.i = add nuw i64 %.sroa.8.0.i, 1   ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i, !llvm.loop !2417

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %storemerge.in.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %.sroa.8.0.i, %.lr.ph.i.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %storemerge.in.lcssa.i.i
  store i32 %i.p, ptr %0, align 4, !tbaa !292
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !294
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.l, i64 noundef %i.i)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %bb.f, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, %bb.c, %.preheader.preheader.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond99 = and i1 %i.b, %i.a
  br i1 %or.cond99, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr90103 = phi i64 [ %4, %.lr.ph ], [ %i.au, %tailrecurse ] ; 5 uses
  %.tr89102 = phi i64 [ %3, %.lr.ph ], [ %i.as, %tailrecurse ] ; 5 uses
  %.tr87101 = phi ptr [ %1, %.lr.ph ], [ %.071, %tailrecurse ] ; 13 uses
  %.tr100 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tailrecurse ] ; 11 uses
  %.not = icmp ugt i64 %.tr89102, %6
  %.not76 = icmp ugt i64 %.tr90103, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_10range_xbufIS4_mNS0_7move_opEEEEEvT_SG_SG_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_10range_xbufIS4_mNS0_7move_opEEEEEvT_SG_SG_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !2418
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !2420
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !2421
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS4_mSD_EEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !87 ; 2 uses
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !87 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.tr100, align 4, !tbaa !87
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !87
  %i.o = load i32, ptr %i.m, align 4, !tbaa !87
  store i32 %i.o, ptr %i.l, align 4, !tbaa !87
  store i32 %i.n, ptr %i.m, align 4, !tbaa !87
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.g, 16
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.q = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.r ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.t = sub i64 %i.c, %.pre
  %i.u = ashr exact i64 %i.t, 3
  %i.v = load i32, ptr %i.s, align 4, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.w = lshr i64 %.017.i, 1                      ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  %i.z = icmp slt i32 %i.y, %i.v                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.neg.i = xor i64 %i.w, -1
  %i.ab = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.z, ptr %i.aa, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.z, i64 %i.ab, i64 %i.w     ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !1981

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ac = sub i64 %.pre-phi113, %.pre
  %i.ad = ashr exact i64 %i.ac, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.ae = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.ae ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ag = ptrtoint ptr %.tr87101 to i64
  %i.ah = sub i64 %i.ag, %.pre110
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !87
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.ai, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr100, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.ak = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.01316.i81, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !87
  %i.an = icmp slt i32 %i.aj, %i.am               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.neg.i82 = xor i64 %i.ak, -1
  %i.ap = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.an, ptr %.01316.i81, ptr %i.ao ; 3 uses
  %.1.i84 = select i1 %i.an, i64 %i.ak, i64 %i.ap ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !1998

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %bb.l
  %.pre114 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.k, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit
  %.pre-phi115 = phi i64 [ %.pre114, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.pre110, %bb.k ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.tr100, %bb.k ]
  %i.aq = sub i64 %.pre-phi115, %.pre110
  %i.ar = ashr exact i64 %i.aq, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ], [ %i.af, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %.070 = phi i64 [ %i.r, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ], [ %i.ar, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %.069 = phi i64 [ %i.ad, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ], [ %i.ae, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi ptr [ %i.s, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %i.as = sub i64 %.tr89102, %.070                ; 3 uses
  %i.at = tail call noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairIiiES4_EET_S5_S5_S5_NS0_9iter_sizeIS5_E4typeES8_T0_S8_(ptr noundef %.0, ptr noundef %.tr87101, ptr noundef %.071, i64 noundef %i.as, i64 noundef %.069, ptr noundef %5, i64 noundef %6) ; 2 uses
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef %.tr100, ptr noundef %.0, ptr noundef %i.at, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6)
  %i.au = sub i64 %.tr90103, %.069                ; 2 uses
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = icmp ne i64 %i.as, 0
  %or.cond = and i1 %i.aw, %i.av
  br i1 %or.cond, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZN5boost7movelib14buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_10range_xbufIS4_mNS0_7move_opEEEEEvT_SG_SG_T0_RT1_.exit, %bb.g, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairIiiES4_EET_S5_S5_S5_NS0_9iter_sizeIS5_E4typeES8_T0_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 4 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 6 uses
  %i.d = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.e = icmp ule i64 %3, %4
  %.not = icmp ugt i64 %4, %6
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_:bb.a
  %.1.i.i = phi ptr [ %.02642.i.i, %.lr.ph43.i.i ], [ %2, %bb.d ], [ %2, %bb.e ], [ %.035.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.y = load i32, ptr %i.k, align 4, !tbaa !87
  store i32 %i.y, ptr %.1.i.i, align 4, !tbaa !292
  %i.z = getelementptr inbounds nuw i8, ptr %.02740.i.i, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !294
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not31.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph43.i.i, !llvm.loop !2580

bb.f:                                             ; preds = %bb.a
  %i.ad = lshr i64 %i.d, 1                        ; 6 uses
  %.idx = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad ; 2 uses
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %i.ae, ptr noundef %1, ptr noundef %i.af)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %i.ae, ptr noundef %i.ae)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %.not23.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not23.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 2 uses
  %.026.i.i = phi ptr [ %.1.i.i27, %bb.j ], [ %i.ae, %bb.f ] ; 12 uses
  %.01625.i.i = phi ptr [ %.117.i.i, %bb.j ], [ %i.af, %bb.f ] ; 5 uses
  %.01824.i.i = phi ptr [ %i.bo, %bb.j ], [ %2, %bb.f ] ; 9 uses
  %i.ai = icmp eq ptr %.01625.i.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i26
  %.026.i.i55.le = ptrtoaddr ptr %.026.i.i to i64 ; 2 uses
  %i.aj = shl i64 %i.ad, 4
  %i.ak = add i64 %i.aj, %i.b
  %i.al = add i64 %i.ak, -8
  %i.am = sub i64 %i.al, %.026.i.i55.le           ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ap = shl i64 %indvar, 3
  %i.aq = getelementptr i8, ptr %2, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.aq, i64 8
  %i.ar = shl i64 %i.ad, 4
  %i.as = add i64 %i.ar, %i.b
  %i.at = add i64 %i.as, -8
  %i.au = sub i64 %i.at, %.026.i.i55.le
  %i.av = and i64 %i.au, -8                       ; 2 uses
  %scevgep56 = getelementptr i8, ptr %scevgep, i64 %i.av
  %scevgep57 = getelementptr i8, ptr %.026.i.i, i64 8
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.av
  %bound0 = icmp ult ptr %.01824.i.i, %scevgep58
  %bound1 = icmp ult ptr %.026.i.i, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %.01824.i.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %.026.i.i, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 3 uses
  %i.ba = or disjoint i64 %i.az, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.01824.i.i, i64 %i.az
  %next.gep59 = getelementptr i8, ptr %.01824.i.i, i64 %i.ba
  %next.gep60 = getelementptr i8, ptr %.026.i.i, i64 %i.az
  %next.gep61 = getelementptr i8, ptr %.026.i.i, i64 %i.ba
  %wide.vec = load <4 x i32>, ptr %next.gep60, align 4, !tbaa !87, !alias.scope !2581
  %wide.vec63 = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !87, !alias.scope !2581
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !2584, !noalias !2581
  store <4 x i32> %wide.vec63, ptr %next.gep59, align 4, !tbaa !87, !alias.scope !2584, !noalias !2581
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !2586

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.i.i.preheader68

.lr.ph.i.i.i.i.preheader68:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01824.i.i, %vector.memcheck ], [ %.01824.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.026.i.i, %vector.memcheck ], [ %.026.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader68, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ] ; 3 uses
  %i.bc = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !87
  store i32 %i.bc, ptr %.010.i.i.i.i, align 4, !tbaa !292
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !87
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !294
  %i.bg = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2587

bb.g:                                             ; preds = %.lr.ph.i.i26
  %i.bi = load i32, ptr %.01625.i.i, align 4, !tbaa !87 ; 2 uses
  %i.bj = load i32, ptr %.026.i.i, align 4, !tbaa !87 ; 2 uses
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi i32 [ %i.bi, %bb.h ], [ %i.bj, %bb.i ]
  %.01625.pn.i.i = phi ptr [ %.01625.i.i, %bb.h ], [ %.026.i.i, %bb.i ]
  %.117.i.i = phi ptr [ %i.bl, %bb.h ], [ %.01625.i.i, %bb.i ]
  %.1.i.i27 = phi ptr [ %.026.i.i, %bb.h ], [ %i.bm, %bb.i ] ; 2 uses
  store i32 %.sink.i, ptr %.01824.i.i, align 4, !tbaa !292
  %.sink.in.i.i = getelementptr inbounds nuw i8, ptr %.01625.pn.i.i, i64 4
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !87
  %i.bn = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.bn, align 4, !tbaa !294
  %i.bo = getelementptr i8, ptr %.01824.i.i, i64 8
  %.not.i.i28 = icmp eq ptr %.1.i.i27, %i.ag
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i28, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i26, !llvm.loop !2022

_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i, %.critedge.i.i, %middle.block, %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit
  %.04461 = phi i64 [ %i.t, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04461 ; 6 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph, %bb.d
  %.02236.i.idx = phi i64 [ %.02236.i.add, %bb.d ], [ 8, %.lr.ph ] ; 2 uses
  %.pn35.i = phi ptr [ %.02236.i.ptr, %bb.d ], [ %i.f, %.lr.ph ] ; 5 uses
  %.02236.i.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02236.i.idx ; 4 uses
  %i.g = load i32, ptr %.02236.i.ptr, align 4, !tbaa !87
  %i.h = load i32, ptr %.pn35.i, align 4, !tbaa !87 ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph37.i
  %i.j = load i64, ptr %.02236.i.ptr, align 4     ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.j to i32
  store i32 %i.h, ptr %.02236.i.ptr, align 4, !tbaa !292
  %i.k = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !294
  %.not2628.i = icmp eq ptr %.pn35.i, %i.f
  br i1 %.not2628.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.030.i = phi ptr [ %i.n, %bb.c ], [ %.pn35.i, %bb.b ] ; 5 uses
  %i.n = getelementptr i8, ptr %.030.i, i64 -8    ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !87   ; 2 uses
  %i.p = icmp sgt i32 %i.o, %.sroa.0.0.extract.trunc.i
  br i1 %i.p, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.021.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.030.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  store i64 %i.j, ptr %.021.lcssa.i, align 4
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.o, ptr %.030.i, align 4, !tbaa !292
  %i.q = getelementptr inbounds i8, ptr %.030.i, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !294
  %.not26.i = icmp eq ptr %i.n, %i.f
  br i1 %.not26.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2479

bb.d:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %.02236.i.add = add nuw nsw i64 %.02236.i.idx, 8 ; 2 uses
  %.not25.i = icmp eq i64 %.02236.i.add, 128
  br i1 %.not25.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph37.i, !llvm.loop !2480

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit: ; preds = %bb.d
  %i.t = add nuw i64 %.04461, 16                  ; 3 uses
  %i.u = sub i64 %i.d, %i.t
  %i.v = icmp ugt i64 %i.u, 16
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !2588

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %i.t, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044.lcssa ; 7 uses
  %.not.i = icmp eq ptr %i.w, %1
  %.02233.i46 = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not2534.i = icmp eq ptr %.02233.i46, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2534.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59, label %.lr.ph37.i47

.lr.ph37.i47:                                     ; preds = %._crit_edge, %bb.g
  %.02236.i48 = phi ptr [ %.022.i50, %bb.g ], [ %.02233.i46, %._crit_edge ] ; 5 uses
  %.pn35.i49 = phi ptr [ %.02236.i48, %bb.g ], [ %i.w, %._crit_edge ] ; 5 uses
  %i.x = load i32, ptr %.02236.i48, align 4, !tbaa !87
  %i.y = load i32, ptr %.pn35.i49, align 4, !tbaa !87 ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph37.i47
  %i.aa = load i64, ptr %.02236.i48, align 4      ; 2 uses
  %.sroa.0.0.extract.trunc.i52 = trunc i64 %i.aa to i32
  store i32 %i.y, ptr %.02236.i48, align 4, !tbaa !292
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn35.i49, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn35.i49, i64 12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !294
  %.not2628.i53 = icmp eq ptr %.pn35.i49, %i.w
  br i1 %.not2628.i53, label %.critedge.i56, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.e, %bb.f
  %.030.i55 = phi ptr [ %i.ae, %bb.f ], [ %.pn35.i49, %bb.e ] ; 5 uses
  %i.ae = getelementptr i8, ptr %.030.i55, i64 -8 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !87 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, %.sroa.0.0.extract.trunc.i52
  br i1 %i.ag, label %bb.f, label %.critedge.i56

.critedge.i56:                                    ; preds = %bb.f, %.lr.ph.i54, %bb.e
  %.021.lcssa.i57 = phi ptr [ %i.w, %bb.e ], [ %.030.i55, %.lr.ph.i54 ], [ %i.w, %bb.f ]
  store i64 %i.aa, ptr %.021.lcssa.i57, align 4
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i54
  store i32 %i.af, ptr %.030.i55, align 4, !tbaa !292
  %i.ah = getelementptr inbounds i8, ptr %.030.i55, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %.030.i55, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !294
  %.not26.i58 = icmp eq ptr %i.ae, %i.w
  br i1 %.not26.i58, label %.critedge.i56, label %.lr.ph.i54, !llvm.loop !2479

bb.g:                                             ; preds = %.critedge.i56, %.lr.ph37.i47
  %.022.i50 = getelementptr inbounds nuw i8, ptr %.02236.i48, i64 8 ; 2 uses
  %.not25.i51 = icmp eq ptr %.022.i50, %1
  br i1 %.not25.i51, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59, label %.lr.ph37.i47, !llvm.loop !2480

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59: ; preds = %bb.g, %._crit_edge
  br i1 %i.e, label %.lr.ph68, label %._crit_edge69

._crit_edge69:                                    ; preds = %bb.k, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59
  ret void

.lr.ph68:                                         ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59, %bb.k
  %.04366 = phi i64 [ %i.bc, %bb.k ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59 ] ; 10 uses
  %i.ak = sub i64 %i.d, %.04366
  %i.al = icmp ugt i64 %i.ak, %.04366             ; 2 uses
  br i1 %i.al, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph68
  %i.am = shl i64 %.04366, 1                      ; 3 uses
  %i.an = icmp ugt i64 %i.d, %i.am
  br i1 %i.an, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %bb.h
  %.idx60 = shl i64 %.04366, 3                    ; 2 uses
  %.idx = shl i64 %.04366, 4
  %i.ao = ashr exact i64 %.idx60, 3
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph64, %bb.i
  %.062 = phi i64 [ 0, %.lr.ph64 ], [ %i.as, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.062 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.ar, i64 noundef %.04366, i64 noundef %i.ao)
  %i.as = add i64 %.062, %i.am                    ; 3 uses
  %i.at = sub i64 %i.d, %i.as
  %i.au = icmp ugt i64 %i.at, %i.am
  br i1 %i.au, label %bb.i, label %.loopexit, !llvm.loop !2589

.loopexit:                                        ; preds = %bb.i, %bb.h, %.lr.ph68
  %.1 = phi i64 [ 0, %.lr.ph68 ], [ 0, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %i.av = sub i64 %i.d, %.1
  %i.aw = icmp ugt i64 %i.av, %.04366
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.04366 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.a, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.ax, ptr noundef %i.ay, ptr noundef %1, i64 noundef %.04366, i64 noundef %i.bb)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.bc = shl i64 %.04366, 1
  br i1 %i.al, label %.lr.ph68, label %._crit_edge69, !llvm.loop !2590
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 11 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sub nsw i64 0, %.sroa.speculated
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx37 = shl nuw nsw i64 %.sroa.speculated, 3
  %i.b = sub nsw i64 0, %.sroa.speculated         ; 5 uses
  switch i64 %2, label %.lr.ph43.i.preheader [
    i64 0, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us
    i64 1, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40
  ]

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us
  %.038.us = phi i64 [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us ], [ %2, %.lr.ph ]
  %i.c = add i64 %.038.us, %.sroa.speculated      ; 3 uses
  %i.d = sub i64 %1, %i.c
  %i.e = icmp ugt i64 %i.d, %.sroa.speculated
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !2591

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40
  %.038.us39 = phi i64 [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038.us39 ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.b
  %i.h = load <2 x i32>, ptr %i.f, align 4, !tbaa !87
  store <2 x i32> %i.h, ptr %i.g, align 4, !tbaa !87
  %i.i = add i64 %.038.us39, %.sroa.speculated    ; 3 uses
  %i.j = sub i64 %1, %i.i
  %i.k = icmp ugt i64 %i.j, %.sroa.speculated
  br i1 %i.k, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40, label %._crit_edge, !llvm.loop !2591

.lr.ph43.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit
  %.038 = phi i64 [ %i.aj, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx37
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.b ; 6 uses
  %i.o = load <2 x i32>, ptr %i.l, align 4, !tbaa !87
  store <2 x i32> %i.o, ptr %i.n, align 4, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.preheader, %.critedge.i
  %i.q = phi ptr [ %i.ai, %.critedge.i ], [ %i.p, %.lr.ph43.i.preheader ] ; 5 uses
  %.pn41.i = phi ptr [ %.02642.i, %.critedge.i ], [ %i.n, %.lr.ph43.i.preheader ] ; 6 uses
  %.02740.i = phi ptr [ %i.q, %.critedge.i ], [ %i.l, %.lr.ph43.i.preheader ]
  %.02642.i = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87
  %i.s = load i32, ptr %.pn41.i, align 4, !tbaa !87 ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph43.i
  store i32 %i.s, ptr %.02642.i, align 4, !tbaa !292
  %i.u = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 12
  store i32 %i.v, ptr %i.w, align 4, !tbaa !294
  %.not3233.i = icmp eq ptr %.pn41.i, %i.n
  br i1 %.not3233.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.x, %bb.c ], [ %.pn41.i, %bb.b ] ; 5 uses
  %i.x = getelementptr i8, ptr %.035.i, i64 -8    ; 3 uses
  %i.y = load i32, ptr %i.q, align 4, !tbaa !87
  %i.z = load i32, ptr %i.x, align 4, !tbaa !87   ; 2 uses
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.z, ptr %.035.i, align 4, !tbaa !292
  %i.ab = getelementptr inbounds i8, ptr %.035.i, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !294
  %.not32.i = icmp eq ptr %i.x, %i.n
  br i1 %.not32.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2579

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b, %.lr.ph43.i
  %.1.i = phi ptr [ %.02642.i, %.lr.ph43.i ], [ %i.n, %bb.b ], [ %.035.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !87
  store i32 %i.ae, ptr %.1.i, align 4, !tbaa !292
  %i.af = getelementptr inbounds nuw i8, ptr %.02740.i, i64 12
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b:bb.a
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bn
  %i.bp = urem i64 %3, %4                         ; 2 uses
  %i.bq = udiv i64 %3, %4                         ; 3 uses
  %i.br = sub i64 0, %i.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph121, %bb.f
  %.0120 = phi i64 [ %i.e, %.lr.ph121 ], [ %i.bs, %bb.f ]
  %.2119 = phi ptr [ %i.bo, %.lr.ph121 ], [ %.3, %bb.f ] ; 2 uses
  %i.bs = add i64 %.0120, -1                      ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.c
  %i.bu = select i1 %i.bt, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bv = sub i64 %i.bu, %i.bp
  %i.bw = urem i64 %i.bv, %4                      ; 4 uses
  %i.bx = add i64 %i.bp, %i.bw
  %i.by = sub i64 %i.bu, %i.bx                    ; 2 uses
  %i.bz = udiv i64 %i.by, %4                      ; 11 uses
  %i.ca = sub i64 %i.bz, %i.bq                    ; 2 uses
  %.not8.i.i83 = icmp ugt i64 %4, %i.by
  br i1 %.not8.i.i83, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit88, label %iter.check228

iter.check228:                                    ; preds = %bb.c
  %min.iters.check213 = icmp ult i64 %i.bz, 4
  br i1 %min.iters.check213, label %.lr.ph.i.i84.preheader, label %vector.main.loop.iter.check214

vector.main.loop.iter.check214:                   ; preds = %iter.check228
  %min.iters.check215 = icmp ult i64 %i.bz, 32
  br i1 %min.iters.check215, label %vec.epilog.ph232, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check214
  %i.cb = and i64 %i.bz, 28
  %n.vec217 = and i64 %i.bz, -32                  ; 5 uses
  %i.cc = getelementptr i8, ptr %0, i64 %n.vec217
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next223, %vector.body218 ] ; 2 uses
  %vec.ind220 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph216 ], [ %vec.ind.next224, %vector.body218 ] ; 3 uses
  %step.add221 = add <16 x i8> %vec.ind220, splat (i8 16)
  %next.gep222 = getelementptr i8, ptr %0, i64 %index219 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep222, i64 16
  store <16 x i8> %vec.ind220, ptr %next.gep222, align 1, !tbaa !35
  store <16 x i8> %step.add221, ptr %i.cd, align 1, !tbaa !35
  %index.next223 = add nuw i64 %index219, 32      ; 2 uses
  %vec.ind.next224 = add <16 x i8> %vec.ind220, splat (i8 32)
  %i.ce = icmp eq i64 %index.next223, %n.vec217
  br i1 %i.ce, label %middle.block225, label %vector.body218, !llvm.loop !2641

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %i.bz, %n.vec217
  br i1 %cmp.n226, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit88, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block225
  %min.epilog.iters.check231 = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph.i.i84.preheader, label %vec.epilog.ph232, !prof !2631

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check214, %vec.epilog.iter.check230
  %vec.epilog.resume.val227 = phi i64 [ %n.vec217, %vec.epilog.iter.check230 ], [ 0, %vector.main.loop.iter.check214 ] ; 2 uses
  %n.vec233 = and i64 %i.bz, -4                   ; 4 uses
  %i.cf = getelementptr i8, ptr %0, i64 %n.vec233
  %i.cg = trunc i64 %vec.epilog.resume.val227 to i8
  %broadcast.splatinsert234 = insertelement <4 x i8> poison, i8 %i.cg, i64 0
  %broadcast.splat235 = shufflevector <4 x i8> %broadcast.splatinsert234, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction236 = or disjoint <4 x i8> %broadcast.splat235, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body237

vec.epilog.vector.body237:                        ; preds = %vec.epilog.vector.body237, %vec.epilog.ph232
  %index238 = phi i64 [ %vec.epilog.resume.val227, %vec.epilog.ph232 ], [ %index.next241, %vec.epilog.vector.body237 ] ; 2 uses
  %vec.ind239 = phi <4 x i8> [ %induction236, %vec.epilog.ph232 ], [ %vec.ind.next242, %vec.epilog.vector.body237 ] ; 2 uses
  %next.gep240 = getelementptr i8, ptr %0, i64 %index238
  store <4 x i8> %vec.ind239, ptr %next.gep240, align 1, !tbaa !35
  %index.next241 = add nuw i64 %index238, 4       ; 2 uses
  %vec.ind.next242 = add <4 x i8> %vec.ind239, splat (i8 4)
  %i.ch = icmp eq i64 %index.next241, %n.vec233
  br i1 %i.ch, label %vec.epilog.middle.block243, label %vec.epilog.vector.body237, !llvm.loop !2642

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body237
  %cmp.n244 = icmp eq i64 %i.bz, %n.vec233
  br i1 %cmp.n244, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit88, label %.lr.ph.i.i84.preheader

.lr.ph.i.i84.preheader:                           ; preds = %iter.check228, %vec.epilog.iter.check230, %vec.epilog.middle.block243
  %.010.i.i85.ph = phi i64 [ 0, %iter.check228 ], [ %n.vec217, %vec.epilog.iter.check230 ], [ %n.vec233, %vec.epilog.middle.block243 ]
  %.079.i.i86.ph = phi ptr [ %0, %iter.check228 ], [ %i.cc, %vec.epilog.iter.check230 ], [ %i.cf, %vec.epilog.middle.block243 ]
  br label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %.lr.ph.i.i84.preheader, %.lr.ph.i.i84
  %.010.i.i85 = phi i64 [ %i.ck, %.lr.ph.i.i84 ], [ %.010.i.i85.ph, %.lr.ph.i.i84.preheader ] ; 2 uses
  %.079.i.i86 = phi ptr [ %i.cj, %.lr.ph.i.i84 ], [ %.079.i.i86.ph, %.lr.ph.i.i84.preheader ] ; 2 uses
  %i.ci = trunc i64 %.010.i.i85 to i8
  store i8 %i.ci, ptr %.079.i.i86, align 1, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i86, i64 1
  %i.ck = add nuw i64 %.010.i.i85, 1              ; 2 uses
  %.not.i.i87 = icmp eq i64 %i.ck, %i.bz
  br i1 %.not.i.i87, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit88, label %.lr.ph.i.i84, !llvm.loop !2643

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit88: ; preds = %.lr.ph.i.i84, %middle.block225, %vec.epilog.middle.block243, %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [8 x i8], ptr %.2119, i64 %i.cm
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit88
  store ptr %i.cl, ptr %9, align 8, !tbaa !2644
  store ptr %i.co, ptr %10, align 8, !tbaa !2099
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISP_E4typeESS_SS_SS_SS_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit88
  store ptr %i.cl, ptr %11, align 8, !tbaa !2644
  store ptr %i.co, ptr %12, align 8, !tbaa !2099
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISP_E4typeESS_SS_SS_SS_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [8 x i8], ptr %.2119, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !2646

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %i.a = shl i64 %3, 1                            ; 11 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 4 uses
  %i.c = udiv i64 %2, %i.a                        ; 5 uses
  %i.d = zext i1 %.not.i to i64
  %i.e = add nuw i64 %i.c, %i.d                   ; 6 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  %.not78120 = icmp eq i64 %i.e, 0                ; 2 uses
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  br i1 %.not78120, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = urem i64 %3, %4                          ; 6 uses
  %i.g = udiv i64 %3, %4                          ; 6 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %6, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us
  %.073119.us.us = phi i64 [ %i.z, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.074118.us.us = phi ptr [ %spec.select.us.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %i.h = icmp eq i64 %.073119.us.us, %i.c
  %i.i = select i1 %i.h, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.j = sub i64 %i.i, %i.f
  %i.k = urem i64 %i.j, %4                        ; 2 uses
  %i.l = add i64 %i.f, %i.k
  %i.m = sub i64 %i.i, %i.l
  %i.n = udiv i64 %i.m, %4                        ; 4 uses
  %i.o = sub i64 %i.n, %i.g
  %i.p = shl i64 %i.n, 3
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %.mask.i.us.us = and i64 %i.n, 2305843009213693951
  %.not8.i.i.us.us = icmp eq i64 %.mask.i.us.us, 0
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

.lr.ph.i.i.us.us.preheader:                       ; preds = %.lr.ph.split.us.split.us
  %min.iters.check154 = icmp ult i64 %i.q, 4
  br i1 %min.iters.check154, label %.lr.ph.i.i.us.us.preheader184, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph.i.i.us.us.preheader
  %i.r = and i64 %i.n, 3                          ; 2 uses
  %n.vec156 = sub nuw nsw i64 %i.q, %i.r          ; 3 uses
  %i.s = shl i64 %n.vec156, 3
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next162, %vector.body157 ] ; 2 uses
  %vec.ind159 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph155 ], [ %vec.ind.next163, %vector.body157 ] ; 3 uses
  %step.add160 = add nuw <2 x i64> %vec.ind159, splat (i64 2)
  %i.u = shl i64 %index158, 3
  %next.gep161 = getelementptr i8, ptr %0, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep161, i64 16
  store <2 x i64> %vec.ind159, ptr %next.gep161, align 8, !tbaa !708
  store <2 x i64> %step.add160, ptr %i.v, align 8, !tbaa !708
  %index.next162 = add nuw i64 %index158, 4       ; 2 uses
  %vec.ind.next163 = add nuw <2 x i64> %vec.ind159, splat (i64 4)
  %i.w = icmp eq i64 %index.next162, %n.vec156
  br i1 %i.w, label %middle.block164, label %vector.body157, !llvm.loop !2647

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %i.r, 0
  br i1 %cmp.n165, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader184

.lr.ph.i.i.us.us.preheader184:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block164
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec156, %middle.block164 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.t, %middle.block164 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader184, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.y, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader184 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.x, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader184 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !708
  %i.x = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.y = add nuw i64 %.010.i.i.us.us, 1           ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.y, %i.q
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !2648

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block164, %.lr.ph.split.us.split.us
  tail call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %.074118.us.us, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.o, i64 noundef %i.k)
  %i.z = add nuw i64 %.073119.us.us, 1            ; 2 uses
  %.not77.us.us = icmp eq i64 %i.z, %i.e          ; 2 uses
  %spec.select.idx.us.us = select i1 %.not77.us.us, i64 0, i64 %i.a
  %spec.select.us.us = getelementptr inbounds nuw [8 x i8], ptr %.074118.us.us, i64 %spec.select.idx.us.us
  br i1 %.not77.us.us, label %.loopexit, label %.lr.ph.split.us.split.us, !llvm.loop !2649

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us
  %.073119.us = phi i64 [ %i.as, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.074118.us = phi ptr [ %spec.select.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %i.aa = icmp eq i64 %.073119.us, %i.c
  %i.ab = select i1 %i.aa, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ac = sub i64 %i.ab, %i.f
  %i.ad = urem i64 %i.ac, %4                      ; 2 uses
  %i.ae = add i64 %i.f, %i.ad
  %i.af = sub i64 %i.ab, %i.ae
  %i.ag = udiv i64 %i.af, %4                      ; 4 uses
  %i.ah = sub i64 %i.ag, %i.g
  %i.ai = shl i64 %i.ag, 3
  %i.aj = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.mask.i.us = and i64 %i.ag, 2305843009213693951
  %.not8.i.i.us = icmp eq i64 %.mask.i.us, 0
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %.lr.ph.split.us.split
  %min.iters.check139 = icmp ult i64 %i.aj, 4
  br i1 %min.iters.check139, label %.lr.ph.i.i.us.preheader186, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph.i.i.us.preheader
  %i.ak = and i64 %i.ag, 3                        ; 2 uses
  %n.vec141 = sub nuw nsw i64 %i.aj, %i.ak        ; 3 uses
  %i.al = shl i64 %n.vec141, 3
  %i.am = getelementptr i8, ptr %0, i64 %i.al
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body142 ] ; 2 uses
  %vec.ind144 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph140 ], [ %vec.ind.next148, %vector.body142 ] ; 3 uses
  %step.add145 = add nuw <2 x i64> %vec.ind144, splat (i64 2)
  %i.an = shl i64 %index143, 3
  %next.gep146 = getelementptr i8, ptr %0, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x i64> %vec.ind144, ptr %next.gep146, align 8, !tbaa !708
  store <2 x i64> %step.add145, ptr %i.ao, align 8, !tbaa !708
  %index.next147 = add nuw i64 %index143, 4       ; 2 uses
  %vec.ind.next148 = add nuw <2 x i64> %vec.ind144, splat (i64 4)
  %i.ap = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.ap, label %middle.block149, label %vector.body142, !llvm.loop !2650

middle.block149:                                  ; preds = %vector.body142
  %cmp.n150 = icmp eq i64 %i.ak, 0
  br i1 %cmp.n150, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us, label %.lr.ph.i.i.us.preheader186

.lr.ph.i.i.us.preheader186:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block149
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec141, %middle.block149 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.am, %middle.block149 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader186, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.ar, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader186 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.aq, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader186 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !708
  %i.aq = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.ar = add nuw i64 %.010.i.i.us, 1             ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !2651

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block149, %.lr.ph.split.us.split
  tail call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %.074118.us, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ah, i64 noundef %i.ad)
  %i.as = add nuw i64 %.073119.us, 1              ; 2 uses
  %.not77.us = icmp eq i64 %i.as, %i.e            ; 2 uses
  %spec.select.idx.us = select i1 %.not77.us, i64 0, i64 %i.a
  %spec.select.us = getelementptr inbounds nuw [8 x i8], ptr %.074118.us, i64 %spec.select.idx.us
  br i1 %.not77.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !2649

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit
  %.073119 = phi i64 [ %i.bl, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit ], [ 0, %.lr.ph ] ; 2 uses
  %.074118 = phi ptr [ %spec.select, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit ], [ %1, %.lr.ph ] ; 2 uses
  %i.at = icmp eq i64 %.073119, %i.c
  %i.au = select i1 %i.at, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.av = sub i64 %i.au, %i.f
  %i.aw = urem i64 %i.av, %4                      ; 2 uses
  %i.ax = add i64 %i.f, %i.aw
  %i.ay = sub i64 %i.au, %i.ax
  %i.az = udiv i64 %i.ay, %4                      ; 4 uses
  %i.ba = sub i64 %i.az, %i.g
  %i.bb = shl i64 %i.az, 3
  %i.bc = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.mask.i = and i64 %i.az, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader188, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.bd = and i64 %i.az, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.bc, %i.bd           ; 3 uses
  %i.be = shl i64 %n.vec, 3
  %i.bf = getelementptr i8, ptr %0, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bg = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !708
  store <2 x i64> %step.add, ptr %i.bh, align 8, !tbaa !708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !2652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader188

.lr.ph.i.i.preheader188:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader188, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !708
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.bk = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, %i.bc
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i, !llvm.loop !2653

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %.lr.ph.split
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %.074118, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ba, i64 noundef %i.aw)
  %i.bl = add nuw i64 %.073119, 1                 ; 2 uses
  %.not77 = icmp eq i64 %i.bl, %i.e               ; 2 uses
  %spec.select.idx = select i1 %.not77, i64 0, i64 %i.a
  %spec.select = getelementptr inbounds nuw [8 x i8], ptr %.074118, i64 %spec.select.idx
  br i1 %.not77, label %.loopexit, label %.lr.ph.split, !llvm.loop !2649

bb.b:                                             ; preds = %bb.a
  br i1 %.not78120, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.b
  %i.bm = add i64 %i.e, -1
  %i.bn = mul i64 %i.bm, %i.a
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bn
  %i.bp = urem i64 %3, %4                         ; 2 uses
  %i.bq = udiv i64 %3, %4                         ; 3 uses
  %i.br = sub i64 0, %i.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.f
  %.0122 = phi i64 [ %i.e, %.lr.ph123 ], [ %i.bs, %bb.f ]
  %.2121 = phi ptr [ %i.bo, %.lr.ph123 ], [ %.3, %bb.f ] ; 2 uses
  %i.bs = add i64 %.0122, -1                      ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.c
  %i.bu = select i1 %i.bt, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bv = sub i64 %i.bu, %i.bp
  %i.bw = urem i64 %i.bv, %4                      ; 4 uses
  %i.bx = add i64 %i.bp, %i.bw
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = udiv i64 %i.by, %4                      ; 6 uses
  %i.ca = sub i64 %i.bz, %i.bq                    ; 2 uses
  %i.cb = shl i64 %i.bz, 3
  %i.cc = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.mask.i84 = and i64 %i.bz, 2305843009213693951
  %.not8.i.i85 = icmp eq i64 %.mask.i84, 0
  br i1 %.not8.i.i85, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90, label %.lr.ph.i.i86.preheader

.lr.ph.i.i86.preheader:                           ; preds = %bb.c
  %min.iters.check169 = icmp ult i64 %i.cc, 4
  br i1 %min.iters.check169, label %.lr.ph.i.i86.preheader183, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i.i86.preheader
  %i.cd = and i64 %i.bz, 3                        ; 2 uses
  %n.vec171 = sub nuw nsw i64 %i.cc, %i.cd        ; 3 uses
  %i.ce = shl i64 %n.vec171, 3
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next177, %vector.body172 ] ; 2 uses
  %vec.ind174 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph170 ], [ %vec.ind.next178, %vector.body172 ] ; 3 uses
  %step.add175 = add nuw <2 x i64> %vec.ind174, splat (i64 2)
  %i.cg = shl i64 %index173, 3
  %next.gep176 = getelementptr i8, ptr %0, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x i64> %vec.ind174, ptr %next.gep176, align 8, !tbaa !708
  store <2 x i64> %step.add175, ptr %i.ch, align 8, !tbaa !708
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %vec.ind.next178 = add nuw <2 x i64> %vec.ind174, splat (i64 4)
  %i.ci = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ci, label %middle.block179, label %vector.body172, !llvm.loop !2654

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.cd, 0
  br i1 %cmp.n180, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90, label %.lr.ph.i.i86.preheader183

.lr.ph.i.i86.preheader183:                        ; preds = %.lr.ph.i.i86.preheader, %middle.block179
  %.010.i.i87.ph = phi i64 [ 0, %.lr.ph.i.i86.preheader ], [ %n.vec171, %middle.block179 ]
  %.079.i.i88.ph = phi ptr [ %0, %.lr.ph.i.i86.preheader ], [ %i.cf, %middle.block179 ]
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph.i.i86.preheader183, %.lr.ph.i.i86
  %.010.i.i87 = phi i64 [ %i.ck, %.lr.ph.i.i86 ], [ %.010.i.i87.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  %.079.i.i88 = phi ptr [ %i.cj, %.lr.ph.i.i86 ], [ %.079.i.i88.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  store i64 %.010.i.i87, ptr %.079.i.i88, align 8, !tbaa !708
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i88, i64 8
  %i.ck = add nuw i64 %.010.i.i87, 1              ; 2 uses
  %.not.i.i89 = icmp eq i64 %i.ck, %i.cc
  br i1 %.not.i.i89, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90, label %.lr.ph.i.i86, !llvm.loop !2655

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90: ; preds = %.lr.ph.i.i86, %middle.block179, %bb.c
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [8 x i8], ptr %.2121, i64 %i.cm
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90
  store ptr %i.cl, ptr %9, align 8, !tbaa !2219
  store ptr %i.co, ptr %10, align 8, !tbaa !2099
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISP_E4typeESS_SS_SS_SS_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90
  store ptr %i.cl, ptr %11, align 8, !tbaa !2219
  store ptr %i.co, ptr %12, align 8, !tbaa !2099
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISP_E4typeESS_SS_SS_SS_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [8 x i8], ptr %.2121, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !2656

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !73
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 12 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not277 = icmp eq i64 %i.e, 0
  br i1 %.not277, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.idx250 = shl i64 %2, 3                        ; 5 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = mul i64 %2, %i.e
  %i.r = shl i64 %3, 3                            ; 2 uses
  %i.s = add i64 %i.q, %3
  %i.t = shl i64 %i.s, 3
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 -4   ; 3 uses
  %i.v = shl i64 %2, 3
  %i.w = or disjoint i64 %i.r, 4                  ; 2 uses
  %scevgep378 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %i.x = shl i64 %3, 3                            ; 3 uses
  %i.y = add i64 %i.x, %i.o
  %i.z = add i64 %i.y, %.idx250
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = shl i64 %2, 3
  %i.ac = shl i64 %2, 3
  %i.ad = add i64 %i.x, %i.o
  %i.ae = add i64 %i.ad, %.idx250
  %i.af = add i64 %i.ae, -8                       ; 2 uses
  %i.ag = shl i64 %2, 3
  %i.ah = shl i64 %2, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.x
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = getelementptr i8, ptr %1, i64 %i.r
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = getelementptr i8, ptr %1, i64 %i.w
  %i.an = add i64 %.idx250, -8                    ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 168
  %bound0381 = icmp ult ptr %i.i, %i.k
  %bound1382 = icmp ult ptr %scevgep378, %scevgep
  %found.conflict383 = and i1 %bound0381, %bound1382
  %stride.check384 = icmp slt i64 %.idx250, 0
  %i.aq = or i1 %found.conflict383, %stride.check384
  %n.vec = and i64 %i.ap, 4611686018427387902     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 6 uses
  %i.as = phi ptr [ %i.i, %.lr.ph ], [ %i.bx, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.in, %.sink.split.i ] ; 3 uses
  %.0287 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099286 = phi i64 [ %i.m, %.lr.ph ], [ %i.il, %.sink.split.i ] ; 7 uses
  %.0102284 = phi ptr [ %0, %.lr.ph ], [ %i.ij, %.sink.split.i ] ; 15 uses
  %.0105283 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108282 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0216281 = phi ptr [ %1, %.lr.ph ], [ %.2218, %.sink.split.i ] ; 21 uses
  %.0222280 = phi ptr [ %i.h, %.lr.ph ], [ %.2224, %.sink.split.i ] ; 21 uses
  %.0228279 = phi ptr [ %i.f, %.lr.ph ], [ %.1229, %.sink.split.i ] ; 13 uses
  %.0234278 = phi i64 [ %i.e, %.lr.ph ], [ %i.io, %.sink.split.i ] ; 5 uses
  %i.at = mul i64 %i.ah, %indvar
  %i.au = add i64 %i.af, %i.at
  %i.av = mul i64 %i.ag, %indvar
  %i.aw = add i64 %i.af, %i.av
  %i.ax = mul i64 %i.ac, %indvar
  %i.ay = add i64 %i.aa, %i.ax
  %i.az = mul i64 %i.ab, %indvar                  ; 2 uses
  %i.ba = add i64 %i.aa, %i.az
  %scevgep468 = getelementptr i8, ptr %i.aj, i64 %i.az
  %.0108282414 = ptrtoaddr ptr %.0108282 to i64   ; 2 uses
  %.0216281415 = ptrtoaddr ptr %.0216281 to i64   ; 2 uses
  %i.bb = mul i64 %i.v, %indvar                   ; 2 uses
  %scevgep376 = getelementptr i8, ptr %i.al, i64 %i.bb
  %scevgep379 = getelementptr i8, ptr %i.am, i64 %i.bb
  %i.bc = icmp ult i64 %.099286, %.0
  br i1 %i.bc, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.br, %.thread24.i ], [ %.099286, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bq, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.bd = mul i64 %.02226.i, %2
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bd
  %i.bf = mul i64 %.027.i, %2
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0102284, i64 %.02226.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0102284, i64 %.027.i
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !87 ; 2 uses
  %i.bk = load i32, ptr %i.be, align 4, !tbaa !87 ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.bm = icmp slt i32 %i.bk, %i.bj
  br i1 %i.bm, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = load i32, ptr %i.bi, align 4, !tbaa !87
  %i.bo = load i32, ptr %i.bh, align 4, !tbaa !87
  %i.bp = icmp slt i32 %i.bn, %i.bo
  %cond.fr.i = freeze i1 %i.bp
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bq = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.br = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.br, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !2054

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bq, %.thread24.i ] ; 7 uses
  %i.bs = add i64 %.022.lcssa.i, 2
  %i.bt = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bs) ; 2 uses
  %.sroa.speculated206 = call i64 @llvm.umin.i64(i64 %i.bt, i64 %.0234278) ; 4 uses
  %i.bu = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bu, 3                        ; 2 uses
  %i.bv = getelementptr i8, ptr %i.as, i64 %.idx  ; 13 uses
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %2 ; 4 uses
  %i.bx = getelementptr i8, ptr %i.as, i64 %.idx250 ; 15 uses
  %.not119 = icmp eq i64 %.0287, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = load i32, ptr %i.k, align 4, !tbaa !87
  %i.bz = load i32, ptr %i.bv, align 4, !tbaa !87
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105283 to i1
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEESC_SC_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
  %.not.i = icmp eq ptr %i.de, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !2265

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.db, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.047.0 = phi ptr [ %i.do, %.lr.ph.i29 ], [ %.sroa.070.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dp, %.lr.ph.i29 ], [ %.sroa.065.0, %bb.v ] ; 2 uses
  %i.dm = phi ptr [ %i.dn, %.lr.ph.i29 ], [ %i.db, %bb.v ] ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -8 ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 4 uses
  %i.dq = load i64, ptr %i.dp, align 4, !noalias !3386
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !87, !noalias !3386
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !292, !noalias !3386
  %i.ds = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !87, !noalias !3386
  %i.du = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !294, !noalias !3386
  %i.dv = load i32, ptr %i.dn, align 4, !tbaa !87, !noalias !3386
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !292, !noalias !3386
  %i.dw = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !87, !noalias !3386
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !294, !noalias !3386
  store i64 %i.dq, ptr %i.dn, align 4, !noalias !3386
  %.not.i30 = icmp eq ptr %i.dn, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !2341

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.065.0, %bb.w ] ; 2 uses
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.db, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !87, !noalias !3389
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !87, !noalias !3389
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !87, !noalias !3389
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !87, !noalias !3389
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !87, !noalias !3389
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !87, !noalias !3389
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !87, !noalias !3389
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !87, !noalias !3389
  %.not.i.i31 = icmp eq ptr %i.dz, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2265

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ea, %.lr.ph.i.i ], [ %i.db, %bb.t ], [ %i.df, %.lr.ph.i28 ], [ %.sroa.065.0, %bb.v ], [ %.sroa.065.0, %bb.w ], [ %i.dp, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2099
  %i.eh = load ptr, ptr %1, align 8, !tbaa !2219  ; 6 uses
  %.neg99 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %.neg99 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.070.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit
  %.not9.i = icmp eq i64 %.neg99, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -8 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !708
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !708
  store i64 %i.em, ptr %i.ej, align 8, !tbaa !708
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !708
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.en = load ptr, ptr %2, align 8, !tbaa !2219  ; 2 uses
  %i.eo = icmp eq ptr %i.ei, %i.en
  br i1 %i.eo, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = icmp eq ptr %i.en, %i.eh
  br i1 %i.ep, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eh, %bb.y ], [ %i.ei, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2219
  %.pre184 = load ptr, ptr %1, align 8, !tbaa !2219
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  %i.eq = phi ptr [ %i.eh, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit ], [ %i.eh, %bb.z ], [ %.pre184, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !2099
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 2 uses
  store ptr %i.er, ptr %1, align 8, !tbaa !2219
  %i.es = icmp ne i64 %.0141, 0
  %.neg = sext i1 %i.es to i64
  %i.et = add i64 %.0141, %.neg
  %i.eu = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.eu to i64
  %i.ev = add i64 %.sroa.speculated, %.neg24
  %i.ew = add i64 %.096140, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ew, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3394

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.ex = load ptr, ptr %6, align 8, !tbaa !2099
  store ptr %i.ex, ptr %0, align 8, !tbaa !2099
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SI_SI_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1562 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  %i.j = load ptr, ptr %3, align 8, !tbaa !3395, !nonnull !197 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.j, ptr %7, align 8, !tbaa !2072
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.k, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !1559   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.n = icmp eq ptr %0, %1
  %i.o = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %0, align 4                ; 4 uses
  store i64 %i.p, ptr %i.m, align 4
  %.not8.i.i = icmp eq i64 %i.i, 1
  %i.q = trunc i64 %i.p to i32
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.r = add i64 %i.i, -1                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.r, -4                       ; 4 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.u, align 4
  store <2 x i64> %broadcast.splat, ptr %i.v, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !3397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i.preheader24

.lr.ph.i.i.preheader24:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.8.0.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader24, %.lr.ph.i.i
  %.sroa.8.0.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %.sroa.8.0.i.ph, %.lr.ph.i.i.preheader24 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.8.0.i
  store i64 %i.p, ptr %i.x, align 4
  %storemerge.i.i = add nuw i64 %.sroa.8.0.i, 1   ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i, !llvm.loop !3398

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %storemerge.in.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %.sroa.8.0.i, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %storemerge.in.lcssa.i.i
  store i32 %i.q, ptr %0, align 4, !tbaa !292
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !294
  store ptr %i.j, ptr %6, align 8, !tbaa !2072
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.m, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.j, ptr %5, align 8, !tbaa !2072
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull align 8 dead_on_return %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit

_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit: ; preds = %bb.c, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %bb.b, %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !87   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !87     ; 2 uses
  %.not86 = icmp slt i32 %i.b, %i.c
  br i1 %.not86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 13 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !3399

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i140.le = ptrtoaddr ptr %.114.i to i64    ; 6 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1561 ; 4 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre107 = load ptr, ptr %4, align 8, !tbaa !1559 ; 10 uses
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.t = add i64 %i.d, -8
  %i.u = sub i64 %i.t, %.114.i140.le              ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 88
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader324, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.pre107, i64 8
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %.114.i140.le
  %i.z = and i64 %i.y, -8                         ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep, i64 %i.z
  %scevgep142 = getelementptr i8, ptr %.114.i, i64 8
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.z
  %bound0 = icmp ult ptr %.pre107, %scevgep143
  %bound1 = icmp ult ptr %.114.i, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader324, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.pre107, i64 %i.aa
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre107, i64 %i.ad
  %next.gep144 = getelementptr i8, ptr %.pre107, i64 %i.ae
  %next.gep145 = getelementptr i8, ptr %.114.i, i64 %i.ad
  %next.gep146 = getelementptr i8, ptr %.114.i, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep145, align 4, !tbaa !87, !alias.scope !3400
  %wide.vec148 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !87, !alias.scope !3400
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !87, !alias.scope !3403, !noalias !3400
  store <4 x i32> %wide.vec148, ptr %next.gep144, align 4, !tbaa !87, !alias.scope !3403, !noalias !3400
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !3405

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader324

.lr.ph.i.i.preheader324:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.pre107, %vector.memcheck ], [ %.pre107, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader324, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader324 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader324 ] ; 3 uses
  %i.ag = load i32, ptr %.079.i.i, align 4, !tbaa !87
  store i32 %i.ag, ptr %.010.i.i, align 4, !tbaa !292
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !294
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !3406

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.s, 3                     ; 5 uses
  %i.am = getelementptr i8, ptr %.114.i, i64 %.idx26.i ; 6 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !1559  ; 9 uses
  %.not8.i17.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.f
  %i.ao = add i64 %.idx26.i, -8                   ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check159 = icmp ult i64 %i.ao, 40
  br i1 %min.iters.check159, label %.lr.ph.i18.i.preheader322, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph.i18.i.preheader
  %scevgep154 = getelementptr i8, ptr %i.an, i64 %.idx26.i
  %bound0155 = icmp ult ptr %i.an, %i.am
  %bound1156 = icmp ult ptr %.114.i, %scevgep154
  %found.conflict157 = and i1 %bound0155, %bound1156
  br i1 %found.conflict157, label %.lr.ph.i18.i.preheader322, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck153
  %n.vec161 = and i64 %i.aq, 4611686018427387900  ; 3 uses
  %i.ar = shl i64 %n.vec161, 3                    ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %.114.i, i64 %i.ar
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next176, %vector.body162 ] ; 2 uses
  %i.au = shl i64 %index163, 3                    ; 3 uses
  %i.av = or disjoint i64 %i.au, 16               ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.an, i64 %i.au
  %next.gep165 = getelementptr i8, ptr %i.an, i64 %i.av
  %next.gep166 = getelementptr i8, ptr %.114.i, i64 %i.au
  %next.gep167 = getelementptr i8, ptr %.114.i, i64 %i.av
  %wide.vec168 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !87, !alias.scope !3407
  %wide.vec171 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !87, !alias.scope !3407
  store <4 x i32> %wide.vec168, ptr %next.gep164, align 4, !tbaa !87, !alias.scope !3410, !noalias !3407
  store <4 x i32> %wide.vec171, ptr %next.gep165, align 4, !tbaa !87, !alias.scope !3410, !noalias !3407
  %index.next176 = add nuw i64 %index163, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next176, %n.vec161
  br i1 %i.aw, label %middle.block177, label %vector.body162, !llvm.loop !3412

middle.block177:                                  ; preds = %vector.body162
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_bbT0_RT1_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !390, !noalias !4257 ; 11 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %3 ; 4 uses
  br i1 %7, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1561 ; 2 uses
  %i.h = icmp ult i64 %i.g, %5
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %8, align 8, !tbaa !1559
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load i64, ptr %i.d, align 4
  store i64 %i.k, ptr %i.j, align 4
  %storemerge.in6.i = load i64, ptr %i.f, align 8, !tbaa !1561 ; 3 uses
  %storemerge7.i = add i64 %storemerge.in6.i, 1   ; 3 uses
  store i64 %storemerge7.i, ptr %i.f, align 8, !tbaa !1561
  %.not8.i = icmp eq i64 %storemerge7.i, %5
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge7.i, %bb.d ]
  %storemerge.in9.i = phi i64 [ %storemerge.in.i, %.lr.ph.i ], [ %storemerge.in6.i, %bb.d ]
  %i.l = load ptr, ptr %8, align 8, !tbaa !1559   ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %storemerge10.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %storemerge.in9.i
  %i.o = load i64, ptr %i.n, align 4
  store i64 %i.o, ptr %i.m, align 4
  %storemerge.in.i = load i64, ptr %i.f, align 8, !tbaa !1561 ; 3 uses
  %storemerge.i = add i64 %storemerge.in.i, 1     ; 3 uses
  store i64 %storemerge.i, ptr %i.f, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !1995

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ %storemerge.in6.i, %bb.d ], [ %storemerge.in.i, %.lr.ph.i ]
  %i.p = load ptr, ptr %8, align 8, !tbaa !1559
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87
  store i32 %i.r, ptr %i.d, align 4, !tbaa !292
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !294
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.c
  %i.v = urem i64 %i.c, %5                        ; 3 uses
  %i.w = sub i64 %i.b, %i.v
  %i.x = urem i64 %i.w, %5                        ; 2 uses
  %i.y = add i64 %i.v, %i.x
  %i.z = sub i64 %i.b, %i.y
  %i.aa = udiv i64 %i.z, %5                       ; 2 uses
  %i.ab = udiv i64 %i.c, %5                       ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.d, i64 %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.d, ptr %11, align 8, !tbaa !390
  store ptr %i.ad, ptr %12, align 8, !tbaa !390
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEE4sortES7_S7_SE_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  store ptr %i.d, ptr %13, align 8, !tbaa !390
  store ptr %i.e, ptr %14, align 8, !tbaa !390
  %i.ae = load ptr, ptr %8, align 8, !tbaa !1559
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %5, i64 noundef %i.v, i64 noundef %i.ab, i64 noundef %i.ac, i64 noundef %i.x, ptr noundef %i.ae)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.f:                                             ; preds = %bb.b
  %i.af = urem i64 %i.c, %5                       ; 4 uses
  %i.ag = sub i64 %i.b, %i.af
  %i.ah = urem i64 %i.ag, %5                      ; 3 uses
  %i.ai = add i64 %i.af, %i.ah
  %i.aj = sub i64 %i.b, %i.ai
  %i.ak = udiv i64 %i.aj, %5                      ; 2 uses
  %i.al = udiv i64 %i.c, %5                       ; 3 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.d, i64 %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.d, ptr %9, align 8, !tbaa !390
  store ptr %i.an, ptr %10, align 8, !tbaa !390
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEE4sortES7_S7_SE_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.d, ptr %15, align 8, !tbaa !390
  store ptr %i.e, ptr %16, align 8, !tbaa !390
  %i.ao = sub i64 0, %5
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ao
  store ptr %i.ap, ptr %17, align 8, !tbaa !390, !alias.scope !4260
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %5, i64 noundef %i.af, i64 noundef %i.al, i64 noundef %i.am, i64 noundef %i.ah, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.h:                                             ; preds = %bb.f
  store ptr %i.d, ptr %18, align 8, !tbaa !390
  store ptr %i.e, ptr %19, align 8, !tbaa !390
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, i64 noundef %5, i64 noundef %i.af, i64 noundef %i.al, i64 noundef %i.am, i64 noundef %i.ah)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.i:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1561 ; 3 uses
  %i.as = icmp ugt i64 %i.ar, %5
  br i1 %i.as, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.i
  store i64 %5, ptr %i.aq, align 8, !tbaa !1561
  %.pre101 = load ptr, ptr %8, align 8, !tbaa !1559
  br label %bb.k

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit: ; preds = %bb.i
  %i.at = icmp ult i64 %i.ar, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !390   ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ar
  %i.aw = load i64, ptr %i.au, align 4
  store i64 %i.aw, ptr %i.av, align 4
  %storemerge.in6.i43 = load i64, ptr %i.aq, align 8, !tbaa !1561 ; 3 uses
  %storemerge7.i44 = add i64 %storemerge.in6.i43, 1 ; 3 uses
  store i64 %storemerge7.i44, ptr %i.aq, align 8, !tbaa !1561
  %.not8.i45 = icmp eq i64 %storemerge7.i44, %5
  br i1 %.not8.i45, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.j, %.lr.ph.i46
  %storemerge10.i47 = phi i64 [ %storemerge.i50, %.lr.ph.i46 ], [ %storemerge7.i44, %bb.j ]
  %storemerge.in9.i48 = phi i64 [ %storemerge.in.i49, %.lr.ph.i46 ], [ %storemerge.in6.i43, %bb.j ]
  %i.ax = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %storemerge10.i47
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %storemerge.in9.i48
  %i.ba = load i64, ptr %i.az, align 4
  store i64 %i.ba, ptr %i.ay, align 4
  %storemerge.in.i49 = load i64, ptr %i.aq, align 8, !tbaa !1561 ; 3 uses
  %storemerge.i50 = add i64 %storemerge.in.i49, 1 ; 3 uses
  store i64 %storemerge.i50, ptr %i.aq, align 8, !tbaa !1561
  %.not.i51 = icmp eq i64 %storemerge.i50, %5
  br i1 %.not.i51, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54, label %.lr.ph.i46, !llvm.loop !1995

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54: ; preds = %.lr.ph.i46, %bb.j
  %storemerge.in.lcssa.i53 = phi i64 [ %storemerge.in6.i43, %bb.j ], [ %storemerge.in.i49, %.lr.ph.i46 ]
  %i.bb = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %storemerge.in.lcssa.i53 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !87
  store i32 %i.bd, ptr %i.au, align 4, !tbaa !292
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !87
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !294
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.bh = phi ptr [ %i.bb, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit ], [ %.pre101, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %5
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %i.bj, 7
  %i.bl = and i64 %i.bk, -8
  %i.bm = inttoptr i64 %i.bl to ptr               ; 4 uses
  %i.bn = urem i64 %i.c, %5                       ; 3 uses
  %i.bo = sub i64 %i.b, %i.bn
  %i.bp = urem i64 %i.bo, %5                      ; 2 uses
  %i.bq = add i64 %i.bn, %i.bp
  %i.br = sub i64 %i.b, %i.bq
  %i.bs = udiv i64 %i.br, %5                      ; 4 uses
  %i.bt = udiv i64 %i.c, %5                       ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = shl i64 %i.bs, 3
  %i.bw = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.mask.i = and i64 %i.bs, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.bw, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.bx = and i64 %i.bs, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.bw, %i.bx           ; 3 uses
  %i.by = shl i64 %n.vec, 3
  %i.bz = getelementptr i8, ptr %i.bm, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ca = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !708
  store <2 x i64> %step.add, ptr %i.cb, align 8, !tbaa !708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !4263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i.preheader103

.lr.ph.i.i.preheader103:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader103, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader103 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader103 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !708
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ce = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.ce, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i, !llvm.loop !4264

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  %i.cf = load ptr, ptr %0, align 8, !tbaa !73
  store ptr %i.cf, ptr %20, align 8, !tbaa !390
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %i.bm, ptr noundef nonnull align 8 dead_on_return %20, i64 noundef %5, i64 noundef %i.bn, i64 noundef %i.bt, i64 noundef %i.bu, i64 noundef %i.bp, ptr noundef %i.bh)
  %i.cg = load i64, ptr %i.aq, align 8, !tbaa !1561
  %.not.i55 = icmp eq i64 %i.cg, 0
  br i1 %.not.i55, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit
  store i64 0, ptr %i.aq, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, %bb.e, %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !390    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !390    ; 6 uses
  %.not60 = icmp eq ptr %i.a, %i.b
  br i1 %.not60, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !390    ; 2 uses
  %.not61 = icmp eq ptr %i.b, %i.c
  br i1 %.not61, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !87   ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !87   ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub i64 %i.l, %i.h
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.k, %i.n
  br i1 %.not, label %.lr.ph.i12, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.o = phi ptr [ %i.v, %.lr.ph.i ], [ %i.a, %bb.d ] ; 2 uses
  %.010.i = phi i64 [ %.1.i, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = lshr i64 %.010.i, 1                      ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87, !noalias !4265
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 24 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !4268

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.w = ptrtoaddr ptr %i.v to i64                ; 6 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !390
  %i.x = load ptr, ptr %1, align 8, !tbaa !390    ; 9 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 6 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 3                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1561 ; 4 uses
  %.not.i7 = icmp ugt i64 %i.ab, %i.ad
  br i1 %.not.i7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.not3.i.i = icmp eq ptr %i.x, %i.v
  %.pre86 = load ptr, ptr %3, align 8, !tbaa !1559 ; 10 uses
  br i1 %.not3.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add i64 %i.y, -8
  %i.af = sub i64 %i.ae, %i.w                     ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 88
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader322, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.pre86, i64 8
  %i.ai = add i64 %i.y, -8
  %i.aj = sub i64 %i.ai, %i.w
  %i.ak = and i64 %i.aj, -8                       ; 2 uses
  %scevgep135 = getelementptr i8, ptr %scevgep, i64 %i.ak
  %scevgep136 = getelementptr i8, ptr %i.v, i64 8
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %i.ak
  %bound0 = icmp ult ptr %.pre86, %scevgep137
  %bound1 = icmp ult ptr %i.v, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader322, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  %i.an = getelementptr i8, ptr %.pre86, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 3 uses
  %i.ap = or disjoint i64 %i.ao, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ao
  %next.gep138 = getelementptr i8, ptr %i.v, i64 %i.ap
  %next.gep139 = getelementptr i8, ptr %.pre86, i64 %i.ao
  %next.gep140 = getelementptr i8, ptr %.pre86, i64 %i.ap
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !87, !alias.scope !4269
  %wide.vec142 = load <4 x i32>, ptr %next.gep138, align 4, !tbaa !87, !alias.scope !4269
  store <4 x i32> %wide.vec, ptr %next.gep139, align 4, !tbaa !87, !alias.scope !4272, !noalias !4269
  store <4 x i32> %wide.vec142, ptr %next.gep140, align 4, !tbaa !87, !alias.scope !4272, !noalias !4269
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !4274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.preheader322

.lr.ph.i.i.preheader322:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph323 = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.04.i.i.ph = phi ptr [ %.pre86, %vector.memcheck ], [ %.pre86, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader322, %.lr.ph.i.i
  %i.ar = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.ph323, %.lr.ph.i.i.preheader322 ] ; 3 uses
  %.04.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.04.i.i.ph, %.lr.ph.i.i.preheader322 ] ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !87
  store i32 %i.as, ptr %.04.i.i, align 4, !tbaa !292
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.au, ptr %i.av, align 4, !tbaa !294
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.aw, %i.x
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !4275

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx28.i = shl i64 %i.ad, 3                    ; 5 uses
  %i.ay = getelementptr i8, ptr %i.v, i64 %.idx28.i ; 6 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !1559  ; 9 uses
  %.not3.i10.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i10.i, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i, label %.lr.ph.i11.i.preheader

.lr.ph.i11.i.preheader:                           ; preds = %bb.f
  %i.ba = add i64 %.idx28.i, -8                   ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check153 = icmp ult i64 %i.ba, 40
  br i1 %min.iters.check153, label %.lr.ph.i11.i.preheader319, label %vector.memcheck147

vector.memcheck147:                               ; preds = %.lr.ph.i11.i.preheader
  %scevgep148 = getelementptr i8, ptr %i.az, i64 %.idx28.i
  %bound0149 = icmp ult ptr %i.az, %i.ay
  %bound1150 = icmp ult ptr %i.v, %scevgep148
  %found.conflict151 = and i1 %bound0149, %bound1150
  br i1 %found.conflict151, label %.lr.ph.i11.i.preheader319, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck147
  %n.vec155 = and i64 %i.bc, 4611686018427387900  ; 3 uses
  %i.bd = shl i64 %n.vec155, 3                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.v, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.az, i64 %i.bd  ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next170, %vector.body156 ] ; 2 uses
  %i.bg = shl i64 %index157, 3                    ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 16               ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.v, i64 %i.bg
  %next.gep159 = getelementptr i8, ptr %i.v, i64 %i.bh
  %next.gep160 = getelementptr i8, ptr %i.az, i64 %i.bg
  %next.gep161 = getelementptr i8, ptr %i.az, i64 %i.bh
  %wide.vec162 = load <4 x i32>, ptr %next.gep158, align 4, !tbaa !87, !alias.scope !4276
  %wide.vec165 = load <4 x i32>, ptr %next.gep159, align 4, !tbaa !87, !alias.scope !4276
  store <4 x i32> %wide.vec162, ptr %next.gep160, align 4, !tbaa !87, !alias.scope !4279, !noalias !4276
  store <4 x i32> %wide.vec165, ptr %next.gep161, align 4, !tbaa !87, !alias.scope !4279, !noalias !4276
  %index.next170 = add nuw i64 %index157, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next170, %n.vec155
  br i1 %i.bi, label %middle.block171, label %vector.body156, !llvm.loop !4281

middle.block171:                                  ; preds = %vector.body156
  %cmp.n172 = icmp eq i64 %i.bc, %n.vec155
  br i1 %cmp.n172, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i, label %.lr.ph.i11.i.preheader319

.lr.ph.i11.i.preheader319:                        ; preds = %vector.memcheck147, %.lr.ph.i11.i.preheader, %middle.block171
  %.ph320 = phi ptr [ %i.v, %vector.memcheck147 ], [ %i.v, %.lr.ph.i11.i.preheader ], [ %i.be, %middle.block171 ]
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEENS3_ISD_EESF_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSH_9select1stIiEEEEEENS0_7move_opEEET3_T_SR_T0_T1_RT2_SU_SQ_NS0_9iter_sizeIST_E4typeESY_SY_SY_T4_bT5_:bb.a
bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEENS3_INS_9container12vec_iteratorIS6_Lb0EEEEESB_NS0_7inverseINS8_3dtl23flat_tree_value_compareISt4lessIiES5_NSD_9select1stIiEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !87, !noalias !4943
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !87, !noalias !4943
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !87, !noalias !4943
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !87, !noalias !4943
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !87, !noalias !4943
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !87, !noalias !4943
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !87, !noalias !4943
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !87, !noalias !4943
  %.not.i = icmp eq ptr %i.cs, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i28, !llvm.loop !4667

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEENS3_INS_9container12vec_iteratorIS6_Lb0EEEEESB_NS0_7inverseINS8_3dtl23flat_tree_value_compareISt4lessIiES5_NSD_9select1stIiEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cp, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dc, %.lr.ph.i29 ], [ %.sroa.069.0, %bb.v ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.sroa.064.0, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %i.db, %.lr.ph.i29 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !87, !noalias !4946
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !292, !noalias !4946
  %i.df = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !87, !noalias !4946
  %i.dh = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !294, !noalias !4946
  %i.di = load i32, ptr %i.db, align 4, !tbaa !87, !noalias !4946
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !292, !noalias !4946
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !87, !noalias !4946
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !294, !noalias !4946
  %.not.i30 = icmp eq ptr %i.db, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i29, !llvm.loop !4671

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ] ; 2 uses
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.cp, %bb.w ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !87, !noalias !4949
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !292, !noalias !4949
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87, !noalias !4949
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !294, !noalias !4949
  %.not.i.i31 = icmp eq ptr %i.dm, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !4677

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ct, %.lr.ph.i28 ], [ %i.cp, %bb.t ], [ %i.dn, %.lr.ph.i.i ], [ %.sroa.064.0, %bb.w ], [ %.sroa.064.0, %bb.v ], [ %i.dd, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !390
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.c, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !708
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !708
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !708
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !708
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dx = load ptr, ptr %2, align 8, !tbaa !2219  ; 2 uses
  %i.dy = icmp eq ptr %i.ds, %i.dx
  br i1 %i.dy, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp eq ptr %i.dx, %i.c
  br i1 %i.dz, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.c, %bb.y ], [ %i.ds, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2219
  %.pre182 = load ptr, ptr %1, align 8, !tbaa !2219
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.z, %.sink.split.i
  %i.ea = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.z ], [ %.pre182, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !390
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !2219
  %i.ec = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ec to i64
  %i.ed = add i64 %.0140, %.neg
  %i.ee = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ee to i64
  %i.ef = add i64 %.sroa.speculated, %.neg24
  %i.eg = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4954

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container12vec_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4955)
  %i.eh = load ptr, ptr %6, align 8, !tbaa !73, !noalias !4955
  store ptr %i.eh, ptr %0, align 8, !tbaa !390, !alias.scope !4955
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !390    ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !390    ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !390    ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.j, %i.f
  %i.l = ashr exact i64 %i.k, 3
  %i.m = load i64, ptr %i.a, align 4              ; 4 uses
  store i64 %i.m, ptr %3, align 4
  %.not8.i = icmp eq i64 %4, 1
  %i.n = trunc i64 %i.m to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.o = add i64 %4, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.o, -4                       ; 4 uses
  %i.p = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.r, align 4
  store <2 x i64> %broadcast.splat, ptr %i.s, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !4958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader19

.lr.ph.i.preheader19:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader19, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader19 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.8.0
  store i64 %i.m, ptr %i.u, align 4
  %storemerge.i = add nuw i64 %.sroa.8.0, 1       ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !4959

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i
  store i32 %i.n, ptr %i.a, align 4, !tbaa !292
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !294
  %i.z = load ptr, ptr %0, align 8, !tbaa !73
  store ptr %i.z, ptr %8, align 8, !tbaa !390
  %i.aa = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %i.aa, ptr %9, align 8, !tbaa !390
  %i.ab = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.ab, ptr %10, align 8, !tbaa !390
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.i, i64 noundef %i.l, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !390
  store ptr %i.b, ptr %6, align 8, !tbaa !390
  store ptr %i.d, ptr %7, align 8, !tbaa !390
  %i.ac = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.a to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = ptrtoint ptr %i.d to i64
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = ashr exact i64 %i.ah, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.af, i64 noundef %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !2418
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !2420
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2421
  %i.f = load ptr, ptr %0, align 8, !tbaa !73
  %i.g = load ptr, ptr %1, align 8, !tbaa !73
  %i.h = load ptr, ptr %2, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !390
  store ptr %i.g, ptr %8, align 8, !tbaa !390
  store ptr %i.h, ptr %9, align 8, !tbaa !390
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !73     ; 9 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !390    ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87   ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !87   ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 4, !tbaa !87
  store i32 %i.n, ptr %i.l, align 4, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !87
  %i.s = load i32, ptr %i.q, align 4, !tbaa !87
  store i32 %i.s, ptr %i.p, align 4, !tbaa !87
  store i32 %i.r, ptr %i.q, align 4, !tbaa !87
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %i.i, 16
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !390
  %i.u = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %i.u, ptr %12, align 8, !tbaa !390
  %i.v = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.v, ptr %13, align 8, !tbaa !390
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !73     ; 8 uses
  %i.x = icmp ugt i64 %3, %4
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = lshr i64 %3, 1                           ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !73    ; 2 uses
  %.not9.i = icmp eq ptr %i.aa, %i.w
  %.pre = ptrtoint ptr %i.w to i64                ; 3 uses
  br i1 %.not9.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %.pre
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !87, !noalias !4960
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %i.af = phi ptr [ %i.w, %.lr.ph.i ], [ %i.am, %bb.k ] ; 2 uses
  %.010.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %i.ag = lshr i64 %.010.i, 1                     ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !87, !noalias !4960
  %i.aj = icmp slt i32 %i.ai, %i.ae               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.neg.i = xor i64 %i.ag, -1
  %i.al = add i64 %.010.i, %.neg.i
  %i.am = select i1 %i.aj, ptr %i.ak, ptr %i.af   ; 3 uses
  %.1.i = select i1 %i.aj, i64 %i.al, i64 %i.ag   ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.k, !llvm.loop !4249

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.k
  %.pre71 = ptrtoint ptr %i.am to i64
  br label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.j, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi72 = phi i64 [ %.pre71, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.j ]
  %i.an = phi ptr [ %i.am, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %i.w, %bb.j ]
  %i.ao = sub i64 %.pre-phi72, %.pre
  %i.ap = ashr exact i64 %i.ao, 3
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.aq = lshr i64 %4, 1                          ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aq ; 2 uses
  %.not9.i43 = icmp eq ptr %i.w, %i.k
  %.pre69 = ptrtoint ptr %i.k to i64              ; 3 uses
  br i1 %.not9.i43, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.l
  %i.as = ptrtoint ptr %i.w to i64
  %i.at = sub i64 %i.as, %.pre69
  %i.au = ashr exact i64 %i.at, 3
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !87, !noalias !4963
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i44
  %i.aw = phi ptr [ %i.k, %.lr.ph.i44 ], [ %i.bd, %bb.m ] ; 2 uses
  %.010.i45 = phi i64 [ %i.au, %.lr.ph.i44 ], [ %.1.i47, %bb.m ] ; 2 uses
  %i.ax = lshr i64 %.010.i45, 1                   ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_bbT0_RT1_:bb.a
  %storemerge.in9.i = phi i64 [ %storemerge.in.i, %.lr.ph.i ], [ %storemerge.in6.i, %bb.e ]
  %i.o = load ptr, ptr %8, align 8, !tbaa !1559   ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %storemerge10.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %storemerge.in9.i
  %i.r = load i64, ptr %i.q, align 4
  store i64 %i.r, ptr %i.p, align 4
  %storemerge.in.i = load i64, ptr %i.h, align 8, !tbaa !1561 ; 3 uses
  %storemerge.i = add i64 %storemerge.in.i, 1     ; 3 uses
  store i64 %storemerge.i, ptr %i.h, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !1995

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %bb.e
  %storemerge.in.lcssa.i = phi i64 [ %storemerge.in6.i, %bb.e ], [ %storemerge.in.i, %.lr.ph.i ]
  %i.s = load ptr, ptr %8, align 8, !tbaa !1559
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !87
  store i32 %i.u, ptr %i.k, align 4, !tbaa !292
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !294
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.d
  %i.y = urem i64 %i.c, %5                        ; 3 uses
  %i.z = sub i64 %i.b, %i.y
  %i.aa = urem i64 %i.z, %5                       ; 2 uses
  %i.ab = add i64 %i.y, %i.aa
  %i.ac = sub i64 %i.b, %i.ab                     ; 2 uses
  %i.ad = udiv i64 %i.ac, %5                      ; 2 uses
  %i.ae = udiv i64 %i.c, %5                       ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %.not.i.i.i = icmp ugt i64 %5, %i.ac
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !9439, !noalias !11813
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ad
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9438, !noalias !11813
  br label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b.exit

_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.f ], [ %i.ai, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.d, ptr %11, align 8, !tbaa !9636
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !9636
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEE4sortES7_S7_SE_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  store ptr %i.d, ptr %13, align 8, !tbaa !9636
  store ptr %.sroa.088.0, ptr %14, align 8, !tbaa !9636
  %i.aj = load ptr, ptr %8, align 8, !tbaa !1559
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %5, i64 noundef %i.y, i64 noundef %i.ae, i64 noundef %i.af, i64 noundef %i.aa, ptr noundef %i.aj)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %i.ak = urem i64 %i.c, %5                       ; 4 uses
  %i.al = sub i64 %i.b, %i.ak
  %i.am = urem i64 %i.al, %5                      ; 3 uses
  %i.an = add i64 %i.ak, %i.am
  %i.ao = sub i64 %i.b, %i.an                     ; 2 uses
  %i.ap = udiv i64 %i.ao, %5                      ; 2 uses
  %i.aq = udiv i64 %i.c, %5                       ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %.not.i.i.i43 = icmp ugt i64 %5, %i.ao
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !9439, !noalias !11816
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ap
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9438, !noalias !11816
  br label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b.exit45

_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b.exit45: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i44 = phi ptr [ %i.d, %bb.h ], [ %i.au, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.d, ptr %9, align 8, !tbaa !9636
  store ptr %.sroa.0.0.i44, ptr %10, align 8, !tbaa !9636
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEE4sortES7_S7_SE_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %6, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, label %bb.j

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b.exit45
  store ptr %i.d, ptr %15, align 8, !tbaa !9636
  store ptr %.sroa.088.0, ptr %16, align 8, !tbaa !9636
  call void @llvm.experimental.noalias.scope.decl(metadata !11819)
  %i.av = sub nsw i64 0, %5
  %i.aw = load ptr, ptr %.sroa.088.0, align 8, !tbaa !9439, !noalias !11819
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !9438, !noalias !11819
  store ptr %i.ay, ptr %17, align 8, !tbaa !9636, !alias.scope !11819
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %5, i64 noundef %i.ak, i64 noundef %i.aq, i64 noundef %i.ar, i64 noundef %i.am, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.j:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b.exit45
  store ptr %i.d, ptr %18, align 8, !tbaa !9636
  store ptr %.sroa.088.0, ptr %19, align 8, !tbaa !9636
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, i64 noundef %5, i64 noundef %i.ak, i64 noundef %i.aq, i64 noundef %i.ar, i64 noundef %i.am)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.k:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !1561 ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, %5
  br i1 %i.bb, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.k
  store i64 %5, ptr %i.az, align 8, !tbaa !1561
  %.pre105 = load ptr, ptr %8, align 8, !tbaa !1559
  br label %bb.m

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit: ; preds = %bb.k
  %i.bc = icmp ult i64 %i.ba, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !9636  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ba
  %i.bg = load i64, ptr %i.be, align 4
  store i64 %i.bg, ptr %i.bf, align 4
  %storemerge.in6.i47 = load i64, ptr %i.az, align 8, !tbaa !1561 ; 3 uses
  %storemerge7.i48 = add i64 %storemerge.in6.i47, 1 ; 3 uses
  store i64 %storemerge7.i48, ptr %i.az, align 8, !tbaa !1561
  %.not8.i49 = icmp eq i64 %storemerge7.i48, %5
  br i1 %.not8.i49, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit58, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.l, %.lr.ph.i50
  %storemerge10.i51 = phi i64 [ %storemerge.i54, %.lr.ph.i50 ], [ %storemerge7.i48, %bb.l ]
  %storemerge.in9.i52 = phi i64 [ %storemerge.in.i53, %.lr.ph.i50 ], [ %storemerge.in6.i47, %bb.l ]
  %i.bh = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %storemerge10.i51
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %storemerge.in9.i52
  %i.bk = load i64, ptr %i.bj, align 4
  store i64 %i.bk, ptr %i.bi, align 4
  %storemerge.in.i53 = load i64, ptr %i.az, align 8, !tbaa !1561 ; 3 uses
  %storemerge.i54 = add i64 %storemerge.in.i53, 1 ; 3 uses
  store i64 %storemerge.i54, ptr %i.az, align 8, !tbaa !1561
  %.not.i55 = icmp eq i64 %storemerge.i54, %5
  br i1 %.not.i55, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit58, label %.lr.ph.i50, !llvm.loop !1995

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit58: ; preds = %.lr.ph.i50, %bb.l
  %storemerge.in.lcssa.i57 = phi i64 [ %storemerge.in6.i47, %bb.l ], [ %storemerge.in.i53, %.lr.ph.i50 ]
  %i.bl = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %storemerge.in.lcssa.i57 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !87
  store i32 %i.bn, ptr %i.be, align 4, !tbaa !292
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !87
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !294
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit58, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.br = phi ptr [ %i.bl, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit58 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit ], [ %.pre105, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %5
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = add i64 %i.bt, 7
  %i.bv = and i64 %i.bu, -8
  %i.bw = inttoptr i64 %i.bv to ptr               ; 4 uses
  %i.bx = urem i64 %i.c, %5                       ; 3 uses
  %i.by = sub i64 %i.b, %i.bx
  %i.bz = urem i64 %i.by, %5                      ; 2 uses
  %i.ca = add i64 %i.bx, %i.bz
  %i.cb = sub i64 %i.b, %i.ca
  %i.cc = udiv i64 %i.cb, %5                      ; 4 uses
  %i.cd = udiv i64 %i.c, %5                       ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = shl i64 %i.cc, 3
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.mask.i = and i64 %i.cc, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %min.iters.check = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.ch = and i64 %i.cc, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.cg, %i.ch           ; 3 uses
  %i.ci = shl i64 %n.vec, 3
  %i.cj = getelementptr i8, ptr %i.bw, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ck = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !708
  store <2 x i64> %step.add, ptr %i.cl, align 8, !tbaa !708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !11822

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i.preheader107

.lr.ph.i.i.preheader107:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader107, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.co, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader107 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader107 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !708
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.co = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i59 = icmp eq i64 %i.co, %i.cg
  br i1 %.not.i.i59, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i, !llvm.loop !11823

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.m
  %i.cp = load ptr, ptr %0, align 8, !tbaa !9636
  store ptr %i.cp, ptr %20, align 8, !tbaa !9636
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %i.bw, ptr noundef nonnull align 8 dead_on_return %20, i64 noundef %5, i64 noundef %i.bx, i64 noundef %i.cd, i64 noundef %i.ce, i64 noundef %i.bz, ptr noundef %i.br)
  %i.cq = load i64, ptr %i.az, align 8, !tbaa !1561
  %.not.i60 = icmp eq i64 %i.cq, 0
  br i1 %.not.i60, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit
  store i64 0, ptr %i.az, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b.exit, %bb.j, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26adaptive_merge_final_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_bbT0_RT1_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #1 comdat {
bb.a:
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %.not = xor i1 %7, true
  %i.a = icmp ne i64 %3, %4                       ; 2 uses
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %bb.b, %.preheader.preheader.i.i
  %or.cond3 = and i1 %i.a, %7
  %i.e = select i1 %or.cond3, i64 %4, i64 0       ; 2 uses
  %i.f = sub i64 %3, %i.e                         ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !9636   ; 3 uses
  %.not.i.i = icmp eq i64 %3, %i.e                ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9439, !noalias !11824
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9438, !noalias !11824
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, %bb.c
  %.sroa.026.0 = phi ptr [ %i.g, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %i.g, ptr %15, align 8, !tbaa !9636
  store ptr %.sroa.026.0, ptr %16, align 8, !tbaa !9636
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEE4sortES7_S7_SE_(ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.k = load ptr, ptr %0, align 8, !tbaa !9636   ; 5 uses
  %.pre.pre = load ptr, ptr %i.k, align 8, !tbaa !9439 ; 4 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit19, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %i.l = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %i.f
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9438, !noalias !11827
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit19

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit19: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, %bb.d
  %.sroa.024.0 = phi ptr [ %i.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ], [ %i.m, %bb.d ] ; 3 uses
  %.not.i.i20 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i20, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit21, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit19
  %i.n = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %i.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9438, !noalias !11830 ; 2 uses
  %.pre28 = load ptr, ptr %i.o, align 8, !tbaa !9439
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit21

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit21: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit19, %bb.e
  %i.p = phi ptr [ %.pre.pre, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit19 ], [ %.pre28, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit19 ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.q = load ptr, ptr %.sroa.024.0, align 8, !tbaa !9439
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = ptrtoint ptr %.pre.pre to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.v, %i.r
  %i.x = ashr exact i64 %i.w, 3
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1562 ; 2 uses
  %.not.i22 = icmp ult i64 %i.z, %.sroa.speculated.i
  br i1 %.not.i22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.k, ptr %9, align 8, !tbaa !9636
  store ptr %.sroa.024.0, ptr %10, align 8, !tbaa !9636
  store ptr %.sroa.0.0, ptr %11, align 8, !tbaa !9636
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1561
  %.not.i.i23 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i23, label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_SI_T0_RT1_.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.f
  store i64 0, ptr %i.c, align 8, !tbaa !1561
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_SI_T0_RT1_.exit

bb.g:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit21
  store ptr %i.k, ptr %12, align 8, !tbaa !9636
  store ptr %.sroa.024.0, ptr %13, align 8, !tbaa !9636
  store ptr %.sroa.0.0, ptr %14, align 8, !tbaa !9636
  %i.ab = load ptr, ptr %8, align 8, !tbaa !1559
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef %i.ab, i64 noundef %i.z)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_SI_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_SI_T0_RT1_.exit: ; preds = %bb.f, %.preheader.preheader.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_SI_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.070 = alloca ptr, align 8                ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9636   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9636   ; 6 uses
  %.not76 = icmp eq ptr %i.a, %i.b
  br i1 %.not76, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_22stable_vector_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !9636   ; 2 uses
  %.not77 = icmp eq ptr %i.b, %i.c
  br i1 %.not77, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_22stable_vector_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !9439 ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9438
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !87   ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_22stable_vector_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !9439 ; 3 uses
  %i.m = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !9439 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.m
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.p, %i.t
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i = icmp eq ptr %i.e, %i.l
  br i1 %.not9.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.u = phi ptr [ %i.ag, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %.010.i = phi i64 [ %.1.i, %bb.h ], [ %i.p, %bb.e ] ; 2 uses
  %i.v = lshr i64 %.010.i, 1                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !9439, !noalias !11833
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9438, !noalias !11833
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEENS3_ISD_EESF_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSH_9select1stIiEEEEEENS0_7move_opEEET3_T_SR_T0_T1_RT2_SU_SQ_NS0_9iter_sizeIST_E4typeESY_SY_SY_T4_bT5_:bb.a
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !87, !noalias !12838
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !87, !noalias !12838
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !87, !noalias !12838
  %.not.i = icmp eq ptr %i.eq, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i34, !llvm.loop !12292

bb.y:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEENS3_INS_9container22stable_vector_iteratorIS6_Lb0EEEEESB_NS0_7inverseINS8_3dtl23flat_tree_value_compareISt4lessIiES5_NSD_9select1stIiEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.el, %i.ah           ; 2 uses
  br i1 %.not23, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.z, %.lr.ph.i35
  %.sroa.053.0 = phi ptr [ %i.fi, %.lr.ph.i35 ], [ %.sroa.076.0, %bb.z ]
  %.sroa.052.0 = phi ptr [ %i.fl, %.lr.ph.i35 ], [ %.sroa.071.0, %bb.z ]
  %i.fc = phi ptr [ %i.ff, %.lr.ph.i35 ], [ %i.el, %bb.z ]
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !9439, !noalias !12841
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !9438, !noalias !12841 ; 4 uses
  %i.fg = load ptr, ptr %.sroa.053.0, align 8, !tbaa !9439, !noalias !12846
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !9438, !noalias !12846 ; 3 uses
  %i.fj = load ptr, ptr %.sroa.052.0, align 8, !tbaa !9439, !noalias !12849
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !9438, !noalias !12849 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !87, !noalias !12852
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !292, !noalias !12852
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 12 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !87, !noalias !12852
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !294, !noalias !12852
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !87, !noalias !12852
  store i32 %i.ft, ptr %i.fm, align 4, !tbaa !292, !noalias !12852
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !87, !noalias !12852
  store i32 %i.fv, ptr %i.fp, align 4, !tbaa !294, !noalias !12852
  %.not.i36 = icmp eq ptr %i.ff, %i.ah
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i35, !llvm.loop !12305

bb.aa:                                            ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ]
  %i.fw = phi ptr [ %i.fz, %.lr.ph.i.i ], [ %i.el, %bb.aa ]
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !9439, !noalias !12853
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !9438, !noalias !12853 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !9439, !noalias !12853
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !9438, !noalias !12853 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i32, ptr %i.ga, align 4, !tbaa !87, !noalias !12853
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !292, !noalias !12853
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !87, !noalias !12853
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !294, !noalias !12853
  %.not.i.i38 = icmp eq ptr %i.fz, %i.ah
  br i1 %.not.i.i38, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !12311

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i35, %.lr.ph.i.i, %.lr.ph.i34, %bb.aa, %bb.z, %bb.x, %bb.w
  %storemerge = phi ptr [ %i.ah, %bb.w ], [ %.sroa.071.0, %bb.z ], [ %i.el, %bb.x ], [ %i.gd, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ], [ %i.eu, %.lr.ph.i34 ], [ %i.fl, %.lr.ph.i35 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !9636
  %.neg104 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.c, i64 %.neg104 ; 3 uses
  %.not.i39 = icmp eq ptr %i.ah, %.sroa.076.0
  br i1 %.not.i39, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg104, 0
  br i1 %.not9.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -8 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !708
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !708
  store i64 %i.gn, ptr %i.gk, align 8, !tbaa !708
  store i64 %i.gm, ptr %i.gl, align 8, !tbaa !708
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.go = load ptr, ptr %2, align 8, !tbaa !2219  ; 2 uses
  %i.gp = icmp eq ptr %i.gj, %i.go
  br i1 %i.gp, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gq = icmp eq ptr %i.go, %i.c
  br i1 %i.gq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac
  %.sink.i = phi ptr [ %i.c, %bb.ac ], [ %i.gj, %bb.ad ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2219
  %.pre192 = load ptr, ptr %1, align 8, !tbaa !2219
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.ad, %.sink.split.i
  %i.gr = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit ], [ %i.c, %bb.ad ], [ %.pre192, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !9636
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -8 ; 2 uses
  store ptr %i.gs, ptr %1, align 8, !tbaa !2219
  %i.gt = icmp ne i64 %.0150, 0
  %.neg = sext i1 %i.gt to i64
  %i.gu = add i64 %.0150, %.neg
  %i.gv = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.gv to i64
  %i.gw = add i64 %.sroa.speculated, %.neg24
  %i.gx = add i64 %.0102149, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gx, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12858

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12859)
  %i.gy = load ptr, ptr %6, align 8, !tbaa !9636, !noalias !12859
  store ptr %i.gy, ptr %0, align 8, !tbaa !9636, !alias.scope !12859
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9636   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9636   ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !9636   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !9439
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !9439
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !9439
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  store i64 %i.q, ptr %3, align 4
  %.not8.i = icmp eq i64 %4, 1
  %i.r = trunc i64 %i.q to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.s = add i64 %4, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.s, -4                       ; 4 uses
  %i.t = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.v, align 4
  store <2 x i64> %broadcast.splat, ptr %i.w, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !12862

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader19

.lr.ph.i.preheader19:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader19, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader19 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.8.0
  store i64 %i.q, ptr %i.y, align 4
  %storemerge.i = add nuw i64 %.sroa.8.0, 1       ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !12863

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i
  store i32 %i.r, ptr %i.p, align 8, !tbaa !292
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !294
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9636
  store ptr %i.ad, ptr %8, align 8, !tbaa !9636
  %i.ae = load ptr, ptr %1, align 8, !tbaa !9636
  store ptr %i.ae, ptr %9, align 8, !tbaa !9636
  %i.af = load ptr, ptr %2, align 8, !tbaa !9636
  store ptr %i.af, ptr %10, align 8, !tbaa !9636
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !9636
  store ptr %i.b, ptr %6, align 8, !tbaa !9636
  store ptr %i.d, ptr %7, align 8, !tbaa !9636
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !9439
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !9439
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !9439
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ai
  %i.ap = ashr exact i64 %i.ao, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.al, i64 noundef %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !2418
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !2420
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2421
  %i.f = load ptr, ptr %0, align 8, !tbaa !9636
  %i.g = load ptr, ptr %1, align 8, !tbaa !9636
  %i.h = load ptr, ptr %2, align 8, !tbaa !9636
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !9636
  store ptr %i.g, ptr %8, align 8, !tbaa !9636
  store ptr %i.h, ptr %9, align 8, !tbaa !9636
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !9636   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !9636   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !87   ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !87   ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  store i32 %i.o, ptr %i.n, align 4, !tbaa !87
  store i32 %i.p, ptr %i.l, align 4, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.r, align 4, !tbaa !87
  %i.u = load i32, ptr %i.s, align 4, !tbaa !87
  store i32 %i.u, ptr %i.r, align 4, !tbaa !87
  store i32 %i.t, ptr %i.s, align 4, !tbaa !87
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.v = icmp ult i64 %i.i, 16
  %i.w = load ptr, ptr %0, align 8, !tbaa !9636   ; 5 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.w, ptr %11, align 8, !tbaa !9636
  %i.x = load ptr, ptr %1, align 8, !tbaa !9636
  store ptr %i.x, ptr %12, align 8, !tbaa !9636
  %i.y = load ptr, ptr %2, align 8, !tbaa !9636
  store ptr %i.y, ptr %13, align 8, !tbaa !9636
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %1, align 8, !tbaa !9636   ; 6 uses
  %i.aa = icmp ugt i64 %3, %4
  br i1 %i.aa, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit, label %bb.n

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit: ; preds = %bb.i
  %i.ab = lshr i64 %3, 1                          ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !9439
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9438 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !9636
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9439, !noalias !12864 ; 3 uses
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !9439, !noalias !12864 ; 3 uses
  %.not9.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not9.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit_crit_edge, label %.lr.ph.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit_crit_edge: ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit
  %.pre77 = ptrtoint ptr %i.ah to i64
  br label %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit

.lr.ph.i:                                         ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = ashr exact i64 %i.al, 3
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !87, !noalias !12864
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %i.ao = phi ptr [ %i.z, %.lr.ph.i ], [ %i.ba, %bb.m ] ; 3 uses
  %.010.i = phi i64 [ %i.am, %.lr.ph.i ], [ %.1.i, %bb.m ] ; 2 uses
  %i.ap = lshr i64 %.010.i, 1                     ; 4 uses
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !9439, !noalias !12864
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9438, !noalias !12864
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i = phi ptr [ %i.ao, %bb.j ], [ %i.as, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87, !noalias !12864
  %i.av = icmp slt i32 %i.au, %i.an
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i
  %i.aw = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !9439, !noalias !12864
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !9438, !noalias !12864
  %.neg.i = xor i64 %i.ap, -1
  %i.az = add i64 %.010.i, %.neg.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEESD_EEvT0_SF_T1_SG_SG_T_:bb.a
bb.b:                                             ; preds = %.lr.ph92
  %i.ae = load i64, ptr %.04090, align 4
  store i64 %i.ae, ptr %.0273991, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.04090, i64 8
  %.pre = load ptr, ptr %0, align 8, !tbaa !9636
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph92
  %i.ag = load i64, ptr %i.aa, align 4
  store i64 %i.ag, ptr %.0273991, align 4
  %i.ah = load ptr, ptr %0, align 8, !tbaa !9636
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9439
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !9438 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !9636
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.al = phi ptr [ %.pre, %bb.b ], [ %i.ak, %bb.c ] ; 4 uses
  %.1 = phi ptr [ %i.af, %bb.b ], [ %.04090, %bb.c ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0273991, i64 8 ; 3 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !9636  ; 2 uses
  %i.ao = icmp ne ptr %i.al, %i.an
  %i.ap = icmp ne ptr %i.am, %3
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !13180

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %bb.d ]
  %.lcssa35 = phi ptr [ %i.a, %bb.a ], [ %i.al, %bb.d ] ; 2 uses
  %.lcssa33 = phi ptr [ %i.b, %bb.a ], [ %i.an, %bb.d ] ; 3 uses
  %.not17.i.i = icmp eq ptr %.lcssa35, %.lcssa33
  br i1 %.not17.i.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.h
  %i.ar = phi ptr [ %i.bn, %bb.h ], [ %.lcssa35, %._crit_edge ] ; 5 uses
  %.019.i.i = phi ptr [ %i.bp, %bb.h ], [ %3, %._crit_edge ] ; 4 uses
  %.0918.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.as = icmp eq ptr %.0918.i.i, %4
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %i.at = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.ar, %.lr.ph.i.i ] ; 3 uses
  %.04.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.019.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !87
  store i32 %i.av, ptr %.04.i.i.i.i, align 4, !tbaa !292
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !87
  %i.ay = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !294
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !9439
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !9438 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bb, %.lcssa33
  br i1 %.not.i.i.i.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !11840

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.be = load i32, ptr %.0918.i.i, align 4, !tbaa !87 ; 2 uses
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !87 ; 2 uses
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !9439
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9438
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.be, %bb.f ], [ %i.bf, %bb.g ]
  %i.bn = phi ptr [ %i.ar, %bb.f ], [ %i.bm, %bb.g ] ; 2 uses
  %.sink.i.in.i = phi ptr [ %i.bh, %bb.f ], [ %i.bj, %bb.g ]
  %.1.i.i = phi ptr [ %i.bi, %bb.f ], [ %.0918.i.i, %bb.g ]
  store i32 %.sink.i, ptr %.019.i.i, align 4, !tbaa !292
  %.sink.i.i = load i32, ptr %.sink.i.in.i, align 4, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.bo, align 4, !tbaa !294
  %i.bp = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.bn, %.lcssa33
  br i1 %.not.i.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !13182

_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit: ; preds = %bb.h, %.lr.ph.i.i.i.i, %.lr.ph.i, %._crit_edge, %._crit_edge46.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !9636
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9439
  %i.c = load ptr, ptr %0, align 8, !tbaa !9636   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9439
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 16                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit
  %.033101 = phi i64 [ %i.aq, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !9636, !noalias !13183 ; 2 uses
  %.not.i.i = icmp eq i64 %.033101, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9439, !noalias !13183
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.033101
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9438, !noalias !13183
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36: ; preds = %.lr.ph, %bb.b
  %.sroa.083.0 = phi ptr [ %i.m, %bb.b ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.n = load ptr, ptr %.sroa.083.0, align 8, !tbaa !9439, !noalias !13186 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9438, !noalias !13186 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.083.0, %i.p
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36
  %.sroa.013.0.in27.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.013.028.i = load ptr, ptr %.sroa.013.0.in27.i, align 8, !tbaa !9438 ; 2 uses
  %.not2029.i = icmp eq ptr %.sroa.013.028.i, %i.p
  br i1 %.not2029.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.013.030.i = phi ptr [ %.sroa.013.0.i, %bb.f ], [ %.sroa.013.028.i, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i, i64 8 ; 3 uses
  %i.r = load ptr, ptr %.sroa.013.030.i, align 8, !tbaa !9439 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9438 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.q, align 8, !tbaa !87
  %i.w = load i32, ptr %i.u, align 4, !tbaa !87   ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph31.i
  %i.y = load i64, ptr %i.q, align 8              ; 2 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %i.y to i32
  store i32 %i.w, ptr %i.q, align 8, !tbaa !292
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !294
  %.not2122.i = icmp eq ptr %i.t, %.sroa.083.0
  br i1 %.not2122.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.024.i = phi ptr [ %i.ae, %bb.e ], [ %i.t, %bb.d ]
  %.sroa.06.023.i = phi ptr [ %i.ap, %bb.e ], [ %i.t, %bb.d ] ; 4 uses
  %i.ac = load ptr, ptr %.sroa.0.024.i, align 8, !tbaa !9439
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9438 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !87 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, %.sroa.04.0.extract.trunc.i
  br i1 %i.ah, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.06.0.lcssa.i = phi ptr [ %i.t, %bb.d ], [ %.sroa.06.023.i, %.lr.ph.i ], [ %i.ap, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i, i64 8
  store i64 %i.y, ptr %i.ai, align 4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i, i64 8
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !292
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i, i64 12
  store i32 %i.al, ptr %i.am, align 4, !tbaa !294
  %i.an = load ptr, ptr %.sroa.06.023.i, align 8, !tbaa !9439
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !9438 ; 2 uses
  %.not21.i = icmp eq ptr %i.ae, %.sroa.083.0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !11558

bb.f:                                             ; preds = %.critedge.i, %.lr.ph31.i
  %.sroa.013.0.in.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.013.0.i = load ptr, ptr %.sroa.013.0.in.i, align 8, !tbaa !9438 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.013.0.i, %i.p
  br i1 %.not20.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit, label %.lr.ph31.i, !llvm.loop !11559

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36, %bb.c
  %i.aq = add nuw i64 %.033101, 16                ; 3 uses
  %i.ar = sub i64 %i.h, %i.aq
  %i.as = icmp ugt i64 %i.ar, 16
  br i1 %i.as, label %.lr.ph, label %bb.g, !llvm.loop !13189

bb.g:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !9636, !noalias !13190
  %i.at = load ptr, ptr %.pre, align 8, !tbaa !9439, !noalias !13190
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.aq
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !9438, !noalias !13190
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38: ; preds = %bb.a, %bb.g
  %.sroa.082.0 = phi ptr [ %i.av, %bb.g ], [ %i.c, %bb.a ] ; 4 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !9636  ; 3 uses
  %.not.i39 = icmp eq ptr %.sroa.082.0, %i.aw
  br i1 %.not.i39, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38
  %i.ax = load ptr, ptr %.sroa.082.0, align 8, !tbaa !9439
  %.sroa.013.0.in27.i40 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.013.028.i41 = load ptr, ptr %.sroa.013.0.in27.i40, align 8, !tbaa !9438 ; 2 uses
  %.not2029.i42 = icmp eq ptr %.sroa.013.028.i41, %i.aw
  br i1 %.not2029.i42, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56, label %.lr.ph31.i43

.lr.ph31.i43:                                     ; preds = %bb.h, %bb.k
  %.sroa.013.030.i44 = phi ptr [ %.sroa.013.0.i46, %bb.k ], [ %.sroa.013.028.i41, %bb.h ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i44, i64 8 ; 3 uses
  %i.az = load ptr, ptr %.sroa.013.030.i44, align 8, !tbaa !9439 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !9438 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !87
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !87 ; 2 uses
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph31.i43
  %i.bg = load i64, ptr %i.ay, align 8            ; 2 uses
  %.sroa.04.0.extract.trunc.i48 = trunc i64 %i.bg to i32
  store i32 %i.be, ptr %i.ay, align 8, !tbaa !292
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i44, i64 12
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !294
  %.not2122.i49 = icmp eq ptr %i.bb, %.sroa.082.0
  br i1 %.not2122.i49, label %.critedge.i53, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.024.i51 = phi ptr [ %i.bm, %bb.j ], [ %i.bb, %bb.i ]
  %.sroa.06.023.i52 = phi ptr [ %i.bx, %bb.j ], [ %i.bb, %bb.i ] ; 4 uses
  %i.bk = load ptr, ptr %.sroa.0.024.i51, align 8, !tbaa !9439
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9438 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !87 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, %.sroa.04.0.extract.trunc.i48
  br i1 %i.bp, label %bb.j, label %.critedge.i53

.critedge.i53:                                    ; preds = %bb.j, %.lr.ph.i50, %bb.i
  %.sroa.06.0.lcssa.i54 = phi ptr [ %i.bb, %bb.i ], [ %.sroa.06.023.i52, %.lr.ph.i50 ], [ %i.bx, %bb.j ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i54, i64 8
  store i64 %i.bg, ptr %i.bq, align 4
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i50
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i52, i64 8
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !292
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i52, i64 12
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !294
  %i.bv = load ptr, ptr %.sroa.06.023.i52, align 8, !tbaa !9439
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !9438 ; 2 uses
  %.not21.i55 = icmp eq ptr %i.bm, %.sroa.082.0
  br i1 %.not21.i55, label %.critedge.i53, label %.lr.ph.i50, !llvm.loop !11558

bb.k:                                             ; preds = %.critedge.i53, %.lr.ph31.i43
  %.sroa.013.0.in.i45 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.013.0.i46 = load ptr, ptr %.sroa.013.0.in.i45, align 8, !tbaa !9438 ; 2 uses
  %.not20.i47 = icmp eq ptr %.sroa.013.0.i46, %i.aw
  br i1 %.not20.i47, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56, label %.lr.ph31.i43, !llvm.loop !11559

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38, %bb.h
  br i1 %i.i, label %.lr.ph109, label %._crit_edge110

._crit_edge110:                                   ; preds = %.thread, %bb.s, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56
  ret void

.lr.ph109:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56, %bb.s
  %.032107 = phi i64 [ %i.ej, %bb.s ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56 ] ; 11 uses
  %i.by = sub i64 %i.h, %.032107
  %i.bz = icmp ugt i64 %i.by, %.032107            ; 2 uses
  br i1 %i.bz, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph109
  %i.ca = shl i64 %.032107, 1                     ; 6 uses
  %i.cb = icmp ugt i64 %i.h, %i.ca
  br i1 %i.cb, label %.lr.ph104, label %._crit_edge105.thread

.lr.ph104:                                        ; preds = %bb.l
  %.not.i.i61 = icmp eq i64 %.032107, 0
  %.not.i.i65 = icmp eq i64 %i.ca, 0              ; 2 uses
  br i1 %.not.i.i61, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us, label %.lr.ph104.split

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us: ; preds = %.lr.ph104, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66.us
  %i.cc = load ptr, ptr %0, align 8, !tbaa !9636, !noalias !13193 ; 5 uses
  br i1 %.not.i.i65, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66.us, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !9439, !noalias !13196
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !9438, !noalias !13196
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66.us

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66.us: ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us
  %.sroa.077.0.us = phi ptr [ %i.cc, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us ], [ %i.cf, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.cc, ptr %5, align 8, !tbaa !9636
  store ptr %i.cc, ptr %6, align 8, !tbaa !9636
  store ptr %.sroa.077.0.us, ptr %7, align 8, !tbaa !9636
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !9439
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = load ptr, ptr %.sroa.077.0.us, align 8, !tbaa !9439
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.ch
  %i.cl = ashr exact i64 %i.ck, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef 0, i64 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us

.lr.ph104.split:                                  ; preds = %.lr.ph104, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66
  %.0102 = phi i64 [ %i.di, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66 ], [ 0, %.lr.ph104 ] ; 4 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !9636, !noalias !13193 ; 4 uses
  %.not.i.i57 = icmp eq i64 %.0102, 0
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !9439, !noalias !197 ; 2 uses
  br i1 %.not.i.i57, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64, label %bb.n

bb.n:                                             ; preds = %.lr.ph104.split
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.0102
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !9438, !noalias !13193 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !9439, !noalias !13199
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !9439, !noalias !13202
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.0102
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !9438, !noalias !13202
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64: ; preds = %.lr.ph104.split, %bb.n
  %.pn = phi ptr [ %i.cq, %bb.n ], [ %i.cn, %.lr.ph104.split ]
  %.sroa.078.0128 = phi ptr [ %i.cp, %bb.n ], [ %i.cm, %.lr.ph104.split ] ; 2 uses
  %.sroa.076.0 = phi ptr [ %i.ct, %bb.n ], [ %i.cm, %.lr.ph104.split ] ; 2 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.032107
  %i.cu = load ptr, ptr %.in, align 8, !tbaa !9438, !noalias !13199 ; 2 uses
  br i1 %.not.i.i65, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64
  %i.cv = load ptr, ptr %.sroa.076.0, align 8, !tbaa !9439, !noalias !13196
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ca
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !9438, !noalias !13196
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64, %bb.o
  %.sroa.077.0 = phi ptr [ %.sroa.076.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64 ], [ %i.cx, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.078.0128, ptr %5, align 8, !tbaa !9636
  store ptr %i.cu, ptr %6, align 8, !tbaa !9636
  store ptr %.sroa.077.0, ptr %7, align 8, !tbaa !9636
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !9439
  %i.cz = load ptr, ptr %.sroa.078.0128, align 8, !tbaa !9439
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = load ptr, ptr %.sroa.077.0, align 8, !tbaa !9439
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.da
  %i.dh = ashr exact i64 %i.dg, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.dd, i64 noundef %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.di = add i64 %.0102, %i.ca                   ; 5 uses
  %i.dj = sub i64 %i.h, %i.di
  %i.dk = icmp ugt i64 %i.dj, %i.ca
  br i1 %i.dk, label %.lr.ph104.split, label %._crit_edge105, !llvm.loop !13205

._crit_edge105:                                   ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66
  %i.dl = sub i64 %i.h, %i.di
  %i.dm = icmp ugt i64 %i.dl, %.032107
  br i1 %i.dm, label %bb.p, label %bb.s

._crit_edge105.thread:                            ; preds = %bb.l
  %i.dn = icmp ugt i64 %i.h, %.032107
  br i1 %i.dn, label %.thread131, label %bb.s

.thread131:                                       ; preds = %._crit_edge105.thread
  %i.do = load ptr, ptr %0, align 8, !tbaa !9636, !noalias !13206
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit70

.thread:                                          ; preds = %.lr.ph109
  %i.dp = icmp ugt i64 %i.h, %.032107
  br i1 %i.dp, label %.thread92, label %._crit_edge110

.thread92:                                        ; preds = %.thread
  %i.dq = load ptr, ptr %0, align 8, !tbaa !9636, !noalias !13209
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit70

end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b:bb.a
  %.not8.i.i73 = icmp ugt i64 %4, %i.ck
  br i1 %.not8.i.i73, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit78, label %iter.check250

iter.check250:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %min.iters.check235 = icmp ult i64 %i.cl, 4
  br i1 %min.iters.check235, label %.lr.ph.i.i74.preheader, label %vector.main.loop.iter.check236

vector.main.loop.iter.check236:                   ; preds = %iter.check250
  %min.iters.check237 = icmp ult i64 %i.cl, 32
  br i1 %min.iters.check237, label %vec.epilog.ph254, label %vector.ph238

vector.ph238:                                     ; preds = %vector.main.loop.iter.check236
  %i.cn = and i64 %i.cl, 28
  %n.vec239 = and i64 %i.cl, -32                  ; 5 uses
  %i.co = getelementptr i8, ptr %0, i64 %n.vec239
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next245, %vector.body240 ] ; 2 uses
  %vec.ind242 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph238 ], [ %vec.ind.next246, %vector.body240 ] ; 3 uses
  %step.add243 = add <16 x i8> %vec.ind242, splat (i8 16)
  %next.gep244 = getelementptr i8, ptr %0, i64 %index241 ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep244, i64 16
  store <16 x i8> %vec.ind242, ptr %next.gep244, align 1, !tbaa !35
  store <16 x i8> %step.add243, ptr %i.cp, align 1, !tbaa !35
  %index.next245 = add nuw i64 %index241, 32      ; 2 uses
  %vec.ind.next246 = add <16 x i8> %vec.ind242, splat (i8 32)
  %i.cq = icmp eq i64 %index.next245, %n.vec239
  br i1 %i.cq, label %middle.block247, label %vector.body240, !llvm.loop !13528

middle.block247:                                  ; preds = %vector.body240
  %cmp.n248 = icmp eq i64 %i.cl, %n.vec239
  br i1 %cmp.n248, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit78, label %vec.epilog.iter.check252

vec.epilog.iter.check252:                         ; preds = %middle.block247
  %min.epilog.iters.check253 = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check253, label %.lr.ph.i.i74.preheader, label %vec.epilog.ph254, !prof !2631

vec.epilog.ph254:                                 ; preds = %vector.main.loop.iter.check236, %vec.epilog.iter.check252
  %vec.epilog.resume.val249 = phi i64 [ %n.vec239, %vec.epilog.iter.check252 ], [ 0, %vector.main.loop.iter.check236 ] ; 2 uses
  %n.vec255 = and i64 %i.cl, -4                   ; 4 uses
  %i.cr = getelementptr i8, ptr %0, i64 %n.vec255
  %i.cs = trunc i64 %vec.epilog.resume.val249 to i8
  %broadcast.splatinsert256 = insertelement <4 x i8> poison, i8 %i.cs, i64 0
  %broadcast.splat257 = shufflevector <4 x i8> %broadcast.splatinsert256, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction258 = or disjoint <4 x i8> %broadcast.splat257, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body259

vec.epilog.vector.body259:                        ; preds = %vec.epilog.vector.body259, %vec.epilog.ph254
  %index260 = phi i64 [ %vec.epilog.resume.val249, %vec.epilog.ph254 ], [ %index.next263, %vec.epilog.vector.body259 ] ; 2 uses
  %vec.ind261 = phi <4 x i8> [ %induction258, %vec.epilog.ph254 ], [ %vec.ind.next264, %vec.epilog.vector.body259 ] ; 2 uses
  %next.gep262 = getelementptr i8, ptr %0, i64 %index260
  store <4 x i8> %vec.ind261, ptr %next.gep262, align 1, !tbaa !35
  %index.next263 = add nuw i64 %index260, 4       ; 2 uses
  %vec.ind.next264 = add <4 x i8> %vec.ind261, splat (i8 4)
  %i.ct = icmp eq i64 %index.next263, %n.vec255
  br i1 %i.ct, label %vec.epilog.middle.block265, label %vec.epilog.vector.body259, !llvm.loop !13529

vec.epilog.middle.block265:                       ; preds = %vec.epilog.vector.body259
  %cmp.n266 = icmp eq i64 %i.cl, %n.vec255
  br i1 %cmp.n266, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit78, label %.lr.ph.i.i74.preheader

.lr.ph.i.i74.preheader:                           ; preds = %iter.check250, %vec.epilog.iter.check252, %vec.epilog.middle.block265
  %.010.i.i75.ph = phi i64 [ 0, %iter.check250 ], [ %n.vec239, %vec.epilog.iter.check252 ], [ %n.vec255, %vec.epilog.middle.block265 ]
  %.079.i.i76.ph = phi ptr [ %0, %iter.check250 ], [ %i.co, %vec.epilog.iter.check252 ], [ %i.cr, %vec.epilog.middle.block265 ]
  br label %.lr.ph.i.i74

.lr.ph.i.i74:                                     ; preds = %.lr.ph.i.i74.preheader, %.lr.ph.i.i74
  %.010.i.i75 = phi i64 [ %i.cw, %.lr.ph.i.i74 ], [ %.010.i.i75.ph, %.lr.ph.i.i74.preheader ] ; 2 uses
  %.079.i.i76 = phi ptr [ %i.cv, %.lr.ph.i.i74 ], [ %.079.i.i76.ph, %.lr.ph.i.i74.preheader ] ; 2 uses
  %i.cu = trunc i64 %.010.i.i75 to i8
  store i8 %i.cu, ptr %.079.i.i76, align 1, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 1
  %i.cw = add nuw i64 %.010.i.i75, 1              ; 2 uses
  %.not.i.i77 = icmp eq i64 %i.cw, %i.cl
  br i1 %.not.i.i77, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit78, label %.lr.ph.i.i74, !llvm.loop !13530

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit78: ; preds = %.lr.ph.i.i74, %middle.block247, %vec.epilog.middle.block265, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl ; 2 uses
  %i.cy = mul i64 %i.cl, %4
  %i.cz = add i64 %i.cy, %i.ci                    ; 2 uses
  %.not.i.i.i79 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i79, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit78
  %i.da = load ptr, ptr %.sroa.0107.2133, align 8, !tbaa !9439, !noalias !13531
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !9438, !noalias !13531
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i: ; preds = %bb.g, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit78
  %.sroa.0.0.i = phi ptr [ %.sroa.0107.2133, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit78 ], [ %i.dc, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i
  store ptr %i.cx, ptr %9, align 8, !tbaa !2644
  store ptr %.sroa.0.0.i, ptr %10, align 8, !tbaa !9636, !alias.scope !13534
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i
  store ptr %i.cx, ptr %11, align 8, !tbaa !2644
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !9636, !alias.scope !13537
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.ce, 0
  br i1 %.not65, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load ptr, ptr %.sroa.0107.2133, align 8, !tbaa !9439
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.cd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !9438
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, !llvm.loop !13540

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, %bb.j, %.preheader, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b(ptr noundef %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.175", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.175", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 6 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = shl i64 %3, 1                            ; 11 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 4 uses
  %i.c = udiv i64 %2, %i.a                        ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !9636   ; 5 uses
  %i.e = zext i1 %.not.i to i64
  %i.f = add nuw i64 %i.c, %i.e                   ; 7 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not61131 = icmp eq i64 %i.f, 0
  br i1 %.not61131, label %.loopexit, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph: ; preds = %.preheader
  %i.g = urem i64 %3, %4                          ; 6 uses
  %i.h = udiv i64 %3, %4                          ; 6 uses
  br i1 %5, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph.split.us, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph.split.us: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph
  br i1 %6, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us.us, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us.us: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph.split.us, %bb.b
  %.059133.us.us = phi i64 [ %i.aa, %bb.b ], [ 0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %.sroa.0109.0132.us.us = phi ptr [ %i.ad, %bb.b ], [ %i.d, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %i.i = icmp eq i64 %.059133.us.us, %i.c
  %i.j = select i1 %i.i, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.k = sub i64 %i.j, %i.g
  %i.l = urem i64 %i.k, %4                        ; 2 uses
  %i.m = add i64 %i.g, %i.l
  %i.n = sub i64 %i.j, %i.m
  %i.o = udiv i64 %i.n, %4                        ; 4 uses
  %i.p = sub i64 %i.o, %i.h
  %i.q = shl i64 %i.o, 3
  %i.r = ashr exact i64 %i.q, 3                   ; 3 uses
  %.mask.i.us.us = and i64 %i.o, 2305843009213693951
  %.not8.i.i.us.us = icmp eq i64 %.mask.i.us.us, 0
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

.lr.ph.i.i.us.us.preheader:                       ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us.us
  %min.iters.check176 = icmp ult i64 %i.r, 4
  br i1 %min.iters.check176, label %.lr.ph.i.i.us.us.preheader206, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i.us.us.preheader
  %i.s = and i64 %i.o, 3                          ; 2 uses
  %n.vec178 = sub nuw nsw i64 %i.r, %i.s          ; 3 uses
  %i.t = shl i64 %n.vec178, 3
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 2 uses
  %vec.ind181 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph177 ], [ %vec.ind.next185, %vector.body179 ] ; 3 uses
  %step.add182 = add nuw <2 x i64> %vec.ind181, splat (i64 2)
  %i.v = shl i64 %index180, 3
  %next.gep183 = getelementptr i8, ptr %0, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep183, i64 16
  store <2 x i64> %vec.ind181, ptr %next.gep183, align 8, !tbaa !708
  store <2 x i64> %step.add182, ptr %i.w, align 8, !tbaa !708
  %index.next184 = add nuw i64 %index180, 4       ; 2 uses
  %vec.ind.next185 = add nuw <2 x i64> %vec.ind181, splat (i64 4)
  %i.x = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.x, label %middle.block186, label %vector.body179, !llvm.loop !13541

middle.block186:                                  ; preds = %vector.body179
  %cmp.n187 = icmp eq i64 %i.s, 0
  br i1 %cmp.n187, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader206

.lr.ph.i.i.us.us.preheader206:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block186
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec178, %middle.block186 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.u, %middle.block186 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader206, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.z, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader206 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.y, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader206 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !708
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.z = add nuw i64 %.010.i.i.us.us, 1           ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.z, %i.r
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !13542

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block186, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0109.0132.us.us, ptr %13, align 8, !tbaa !9636
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %4, i64 noundef 0, i64 noundef %i.h, i64 noundef %i.p, i64 noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.aa = add nuw i64 %.059133.us.us, 1           ; 2 uses
  %.not62.us.us = icmp eq i64 %i.aa, %i.f
  br i1 %.not62.us.us, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us
  %i.ab = load ptr, ptr %.sroa.0109.0132.us.us, align 8, !tbaa !9439
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !9438
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us.us

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph.split.us, %bb.c
  %.059133.us = phi i64 [ %i.aw, %bb.c ], [ 0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %.sroa.0109.0132.us = phi ptr [ %i.az, %bb.c ], [ %i.d, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %i.ae = icmp eq i64 %.059133.us, %i.c
  %i.af = select i1 %i.ae, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ag = sub i64 %i.af, %i.g
  %i.ah = urem i64 %i.ag, %4                      ; 2 uses
  %i.ai = add i64 %i.g, %i.ah
  %i.aj = sub i64 %i.af, %i.ai
  %i.ak = udiv i64 %i.aj, %4                      ; 4 uses
  %i.al = sub i64 %i.ak, %i.h
  %i.am = shl i64 %i.ak, 3
  %i.an = ashr exact i64 %i.am, 3                 ; 3 uses
  %.mask.i.us = and i64 %i.ak, 2305843009213693951
  %.not8.i.i.us = icmp eq i64 %.mask.i.us, 0
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us
  %min.iters.check161 = icmp ult i64 %i.an, 4
  br i1 %min.iters.check161, label %.lr.ph.i.i.us.preheader208, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.us.preheader
  %i.ao = and i64 %i.ak, 3                        ; 2 uses
  %n.vec163 = sub nuw nsw i64 %i.an, %i.ao        ; 3 uses
  %i.ap = shl i64 %n.vec163, 3
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next169, %vector.body164 ] ; 2 uses
  %vec.ind166 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph162 ], [ %vec.ind.next170, %vector.body164 ] ; 3 uses
  %step.add167 = add nuw <2 x i64> %vec.ind166, splat (i64 2)
  %i.ar = shl i64 %index165, 3
  %next.gep168 = getelementptr i8, ptr %0, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x i64> %vec.ind166, ptr %next.gep168, align 8, !tbaa !708
  store <2 x i64> %step.add167, ptr %i.as, align 8, !tbaa !708
  %index.next169 = add nuw i64 %index165, 4       ; 2 uses
  %vec.ind.next170 = add nuw <2 x i64> %vec.ind166, splat (i64 4)
  %i.at = icmp eq i64 %index.next169, %n.vec163
  br i1 %i.at, label %middle.block171, label %vector.body164, !llvm.loop !13543

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.ao, 0
  br i1 %cmp.n172, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, label %.lr.ph.i.i.us.preheader208

.lr.ph.i.i.us.preheader208:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block171
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec163, %middle.block171 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.aq, %middle.block171 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader208, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.av, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader208 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.au, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader208 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !708
  %i.au = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.av = add nuw i64 %.010.i.i.us, 1             ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.av, %i.an
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !13544

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block171, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0109.0132.us, ptr %14, align 8, !tbaa !9636
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %4, i64 noundef 0, i64 noundef %i.h, i64 noundef %i.al, i64 noundef %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.aw = add nuw i64 %.059133.us, 1              ; 2 uses
  %.not62.us = icmp eq i64 %i.aw, %i.f
  br i1 %.not62.us, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us
  %i.ax = load ptr, ptr %.sroa.0109.0132.us, align 8, !tbaa !9439
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.a
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !9438
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.us

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph, %bb.d
  %.059133 = phi i64 [ %i.bs, %bb.d ], [ 0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph ] ; 2 uses
  %.sroa.0109.0132 = phi ptr [ %i.bv, %bb.d ], [ %i.d, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph ] ; 2 uses
  %i.ba = icmp eq i64 %.059133, %i.c
  %i.bb = select i1 %i.ba, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bc = sub i64 %i.bb, %i.g
  %i.bd = urem i64 %i.bc, %4                      ; 2 uses
  %i.be = add i64 %i.g, %i.bd
  %i.bf = sub i64 %i.bb, %i.be
  %i.bg = udiv i64 %i.bf, %4                      ; 4 uses
  %i.bh = sub i64 %i.bg, %i.h
  %i.bi = shl i64 %i.bg, 3
  %i.bj = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.mask.i = and i64 %i.bg, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader210, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.bk = and i64 %i.bg, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.bj, %i.bk           ; 3 uses
  %i.bl = shl i64 %n.vec, 3
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bn = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !708
  store <2 x i64> %step.add, ptr %i.bo, align 8, !tbaa !708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !13545

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, label %.lr.ph.i.i.preheader210

.lr.ph.i.i.preheader210:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader210, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader210 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader210 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !708
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.br = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.br, %i.bj
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, label %.lr.ph.i.i, !llvm.loop !13546

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  store ptr %.sroa.0109.0132, ptr %15, align 8, !tbaa !9636
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %4, i64 noundef 0, i64 noundef %i.h, i64 noundef %i.bh, i64 noundef %i.bd)
  %i.bs = add nuw i64 %.059133, 1                 ; 2 uses
  %.not62 = icmp eq i64 %i.bs, %i.f
  br i1 %.not62, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit
  %i.bt = load ptr, ptr %.sroa.0109.0132, align 8, !tbaa !9439
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.a
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !9438
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

bb.e:                                             ; preds = %bb.a
  %i.bw = add i64 %i.f, -1
  %i.bx = mul i64 %i.bw, %i.a                     ; 2 uses
  %.not.i68 = icmp eq i64 %i.bx, 0
  br i1 %.not.i68, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit69, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !9439
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !9438
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit69

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit69: ; preds = %bb.e, %bb.f
  %.sroa.0109.5 = phi ptr [ %i.d, %bb.e ], [ %i.ca, %bb.f ]
  %.not63134 = icmp eq i64 %i.f, 0
  br i1 %.not63134, label %.loopexit, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph: ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit69
  %i.cb = urem i64 %3, %4                         ; 2 uses
  %i.cc = udiv i64 %3, %4                         ; 3 uses
  %i.cd = sub nsw i64 0, %i.a
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph
  %.0136 = phi i64 [ %i.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph ], [ %i.ce, %bb.k ]
  %.sroa.0109.2135 = phi ptr [ %.sroa.0109.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.lr.ph ], [ %i.df, %bb.k ] ; 3 uses
  %i.ce = add i64 %.0136, -1                      ; 3 uses
  %i.cf = icmp eq i64 %i.ce, %i.c
  %i.cg = select i1 %i.cf, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ch = sub i64 %i.cg, %i.cb
  %i.ci = urem i64 %i.ch, %4                      ; 4 uses
  %i.cj = add i64 %i.cb, %i.ci
  %i.ck = sub i64 %i.cg, %i.cj
  %i.cl = udiv i64 %i.ck, %4                      ; 6 uses
  %i.cm = sub i64 %i.cl, %i.cc                    ; 2 uses
  %i.cn = shl i64 %i.cl, 3
  %i.co = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.mask.i74 = and i64 %i.cl, 2305843009213693951
  %.not8.i.i75 = icmp eq i64 %.mask.i74, 0
  br i1 %.not8.i.i75, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit80, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %min.iters.check191 = icmp ult i64 %i.co, 4
  br i1 %min.iters.check191, label %.lr.ph.i.i76.preheader205, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i76.preheader
  %i.cp = and i64 %i.cl, 3                        ; 2 uses
  %n.vec193 = sub nuw nsw i64 %i.co, %i.cp        ; 3 uses
  %i.cq = shl i64 %n.vec193, 3
  %i.cr = getelementptr i8, ptr %0, i64 %i.cq
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next199, %vector.body194 ] ; 2 uses
  %vec.ind196 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph192 ], [ %vec.ind.next200, %vector.body194 ] ; 3 uses
  %step.add197 = add nuw <2 x i64> %vec.ind196, splat (i64 2)
  %i.cs = shl i64 %index195, 3
  %next.gep198 = getelementptr i8, ptr %0, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep198, i64 16
  store <2 x i64> %vec.ind196, ptr %next.gep198, align 8, !tbaa !708
  store <2 x i64> %step.add197, ptr %i.ct, align 8, !tbaa !708
  %index.next199 = add nuw i64 %index195, 4       ; 2 uses
  %vec.ind.next200 = add nuw <2 x i64> %vec.ind196, splat (i64 4)
  %i.cu = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.cu, label %middle.block201, label %vector.body194, !llvm.loop !13547

middle.block201:                                  ; preds = %vector.body194
  %cmp.n202 = icmp eq i64 %i.cp, 0
  br i1 %cmp.n202, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit80, label %.lr.ph.i.i76.preheader205

.lr.ph.i.i76.preheader205:                        ; preds = %.lr.ph.i.i76.preheader, %middle.block201
  %.010.i.i77.ph = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %n.vec193, %middle.block201 ]
  %.079.i.i78.ph = phi ptr [ %0, %.lr.ph.i.i76.preheader ], [ %i.cr, %middle.block201 ]
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76.preheader205, %.lr.ph.i.i76
  %.010.i.i77 = phi i64 [ %i.cw, %.lr.ph.i.i76 ], [ %.010.i.i77.ph, %.lr.ph.i.i76.preheader205 ] ; 2 uses
  %.079.i.i78 = phi ptr [ %i.cv, %.lr.ph.i.i76 ], [ %.079.i.i78.ph, %.lr.ph.i.i76.preheader205 ] ; 2 uses
  store i64 %.010.i.i77, ptr %.079.i.i78, align 8, !tbaa !708
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i78, i64 8
  %i.cw = add nuw i64 %.010.i.i77, 1              ; 2 uses
  %.not.i.i79 = icmp eq i64 %i.cw, %i.co
  br i1 %.not.i.i79, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit80, label %.lr.ph.i.i76, !llvm.loop !13548

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit80: ; preds = %.lr.ph.i.i76, %middle.block201, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cl ; 2 uses
  %i.cy = mul i64 %i.cl, %4
  %i.cz = add i64 %i.cy, %i.ci                    ; 2 uses
  %.not.i.i.i81 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i81, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit80
  %i.da = load ptr, ptr %.sroa.0109.2135, align 8, !tbaa !9439, !noalias !13549
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !9438, !noalias !13549
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i: ; preds = %bb.g, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit80
  %.sroa.0.0.i = phi ptr [ %.sroa.0109.2135, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit80 ], [ %i.dc, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i
  store ptr %i.cx, ptr %9, align 8, !tbaa !2219
  store ptr %.sroa.0.0.i, ptr %10, align 8, !tbaa !9636, !alias.scope !13552
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i
  store ptr %i.cx, ptr %11, align 8, !tbaa !2219
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !9636, !alias.scope !13555
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.ce, 0
  br i1 %.not65, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load ptr, ptr %.sroa.0109.2135, align 8, !tbaa !9439
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.cd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !9438
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, !llvm.loop !13558

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, %bb.j, %.preheader, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 3 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %16 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %17 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 3 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %22 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %23 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %25 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %26 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %27 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 10 uses
  %29 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 10 uses
  %30 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %31 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %32 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 10 uses
  %33 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %35 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %36 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9636, !noalias !13559 ; 4 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9439, !noalias !13559
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9438, !noalias !13559
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0266.4 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !9636, !noalias !13562 ; 6 uses
  %.not.i.i.i = icmp eq i64 %2, 0                 ; 4 uses
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %i.g = sub nsw i64 0, %2
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !9439, !noalias !13562
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9438, !noalias !13562
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, %bb.c
  %.sroa.0256.8 = phi ptr [ %i.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ], [ %i.j, %bb.c ] ; 2 uses
  %.not.i.i65 = icmp eq i64 %3, 0
  br i1 %.not.i.i65, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !9439, !noalias !13565
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %3
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9438, !noalias !13565
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, %bb.d
  %.sroa.0228.6 = phi ptr [ %i.f, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ], [ %i.m, %bb.d ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %.sroa.0228.6, ptr %27, align 8, !tbaa !9636
  %i.n = mul i64 %i.a, %2                         ; 2 uses
  %.not.i.i67 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i67, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit68, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66
  %i.o = load ptr, ptr %.sroa.0228.6, align 8, !tbaa !9439, !noalias !13568
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9438, !noalias !13568
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit68

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit68: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66, %bb.e
  %.sroa.0226.0 = phi ptr [ %.sroa.0228.6, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66 ], [ %i.q, %bb.e ] ; 12 uses
  %i.r = icmp eq i64 %5, 0
  %i.s = select i1 %i.r, i64 0, i64 %4            ; 3 uses
  %i.t = add i64 %i.s, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.a) ; 2 uses
  %.not368 = icmp eq i64 %i.a, 0
  br i1 %.not368, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit68
  %.not61 = icmp eq i64 %6, 0
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0226.0, i64 8
  %i.v = sub nsw i64 0, %2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.sink.split.i
  %i.w = phi ptr [ %.sroa.0228.6, %.lr.ph ], [ %.sroa.0198.0, %.sink.split.i ] ; 16 uses
  %.050379 = phi i64 [ %i.s, %.lr.ph ], [ %i.gm, %.sink.split.i ] ; 7 uses
  %.051378 = phi i8 [ 1, %.lr.ph ], [ %.253, %.sink.split.i ] ; 8 uses
  %.057377 = phi i64 [ %5, %.lr.ph ], [ %.158, %.sink.split.i ] ; 2 uses
  %.0290376 = phi i64 [ %i.a, %.lr.ph ], [ %i.gp, %.sink.split.i ] ; 5 uses
  %.sroa.0266.0375 = phi ptr [ %.sroa.0266.4, %.lr.ph ], [ %.sroa.0266.1, %.sink.split.i ] ; 13 uses
  %.sroa.0256.0374 = phi ptr [ %.sroa.0256.8, %.lr.ph ], [ %.sroa.0256.3, %.sink.split.i ] ; 13 uses
  %.sroa.0243.0373 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.0243.2, %.sink.split.i ] ; 9 uses
  %.sroa.0228.0372 = phi ptr [ %.sroa.0228.6, %.lr.ph ], [ %.sroa.0228.2, %.sink.split.i ] ; 13 uses
  %.sroa.0220.0370 = phi ptr [ %i.b, %.lr.ph ], [ %i.gk, %.sink.split.i ] ; 17 uses
  %.val364369 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.go, %.sink.split.i ] ; 3 uses
  %i.x = icmp ult i64 %.050379, %.val364369
  br i1 %i.x, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !9439 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0220.0370, align 8, !tbaa !9439 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread20.i, %.lr.ph.i
  %.023.i = phi i64 [ %.050379, %.lr.ph.i ], [ %i.aw, %.thread20.i ] ; 4 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %.thread20.i ] ; 4 uses
  %i.aa = mul i64 %.01822.i, %2
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9438
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = mul i64 %.023.i, %2
  %i.af = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9438
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.01822.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9438
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.023.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9438
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !87 ; 2 uses
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !87 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp slt i32 %i.ap, %i.ao
  br i1 %i.ar, label %.thread20.i, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEESF_SF_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.preheader, %.lr.ph.i32
  %.sroa.049.0 = phi ptr [ %i.bz, %.lr.ph.i32 ], [ %i.bs, %.lr.ph.i32.preheader ]
  %.sroa.047.0 = phi ptr [ %i.cc, %.lr.ph.i32 ], [ %i.az, %.lr.ph.i32.preheader ]
  %i.bt = phi ptr [ %i.bw, %.lr.ph.i32 ], [ %i.ba, %.lr.ph.i32.preheader ]
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !9439, !noalias !16601
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !9438, !noalias !16601 ; 4 uses
  %i.bx = load ptr, ptr %.sroa.049.0, align 8, !tbaa !9439, !noalias !16606
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !9438, !noalias !16606 ; 3 uses
  %i.ca = load ptr, ptr %.sroa.047.0, align 8, !tbaa !9439, !noalias !16609
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !9438, !noalias !16609 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 4, !noalias !16612
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !87, !noalias !16612
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !292, !noalias !16612
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 12 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !87, !noalias !16612
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !294, !noalias !16612
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !87, !noalias !16612
  store i32 %i.cl, ptr %i.cf, align 4, !tbaa !292, !noalias !16612
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !87, !noalias !16612
  store i32 %i.cn, ptr %i.ch, align 4, !tbaa !294, !noalias !16612
  store i64 %i.ce, ptr %i.ck, align 4, !noalias !16612
  %.not.i33 = icmp eq ptr %i.bw, %i.ah
  br i1 %.not.i33, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i32, !llvm.loop !12524

bb.j:                                             ; preds = %bb.i
  %.not1.i.i = icmp eq ptr %i.av, %i.ah
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.au, %bb.j ]
  %i.co = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.av, %bb.j ]
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !9439, !noalias !16613
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !9438, !noalias !16613 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !9439, !noalias !16613
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !9438, !noalias !16613 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !87, !noalias !16613
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !87, !noalias !16613
  store i32 %i.cy, ptr %i.cs, align 4, !tbaa !87, !noalias !16613
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !87, !noalias !16613
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !87, !noalias !16613
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !87, !noalias !16613
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !87, !noalias !16613
  store i32 %i.db, ptr %i.da, align 4, !tbaa !87, !noalias !16613
  %.not.i.i = icmp eq ptr %i.cr, %i.ah
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !12292

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i32, %.lr.ph.i31, %.lr.ph.i.i, %bb.j, %.thread87, %.thread86, %bb.i
  %storemerge = phi ptr [ %i.ah, %bb.i ], [ %i.bk, %.lr.ph.i31 ], [ %i.ba, %.thread86 ], [ %i.cv, %.lr.ph.i.i ], [ %i.au, %bb.j ], [ %i.az, %.thread87 ], [ %i.cc, %.lr.ph.i32 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !9636
  %i.dd = load ptr, ptr %1, align 8, !tbaa !2219  ; 6 uses
  %.neg89 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %.neg89 ; 3 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !9636, !noalias !16618
  %.not.i34 = icmp eq ptr %i.ah, %i.df
  br i1 %.not.i34, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg89, 0
  br i1 %.not9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 2 uses
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !708
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !708
  store i64 %i.dj, ptr %i.dg, align 8, !tbaa !708
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !708
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit.i
  %i.dk = load ptr, ptr %2, align 8, !tbaa !2219  ; 2 uses
  %i.dl = icmp eq ptr %i.de, %i.dk
  br i1 %i.dl, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = icmp eq ptr %i.dk, %i.dd
  br i1 %i.dm, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.sink.i = phi ptr [ %i.dd, %bb.l ], [ %i.de, %bb.m ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2219
  %.pre106 = load ptr, ptr %1, align 8, !tbaa !2219
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit, %bb.m, %.sink.split.i
  %i.dn = phi ptr [ %i.dd, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEES9_EET0_T_SB_SA_.exit ], [ %i.dd, %bb.m ], [ %.pre106, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !9636
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  store ptr %i.do, ptr %1, align 8, !tbaa !2219
  %i.dp = icmp ne i64 %.099, 0
  %.neg = sext i1 %i.dp to i64
  %i.dq = add i64 %.099, %.neg
  %i.dr = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.dr to i64
  %i.ds = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dt = add i64 %.08598, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dt, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16621

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !16622)
  %i.du = load ptr, ptr %6, align 8, !tbaa !9636, !noalias !16622
  store ptr %i.du, ptr %0, align 8, !tbaa !9636, !alias.scope !16622
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEES6_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9636   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9636   ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !9636   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !9439
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !9439
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !9439
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  store i64 %i.q, ptr %4, align 4
  %.not8.i = icmp eq i64 %5, 1
  %i.r = trunc i64 %i.q to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.s = add i64 %5, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %5, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.s, -4                       ; 4 uses
  %i.t = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.v, align 4
  store <2 x i64> %broadcast.splat, ptr %i.w, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !16625

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader20

.lr.ph.i.preheader20:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader20, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader20 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.8.0
  store i64 %i.q, ptr %i.y, align 4
  %storemerge.i = add nuw i64 %.sroa.8.0, 1       ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !16626

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i
  store i32 %i.r, ptr %i.p, align 8, !tbaa !292
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !294
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9636
  store ptr %i.ad, ptr %10, align 8, !tbaa !9636
  %i.ae = load ptr, ptr %1, align 8, !tbaa !9636
  store ptr %i.ae, ptr %11, align 8, !tbaa !9636
  %i.af = load ptr, ptr %2, align 8, !tbaa !9636
  store ptr %i.af, ptr %12, align 8, !tbaa !9636
  %i.ag = load ptr, ptr %3, align 8, !tbaa !3395, !nonnull !197
  store ptr %i.ag, ptr %13, align 8, !tbaa !2072
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES6_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %3, align 8, !tbaa !3395, !nonnull !197
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !9636
  store ptr %i.b, ptr %7, align 8, !tbaa !9636
  store ptr %i.d, ptr %8, align 8, !tbaa !9636
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !9439
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !9439
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !9439
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.ak
  %i.ar = ashr exact i64 %i.aq, 3
  store ptr %i.ah, ptr %9, align 8, !tbaa !2072
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.an, i64 noundef %i.ar, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.074 = alloca ptr, align 8                ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9636   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9636   ; 6 uses
  %.not81 = icmp eq ptr %i.a, %i.b
  br i1 %.not81, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_22stable_vector_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !9636   ; 2 uses
  %.not82 = icmp eq ptr %i.b, %i.c
  br i1 %.not82, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_22stable_vector_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !9439 ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9438
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !87   ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not83 = icmp slt i32 %i.i, %i.j
  br i1 %.not83, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_22stable_vector_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !9439 ; 3 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !9439 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.s
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not10.i = icmp eq ptr %i.e, %i.k
  br i1 %.not10.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.t = phi ptr [ %i.ae, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %.011.i = phi i64 [ %.1.i, %bb.h ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = lshr i64 %.011.i, 1                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !9439, !noalias !16627
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9438, !noalias !16627
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i: ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !87, !noalias !16627
  %.not9.i = icmp slt i32 %i.z, %i.j
  br i1 %.not9.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i
  %i.aa = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !9439, !noalias !16627
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9438, !noalias !16627
  %.neg.i = xor i64 %i.u, -1
  %i.ad = add i64 %.011.i, %.neg.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i
  %i.ae = phi ptr [ %i.ac, %bb.g ], [ %i.t, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.ad, %bb.g ], [ %i.u, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i ] ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !16630

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !9439 ; 2 uses
  %.pre115 = ptrtoint ptr %.pre to i64
  br label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, %bb.e
  %.pre-phi116 = phi i64 [ %.pre115, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.m, %bb.e ]
  %i.af = phi ptr [ %.pre, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.k, %bb.e ] ; 5 uses
  %i.ag = phi ptr [ %i.ae, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.a, %bb.e ] ; 10 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !9636
  %i.ah = load ptr, ptr %1, align 8, !tbaa !9636
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9439 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %.pre-phi116             ; 4 uses
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1561 ; 3 uses
  %.not.i7 = icmp ugt i64 %i.al, %i.an
  br i1 %.not.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not.i.i.i = icmp eq ptr %i.ai, %i.af
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container22stable_vector_iteratorIS4_Lb0EEEEEvT_m.exit, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i: ; preds = %bb.i
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 %i.ak
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !9438, !noalias !16631 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.ag, %i.ap
  br i1 %.not3.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container22stable_vector_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit.i
  %i.aq = load ptr, ptr %4, align 8, !tbaa !1559
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %i.ar = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.ag, %.lr.ph.i.preheader.i ] ; 3 uses
  %.04.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.aq, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !87
  store i32 %i.at, ptr %.04.i.i, align 4, !tbaa !292
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !87
  %i.aw = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !294
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !9439
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !9438 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i8 = icmp eq ptr %i.az, %i.ap
  br i1 %.not.i.i8, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container22stable_vector_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !11840

bb.j:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not.i.i10.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i10.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit17.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i: ; preds = %bb.j
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.an
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9438, !noalias !16634 ; 4 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !1559  ; 2 uses
  %.not3.i12.i = icmp eq ptr %i.ag, %i.bc
  br i1 %.not3.i12.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit21.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i, %.lr.ph.i13.i
  %i.be = phi ptr [ %i.bm, %.lr.ph.i13.i ], [ %i.ag, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i ] ; 3 uses
  %.04.i14.i = phi ptr [ %i.bn, %.lr.ph.i13.i ], [ %i.bd, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit11.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !87
  store i32 %i.bg, ptr %.04.i14.i, align 4, !tbaa !292
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %.04.i14.i, i64 4
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_bbT0_RT1_:bb.a
  store ptr %i.l, ptr %9, align 8, !tbaa !18064
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.n, ptr %i.au, align 8, !tbaa !18076
  call void @_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b(ptr noundef nonnull align 8 dead_on_return %9, i64 noundef %i.j, i64 noundef %i.k, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i1 noundef zeroext true)
  store ptr %i.l, ptr %10, align 8, !tbaa !18064
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.n, ptr %i.av, align 8, !tbaa !18076
  store ptr %.sroa.0.0.i, ptr %11, align 8, !tbaa !18064
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.6.1.i, ptr %i.aw, align 8, !tbaa !18076
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !708
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !708
  %i.az = load i64, ptr %i.b, align 8, !tbaa !708
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !708
  %i.bb = load ptr, ptr %8, align 8, !tbaa !1559
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, i64 noundef %5, i64 noundef %i.ax, i64 noundef %i.ay, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.i:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store ptr %i.l, ptr %12, align 8, !tbaa !18064
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.n, ptr %i.bc, align 8, !tbaa !18076
  call void @_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b(ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.j, i64 noundef %i.k, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext true)
  br i1 %6, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr %i.l, ptr %13, align 8, !tbaa !18064
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.n, ptr %i.bd, align 8, !tbaa !18076
  store ptr %.sroa.0.0.i, ptr %14, align 8, !tbaa !18064
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.6.1.i, ptr %i.be, align 8, !tbaa !18076
  %i.bf = load i64, ptr %i.g, align 8, !tbaa !708
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !708
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !708
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !708
  call void @llvm.experimental.noalias.scope.decl(metadata !21405)
  %i.bj = sub nsw i64 0, %5
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %.sroa.6.1.i, align 8, !tbaa !73, !noalias !21405
  %i.bl = ptrtoint ptr %.sroa.0.0.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = sub nsw i64 %i.bo, %5                   ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.bp, 128
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i, i64 %i.bj
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit

bb.m:                                             ; preds = %bb.k
  %i.br = icmp sgt i64 %i.bp, 0
  %i.bs = lshr i64 %i.bp, 7                       ; 2 uses
  %i.bt = or disjoint i64 %i.bs, -144115188075855872
  %i.bu = select i1 %i.br, i64 %i.bs, i64 %i.bt   ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i, i64 %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !73, !noalias !21405
  %i.bx = shl nsw i64 %i.bu, 7
  %i.by = sub nsw i64 %i.bp, %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.6.1.i43 = phi ptr [ %.sroa.6.1.i, %bb.j ], [ %.sroa.6.1.i, %bb.l ], [ %i.bv, %bb.m ]
  %.sroa.0.0.i44 = phi ptr [ %.sroa.0.0.i, %bb.j ], [ %i.bq, %bb.l ], [ %i.bz, %bb.m ]
  store ptr %.sroa.0.0.i44, ptr %15, align 8, !tbaa !18064, !alias.scope !21405
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.6.1.i43, ptr %i.ca, align 8, !tbaa !18076, !alias.scope !21405
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %5, i64 noundef %i.bf, i64 noundef %i.bg, i64 noundef %i.bh, i64 noundef %i.bi, ptr noundef nonnull align 8 dead_on_return %15)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  store ptr %i.l, ptr %16, align 8, !tbaa !18064
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.n, ptr %i.cb, align 8, !tbaa !18076
  store ptr %.sroa.0.0.i, ptr %17, align 8, !tbaa !18064
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.6.1.i, ptr %i.cc, align 8, !tbaa !18076
  %i.cd = load i64, ptr %i.g, align 8, !tbaa !708
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !708
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !708
  %i.cg = load i64, ptr %i.h, align 8, !tbaa !708
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dead_on_return %17, i64 noundef %5, i64 noundef %i.cd, i64 noundef %i.ce, i64 noundef %i.cf, i64 noundef %i.cg)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.p:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1561 ; 3 uses
  %i.cj = icmp ugt i64 %i.ci, %5
  br i1 %i.cj, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.p
  store i64 %5, ptr %i.ch, align 8, !tbaa !1561
  %.pre88 = load ptr, ptr %8, align 8, !tbaa !1559
  br label %bb.r

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit: ; preds = %bb.p
  %i.ck = icmp ult i64 %i.ci, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !18064 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ci
  %i.cn = load i64, ptr %i.cl, align 4
  store i64 %i.cn, ptr %i.cm, align 4
  %storemerge.in6.i45 = load i64, ptr %i.ch, align 8, !tbaa !1561 ; 3 uses
  %storemerge7.i46 = add i64 %storemerge.in6.i45, 1 ; 3 uses
  store i64 %storemerge7.i46, ptr %i.ch, align 8, !tbaa !1561
  %.not8.i47 = icmp eq i64 %storemerge7.i46, %5
  br i1 %.not8.i47, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit56, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.q, %.lr.ph.i48
  %storemerge10.i49 = phi i64 [ %storemerge.i52, %.lr.ph.i48 ], [ %storemerge7.i46, %bb.q ]
  %storemerge.in9.i50 = phi i64 [ %storemerge.in.i51, %.lr.ph.i48 ], [ %storemerge.in6.i45, %bb.q ]
  %i.co = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %storemerge10.i49
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %storemerge.in9.i50
  %i.cr = load i64, ptr %i.cq, align 4
  store i64 %i.cr, ptr %i.cp, align 4
  %storemerge.in.i51 = load i64, ptr %i.ch, align 8, !tbaa !1561 ; 3 uses
  %storemerge.i52 = add i64 %storemerge.in.i51, 1 ; 3 uses
  store i64 %storemerge.i52, ptr %i.ch, align 8, !tbaa !1561
  %.not.i53 = icmp eq i64 %storemerge.i52, %5
  br i1 %.not.i53, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit56, label %.lr.ph.i48, !llvm.loop !1995

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit56: ; preds = %.lr.ph.i48, %bb.q
  %storemerge.in.lcssa.i55 = phi i64 [ %storemerge.in6.i45, %bb.q ], [ %storemerge.in.i51, %.lr.ph.i48 ]
  %i.cs = load ptr, ptr %8, align 8, !tbaa !1559  ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %storemerge.in.lcssa.i55 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !87
  store i32 %i.cu, ptr %i.cl, align 4, !tbaa !292
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !87
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !294
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit56, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.cy = phi ptr [ %i.cs, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit56 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit ], [ %.pre88, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %5
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = add i64 %i.da, 7
  %i.dc = and i64 %i.db, -8
  %i.dd = inttoptr i64 %i.dc to ptr               ; 4 uses
  %i.de = urem i64 %i.k, %5                       ; 3 uses
  %i.df = sub i64 %i.j, %i.de
  %i.dg = urem i64 %i.df, %5                      ; 2 uses
  %i.dh = add i64 %i.de, %i.dg
  %i.di = sub i64 %i.j, %i.dh
  %i.dj = udiv i64 %i.di, %5                      ; 4 uses
  %i.dk = udiv i64 %i.k, %5                       ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = shl i64 %i.dj, 3
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %.mask.i = and i64 %i.dj, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.r
  %min.iters.check = icmp ult i64 %i.dn, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.do = and i64 %i.dj, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.dn, %i.do           ; 3 uses
  %i.dp = shl i64 %n.vec, 3
  %i.dq = getelementptr i8, ptr %i.dd, i64 %i.dp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.dr = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !708
  store <2 x i64> %step.add, ptr %i.ds, align 8, !tbaa !708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !21408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.dd, %.lr.ph.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.dv, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !708
  %i.du = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.dv = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i57 = icmp eq i64 %i.dv, %i.dn
  br i1 %.not.i.i57, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i, !llvm.loop !21409

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.r
  %i.dw = load <2 x ptr>, ptr %0, align 8, !tbaa !19063
  store <2 x ptr> %i.dw, ptr %18, align 16, !tbaa !19063
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %i.dd, ptr noundef nonnull align 8 dead_on_return %18, i64 noundef %5, i64 noundef %i.de, i64 noundef %i.dk, i64 noundef %i.dl, i64 noundef %i.dg, ptr noundef %i.cy)
  %i.dx = load i64, ptr %i.ch, align 8, !tbaa !1561
  %.not.i58 = icmp eq i64 %i.dx, 0
  br i1 %.not.i58, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit
  store i64 0, ptr %i.ch, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, %bb.h, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26adaptive_merge_final_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_bbT0_RT1_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.std::pair.16", align 8     ; 4 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %.not = xor i1 %7, true
  %i.a = icmp ne i64 %3, %4                       ; 2 uses
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1                           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %bb.b, %.preheader.preheader.i.i
  %or.cond3 = and i1 %i.a, %7
  %i.e = select i1 %or.cond3, i64 %4, i64 0       ; 2 uses
  %i.f = sub i64 %3, %i.e                         ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !18064  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18076 ; 8 uses
  %.not.i.i = icmp eq i64 %3, %i.e                ; 2 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73, !noalias !21410
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = add nsw i64 %i.n, %i.f                   ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.o, 128
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.f
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp sgt i64 %i.o, 0
  %i.r = lshr i64 %i.o, 7                         ; 2 uses
  %i.s = or disjoint i64 %i.r, -144115188075855872
  %i.t = select i1 %i.q, i64 %i.r, i64 %i.s       ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73, !noalias !21410
  %i.w = shl nsw i64 %i.t, 7
  %i.x = sub nsw i64 %i.o, %i.w
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.x
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, %bb.d, %bb.e
  %.sroa.6.1.i = phi ptr [ %i.i, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit ], [ %i.i, %bb.d ], [ %i.u, %bb.e ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.g, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit ], [ %i.p, %bb.d ], [ %i.y, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.g, ptr %11, align 8, !tbaa !18064
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.i, ptr %i.z, align 8, !tbaa !18076
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !18064
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.6.1.i, ptr %i.aa, align 8, !tbaa !18076
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEE9make_heapES7_S7_SE_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ab = icmp eq ptr %.sroa.0.0.i, %i.g
  br i1 %i.ab, label %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_T0_RT1_.exit, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i.i

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i.i: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit
  %i.ac = ptrtoint ptr %.sroa.6.1.i to i64
  %i.ad = ptrtoint ptr %i.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = shl nsw i64 %i.ae, 4
  %i.ag = load ptr, ptr %.sroa.6.1.i, align 8, !tbaa !73
  %i.ah = ptrtoint ptr %.sroa.0.0.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = add nsw i64 %i.ak, %i.af
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.an = ptrtoint ptr %i.g to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = sub i64 %i.al, %i.aq                    ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_T0_RT1_.exit

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.4.0.i.i.i = phi ptr [ %.sroa.6.1.i, %.lr.ph.i.i.i.i ], [ %.sroa.4.1.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i ] ; 2 uses
  %.02.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.bf, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i ]
  %i.av = load ptr, ptr %.sroa.4.0.i.i.i, align 8, !tbaa !73
  %i.aw = icmp eq ptr %.sroa.0.0.i.i.i, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h, !prof !196

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds i8, ptr %.sroa.4.0.i.i.i, i64 -8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.4.1.i.i.i = phi ptr [ %i.ax, %bb.g ], [ %.sroa.4.0.i.i.i, %bb.h ]
  %storemerge.i.i.i.i.i = phi ptr [ %i.az, %bb.g ], [ %i.ba, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bb = load i64, ptr %storemerge.i.i.i.i.i, align 4
  store i64 %i.bb, ptr %9, align 8
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !87
  store i32 %i.bc, ptr %storemerge.i.i.i.i.i, align 4, !tbaa !292
  %i.bd = load i32, ptr %i.au, align 4, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !294
  store ptr %i.g, ptr %10, align 8, !tbaa !18064
  store ptr %i.i, ptr %i.at, align 8, !tbaa !18076
  %i.bf = add i64 %.02.i.i.i.i, -1                ; 3 uses
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEE11adjust_heapES7_mmRS5_SE_(ptr noundef nonnull align 8 dead_on_return %10, i64 noundef 0, i64 noundef %i.bf, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bg = icmp ugt i64 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_T0_RT1_.exit, !llvm.loop !21176

_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_T0_RT1_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !18064 ; 7 uses
  store ptr %i.bh, ptr %13, align 8, !tbaa !18064
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !18076 ; 9 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !18076
  call void @llvm.experimental.noalias.scope.decl(metadata !21413)
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit22, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_T0_RT1_.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !73, !noalias !21413
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = add nsw i64 %i.bo, %i.f                 ; 4 uses
  %or.cond.i.i19 = icmp ult i64 %i.bp, 128
  br i1 %or.cond.i.i19, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.f
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit22

bb.k:                                             ; preds = %bb.i
  %i.br = icmp sgt i64 %i.bp, 0
  %i.bs = lshr i64 %i.bp, 7                       ; 2 uses
  %i.bt = or disjoint i64 %i.bs, -144115188075855872
  %i.bu = select i1 %i.br, i64 %i.bs, i64 %i.bt   ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !73, !noalias !21413
  %i.bx = shl nsw i64 %i.bu, 7
  %i.by = sub nsw i64 %i.bp, %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit22

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit22: ; preds = %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_T0_RT1_.exit, %bb.j, %bb.k
  %.sroa.6.1.i20 = phi ptr [ %i.bj, %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_T0_RT1_.exit ], [ %i.bj, %bb.j ], [ %i.bv, %bb.k ]
  %.sroa.0.0.i21 = phi ptr [ %i.bh, %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_T0_RT1_.exit ], [ %i.bq, %bb.j ], [ %i.bz, %bb.k ]
end_hunk_12
begin_hunk_13_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_SI_T0_RT1_:bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !18064  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18076 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18076 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !73
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1562 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18076
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18076
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18076
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.b, ptr %4, align 8, !tbaa !18064
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !18076
  store ptr %i.a, ptr %5, align 8, !tbaa !18064
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !18076
  store ptr %i.x, ptr %6, align 8, !tbaa !18064
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !18076
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread
  store i64 0, ptr %i.bf, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6
  store ptr %i.b, ptr %7, align 8, !tbaa !18064
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !18076
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !18076
  store ptr %i.a, ptr %8, align 8, !tbaa !18064
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18076
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !18076
  store ptr %i.x, ptr %9, align 8, !tbaa !18064
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18076
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !18076
  %i.bq = load ptr, ptr %3, align 8, !tbaa !1559
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef %i.bq, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEES6_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18064  ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18064  ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !18064  ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18076 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18076 ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18076 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i64, ptr %i.a, align 4             ; 4 uses
  store i64 %i.al, ptr %3, align 4
  %.not8.i = icmp eq i64 %4, 1
  %i.am = trunc i64 %i.al to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.an = add i64 %4, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.an, -4                      ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 4
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !22668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader26

.lr.ph.i.preheader26:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader26, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader26 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.8.0
  store i64 %i.al, ptr %i.at, align 4
  %storemerge.i = add nuw i64 %.sroa.8.0, 1       ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !22669

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i
  store i32 %i.am, ptr %i.a, align 4, !tbaa !292
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !294
  %i.ay = load <2 x ptr>, ptr %0, align 8, !tbaa !19063
  store <2 x ptr> %i.ay, ptr %8, align 16, !tbaa !19063
  %i.az = load <2 x ptr>, ptr %1, align 8, !tbaa !19063
  store <2 x ptr> %i.az, ptr %9, align 16, !tbaa !19063
  %i.ba = load <2 x ptr>, ptr %2, align 8, !tbaa !19063
  store <2 x ptr> %i.ba, ptr %10, align 16, !tbaa !19063
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.e

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit: ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18076 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !18076 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18076 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !18064
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !18076
  store ptr %i.b, ptr %6, align 8, !tbaa !18064
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !18076
  store ptr %i.d, ptr %7, align 8, !tbaa !18064
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !18076
  %i.bk = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bl = ptrtoint ptr %i.bc to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = shl nsw i64 %i.bm, 4
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !73
  %i.bp = ptrtoint ptr %i.b to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %i.bt = add nsw i64 %i.bs, %i.bn
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !73
  %i.bv = ptrtoint ptr %i.a to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = sub i64 %i.bt, %i.by
  %i.ca = ptrtoint ptr %i.bg to i64
  %i.cb = sub i64 %i.ca, %i.bk
  %i.cc = shl nsw i64 %i.cb, 4
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.ce = ptrtoint ptr %i.d to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = add nsw i64 %i.ch, %i.cc
  %i.cj = sub i64 %i.ci, %i.bs
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bz, i64 noundef %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 16 ; 5 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %17 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %20 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %21 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %22 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %23 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !2418
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !2420
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2421
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !19063
  store <2 x ptr> %i.f, ptr %7, align 16, !tbaa !19063
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !19063
  store <2 x ptr> %i.g, ptr %8, align 16, !tbaa !19063
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !19063
  store <2 x ptr> %i.h, ptr %9, align 16, !tbaa !19063
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !18064  ; 12 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !18064  ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87   ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !87   ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 4, !tbaa !87
  store i32 %i.n, ptr %i.l, align 4, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !87
  %i.s = load i32, ptr %i.q, align 4, !tbaa !87
  store i32 %i.s, ptr %i.p, align 4, !tbaa !87
  store i32 %i.r, ptr %i.q, align 4, !tbaa !87
  br label %bb.ag

bb.g:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %i.i, 16
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !18064
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18076
  store ptr %i.w, ptr %i.u, align 8, !tbaa !18076
  %i.x = load <2 x ptr>, ptr %1, align 8, !tbaa !19063
  store <2 x ptr> %i.x, ptr %12, align 16, !tbaa !19063
  %i.y = load <2 x ptr>, ptr %2, align 8, !tbaa !19063
  store <2 x ptr> %i.y, ptr %13, align 16, !tbaa !19063
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18076 ; 8 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !18064 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18076 ; 12 uses
  %i.ae = icmp ugt i64 %3, %4
  br i1 %i.ae, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.af = lshr i64 %3, 1                          ; 6 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ah = ptrtoint ptr %i.k to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = add nsw i64 %i.ak, %i.af                ; 4 uses
  %or.cond.i = icmp ult i64 %i.al, 128
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.af
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp sgt i64 %i.al, 0
  %i.ao = lshr i64 %i.al, 7                       ; 2 uses
  %i.ap = or disjoint i64 %i.ao, -144115188075855872
  %i.aq = select i1 %i.an, i64 %i.ao, i64 %i.ap   ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEESD_EEvT0_SF_T1_SG_SG_T_:bb.a
  %.04.i = phi ptr [ %i.ak, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  store i32 %i.y, ptr %.04.i, align 4, !tbaa !292
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !294
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 1024
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i, !prof !196

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.ah = phi ptr [ %i.v, %.lr.ph.i ], [ %i.ag, %bb.d ]
  %i.ai = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ag, %bb.d ] ; 2 uses
  %i.aj = phi ptr [ %i.w, %.lr.ph.i ], [ %i.af, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.04.i, i64 8
  %.not.i = icmp eq ptr %i.ai, %.pre60
  br i1 %.not.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !21442

.lr.ph111:                                        ; preds = %.lr.ph, %bb.b
  %.03043110 = phi ptr [ %i.bb, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.044109 = phi ptr [ %.1, %bb.b ], [ %3, %.lr.ph ] ; 5 uses
  %i.al = phi ptr [ %i.ba, %bb.b ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.am = load i32, ptr %.044109, align 4, !tbaa !87
  %i.an = load i32, ptr %i.al, align 4, !tbaa !87
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph111
  %i.ap = load i64, ptr %.044109, align 4
  store i64 %i.ap, ptr %.03043110, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.044109, i64 8
  %.pre = load ptr, ptr %0, align 8, !tbaa !18064
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14

bb.f:                                             ; preds = %.lr.ph111
  %i.ar = load i64, ptr %i.al, align 4
  store i64 %i.ar, ptr %.03043110, align 4
  %i.as = load ptr, ptr %0, align 8, !tbaa !18064
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !18064
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !18076 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1024
  %i.ax = icmp eq ptr %i.at, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14, !prof !196

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.f, align 8, !tbaa !18076
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !73 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !18064
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14: ; preds = %bb.g, %bb.f, %bb.e
  %i.ba = phi ptr [ %.pre, %bb.e ], [ %i.at, %bb.f ], [ %i.az, %bb.g ] ; 4 uses
  %.1 = phi ptr [ %i.aq, %bb.e ], [ %.044109, %bb.f ], [ %.044109, %bb.g ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03043110, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !18064 ; 2 uses
  %i.bd = icmp ne ptr %i.ba, %i.bc
  %i.be = icmp ne ptr %i.bb, %3
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.b, label %._crit_edge, !llvm.loop !22932

._crit_edge:                                      ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14, %bb.a
  %.0.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14 ]
  %.lcssa39 = phi ptr [ %i.a, %bb.a ], [ %i.ba, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14 ] ; 2 uses
  %.lcssa37 = phi ptr [ %i.b, %bb.a ], [ %i.bc, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14 ] ; 3 uses
  %.not19.i.i = icmp eq ptr %.lcssa39, %.lcssa37
  br i1 %.not19.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !18076
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i
  %.sroa.4.0.i = phi ptr [ %.sroa.4.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bh, %.lr.ph.i.i.preheader ] ; 6 uses
  %i.bi = phi ptr [ %i.cp, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i ], [ %.lcssa39, %.lr.ph.i.i.preheader ] ; 5 uses
  %.021.i.i = phi ptr [ %i.cq, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i ], [ %3, %.lr.ph.i.i.preheader ] ; 5 uses
  %.0920.i.i = phi ptr [ %.1.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 6 uses
  %i.bj = icmp eq ptr %.0920.i.i, %4
  br i1 %i.bj, label %.lr.ph.i.preheader.i.i.i, label %bb.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !73
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %i.bk = phi ptr [ %i.bw, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bl = phi ptr [ %i.by, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.sroa.4.0.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bm = phi ptr [ %i.bx, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %i.bi, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %.04.i.i.i.i = phi ptr [ %i.bz, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.021.i.i, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !87
  store i32 %i.bn, ptr %.04.i.i.i.i, align 4, !tbaa !292
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !87
  %i.bq = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !294
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 1024
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.h, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i, !prof !196

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.bw = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.bv, %bb.h ]
  %i.bx = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %i.bv, %bb.h ] ; 2 uses
  %i.by = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bu, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bx, %.lcssa37
  br i1 %.not.i.i.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !21442

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ca = load i32, ptr %.0920.i.i, align 4, !tbaa !87 ; 2 uses
  %i.cb = load i32, ptr %i.bi, align 4, !tbaa !87 ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ca, ptr %.021.i.i, align 4, !tbaa !292
  %i.ce = getelementptr inbounds nuw i8, ptr %.0920.i.i, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !87
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !294
  %i.cg = getelementptr inbounds nuw i8, ptr %.0920.i.i, i64 8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  store i32 %i.cb, ptr %.021.i.i, align 4, !tbaa !292
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !87
  store i32 %i.ci, ptr %i.cd, align 4, !tbaa !294
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1024
  %i.cm = icmp eq ptr %i.cj, %i.cl
  br i1 %i.cm, label %bb.l, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i, !prof !196

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !73
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.4.1.i = phi ptr [ %.sroa.4.0.i, %bb.j ], [ %i.cn, %bb.l ], [ %.sroa.4.0.i, %bb.k ]
  %i.cp = phi ptr [ %i.bi, %bb.j ], [ %i.co, %bb.l ], [ %i.cj, %bb.k ] ; 2 uses
  %.1.i.i = phi ptr [ %i.cg, %bb.j ], [ %.0920.i.i, %bb.l ], [ %.0920.i.i, %bb.k ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cp, %.lcssa37
  br i1 %.not.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !22934

_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i, %._crit_edge, %._crit_edge50.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %3 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %4 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !18064  ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18064  ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %._crit_edge.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18076 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18076 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 4
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v                       ; 5 uses
  %i.x = icmp ugt i64 %i.w, 16
  br i1 %i.x, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit
  %.033180 = phi i64 [ 0, %.lr.ph ], [ %i.di, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit ] ; 5 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !18064, !noalias !22935 ; 5 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !18076, !noalias !22935 ; 7 uses
  %.not.i.i = icmp eq i64 %.033180, 0
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !73, !noalias !197 ; 5 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %.pre to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = add nsw i64 %i.ae, %.033180             ; 7 uses
  %or.cond.i.i = icmp ult i64 %i.af, 128
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.033180
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.033180
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp sgt i64 %i.af, 0
  %i.aj = lshr i64 %i.af, 7                       ; 2 uses
  %i.ak = or disjoint i64 %i.aj, -144115188075855872
  %i.al = select i1 %i.ai, i64 %i.aj, i64 %i.ak   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !73, !noalias !22935 ; 2 uses
  %i.ao = shl nsw i64 %i.al, 7
  %i.ap = sub nsw i64 %i.af, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  %i.ar = icmp sgt i64 %i.af, 0
  %i.as = lshr i64 %i.af, 7                       ; 2 uses
  %i.at = or disjoint i64 %i.as, -144115188075855872
  %i.au = select i1 %i.ar, i64 %i.as, i64 %i.at   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !73, !noalias !22938 ; 2 uses
  %i.ax = shl nsw i64 %i.au, 7
  %i.ay = sub nsw i64 %i.af, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ay
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39: ; preds = %bb.b, %bb.d, %bb.e
  %i.ba = phi ptr [ %i.an, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ]
  %i.bb = phi ptr [ %i.aw, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ]
  %.sroa.0.0.i155 = phi ptr [ %i.aq, %bb.e ], [ %i.ag, %bb.d ], [ %i.z, %bb.b ] ; 4 uses
  %.sroa.6.1.i153 = phi ptr [ %i.am, %bb.e ], [ %i.aa, %bb.d ], [ %i.aa, %bb.b ] ; 2 uses
  %.sroa.6.1.i37 = phi ptr [ %i.av, %bb.e ], [ %i.aa, %bb.d ], [ %i.aa, %bb.b ]
  %.sroa.0.0.i38 = phi ptr [ %i.az, %bb.e ], [ %i.ah, %bb.d ], [ %i.z, %bb.b ] ; 2 uses
  %i.bc = ptrtoint ptr %.sroa.0.0.i38 to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %i.bg = add nsw i64 %i.bf, 16                   ; 3 uses
  %or.cond.i.i40 = icmp ult i64 %i.bg, 128
  br i1 %or.cond.i.i40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 128
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39
  %i.bi = icmp sgt i64 %i.bf, -16
  %i.bj = lshr i64 %i.bg, 7                       ; 2 uses
  %i.bk = or disjoint i64 %i.bj, -144115188075855872
  %i.bl = select i1 %i.bi, i64 %i.bj, i64 %i.bk   ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i37, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !73, !noalias !22941
  %i.bo = shl nsw i64 %i.bl, 7
  %i.bp = sub nsw i64 %i.bg, %i.bo
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bp
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i42 = phi ptr [ %i.bq, %bb.g ], [ %i.bh, %bb.f ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i155, %.sroa.0.0.i42
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i155, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 1024
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.i, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i, !prof !196

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i153, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.14.1.i = phi ptr [ %i.bu, %bb.i ], [ %.sroa.6.1.i153, %bb.h ]
  %.sroa.020.1.i = phi ptr [ %i.bv, %bb.i ], [ %i.br, %bb.h ] ; 2 uses
  %.not2937.i = icmp eq ptr %.sroa.020.1.i, %.sroa.0.0.i42
  br i1 %.not2937.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i
  %.sroa.020.039.i = phi ptr [ %.sroa.020.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.020.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i ] ; 7 uses
  %.sroa.14.038.i = phi ptr [ %.sroa.14.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.14.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i ] ; 5 uses
  %i.bw = load ptr, ptr %.sroa.14.038.i, align 8, !tbaa !73 ; 3 uses
  %i.bx = icmp eq ptr %.sroa.020.039.i, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k, !prof !196

bb.j:                                             ; preds = %.lr.ph40.i
  %i.by = getelementptr inbounds i8, ptr %.sroa.14.038.i, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !73 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i

bb.k:                                             ; preds = %.lr.ph40.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.020.039.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i: ; preds = %bb.k, %bb.j
  %i.cc = phi ptr [ %i.bz, %bb.j ], [ %i.bw, %bb.k ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.by, %bb.j ], [ %.sroa.14.038.i, %bb.k ] ; 2 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.j ], [ %i.cb, %bb.k ] ; 6 uses
  %i.cd = load i32, ptr %.sroa.020.039.i, align 4, !tbaa !87
  %i.ce = load i32, ptr %storemerge.i.i, align 4, !tbaa !87 ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i
  %i.cg = load i64, ptr %.sroa.020.039.i, align 4 ; 2 uses
  %.sroa.09.0.extract.trunc.i = trunc i64 %i.cg to i32
  store i32 %i.ce, ptr %.sroa.020.039.i, align 4, !tbaa !292
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.020.039.i, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !294
  %.not3031.i = icmp eq ptr %storemerge.i.i, %.sroa.0.0.i155
  br i1 %.not3031.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i
  %i.ck = phi ptr [ %i.dc, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %i.cc, %bb.l ] ; 2 uses
  %i.cl = phi ptr [ %i.cr, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %i.cc, %bb.l ] ; 2 uses
  %.sroa.0.035.i = phi ptr [ %storemerge.i1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %bb.l ] ; 2 uses
  %.sroa.8.034.i = phi ptr [ %.sroa.8.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.12.1.i, %bb.l ] ; 2 uses
  %.sroa.011.033.i = phi ptr [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %bb.l ] ; 5 uses
  %.sroa.12.032.i = phi ptr [ %.sroa.12.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.12.1.i, %bb.l ] ; 2 uses
  %i.cm = icmp eq ptr %.sroa.0.035.i, %i.cl
  br i1 %i.cm, label %bb.m, label %bb.n, !prof !196

bb.m:                                             ; preds = %.lr.ph.i
  %i.cn = getelementptr inbounds i8, ptr %.sroa.8.034.i, i64 -8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !73 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.035.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i: ; preds = %bb.n, %bb.m
  %i.cr = phi ptr [ %i.co, %bb.m ], [ %i.cl, %bb.n ]
  %.sroa.8.1.i = phi ptr [ %i.cn, %bb.m ], [ %.sroa.8.034.i, %bb.n ]
  %storemerge.i1.i = phi ptr [ %i.cp, %bb.m ], [ %i.cq, %bb.n ] ; 4 uses
  %i.cs = load i32, ptr %storemerge.i1.i, align 4, !tbaa !87 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, %.sroa.09.0.extract.trunc.i
  br i1 %i.ct, label %bb.o, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i, %bb.l
  %.sroa.011.0.lcssa.i = phi ptr [ %storemerge.i.i, %bb.l ], [ %.sroa.011.033.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i ], [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ]
  store i64 %i.cg, ptr %.sroa.011.0.lcssa.i, align 4
  br label %bb.r

bb.o:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i
  store i32 %i.cs, ptr %.sroa.011.033.i, align 4, !tbaa !292
  %i.cu = getelementptr inbounds nuw i8, ptr %storemerge.i1.i, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !87
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.011.033.i, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !294
  %i.cx = icmp eq ptr %.sroa.011.033.i, %i.ck
  br i1 %i.cx, label %bb.p, label %bb.q, !prof !196

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds i8, ptr %.sroa.12.032.i, i64 -8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !73 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i

bb.q:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds i8, ptr %.sroa.011.033.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i: ; preds = %bb.q, %bb.p
  %i.dc = phi ptr [ %i.cz, %bb.p ], [ %i.ck, %bb.q ]
  %.sroa.12.2.i = phi ptr [ %i.cy, %bb.p ], [ %.sroa.12.032.i, %bb.q ]
  %storemerge.i3.i = phi ptr [ %i.da, %bb.p ], [ %i.db, %bb.q ] ; 2 uses
  %.not30.i = icmp eq ptr %storemerge.i1.i, %.sroa.0.0.i155
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !21121

bb.r:                                             ; preds = %.critedge.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.020.039.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bw, i64 1024
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %bb.s, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i, !prof !196

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.14.038.i, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !73
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i: ; preds = %bb.s, %bb.r
  %.sroa.14.2.i = phi ptr [ %i.dg, %bb.s ], [ %.sroa.14.038.i, %bb.r ]
  %.sroa.020.2.i = phi ptr [ %i.dh, %bb.s ], [ %i.dd, %bb.r ] ; 2 uses
  %.not29.i = icmp eq ptr %.sroa.020.2.i, %.sroa.0.0.i42
  br i1 %.not29.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit, label %.lr.ph40.i, !llvm.loop !21122

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i
  %i.di = add nuw i64 %.033180, 16                ; 4 uses
  %i.dj = sub i64 %i.w, %i.di
  %i.dk = icmp ugt i64 %i.dj, 16
  br i1 %i.dk, label %bb.b, label %bb.t, !llvm.loop !22944

._crit_edge.thread:                               ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit, %bb.a
  %.0.i222.ph = phi i64 [ %i.w, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit ], [ 0, %bb.a ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !18076, !noalias !22945
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48

bb.t:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit
  %.pre191 = load ptr, ptr %0, align 8, !tbaa !18064, !noalias !22945 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !18076, !noalias !22945 ; 3 uses
  %i.dn = load ptr, ptr %9, align 8, !tbaa !73, !noalias !22945
  %i.do = ptrtoint ptr %.pre191 to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3
  %i.ds = add nsw i64 %i.dr, %i.di                ; 4 uses
  %or.cond.i.i45 = icmp ult i64 %i.ds, 128
  br i1 %or.cond.i.i45, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds [8 x i8], ptr %.pre191, i64 %i.di
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48

bb.v:                                             ; preds = %bb.t
  %i.du = icmp sgt i64 %i.ds, 0
  %i.dv = lshr i64 %i.ds, 7                       ; 2 uses
  %i.dw = or disjoint i64 %i.dv, -144115188075855872
  %i.dx = select i1 %i.du, i64 %i.dv, i64 %i.dw   ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dx ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !73, !noalias !22945
  %i.ea = shl nsw i64 %i.dx, 7
  %i.eb = sub nsw i64 %i.ds, %i.ea
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eb
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48: ; preds = %._crit_edge.thread, %bb.u, %bb.v
  %10 = phi ptr [ %i.dl, %._crit_edge.thread ], [ %8, %bb.u ], [ %8, %bb.v ] ; 4 uses
  %.0.i222231 = phi i64 [ %.0.i222.ph, %._crit_edge.thread ], [ %i.w, %bb.u ], [ %i.w, %bb.v ] ; 6 uses
  %11 = phi i1 [ false, %._crit_edge.thread ], [ true, %bb.u ], [ true, %bb.v ]
  %.sroa.6.1.i46 = phi ptr [ %i.dm, %._crit_edge.thread ], [ %9, %bb.u ], [ %i.dy, %bb.v ] ; 3 uses
  %.sroa.0.0.i47 = phi ptr [ %i.b, %._crit_edge.thread ], [ %i.dt, %bb.u ], [ %i.ec, %bb.v ] ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !18064 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i49 = icmp eq ptr %.sroa.0.0.i47, %i.ed
  br i1 %.not.i49, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80, label %bb.w

bb.w:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %.sroa.6.1.i46, align 8, !tbaa !73
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1024
  %i.ei = icmp eq ptr %i.ef, %i.eh
  br i1 %i.ei, label %bb.x, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50, !prof !196

bb.x:                                             ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i46, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !73
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50: ; preds = %bb.x, %bb.w
  %.sroa.14.1.i51 = phi ptr [ %i.ej, %bb.x ], [ %.sroa.6.1.i46, %bb.w ]
  %.sroa.020.1.i52 = phi ptr [ %i.ek, %bb.x ], [ %i.ef, %bb.w ] ; 2 uses
  %.not2937.i53 = icmp eq ptr %.sroa.020.1.i52, %i.ed
  br i1 %.not2937.i53, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80, label %.lr.ph40.i54

.lr.ph40.i54:                                     ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60
  %.sroa.020.039.i55 = phi ptr [ %.sroa.020.2.i62, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.020.1.i52, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50 ] ; 7 uses
  %.sroa.14.038.i56 = phi ptr [ %.sroa.14.2.i61, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.14.1.i51, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50 ] ; 5 uses
  %i.el = load ptr, ptr %.sroa.14.038.i56, align 8, !tbaa !73 ; 3 uses
  %i.em = icmp eq ptr %.sroa.020.039.i55, %i.el
  br i1 %i.em, label %bb.y, label %bb.z, !prof !196

bb.y:                                             ; preds = %.lr.ph40.i54
  %i.en = getelementptr inbounds i8, ptr %.sroa.14.038.i56, i64 -8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !73 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57

bb.z:                                             ; preds = %.lr.ph40.i54
  %i.eq = getelementptr inbounds i8, ptr %.sroa.020.039.i55, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57: ; preds = %bb.z, %bb.y
  %i.er = phi ptr [ %i.eo, %bb.y ], [ %i.el, %bb.z ] ; 2 uses
  %.sroa.12.1.i58 = phi ptr [ %i.en, %bb.y ], [ %.sroa.14.038.i56, %bb.z ] ; 2 uses
  %storemerge.i.i59 = phi ptr [ %i.ep, %bb.y ], [ %i.eq, %bb.z ] ; 6 uses
  %i.es = load i32, ptr %.sroa.020.039.i55, align 4, !tbaa !87
  %i.et = load i32, ptr %storemerge.i.i59, align 4, !tbaa !87 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57
  %i.ev = load i64, ptr %.sroa.020.039.i55, align 4 ; 2 uses
  %.sroa.09.0.extract.trunc.i64 = trunc i64 %i.ev to i32
  store i32 %i.et, ptr %.sroa.020.039.i55, align 4, !tbaa !292
  %i.ew = getelementptr inbounds nuw i8, ptr %storemerge.i.i59, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !87
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.020.039.i55, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !294
  %.not3031.i65 = icmp eq ptr %storemerge.i.i59, %.sroa.0.0.i47
  br i1 %.not3031.i65, label %.critedge.i74, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.aa, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76
  %i.ez = phi ptr [ %i.fr, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %i.er, %bb.aa ] ; 2 uses
  %i.fa = phi ptr [ %i.fg, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %i.er, %bb.aa ] ; 2 uses
  %.sroa.0.035.i67 = phi ptr [ %storemerge.i1.i73, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %storemerge.i.i59, %bb.aa ] ; 2 uses
  %.sroa.8.034.i68 = phi ptr [ %.sroa.8.1.i72, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %.sroa.12.1.i58, %bb.aa ] ; 2 uses
  %.sroa.011.033.i69 = phi ptr [ %storemerge.i3.i78, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %storemerge.i.i59, %bb.aa ] ; 5 uses
  %.sroa.12.032.i70 = phi ptr [ %.sroa.12.2.i77, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %.sroa.12.1.i58, %bb.aa ] ; 2 uses
  %i.fb = icmp eq ptr %.sroa.0.035.i67, %i.fa
  br i1 %i.fb, label %bb.ab, label %bb.ac, !prof !196

bb.ab:                                            ; preds = %.lr.ph.i66
  %i.fc = getelementptr inbounds i8, ptr %.sroa.8.034.i68, i64 -8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !73 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71

bb.ac:                                            ; preds = %.lr.ph.i66
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0.035.i67, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71: ; preds = %bb.ac, %bb.ab
  %i.fg = phi ptr [ %i.fd, %bb.ab ], [ %i.fa, %bb.ac ]
  %.sroa.8.1.i72 = phi ptr [ %i.fc, %bb.ab ], [ %.sroa.8.034.i68, %bb.ac ]
  %storemerge.i1.i73 = phi ptr [ %i.fe, %bb.ab ], [ %i.ff, %bb.ac ] ; 4 uses
  %i.fh = load i32, ptr %storemerge.i1.i73, align 4, !tbaa !87 ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, %.sroa.09.0.extract.trunc.i64
  br i1 %i.fi, label %bb.ad, label %.critedge.i74

.critedge.i74:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71, %bb.aa
  %.sroa.011.0.lcssa.i75 = phi ptr [ %storemerge.i.i59, %bb.aa ], [ %.sroa.011.033.i69, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71 ], [ %storemerge.i3.i78, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ]
  store i64 %i.ev, ptr %.sroa.011.0.lcssa.i75, align 4
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71
  store i32 %i.fh, ptr %.sroa.011.033.i69, align 4, !tbaa !292
  %i.fj = getelementptr inbounds nuw i8, ptr %storemerge.i1.i73, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !87
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.011.033.i69, i64 4
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !294
  %i.fm = icmp eq ptr %.sroa.011.033.i69, %i.ez
  br i1 %i.fm, label %bb.ae, label %bb.af, !prof !196

bb.ae:                                            ; preds = %bb.ad
  %i.fn = getelementptr inbounds i8, ptr %.sroa.12.032.i70, i64 -8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !73 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76

bb.af:                                            ; preds = %bb.ad
  %i.fq = getelementptr inbounds i8, ptr %.sroa.011.033.i69, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76: ; preds = %bb.af, %bb.ae
  %i.fr = phi ptr [ %i.fo, %bb.ae ], [ %i.ez, %bb.af ]
  %.sroa.12.2.i77 = phi ptr [ %i.fn, %bb.ae ], [ %.sroa.12.032.i70, %bb.af ]
  %storemerge.i3.i78 = phi ptr [ %i.fp, %bb.ae ], [ %i.fq, %bb.af ] ; 2 uses
  %.not30.i79 = icmp eq ptr %storemerge.i1.i73, %.sroa.0.0.i47
  br i1 %.not30.i79, label %.critedge.i74, label %.lr.ph.i66, !llvm.loop !21121

bb.ag:                                            ; preds = %.critedge.i74, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.020.039.i55, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.el, i64 1024
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.ah, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60, !prof !196

bb.ah:                                            ; preds = %bb.ag
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.14.038.i56, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !73
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60: ; preds = %bb.ah, %bb.ag
  %.sroa.14.2.i61 = phi ptr [ %i.fv, %bb.ah ], [ %.sroa.14.038.i56, %bb.ag ]
  %.sroa.020.2.i62 = phi ptr [ %i.fw, %bb.ah ], [ %i.fs, %bb.ag ] ; 2 uses
  %.not29.i63 = icmp eq ptr %.sroa.020.2.i62, %i.ed
  br i1 %.not29.i63, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80, label %.lr.ph40.i54, !llvm.loop !21122

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50
  br i1 %11, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ai

._crit_edge189:                                   ; preds = %.thread, %bb.bi, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80
  ret void

bb.ai:                                            ; preds = %.lr.ph188, %bb.bi
  %.032186 = phi i64 [ 16, %.lr.ph188 ], [ %i.oa, %bb.bi ] ; 13 uses
  %i.gd = sub i64 %.0.i222231, %.032186
  %i.ge = icmp ugt i64 %i.gd, %.032186            ; 2 uses
  br i1 %i.ge, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gf = shl i64 %.032186, 1                     ; 6 uses
  %i.gg = icmp ugt i64 %.0.i222231, %i.gf
  br i1 %i.gg, label %.lr.ph183, label %._crit_edge184.thread

.lr.ph183:                                        ; preds = %bb.aj
  %.not.i.i91 = icmp eq i64 %.032186, 0
  %.not.i.i101 = icmp eq i64 %i.gf, 0
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph183, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit
  %.0181 = phi i64 [ 0, %.lr.ph183 ], [ %i.kn, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit ] ; 7 uses
  %i.gh = load ptr, ptr %0, align 8, !tbaa !18064, !noalias !22948 ; 8 uses
  %i.gi = load ptr, ptr %10, align 8, !tbaa !18076, !noalias !22948 ; 11 uses
  %.not.i.i81 = icmp eq i64 %.0181, 0             ; 2 uses
  br i1 %.not.i.i81, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit90, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !73, !noalias !22948
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 3
  %i.go = add nsw i64 %i.gn, %.0181               ; 7 uses
  %or.cond.i.i82 = icmp ult i64 %i.go, 128
  br i1 %or.cond.i.i82, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %.0181
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %.0181
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit90

bb.an:                                            ; preds = %bb.al
  %i.gr = icmp sgt i64 %i.go, 0
  %i.gs = lshr i64 %i.go, 7                       ; 2 uses
  %i.gt = or disjoint i64 %i.gs, -144115188075855872
  %i.gu = select i1 %i.gr, i64 %i.gs, i64 %i.gt   ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gu ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !73, !noalias !22948
  %i.gx = shl nsw i64 %i.gu, 7
  %i.gy = sub nsw i64 %i.go, %i.gx
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = icmp sgt i64 %i.go, 0
end_hunk_14
begin_hunk_15_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessENS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b:bb.a
  %vec.ind.next302 = add <4 x i8> %vec.ind299, splat (i8 4)
  %i.fa = icmp eq i64 %index.next301, %n.vec293
  br i1 %i.fa, label %vec.epilog.middle.block303, label %vec.epilog.vector.body297, !llvm.loop !23327

vec.epilog.middle.block303:                       ; preds = %vec.epilog.vector.body297
  %cmp.n304 = icmp eq i64 %i.es, %n.vec293
  br i1 %cmp.n304, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit85, label %.lr.ph.i.i81.preheader

.lr.ph.i.i81.preheader:                           ; preds = %iter.check288, %vec.epilog.iter.check290, %vec.epilog.middle.block303
  %.010.i.i82.ph = phi i64 [ 0, %iter.check288 ], [ %n.vec277, %vec.epilog.iter.check290 ], [ %n.vec293, %vec.epilog.middle.block303 ]
  %.079.i.i83.ph = phi ptr [ %0, %iter.check288 ], [ %i.ev, %vec.epilog.iter.check290 ], [ %i.ey, %vec.epilog.middle.block303 ]
  br label %.lr.ph.i.i81

.lr.ph.i.i81:                                     ; preds = %.lr.ph.i.i81.preheader, %.lr.ph.i.i81
  %.010.i.i82 = phi i64 [ %i.fd, %.lr.ph.i.i81 ], [ %.010.i.i82.ph, %.lr.ph.i.i81.preheader ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.fc, %.lr.ph.i.i81 ], [ %.079.i.i83.ph, %.lr.ph.i.i81.preheader ] ; 2 uses
  %i.fb = trunc i64 %.010.i.i82 to i8
  store i8 %i.fb, ptr %.079.i.i83, align 1, !tbaa !35
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 1
  %i.fd = add nuw i64 %.010.i.i82, 1              ; 2 uses
  %.not.i.i84 = icmp eq i64 %i.fd, %i.es
  br i1 %.not.i.i84, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit85, label %.lr.ph.i.i81, !llvm.loop !23328

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit85: ; preds = %.lr.ph.i.i81, %middle.block285, %vec.epilog.middle.block303, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %i.es ; 2 uses
  %i.ff = mul i64 %i.es, %4
  %i.fg = add i64 %i.ff, %i.ep                    ; 3 uses
  %.not.i.i.i86 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i86, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit85
  %i.fh = load ptr, ptr %.sroa.17.2164.ph, align 8, !tbaa !73, !noalias !23329
  %i.fi = ptrtoint ptr %.sroa.0127.2163 to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3
  %i.fm = add nsw i64 %i.fl, %i.fg                ; 4 uses
  %or.cond.i.i.i87 = icmp ult i64 %i.fm, 128
  br i1 %or.cond.i.i.i87, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds [8 x i8], ptr %.sroa.0127.2163, i64 %i.fg
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i

bb.q:                                             ; preds = %bb.o
  %i.fo = icmp sgt i64 %i.fm, 0
  %i.fp = lshr i64 %i.fm, 7                       ; 2 uses
  %i.fq = or disjoint i64 %i.fp, -144115188075855872
  %i.fr = select i1 %i.fo, i64 %i.fp, i64 %i.fq   ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.17.2164.ph, i64 %i.fr ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !73, !noalias !23329
  %i.fu = shl nsw i64 %i.fr, 7
  %i.fv = sub nsw i64 %i.fm, %i.fu
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fv
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i: ; preds = %bb.q, %bb.p, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit85
  %.sroa.6.1.i.i = phi ptr [ %.sroa.17.2164.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit85 ], [ %.sroa.17.2164.ph, %bb.p ], [ %i.fs, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0127.2163, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit85 ], [ %i.fn, %bb.p ], [ %i.fw, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %9, align 8, !tbaa !2644
  store ptr %.sroa.0.0.i.i, ptr %10, align 8, !tbaa !18064, !alias.scope !23332
  store ptr %.sroa.6.1.i.i, ptr %i.ej, align 8, !tbaa !18076, !alias.scope !23332
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.s:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %11, align 8, !tbaa !2644
  store ptr %.sroa.0.0.i.i, ptr %12, align 8, !tbaa !18064, !alias.scope !23335
  store ptr %.sroa.6.1.i.i, ptr %i.ei, align 8, !tbaa !18076, !alias.scope !23335
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.el, 0
  br i1 %.not65, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = load ptr, ptr %.sroa.17.2164.ph, align 8, !tbaa !73
  %i.fy = ptrtoint ptr %.sroa.0127.2163 to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 3
  %i.gc = sub nsw i64 %i.gb, %i.a                 ; 4 uses
  %or.cond.i.i91 = icmp ult i64 %i.gc, 128
  br i1 %or.cond.i.i91, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds [8 x i8], ptr %.sroa.0127.2163, i64 %i.ek
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit, !llvm.loop !23338

bb.w:                                             ; preds = %bb.u
  %i.ge = icmp sgt i64 %i.gc, 0
  %i.gf = lshr i64 %i.gc, 7                       ; 2 uses
  %i.gg = or disjoint i64 %i.gf, -144115188075855872
  %i.gh = select i1 %i.ge, i64 %i.gf, i64 %i.gg   ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %.sroa.17.2164.ph, i64 %i.gh ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !73
  %i.gk = shl nsw i64 %i.gh, 7
  %i.gl = sub nsw i64 %i.gc, %i.gk
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gl
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.outer, !llvm.loop !23338

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, %bb.t, %.preheader, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b(ptr noundef %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.213", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.213", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = shl i64 %3, 1                            ; 15 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 4 uses
  %i.c = udiv i64 %2, %i.a                        ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !18064  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18076 ; 7 uses
  %i.g = zext i1 %.not.i to i64
  %i.h = add nuw i64 %i.c, %i.g                   ; 7 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not61160 = icmp eq i64 %i.h, 0
  br i1 %.not61160, label %.loopexit, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph: ; preds = %.preheader
  %i.i = urem i64 %3, %4                          ; 6 uses
  %i.j = udiv i64 %3, %4                          ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  br i1 %5, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.outer

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph
  br i1 %6, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us.outer, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.outer

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us.outer: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us, %bb.c
  %.059163.us.us.ph = phi i64 [ %i.af, %bb.c ], [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  %.sroa.17.0162.us.us.ph = phi ptr [ %i.aq, %bb.c ], [ %i.f, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ] ; 3 uses
  %.sroa.0129.0161.us.us.ph = phi ptr [ %i.au, %bb.c ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us.outer, %bb.d
  %.059163.us.us = phi i64 [ %i.af, %bb.d ], [ %.059163.us.us.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us.outer ] ; 2 uses
  %.sroa.0129.0161.us.us = phi ptr [ %i.av, %bb.d ], [ %.sroa.0129.0161.us.us.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us.outer ] ; 3 uses
  %i.n = icmp eq i64 %.059163.us.us, %i.c
  %i.o = select i1 %i.n, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.p = sub i64 %i.o, %i.i
  %i.q = urem i64 %i.p, %4                        ; 2 uses
  %i.r = add i64 %i.i, %i.q
  %i.s = sub i64 %i.o, %i.r
  %i.t = udiv i64 %i.s, %4                        ; 4 uses
  %i.u = sub i64 %i.t, %i.j
  %i.v = shl i64 %i.t, 3
  %i.w = ashr exact i64 %i.v, 3                   ; 3 uses
  %.mask.i.us.us = and i64 %i.t, 2305843009213693951
  %.not8.i.i.us.us = icmp eq i64 %.mask.i.us.us, 0
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

.lr.ph.i.i.us.us.preheader:                       ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us
  %min.iters.check214 = icmp ult i64 %i.w, 4
  br i1 %min.iters.check214, label %.lr.ph.i.i.us.us.preheader246, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph.i.i.us.us.preheader
  %i.x = and i64 %i.t, 3                          ; 2 uses
  %n.vec216 = sub nuw nsw i64 %i.w, %i.x          ; 3 uses
  %i.y = shl i64 %n.vec216, 3
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next222, %vector.body217 ] ; 2 uses
  %vec.ind219 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph215 ], [ %vec.ind.next223, %vector.body217 ] ; 3 uses
  %step.add220 = add nuw <2 x i64> %vec.ind219, splat (i64 2)
  %i.aa = shl i64 %index218, 3
  %next.gep221 = getelementptr i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep221, i64 16
  store <2 x i64> %vec.ind219, ptr %next.gep221, align 8, !tbaa !708
  store <2 x i64> %step.add220, ptr %i.ab, align 8, !tbaa !708
  %index.next222 = add nuw i64 %index218, 4       ; 2 uses
  %vec.ind.next223 = add nuw <2 x i64> %vec.ind219, splat (i64 4)
  %i.ac = icmp eq i64 %index.next222, %n.vec216
  br i1 %i.ac, label %middle.block224, label %vector.body217, !llvm.loop !23339

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.x, 0
  br i1 %cmp.n225, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader246

.lr.ph.i.i.us.us.preheader246:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block224
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec216, %middle.block224 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.z, %middle.block224 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader246, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.ae, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader246 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.ad, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader246 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !708
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.ae = add nuw i64 %.010.i.i.us.us, 1          ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.ae, %i.w
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !23340

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block224, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0129.0161.us.us, ptr %13, align 8, !tbaa !18064
  store ptr %.sroa.17.0162.us.us.ph, ptr %i.m, align 8, !tbaa !18076
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %4, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.u, i64 noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.af = add nuw i64 %.059163.us.us, 1           ; 3 uses
  %.not62.us.us = icmp eq i64 %i.af, %i.h
  br i1 %.not62.us.us, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us
  %i.ag = load ptr, ptr %.sroa.17.0162.us.us.ph, align 8, !tbaa !73
  %i.ah = ptrtoint ptr %.sroa.0129.0161.us.us to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = add nsw i64 %i.ak, %i.a                 ; 4 uses
  %or.cond.i.us.us = icmp ult i64 %i.al, 128
  br i1 %or.cond.i.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = icmp sgt i64 %i.al, 0
  %i.an = lshr i64 %i.al, 7                       ; 2 uses
  %i.ao = or disjoint i64 %i.an, -144115188075855872
  %i.ap = select i1 %i.am, i64 %i.an, i64 %i.ao   ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sroa.17.0162.us.us.ph, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.as = shl nsw i64 %i.ap, 7
  %i.at = sub nsw i64 %i.al, %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.at
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us.outer

bb.d:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds [8 x i8], ptr %.sroa.0129.0161.us.us, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.us

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.outer, %bb.g
  %.059163.us = phi i64 [ %i.bo, %bb.g ], [ %.059163.us.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.outer ] ; 2 uses
  %.sroa.0129.0161.us = phi ptr [ %i.ce, %bb.g ], [ %.sroa.0129.0161.us.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.outer ] ; 3 uses
  %i.aw = icmp eq i64 %.059163.us, %i.c
  %i.ax = select i1 %i.aw, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ay = sub i64 %i.ax, %i.i
  %i.az = urem i64 %i.ay, %4                      ; 2 uses
  %i.ba = add i64 %i.i, %i.az
  %i.bb = sub i64 %i.ax, %i.ba
  %i.bc = udiv i64 %i.bb, %4                      ; 4 uses
  %i.bd = sub i64 %i.bc, %i.j
  %i.be = shl i64 %i.bc, 3
  %i.bf = ashr exact i64 %i.be, 3                 ; 3 uses
  %.mask.i.us = and i64 %i.bc, 2305843009213693951
  %.not8.i.i.us = icmp eq i64 %.mask.i.us, 0
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us
  %min.iters.check199 = icmp ult i64 %i.bf, 4
  br i1 %min.iters.check199, label %.lr.ph.i.i.us.preheader250, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i.i.us.preheader
  %i.bg = and i64 %i.bc, 3                        ; 2 uses
  %n.vec201 = sub nuw nsw i64 %i.bf, %i.bg        ; 3 uses
  %i.bh = shl i64 %n.vec201, 3
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next207, %vector.body202 ] ; 2 uses
  %vec.ind204 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph200 ], [ %vec.ind.next208, %vector.body202 ] ; 3 uses
  %step.add205 = add nuw <2 x i64> %vec.ind204, splat (i64 2)
  %i.bj = shl i64 %index203, 3
  %next.gep206 = getelementptr i8, ptr %0, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep206, i64 16
  store <2 x i64> %vec.ind204, ptr %next.gep206, align 8, !tbaa !708
  store <2 x i64> %step.add205, ptr %i.bk, align 8, !tbaa !708
  %index.next207 = add nuw i64 %index203, 4       ; 2 uses
  %vec.ind.next208 = add nuw <2 x i64> %vec.ind204, splat (i64 4)
  %i.bl = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.bl, label %middle.block209, label %vector.body202, !llvm.loop !23341

middle.block209:                                  ; preds = %vector.body202
  %cmp.n210 = icmp eq i64 %i.bg, 0
  br i1 %cmp.n210, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, label %.lr.ph.i.i.us.preheader250

.lr.ph.i.i.us.preheader250:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block209
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec201, %middle.block209 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.bi, %middle.block209 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader250, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.bn, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader250 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.bm, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader250 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !708
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.bn = add nuw i64 %.010.i.i.us, 1             ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.bn, %i.bf
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !23342

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block209, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0129.0161.us, ptr %14, align 8, !tbaa !18064
  store ptr %.sroa.17.0162.us.ph, ptr %i.l, align 8, !tbaa !18076
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %4, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.bd, i64 noundef %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bo = add nuw i64 %.059163.us, 1              ; 3 uses
  %.not62.us = icmp eq i64 %i.bo, %i.h
  br i1 %.not62.us, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us
  %i.bp = load ptr, ptr %.sroa.17.0162.us.ph, align 8, !tbaa !73
  %i.bq = ptrtoint ptr %.sroa.0129.0161.us to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = add nsw i64 %i.bt, %i.a                 ; 4 uses
  %or.cond.i.us = icmp ult i64 %i.bu, 128
  br i1 %or.cond.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = icmp sgt i64 %i.bu, 0
  %i.bw = lshr i64 %i.bu, 7                       ; 2 uses
  %i.bx = or disjoint i64 %i.bw, -144115188075855872
  %i.by = select i1 %i.bv, i64 %i.bw, i64 %i.bx   ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.sroa.17.0162.us.ph, i64 %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !73
  %i.cb = shl nsw i64 %i.by, 7
  %i.cc = sub nsw i64 %i.bu, %i.cb
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cc
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.outer

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us.outer: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us, %bb.f
  %.059163.us.ph = phi i64 [ %i.bo, %bb.f ], [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  %.sroa.17.0162.us.ph = phi ptr [ %i.bz, %bb.f ], [ %i.f, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ] ; 3 uses
  %.sroa.0129.0161.us.ph = phi ptr [ %i.cd, %bb.f ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us

bb.g:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds [8 x i8], ptr %.sroa.0129.0161.us, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.us

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.outer, %bb.i
  %.059163 = phi i64 [ %i.cx, %bb.i ], [ %.059163.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.outer ] ; 2 uses
  %.sroa.0129.0161 = phi ptr [ %i.de, %bb.i ], [ %.sroa.0129.0161.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.outer ] ; 3 uses
  %i.cf = icmp eq i64 %.059163, %i.c
  %i.cg = select i1 %i.cf, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ch = sub i64 %i.cg, %i.i
  %i.ci = urem i64 %i.ch, %4                      ; 2 uses
  %i.cj = add i64 %i.i, %i.ci
  %i.ck = sub i64 %i.cg, %i.cj
  %i.cl = udiv i64 %i.ck, %4                      ; 4 uses
  %i.cm = sub i64 %i.cl, %i.j
  %i.cn = shl i64 %i.cl, 3
  %i.co = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.mask.i = and i64 %i.cl, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader254, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.cp = and i64 %i.cl, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.co, %i.cp           ; 3 uses
  %i.cq = shl i64 %n.vec, 3
  %i.cr = getelementptr i8, ptr %0, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cs = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !708
  store <2 x i64> %step.add, ptr %i.ct, align 8, !tbaa !708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !23343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, label %.lr.ph.i.i.preheader254

.lr.ph.i.i.preheader254:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader254, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.cw, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader254 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader254 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !708
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.cw = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.cw, %i.co
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, label %.lr.ph.i.i, !llvm.loop !23344

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit
  store ptr %.sroa.0129.0161, ptr %15, align 8, !tbaa !18064
  store ptr %.sroa.17.0162.ph, ptr %i.k, align 8, !tbaa !18076
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %4, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.cm, i64 noundef %i.ci)
  %i.cx = add nuw i64 %.059163, 1                 ; 3 uses
  %.not62 = icmp eq i64 %i.cx, %i.h
  br i1 %.not62, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit
  %i.cy = load ptr, ptr %.sroa.17.0162.ph, align 8, !tbaa !73
  %i.cz = ptrtoint ptr %.sroa.0129.0161 to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  %i.dd = add nsw i64 %i.dc, %i.a                 ; 4 uses
  %or.cond.i = icmp ult i64 %i.dd, 128
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds [8 x i8], ptr %.sroa.0129.0161, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit

bb.j:                                             ; preds = %bb.h
  %i.df = icmp sgt i64 %i.dd, 0
  %i.dg = lshr i64 %i.dd, 7                       ; 2 uses
  %i.dh = or disjoint i64 %i.dg, -144115188075855872
  %i.di = select i1 %i.df, i64 %i.dg, i64 %i.dh   ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %.sroa.17.0162.ph, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !73
  %i.dl = shl nsw i64 %i.di, 7
  %i.dm = sub nsw i64 %i.dd, %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dm
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.outer

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.outer: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph, %bb.j
  %.059163.ph = phi i64 [ %i.cx, %bb.j ], [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph ]
  %.sroa.17.0162.ph = phi ptr [ %i.dj, %bb.j ], [ %i.f, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph ] ; 3 uses
  %.sroa.0129.0161.ph = phi ptr [ %i.dn, %bb.j ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.lr.ph ]
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit

bb.k:                                             ; preds = %bb.a
  %i.do = add i64 %i.h, -1
  %i.dp = mul i64 %i.do, %i.a                     ; 3 uses
  %.not.i68 = icmp eq i64 %i.dp, 0
  br i1 %.not.i68, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit71, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.dr = ptrtoint ptr %i.d to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = add nsw i64 %i.du, %i.dp                ; 4 uses
  %or.cond.i69 = icmp ult i64 %i.dv, 128
  br i1 %or.cond.i69, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dp
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit71

bb.n:                                             ; preds = %bb.l
  %i.dx = icmp sgt i64 %i.dv, 0
  %i.dy = lshr i64 %i.dv, 7                       ; 2 uses
  %i.dz = or disjoint i64 %i.dy, -144115188075855872
  %i.ea = select i1 %i.dx, i64 %i.dy, i64 %i.dz   ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ea ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !73
  %i.ed = shl nsw i64 %i.ea, 7
  %i.ee = sub nsw i64 %i.dv, %i.ed
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ee
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit71

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit71: ; preds = %bb.m, %bb.n, %bb.k
  %.sroa.0129.5 = phi ptr [ %i.d, %bb.k ], [ %i.ef, %bb.n ], [ %i.dw, %bb.m ]
  %.sroa.17.7 = phi ptr [ %i.f, %bb.k ], [ %i.eb, %bb.n ], [ %i.f, %bb.m ]
  %.not63164 = icmp eq i64 %i.h, 0
  br i1 %.not63164, label %.loopexit, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.lr.ph

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.lr.ph: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit71
  %i.eg = urem i64 %3, %4                         ; 2 uses
  %i.eh = udiv i64 %3, %4                         ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ek = sub nsw i64 0, %i.a
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.outer

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.outer: ; preds = %bb.w, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.lr.ph
  %.0167.ph = phi i64 [ %i.el, %bb.w ], [ %i.h, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.lr.ph ]
  %.sroa.17.2166.ph = phi ptr [ %i.gi, %bb.w ], [ %.sroa.17.7, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.lr.ph ] ; 6 uses
  %.sroa.0129.2165.ph = phi ptr [ %i.gm, %bb.w ], [ %.sroa.0129.5, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.lr.ph ]
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.outer, %bb.v
  %.0167 = phi i64 [ %i.el, %bb.v ], [ %.0167.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.outer ]
  %.sroa.0129.2165 = phi ptr [ %i.gd, %bb.v ], [ %.sroa.0129.2165.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.outer ] ; 5 uses
  %i.el = add i64 %.0167, -1                      ; 4 uses
  %i.em = icmp eq i64 %i.el, %i.c
  %i.en = select i1 %i.em, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.eo = sub i64 %i.en, %i.eg
  %i.ep = urem i64 %i.eo, %4                      ; 4 uses
  %i.eq = add i64 %i.eg, %i.ep
  %i.er = sub i64 %i.en, %i.eq
  %i.es = udiv i64 %i.er, %4                      ; 6 uses
  %i.et = sub i64 %i.es, %i.eh                    ; 2 uses
  %i.eu = shl i64 %i.es, 3
  %i.ev = ashr exact i64 %i.eu, 3                 ; 3 uses
  %.mask.i81 = and i64 %i.es, 2305843009213693951
  %.not8.i.i82 = icmp eq i64 %.mask.i81, 0
  br i1 %.not8.i.i82, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit87, label %.lr.ph.i.i83.preheader

.lr.ph.i.i83.preheader:                           ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit
  %min.iters.check229 = icmp ult i64 %i.ev, 4
  br i1 %min.iters.check229, label %.lr.ph.i.i83.preheader243, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i83.preheader
  %i.ew = and i64 %i.es, 3                        ; 2 uses
  %n.vec231 = sub nuw nsw i64 %i.ev, %i.ew        ; 3 uses
  %i.ex = shl i64 %n.vec231, 3
  %i.ey = getelementptr i8, ptr %0, i64 %i.ex
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next237, %vector.body232 ] ; 2 uses
  %vec.ind234 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph230 ], [ %vec.ind.next238, %vector.body232 ] ; 3 uses
  %step.add235 = add nuw <2 x i64> %vec.ind234, splat (i64 2)
  %i.ez = shl i64 %index233, 3
  %next.gep236 = getelementptr i8, ptr %0, i64 %i.ez ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep236, i64 16
  store <2 x i64> %vec.ind234, ptr %next.gep236, align 8, !tbaa !708
  store <2 x i64> %step.add235, ptr %i.fa, align 8, !tbaa !708
  %index.next237 = add nuw i64 %index233, 4       ; 2 uses
  %vec.ind.next238 = add nuw <2 x i64> %vec.ind234, splat (i64 4)
  %i.fb = icmp eq i64 %index.next237, %n.vec231
  br i1 %i.fb, label %middle.block239, label %vector.body232, !llvm.loop !23345

middle.block239:                                  ; preds = %vector.body232
  %cmp.n240 = icmp eq i64 %i.ew, 0
  br i1 %cmp.n240, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit87, label %.lr.ph.i.i83.preheader243

.lr.ph.i.i83.preheader243:                        ; preds = %.lr.ph.i.i83.preheader, %middle.block239
  %.010.i.i84.ph = phi i64 [ 0, %.lr.ph.i.i83.preheader ], [ %n.vec231, %middle.block239 ]
  %.079.i.i85.ph = phi ptr [ %0, %.lr.ph.i.i83.preheader ], [ %i.ey, %middle.block239 ]
  br label %.lr.ph.i.i83

.lr.ph.i.i83:                                     ; preds = %.lr.ph.i.i83.preheader243, %.lr.ph.i.i83
  %.010.i.i84 = phi i64 [ %i.fd, %.lr.ph.i.i83 ], [ %.010.i.i84.ph, %.lr.ph.i.i83.preheader243 ] ; 2 uses
  %.079.i.i85 = phi ptr [ %i.fc, %.lr.ph.i.i83 ], [ %.079.i.i85.ph, %.lr.ph.i.i83.preheader243 ] ; 2 uses
  store i64 %.010.i.i84, ptr %.079.i.i85, align 8, !tbaa !708
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i85, i64 8
  %i.fd = add nuw i64 %.010.i.i84, 1              ; 2 uses
  %.not.i.i86 = icmp eq i64 %i.fd, %i.ev
  br i1 %.not.i.i86, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit87, label %.lr.ph.i.i83, !llvm.loop !23346

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit87: ; preds = %.lr.ph.i.i83, %middle.block239, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.es ; 2 uses
  %i.ff = mul i64 %i.es, %4
  %i.fg = add i64 %i.ff, %i.ep                    ; 3 uses
  %.not.i.i.i88 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i88, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit87
  %i.fh = load ptr, ptr %.sroa.17.2166.ph, align 8, !tbaa !73, !noalias !23347
  %i.fi = ptrtoint ptr %.sroa.0129.2165 to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3
  %i.fm = add nsw i64 %i.fl, %i.fg                ; 4 uses
  %or.cond.i.i.i89 = icmp ult i64 %i.fm, 128
  br i1 %or.cond.i.i.i89, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds [8 x i8], ptr %.sroa.0129.2165, i64 %i.fg
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i

bb.q:                                             ; preds = %bb.o
  %i.fo = icmp sgt i64 %i.fm, 0
  %i.fp = lshr i64 %i.fm, 7                       ; 2 uses
  %i.fq = or disjoint i64 %i.fp, -144115188075855872
  %i.fr = select i1 %i.fo, i64 %i.fp, i64 %i.fq   ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.17.2166.ph, i64 %i.fr ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !73, !noalias !23347
  %i.fu = shl nsw i64 %i.fr, 7
  %i.fv = sub nsw i64 %i.fm, %i.fu
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fv
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i: ; preds = %bb.q, %bb.p, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit87
  %.sroa.6.1.i.i = phi ptr [ %.sroa.17.2166.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit87 ], [ %.sroa.17.2166.ph, %bb.p ], [ %i.fs, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0129.2165, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit87 ], [ %i.fn, %bb.p ], [ %i.fw, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %9, align 8, !tbaa !2219
  store ptr %.sroa.0.0.i.i, ptr %10, align 8, !tbaa !18064, !alias.scope !23350
  store ptr %.sroa.6.1.i.i, ptr %i.ej, align 8, !tbaa !18076, !alias.scope !23350
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.s:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %11, align 8, !tbaa !2219
  store ptr %.sroa.0.0.i.i, ptr %12, align 8, !tbaa !18064, !alias.scope !23353
  store ptr %.sroa.6.1.i.i, ptr %i.ei, align 8, !tbaa !18076, !alias.scope !23353
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiESC_NSG_9select1stIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.el, 0
  br i1 %.not65, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = load ptr, ptr %.sroa.17.2166.ph, align 8, !tbaa !73
  %i.fy = ptrtoint ptr %.sroa.0129.2165 to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 3
  %i.gc = sub nsw i64 %i.gb, %i.a                 ; 4 uses
  %or.cond.i.i93 = icmp ult i64 %i.gc, 128
  br i1 %or.cond.i.i93, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds [8 x i8], ptr %.sroa.0129.2165, i64 %i.ek
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit, !llvm.loop !23356

bb.w:                                             ; preds = %bb.u
  %i.ge = icmp sgt i64 %i.gc, 0
  %i.gf = lshr i64 %i.gc, 7                       ; 2 uses
  %i.gg = or disjoint i64 %i.gf, -144115188075855872
  %i.gh = select i1 %i.ge, i64 %i.gf, i64 %i.gg   ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %.sroa.17.2166.ph, i64 %i.gh ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !73
  %i.gk = shl nsw i64 %i.gh, 7
  %i.gl = sub nsw i64 %i.gc, %i.gk
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gl
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit.outer, !llvm.loop !23356

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, %bb.t, %.preheader, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEmNS0_10range_xbufIS8_mNS0_7move_opEEEEEvT_T0_T1_SL_SL_RT2_RSL_SO_SO_SO_b(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext %9) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.std::pair.16", align 8    ; 4 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %i.a = urem i64 %2, %3                          ; 2 uses
  store i64 %i.a, ptr %7, align 8, !tbaa !708
  %i.b = sub i64 %1, %i.a
  %i.c = urem i64 %i.b, %3                        ; 2 uses
  store i64 %i.c, ptr %8, align 8, !tbaa !708
  %i.d = load i64, ptr %7, align 8, !tbaa !708
  %i.e = add i64 %i.c, %i.d
  %i.f = sub i64 %1, %i.e
  %i.g = udiv i64 %i.f, %3
  %i.h = udiv i64 %2, %3                          ; 2 uses
  store i64 %i.h, ptr %5, align 8, !tbaa !708
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  store i64 %i.i, ptr %6, align 8, !tbaa !708
  br i1 %9, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !18064  ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18076 ; 8 uses
  %i.m = load i64, ptr %5, align 8, !tbaa !708
  %i.n = add i64 %i.m, %i.i                       ; 3 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !73, !noalias !23357
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = add nsw i64 %i.s, %i.n                   ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.t, 128
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.n
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp sgt i64 %i.t, 0
  %i.w = lshr i64 %i.t, 7                         ; 2 uses
  %i.x = or disjoint i64 %i.w, -144115188075855872
  %i.y = select i1 %i.v, i64 %i.w, i64 %i.x       ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73, !noalias !23357
  %i.ab = shl nsw i64 %i.y, 7
  %i.ac = sub nsw i64 %i.t, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ac
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.6.1.i = phi ptr [ %i.l, %bb.b ], [ %i.l, %bb.d ], [ %i.z, %bb.e ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.b ], [ %i.u, %bb.d ], [ %i.ad, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.j, ptr %12, align 8, !tbaa !18064
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.l, ptr %i.ae, align 8, !tbaa !18076
  store ptr %.sroa.0.0.i, ptr %13, align 8, !tbaa !18064
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.6.1.i, ptr %i.af, align 8, !tbaa !18076
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEE9make_heapES7_S7_SE_(ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.ag = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %i.ag, label %_ZN5boost7movelib15detail_adaptive15initialize_keysINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_10range_xbufIS8_mNS0_7move_opEEEEEvT_SJ_T0_RT1_.exit, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i.i.i

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i.i.i: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit
  %i.ah = ptrtoint ptr %.sroa.6.1.i to i64
  %i.ai = ptrtoint ptr %i.l to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = shl nsw i64 %i.aj, 4
  %i.al = load ptr, ptr %.sroa.6.1.i, align 8, !tbaa !73
  %i.am = ptrtoint ptr %.sroa.0.0.i to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = add nsw i64 %i.ap, %i.ak
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.as = ptrtoint ptr %i.j to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub i64 %i.aq, %i.av                    ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %_ZN5boost7movelib15detail_adaptive15initialize_keysINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_10range_xbufIS8_mNS0_7move_opEEEEEvT_SJ_T0_RT1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.4.0.i.i.i.i = phi ptr [ %.sroa.6.1.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i.i ] ; 2 uses
  %.02.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.bk, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i.i.i ]
  %i.ba = load ptr, ptr %.sroa.4.0.i.i.i.i, align 8, !tbaa !73
end_hunk_15
begin_hunk_16_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_SK_SK_T0_RT1_:bb.a
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !18064  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18076 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18076 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !73
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1562 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18076
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18076
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18076
  %i.bc = load ptr, ptr %3, align 8, !tbaa !3395, !nonnull !197
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.b, ptr %5, align 8, !tbaa !18064
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ax, ptr %i.bd, align 8, !tbaa !18076
  store ptr %i.a, ptr %6, align 8, !tbaa !18064
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.az, ptr %i.be, align 8, !tbaa !18076
  store ptr %i.x, ptr %7, align 8, !tbaa !18064
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !18076
  store ptr %i.bc, ptr %8, align 8, !tbaa !2072
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1561
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread
  store i64 0, ptr %i.bg, align 8, !tbaa !1561
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6
  store ptr %i.b, ptr %9, align 8, !tbaa !18064
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !18076
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !18076
  store ptr %i.a, ptr %10, align 8, !tbaa !18064
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18076
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !18076
  store ptr %i.x, ptr %11, align 8, !tbaa !18064
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !18076
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !18076
  %i.br = load ptr, ptr %3, align 8, !tbaa !3395, !nonnull !197
  store ptr %i.br, ptr %12, align 8, !tbaa !2072
  %i.bs = load ptr, ptr %4, align 8, !tbaa !1559
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEES6_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef %i.bs, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEES6_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18064  ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18064  ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !18064  ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18076 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18076 ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18076 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i64, ptr %i.a, align 4             ; 4 uses
  store i64 %i.al, ptr %4, align 4
  %.not8.i = icmp eq i64 %5, 1
  %i.am = trunc i64 %i.al to i32
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.an = add i64 %5, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %5, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.an, -4                      ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 4
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !27152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i.preheader27

.lr.ph.i.preheader27:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.8.0.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader27, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %.sroa.8.0.ph, %.lr.ph.i.preheader27 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.8.0
  store i64 %i.al, ptr %i.at, align 4
  %storemerge.i = add nuw i64 %.sroa.8.0, 1       ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, label %.lr.ph.i, !llvm.loop !27153

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ], [ %.sroa.8.0, %.lr.ph.i ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i
  store i32 %i.am, ptr %i.a, align 4, !tbaa !292
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !294
  %i.ay = load <2 x ptr>, ptr %0, align 8, !tbaa !19063
  store <2 x ptr> %i.ay, ptr %10, align 16, !tbaa !19063
  %i.az = load <2 x ptr>, ptr %1, align 8, !tbaa !19063
  store <2 x ptr> %i.az, ptr %11, align 16, !tbaa !19063
  %i.ba = load <2 x ptr>, ptr %2, align 8, !tbaa !19063
  store <2 x ptr> %i.ba, ptr %12, align 16, !tbaa !19063
  %i.bb = load ptr, ptr %3, align 8, !tbaa !3395, !nonnull !197
  store ptr %i.bb, ptr %13, align 8, !tbaa !2072
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES6_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.e

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_T0_.exit: ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18076 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !18076 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !18076 ; 3 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !3395, !nonnull !197
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !18064
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bd, ptr %i.bj, align 8, !tbaa !18076
  store ptr %i.b, ptr %7, align 8, !tbaa !18064
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !18076
  store ptr %i.d, ptr %8, align 8, !tbaa !18064
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !18076
  %i.bm = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bd to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = shl nsw i64 %i.bo, 4
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !73
  %i.br = ptrtoint ptr %i.b to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  %i.bv = add nsw i64 %i.bu, %i.bp
  %i.bw = load ptr, ptr %i.bd, align 8, !tbaa !73
  %i.bx = ptrtoint ptr %i.a to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3
  %i.cb = sub i64 %i.bv, %i.ca
  %i.cc = ptrtoint ptr %i.bh to i64
  %i.cd = sub i64 %i.cc, %i.bm
  %i.ce = shl nsw i64 %i.cd, 4
  %i.cf = load ptr, ptr %i.bh, align 8, !tbaa !73
  %i.cg = ptrtoint ptr %i.d to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3
  %i.ck = add nsw i64 %i.cj, %i.ce
  %i.cl = sub i64 %i.ck, %i.bu
  store ptr %i.bi, ptr %9, align 8, !tbaa !2072
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.cb, i64 noundef %i.cl, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit, %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEEvT_SH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18064  ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18064  ; 8 uses
  %.not85 = icmp eq ptr %i.a, %i.b
  br i1 %.not85, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_14deque_iteratorISE_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !18064  ; 2 uses
  %.not86 = icmp eq ptr %i.b, %i.c
  br i1 %.not86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_14deque_iteratorISE_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18076 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 5 uses
  %i.k = add nsw i64 %i.j, -1                     ; 5 uses
  %or.cond.i = icmp ult i64 %i.k, 128             ; 2 uses
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -8
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %i.j, 1
  %i.n = lshr i64 %i.k, 7                         ; 2 uses
  %i.o = or disjoint i64 %i.n, -144115188075855872
  %i.p = select i1 %i.m, i64 %i.n, i64 %i.o       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = shl nsw i64 %i.p, 7
  %i.t = sub nsw i64 %i.k, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.u, %bb.e ]
  %i.v = load i32, ptr %.0.i, align 4, !tbaa !87
  %i.w = load i32, ptr %i.b, align 4, !tbaa !87   ; 2 uses
  %.not87 = icmp slt i32 %i.v, %i.w
  br i1 %.not87, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_NS3_14deque_iteratorISE_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18076 ; 4 uses
  %i.z = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl nsw i64 %i.ab, 4
  %i.ad = add nsw i64 %i.ac, %i.j
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !73  ; 2 uses
  %i.af = ptrtoint ptr %i.a to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub i64 %i.ad, %i.ai                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18076 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.z
  %i.ao = shl nsw i64 %i.an, 4
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.aq = ptrtoint ptr %i.c to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  %i.au = sub i64 %i.ao, %i.j
  %i.av = add i64 %i.au, %i.at                    ; 3 uses
  %i.aw = icmp ugt i64 %i.aj, %i.av
  br i1 %i.aw, label %bb.s, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  %.not13.i = icmp eq i64 %i.aj, 0
  br i1 %.not13.i, label %_ZN5boost7movelib11upper_boundINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS9_9select1stIiEEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i, %bb.k
  %i.ax = phi ptr [ %i.bx, %bb.k ], [ %i.ae, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i ] ; 2 uses
  %.sroa.11.219.i = phi ptr [ %.sroa.11.218.i, %bb.k ], [ %i.y, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i ] ; 4 uses
  %.sroa.0.116.i = phi ptr [ %.sroa.0.115.i, %bb.k ], [ %i.a, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i ] ; 4 uses
  %.014.i = phi i64 [ %.1.i, %bb.k ], [ %i.aj, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit.i ] ; 2 uses
  %i.ay = lshr i64 %.014.i, 1                     ; 5 uses
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.az = ptrtoint ptr %.sroa.0.116.i to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = add nsw i64 %i.bc, %i.ay                ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.bd, 128
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.116.i, i64 %i.ay
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bf = icmp sgt i64 %i.bd, 0
  %i.bg = lshr i64 %i.bd, 7                       ; 2 uses
  %i.bh = or disjoint i64 %i.bg, -144115188075855872
  %i.bi = select i1 %i.bf, i64 %i.bg, i64 %i.bh   ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %.sroa.11.219.i, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !73, !noalias !27154
  %i.bl = shl nsw i64 %i.bi, 7
  %i.bm = sub nsw i64 %i.bd, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bm
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit.i: ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.116.i, %.lr.ph.i ], [ %i.bn, %bb.h ], [ %i.be, %bb.g ] ; 2 uses
end_hunk_16
