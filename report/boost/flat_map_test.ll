Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_test?download=true
inline.NumInlined: 38938
inline.NumDeleted: 5992
loop-unroll.NumCompletelyUnrolled: 303
loop-unroll.NumRuntimeUnrolled: 399
loop-unroll.NumUnrolled: 717
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_:bb.a
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
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1599 ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, %5
  br i1 %i.ar, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.i
  store i64 %5, ptr %i.ap, align 8, !tbaa !1599
  %.pre103 = load ptr, ptr %8, align 8, !tbaa !1598
  br label %bb.k

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit: ; preds = %bb.i
  %i.as = icmp ult i64 %i.aq, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !1598  ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.aq
  %i.au = load i64, ptr %0, align 4
  store i64 %i.au, ptr %i.at, align 4
  %storemerge.in6.i57 = load i64, ptr %i.ap, align 8, !tbaa !1599 ; 3 uses
  %storemerge7.i58 = add i64 %storemerge.in6.i57, 1 ; 3 uses
  store i64 %storemerge7.i58, ptr %i.ap, align 8, !tbaa !1599
  %.not8.i59 = icmp eq i64 %storemerge7.i58, %5
  br i1 %.not8.i59, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.j, %.lr.ph.i60
  %storemerge10.i61 = phi i64 [ %storemerge.i64, %.lr.ph.i60 ], [ %storemerge7.i58, %bb.j ]
  %storemerge.in9.i62 = phi i64 [ %storemerge.in.i63, %.lr.ph.i60 ], [ %storemerge.in6.i57, %bb.j ]
  %i.av = load ptr, ptr %8, align 8, !tbaa !1598  ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %storemerge10.i61
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %storemerge.in9.i62
  %i.ay = load i64, ptr %i.ax, align 4
  store i64 %i.ay, ptr %i.aw, align 4
  %storemerge.in.i63 = load i64, ptr %i.ap, align 8, !tbaa !1599 ; 3 uses
  %storemerge.i64 = add i64 %storemerge.in.i63, 1 ; 3 uses
  store i64 %storemerge.i64, ptr %i.ap, align 8, !tbaa !1599
  %.not.i65 = icmp eq i64 %storemerge.i64, %5
  br i1 %.not.i65, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68, label %.lr.ph.i60, !llvm.loop !1617

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68: ; preds = %.lr.ph.i60, %bb.j
  %storemerge.in.lcssa.i67 = phi i64 [ %storemerge.in6.i57, %bb.j ], [ %storemerge.in.i63, %.lr.ph.i60 ]
  %i.az = load ptr, ptr %8, align 8, !tbaa !1598  ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %storemerge.in.lcssa.i67 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21
  store i32 %i.bb, ptr %0, align 4, !tbaa !274
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !276
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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !1562
  store <2 x i64> %step.add, ptr %i.bz, align 8, !tbaa !1562
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !1618

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
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !1562
  %i.cb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.cc = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.cc, %i.bu
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i, !llvm.loop !1619

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %i.bk, ptr noundef %0, i64 noundef %5, i64 noundef %i.bl, i64 noundef %i.br, i64 noundef %i.bs, i64 noundef %i.bn, ptr noundef %i.bf)
  %i.cd = load i64, ptr %i.ap, align 8, !tbaa !1599
  %.not.i69 = icmp eq i64 %i.cd, 0
  br i1 %.not.i69, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit
  store i64 0, ptr %i.ap, align 8, !tbaa !1599
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 21 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %bb.d, !llvm.loop !1620

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i134.le = ptrtoaddr ptr %.114.i to i64    ; 6 uses
  %i.q = ptrtoint ptr %.114.i to i64
  %i.r = sub i64 %i.e, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1599 ; 3 uses
  %.not.i39 = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre101 = load ptr, ptr %3, align 8, !tbaa !1598 ; 10 uses
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
  %wide.vec = load <4 x i32>, ptr %next.gep139, align 4, !tbaa !21, !alias.scope !1621
  %wide.vec142 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !21, !alias.scope !1621
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !1624, !noalias !1621
  store <4 x i32> %wide.vec142, ptr %next.gep138, align 4, !tbaa !21, !alias.scope !1624, !noalias !1621
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1626

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
  %i.ai = load i32, ptr %.079.i.i, align 4, !tbaa !21
  store i32 %i.ai, ptr %.010.i.i, align 4, !tbaa !274
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !276
  %i.am = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !1627

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.u, 3                     ; 6 uses
  %i.ao = getelementptr i8, ptr %.114.i, i64 %.idx26.i ; 6 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !1598  ; 9 uses
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
  %wide.vec162 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !21, !alias.scope !1628
  %wide.vec165 = load <4 x i32>, ptr %next.gep161, align 4, !tbaa !21, !alias.scope !1628
  store <4 x i32> %wide.vec162, ptr %next.gep158, align 4, !tbaa !21, !alias.scope !1631, !noalias !1628
  store <4 x i32> %wide.vec165, ptr %next.gep159, align 4, !tbaa !21, !alias.scope !1631, !noalias !1628
  %index.next170 = add nuw i64 %index157, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next170, %n.vec155
  br i1 %i.ay, label %middle.block171, label %vector.body156, !llvm.loop !1633

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
  %i.az = load i32, ptr %.079.i20.i, align 4, !tbaa !21
  store i32 %i.az, ptr %.010.i19.i, align 4, !tbaa !274
  %i.ba = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !276
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 8 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.bd, %i.ao
  br i1 %.not.i21.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !1634

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i: ; preds = %.lr.ph.i18.i, %middle.block171, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.ap, %bb.f ], [ %i.au, %middle.block171 ], [ %i.be, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i176 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.r
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.bf = add i64 %i.e, -8
  %i.bg = add i64 %.idx26.i, %.114.i134.le
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check178 = icmp ult i64 %i.bh, 104
  br i1 %min.iters.check178, label %.lr.ph.i24.i.preheader315, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.lr.ph.i24.i.preheader
  %i.bk = add i64 %.idx26.i, %.114.i134.le
  %i.bl = sub i64 %i.bk, %.0.lcssa.i22.i176
  %diff.check = icmp ugt i64 %i.bl, -32
  br i1 %diff.check, label %.lr.ph.i24.i.preheader315, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck175
  %n.vec180 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bm = shl i64 %n.vec180, 3                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ao, i64 %i.bm
  %i.bo = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bm
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body181 ] ; 2 uses
  %i.bp = shl i64 %index182, 3                    ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.ao, i64 %i.bp ; 2 uses
  %next.gep184 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep183, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep183, align 4
  %wide.load185 = load <2 x i64>, ptr %i.bq, align 4
  %i.br = getelementptr i8, ptr %next.gep184, i64 16
  store <2 x i64> %wide.load, ptr %next.gep184, align 4
  store <2 x i64> %wide.load185, ptr %i.br, align 4
  %index.next186 = add nuw i64 %index182, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next186, %n.vec180
  br i1 %i.bs, label %middle.block187, label %vector.body181, !llvm.loop !1635

middle.block187:                                  ; preds = %vector.body181
  %cmp.n188 = icmp eq i64 %i.bj, %n.vec180
  br i1 %cmp.n188, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, label %.lr.ph.i24.i.preheader315

.lr.ph.i24.i.preheader315:                        ; preds = %vector.memcheck175, %.lr.ph.i24.i.preheader, %middle.block187
  %.012.i.i.ph = phi ptr [ %i.ao, %vector.memcheck175 ], [ %i.ao, %.lr.ph.i24.i.preheader ], [ %i.bn, %middle.block187 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck175 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bo, %middle.block187 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader315, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bu, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader315 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bv, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader315 ] ; 2 uses
  %i.bt = load i64, ptr %.012.i.i, align 4
  store i64 %i.bt, ptr %.0911.i.i, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bu, %1
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, label %.lr.ph.i24.i, !llvm.loop !1636

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit: ; preds = %.lr.ph.i24.i, %middle.block187
  %.pre = load ptr, ptr %3, align 8, !tbaa !1598
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, %bb.e, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.bw = phi ptr [ %i.ap, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit ], [ %.pre101, %bb.e ], [ %.pre101, %middle.block ], [ %.pre101, %.lr.ph.i.i ] ; 3 uses
  %i.bx = ptrtoaddr ptr %i.bw to i64              ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !1599
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.r ; 2 uses
  %.not23.i = icmp eq ptr %1, %.114.i
  br i1 %.not23.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 2 uses
  %.026.i = phi ptr [ %.1.i41, %bb.j ], [ %i.bw, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 12 uses
  %.01625.i = phi ptr [ %.117.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 5 uses
  %.01824.i = phi ptr [ %i.df, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 9 uses
  %i.bz = icmp eq ptr %.01625.i, %2
  br i1 %i.bz, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.026.i193.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
  %i.ca = add i64 %i.bx, %i.e
  %i.cb = add i64 %i.ca, -8
  %i.cc = add i64 %.114.i134.le, %.026.i193.le
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.cd, 152
  br i1 %min.iters.check201, label %.lr.ph.i.i.i.preheader308, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.cg = shl i64 %indvar, 3
  %i.ch = getelementptr i8, ptr %.114.i, i64 %i.cg
  %scevgep192 = getelementptr i8, ptr %i.ch, i64 8
  %i.ci = add i64 %i.bx, %i.e
  %i.cj = add i64 %i.ci, -8
  %i.ck = add i64 %.114.i134.le, %.026.i193.le
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = and i64 %i.cl, -8                       ; 2 uses
  %scevgep194 = getelementptr i8, ptr %scevgep192, i64 %i.cm
  %scevgep195 = getelementptr i8, ptr %.026.i, i64 8
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.cm
  %bound0197 = icmp ult ptr %.01824.i, %scevgep196
  %bound1198 = icmp ult ptr %.026.i, %scevgep194
  %found.conflict199 = and i1 %bound0197, %bound1198
  br i1 %found.conflict199, label %.lr.ph.i.i.i.preheader308, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck191
  %n.vec203 = and i64 %i.cf, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec203, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %.01824.i, i64 %i.cn
  %i.cp = getelementptr i8, ptr %.026.i, i64 %i.cn
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next218, %vector.body204 ] ; 2 uses
  %i.cq = shl i64 %index205, 3                    ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 16               ; 2 uses
  %next.gep206 = getelementptr i8, ptr %.01824.i, i64 %i.cq
  %next.gep207 = getelementptr i8, ptr %.01824.i, i64 %i.cr
  %next.gep208 = getelementptr i8, ptr %.026.i, i64 %i.cq
  %next.gep209 = getelementptr i8, ptr %.026.i, i64 %i.cr
  %wide.vec210 = load <4 x i32>, ptr %next.gep208, align 4, !tbaa !21, !alias.scope !1637
  %wide.vec213 = load <4 x i32>, ptr %next.gep209, align 4, !tbaa !21, !alias.scope !1637
  store <4 x i32> %wide.vec210, ptr %next.gep206, align 4, !tbaa !21, !alias.scope !1640, !noalias !1637
  store <4 x i32> %wide.vec213, ptr %next.gep207, align 4, !tbaa !21, !alias.scope !1640, !noalias !1637
  %index.next218 = add nuw i64 %index205, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next218, %n.vec203
  br i1 %i.cs, label %middle.block219, label %vector.body204, !llvm.loop !1642

middle.block219:                                  ; preds = %vector.body204
  %cmp.n220 = icmp eq i64 %i.cf, %n.vec203
  br i1 %cmp.n220, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i.preheader308

.lr.ph.i.i.i.preheader308:                        ; preds = %vector.memcheck191, %.lr.ph.i.i.i.preheader, %middle.block219
  %.010.i.i.i.ph = phi ptr [ %.01824.i, %vector.memcheck191 ], [ %.01824.i, %.lr.ph.i.i.i.preheader ], [ %i.co, %middle.block219 ]
  %.079.i.i.i.ph = phi ptr [ %.026.i, %vector.memcheck191 ], [ %.026.i, %.lr.ph.i.i.i.preheader ], [ %i.cp, %middle.block219 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader308, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader308 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader308 ] ; 3 uses
  %i.ct = load i32, ptr %.079.i.i.i, align 4, !tbaa !21
  store i32 %i.ct, ptr %.010.i.i.i, align 4, !tbaa !274
  %i.cu = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !276
  %i.cx = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.cx, %i.by
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1643

bb.g:                                             ; preds = %.lr.ph.i40
  %i.cz = load i32, ptr %.01625.i, align 4, !tbaa !21 ; 2 uses
  %i.da = load i32, ptr %.026.i, align 4, !tbaa !21 ; 2 uses
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi i32 [ %i.cz, %bb.h ], [ %i.da, %bb.i ]
  %.01625.pn.i = phi ptr [ %.01625.i, %bb.h ], [ %.026.i, %bb.i ]
  %.117.i = phi ptr [ %i.dc, %bb.h ], [ %.01625.i, %bb.i ]
  %.1.i41 = phi ptr [ %.026.i, %bb.h ], [ %i.dd, %bb.i ] ; 2 uses
  store i32 %.sink, ptr %.01824.i, align 4, !tbaa !274
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.01625.pn.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %.01824.i, i64 4
  store i32 %.sink.i, ptr %i.de, align 4, !tbaa !276
  %i.df = getelementptr i8, ptr %.01824.i, i64 8
  %.not.i42 = icmp eq ptr %.1.i41, %i.by
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !1644

.lr.ph.i44:                                       ; preds = %bb.c
  %i.dg = ashr exact i64 %i.i, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i44
  %.017.i45 = phi i64 [ %i.dg, %.lr.ph.i44 ], [ %.1.i49, %bb.k ] ; 2 uses
  %.01316.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i48, %bb.k ] ; 2 uses
  %i.dh = lshr i64 %.017.i45, 1                   ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.01316.i46, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !21
  %i.dk = icmp slt i32 %i.dj, %i.c                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.neg.i47 = xor i64 %i.dh, -1
  %i.dm = add i64 %.017.i45, %.neg.i47
  %.114.i48 = select i1 %i.dk, ptr %i.dl, ptr %.01316.i46 ; 8 uses
  %.1.i49 = select i1 %i.dk, i64 %i.dm, i64 %i.dh ; 2 uses
  %.not.i50 = icmp eq i64 %.1.i49, 0
  br i1 %.not.i50, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %bb.k, !llvm.loop !1600

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.k
  %.114.i48225.le = ptrtoaddr ptr %.114.i48 to i64 ; 3 uses
  %i.dn = ptrtoint ptr %.114.i48 to i64
  %i.do = sub i64 %i.dn, %i.e                     ; 3 uses
  %i.dp = ashr exact i64 %i.do, 3                 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1599 ; 3 uses
  %.not.i52 = icmp ugt i64 %i.dp, %i.dr
  br i1 %.not.i52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.not8.i.i53 = icmp eq ptr %.114.i48, %1
  %.pre103 = load ptr, ptr %3, align 8, !tbaa !1598 ; 10 uses
  br i1 %.not8.i.i53, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %bb.l
  %i.ds = add i64 %.114.i48225.le, -8
  %i.dt = sub i64 %i.ds, %i.e                     ; 2 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %i.dt, 88
  br i1 %min.iters.check233, label %.lr.ph.i.i55.preheader306, label %vector.memcheck223

vector.memcheck223:                               ; preds = %.lr.ph.i.i55.preheader
  %reass.sub = sub i64 %.114.i48225.le, %i.e
  %i.dw = and i64 %reass.sub, -8                  ; 2 uses
  %scevgep226 = getelementptr i8, ptr %.pre103, i64 %i.dw
  %scevgep228 = getelementptr i8, ptr %1, i64 %i.dw
  %bound0229 = icmp ult ptr %.pre103, %scevgep228
  %bound1230 = icmp ult ptr %1, %scevgep226
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %.lr.ph.i.i55.preheader306, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck223
  %n.vec235 = and i64 %i.dv, 4611686018427387900  ; 3 uses
  %i.dx = shl i64 %n.vec235, 3                    ; 2 uses
  %i.dy = getelementptr i8, ptr %.pre103, i64 %i.dx
  %i.dz = getelementptr i8, ptr %1, i64 %i.dx
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next250, %vector.body236 ] ; 2 uses
  %i.ea = shl i64 %index237, 3                    ; 3 uses
  %i.eb = or disjoint i64 %i.ea, 16               ; 2 uses
  %next.gep238 = getelementptr i8, ptr %.pre103, i64 %i.ea
  %next.gep239 = getelementptr i8, ptr %.pre103, i64 %i.eb
  %next.gep240 = getelementptr i8, ptr %1, i64 %i.ea
  %next.gep241 = getelementptr i8, ptr %1, i64 %i.eb
  %wide.vec242 = load <4 x i32>, ptr %next.gep240, align 4, !tbaa !21, !alias.scope !1645
  %wide.vec245 = load <4 x i32>, ptr %next.gep241, align 4, !tbaa !21, !alias.scope !1645
  store <4 x i32> %wide.vec242, ptr %next.gep238, align 4, !tbaa !21, !alias.scope !1648, !noalias !1645
  store <4 x i32> %wide.vec245, ptr %next.gep239, align 4, !tbaa !21, !alias.scope !1648, !noalias !1645
  %index.next250 = add nuw i64 %index237, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next250, %n.vec235
  br i1 %i.ec, label %middle.block251, label %vector.body236, !llvm.loop !1650

middle.block251:                                  ; preds = %vector.body236
  %cmp.n252 = icmp eq i64 %i.dv, %n.vec235
  br i1 %cmp.n252, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, label %.lr.ph.i.i55.preheader306

.lr.ph.i.i55.preheader306:                        ; preds = %vector.memcheck223, %.lr.ph.i.i55.preheader, %middle.block251
  %.010.i.i56.ph = phi ptr [ %.pre103, %vector.memcheck223 ], [ %.pre103, %.lr.ph.i.i55.preheader ], [ %i.dy, %middle.block251 ]
  %.079.i.i57.ph = phi ptr [ %1, %vector.memcheck223 ], [ %1, %.lr.ph.i.i55.preheader ], [ %i.dz, %middle.block251 ]
  br label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.preheader306, %.lr.ph.i.i55
  %.010.i.i56 = phi ptr [ %i.ei, %.lr.ph.i.i55 ], [ %.010.i.i56.ph, %.lr.ph.i.i55.preheader306 ] ; 3 uses
  %.079.i.i57 = phi ptr [ %i.eh, %.lr.ph.i.i55 ], [ %.079.i.i57.ph, %.lr.ph.i.i55.preheader306 ] ; 3 uses
  %i.ed = load i32, ptr %.079.i.i57, align 4, !tbaa !21
  store i32 %i.ed, ptr %.010.i.i56, align 4, !tbaa !274
  %i.ee = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !21
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 4
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !276
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 8
  %.not.i.i58 = icmp eq ptr %i.eh, %.114.i48
  br i1 %.not.i.i58, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, label %.lr.ph.i.i55, !llvm.loop !1651

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.idx26.i59 = shl i64 %i.dr, 3                  ; 6 uses
  %i.ej = getelementptr i8, ptr %1, i64 %.idx26.i59 ; 6 uses
  %i.ek = load ptr, ptr %3, align 8, !tbaa !1598  ; 9 uses
  %.not8.i17.i60 = icmp eq i64 %i.dr, 0
  br i1 %.not8.i17.i60, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65, label %.lr.ph.i18.i61.preheader

.lr.ph.i18.i61.preheader:                         ; preds = %bb.m
  %i.el = add i64 %.idx26.i59, -8                 ; 2 uses
  %i.em = lshr exact i64 %i.el, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check261 = icmp ult i64 %i.el, 40
  br i1 %min.iters.check261, label %.lr.ph.i18.i61.preheader305, label %vector.memcheck255

vector.memcheck255:                               ; preds = %.lr.ph.i18.i61.preheader
  %scevgep256 = getelementptr i8, ptr %i.ek, i64 %.idx26.i59
  %bound0257 = icmp ult ptr %i.ek, %i.ej
  %bound1258 = icmp ult ptr %1, %scevgep256
  %found.conflict259 = and i1 %bound0257, %bound1258
  br i1 %found.conflict259, label %.lr.ph.i18.i61.preheader305, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck255
  %n.vec263 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.eo = shl i64 %n.vec263, 3                    ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ek, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %1, i64 %i.eo
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next278, %vector.body264 ] ; 2 uses
  %i.er = shl i64 %index265, 3                    ; 3 uses
  %i.es = or disjoint i64 %i.er, 16               ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.ek, i64 %i.er
  %next.gep267 = getelementptr i8, ptr %i.ek, i64 %i.es
  %next.gep268 = getelementptr i8, ptr %1, i64 %i.er
  %next.gep269 = getelementptr i8, ptr %1, i64 %i.es
  %wide.vec270 = load <4 x i32>, ptr %next.gep268, align 4, !tbaa !21, !alias.scope !1652
  %wide.vec273 = load <4 x i32>, ptr %next.gep269, align 4, !tbaa !21, !alias.scope !1652
  store <4 x i32> %wide.vec270, ptr %next.gep266, align 4, !tbaa !21, !alias.scope !1655, !noalias !1652
  store <4 x i32> %wide.vec273, ptr %next.gep267, align 4, !tbaa !21, !alias.scope !1655, !noalias !1652
  %index.next278 = add nuw i64 %index265, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next278, %n.vec263
  br i1 %i.et, label %middle.block279, label %vector.body264, !llvm.loop !1657

middle.block279:                                  ; preds = %vector.body264
  %cmp.n280 = icmp eq i64 %i.en, %n.vec263
  br i1 %cmp.n280, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65, label %.lr.ph.i18.i61.preheader305

.lr.ph.i18.i61.preheader305:                      ; preds = %vector.memcheck255, %.lr.ph.i18.i61.preheader, %middle.block279
  %.010.i19.i62.ph = phi ptr [ %i.ek, %vector.memcheck255 ], [ %i.ek, %.lr.ph.i18.i61.preheader ], [ %i.ep, %middle.block279 ]
  %.079.i20.i63.ph = phi ptr [ %1, %vector.memcheck255 ], [ %1, %.lr.ph.i18.i61.preheader ], [ %i.eq, %middle.block279 ]
  br label %.lr.ph.i18.i61

.lr.ph.i18.i61:                                   ; preds = %.lr.ph.i18.i61.preheader305, %.lr.ph.i18.i61
  %.010.i19.i62 = phi ptr [ %i.ez, %.lr.ph.i18.i61 ], [ %.010.i19.i62.ph, %.lr.ph.i18.i61.preheader305 ] ; 3 uses
  %.079.i20.i63 = phi ptr [ %i.ey, %.lr.ph.i18.i61 ], [ %.079.i20.i63.ph, %.lr.ph.i18.i61.preheader305 ] ; 3 uses
  %i.eu = load i32, ptr %.079.i20.i63, align 4, !tbaa !21
  store i32 %i.eu, ptr %.010.i19.i62, align 4, !tbaa !274
  %i.ev = getelementptr inbounds nuw i8, ptr %.079.i20.i63, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i19.i62, i64 4
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !276
  %i.ey = getelementptr inbounds nuw i8, ptr %.079.i20.i63, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.010.i19.i62, i64 8 ; 2 uses
  %.not.i21.i64 = icmp eq ptr %i.ey, %i.ej
  br i1 %.not.i21.i64, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65, label %.lr.ph.i18.i61, !llvm.loop !1658

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65: ; preds = %.lr.ph.i18.i61, %middle.block279, %bb.m
  %.0.lcssa.i22.i66 = phi ptr [ %i.ek, %bb.m ], [ %i.ep, %middle.block279 ], [ %i.ez, %.lr.ph.i18.i61 ] ; 5 uses
  %.0.lcssa.i22.i66284 = ptrtoaddr ptr %.0.lcssa.i22.i66 to i64
  %.not10.i.i67 = icmp eq i64 %.idx26.i59, %i.do
  br i1 %.not10.i.i67, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, label %.lr.ph.i24.i68.preheader

.lr.ph.i24.i68.preheader:                         ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65
  %i.fa = add i64 %.114.i48225.le, -8
  %i.fb = add i64 %.idx26.i59, %i.e
  %i.fc = sub i64 %i.fa, %i.fb                    ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check287 = icmp ult i64 %i.fc, 104
  br i1 %min.iters.check287, label %.lr.ph.i24.i68.preheader304, label %vector.memcheck283

vector.memcheck283:                               ; preds = %.lr.ph.i24.i68.preheader
  %i.ff = add i64 %.idx26.i59, %i.e
  %i.fg = sub i64 %i.ff, %.0.lcssa.i22.i66284
  %diff.check285 = icmp ugt i64 %i.fg, -32
  br i1 %diff.check285, label %.lr.ph.i24.i68.preheader304, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck283
  %n.vec289 = and i64 %i.fe, 4611686018427387900  ; 3 uses
  %i.fh = shl i64 %n.vec289, 3                    ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ej, i64 %i.fh
  %i.fj = getelementptr i8, ptr %.0.lcssa.i22.i66, i64 %i.fh
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next296, %vector.body290 ] ; 2 uses
  %i.fk = shl i64 %index291, 3                    ; 2 uses
  %next.gep292 = getelementptr i8, ptr %i.ej, i64 %i.fk ; 2 uses
  %next.gep293 = getelementptr i8, ptr %.0.lcssa.i22.i66, i64 %i.fk ; 2 uses
  %i.fl = getelementptr i8, ptr %next.gep292, i64 16
  %wide.load294 = load <2 x i64>, ptr %next.gep292, align 4
  %wide.load295 = load <2 x i64>, ptr %i.fl, align 4
  %i.fm = getelementptr i8, ptr %next.gep293, i64 16
  store <2 x i64> %wide.load294, ptr %next.gep293, align 4
  store <2 x i64> %wide.load295, ptr %i.fm, align 4
  %index.next296 = add nuw i64 %index291, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next296, %n.vec289
  br i1 %i.fn, label %middle.block297, label %vector.body290, !llvm.loop !1659

middle.block297:                                  ; preds = %vector.body290
  %cmp.n298 = icmp eq i64 %i.fe, %n.vec289
  br i1 %cmp.n298, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72.loopexit, label %.lr.ph.i24.i68.preheader304

.lr.ph.i24.i68.preheader304:                      ; preds = %vector.memcheck283, %.lr.ph.i24.i68.preheader, %middle.block297
  %.012.i.i69.ph = phi ptr [ %i.ej, %vector.memcheck283 ], [ %i.ej, %.lr.ph.i24.i68.preheader ], [ %i.fi, %middle.block297 ]
  %.0911.i.i70.ph = phi ptr [ %.0.lcssa.i22.i66, %vector.memcheck283 ], [ %.0.lcssa.i22.i66, %.lr.ph.i24.i68.preheader ], [ %i.fj, %middle.block297 ]
  br label %.lr.ph.i24.i68

.lr.ph.i24.i68:                                   ; preds = %.lr.ph.i24.i68.preheader304, %.lr.ph.i24.i68
  %.012.i.i69 = phi ptr [ %i.fp, %.lr.ph.i24.i68 ], [ %.012.i.i69.ph, %.lr.ph.i24.i68.preheader304 ] ; 2 uses
  %.0911.i.i70 = phi ptr [ %i.fq, %.lr.ph.i24.i68 ], [ %.0911.i.i70.ph, %.lr.ph.i24.i68.preheader304 ] ; 2 uses
  %i.fo = load i64, ptr %.012.i.i69, align 4
  store i64 %i.fo, ptr %.0911.i.i70, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i69, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i70, i64 8
  %.not.i25.i71 = icmp eq ptr %i.fp, %.114.i48
  br i1 %.not.i25.i71, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72.loopexit, label %.lr.ph.i24.i68, !llvm.loop !1660

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72.loopexit: ; preds = %.lr.ph.i24.i68, %middle.block297
  %.pre102 = load ptr, ptr %3, align 8, !tbaa !1598
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72: ; preds = %.lr.ph.i.i55, %middle.block251, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72.loopexit, %bb.l, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65
  %i.fr = phi ptr [ %i.ek, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65 ], [ %.pre102, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72.loopexit ], [ %.pre103, %bb.l ], [ %.pre103, %middle.block251 ], [ %.pre103, %.lr.ph.i.i55 ] ; 3 uses
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !1599
  %.not27.i = icmp eq ptr %.114.i48, %1
  br i1 %.not27.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i73.preheader

.lr.ph.i73.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.do
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.preheader, %bb.n
  %.030.i = phi ptr [ %.030..i, %bb.n ], [ %i.fs, %.lr.ph.i73.preheader ] ; 4 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.n ], [ %1, %.lr.ph.i73.preheader ] ; 4 uses
  %.02128.i = phi ptr [ %i.gf, %bb.n ], [ %.114.i48, %.lr.ph.i73.preheader ] ; 3 uses
  %i.ft = icmp eq ptr %0, %.01929.i
  br i1 %i.ft, label %.lr.ph.i.i.i77, label %bb.n

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i73, %.lr.ph.i.i.i77
  %.010.i.i.i78 = phi ptr [ %i.fv, %.lr.ph.i.i.i77 ], [ %.02128.i, %.lr.ph.i73 ] ; 2 uses
  %.079.i.i.i79 = phi ptr [ %i.fu, %.lr.ph.i.i.i77 ], [ %.030.i, %.lr.ph.i73 ] ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.079.i.i.i79, i64 -8 ; 3 uses
  %i.fv = getelementptr inbounds i8, ptr %.010.i.i.i78, i64 -8 ; 2 uses
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !21
  store i32 %i.fw, ptr %i.fv, align 4, !tbaa !274
  %i.fx = getelementptr inbounds i8, ptr %.079.i.i.i79, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !21
  %i.fz = getelementptr inbounds i8, ptr %.010.i.i.i78, i64 -4
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !276
  %.not.i.i.i80 = icmp eq ptr %i.fr, %i.fu
  br i1 %.not.i.i.i80, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i77, !llvm.loop !1607

bb.n:                                             ; preds = %.lr.ph.i73
  %i.ga = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 2 uses
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !21 ; 2 uses
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !21 ; 2 uses
  %i.ge = icmp slt i32 %i.gc, %i.gd               ; 3 uses
  %i.gf = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.gc, i32 %i.gd)
  %.01929..030.i = select i1 %i.ge, ptr %.01929.i, ptr %.030.i
  %..01929.i = select i1 %i.ge, ptr %i.gb, ptr %.01929.i
  %.030..i = select i1 %i.ge, ptr %.030.i, ptr %i.ga ; 2 uses
  store i32 %..i, ptr %i.gf, align 4, !tbaa !274
  %.sink.in.i74 = getelementptr inbounds i8, ptr %.01929..030.i, i64 -4
  %.sink.i75 = load i32, ptr %.sink.in.i74, align 4, !tbaa !21
  %i.gg = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  store i32 %.sink.i75, ptr %i.gg, align 4, !tbaa !276
  %.not.i76 = icmp eq ptr %i.fr, %.030..i
  br i1 %.not.i76, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i73, !llvm.loop !1661

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.n, %.lr.ph.i.i.i77, %middle.block219, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond92 = and i1 %i.a, %i.b
  br i1 %or.cond92, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.06799 = phi i64 [ %.1, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %.06898 = phi i64 [ %.169, %bb.n ], [ %3, %bb.a ] ; 6 uses
  %.07096 = phi ptr [ %.171, %bb.n ], [ %2, %bb.a ] ; 5 uses
  %.07294 = phi ptr [ %.173, %bb.n ], [ %1, %bb.a ] ; 12 uses
  %.07493 = phi ptr [ %.175, %bb.n ], [ %0, %bb.a ] ; 11 uses
  %i.c = or i64 %.06799, %.06898
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr %.07294, align 4, !tbaa !21 ; 2 uses
  %i.f = load i32, ptr %.07493, align 4, !tbaa !21 ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %.07493, align 4, !tbaa !21
  store i32 %i.f, ptr %.07294, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.07493, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.07294, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !21
  %i.k = load i32, ptr %i.i, align 4, !tbaa !21
  store i32 %i.k, ptr %i.h, align 4, !tbaa !21
  store i32 %i.j, ptr %i.i, align 4, !tbaa !21
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.l = add i64 %.06799, %.06898                 ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_T0_(ptr noundef %.07493, ptr noundef %.07294, ptr noundef %.07096)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ugt i64 %.06898, %.06799
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = lshr i64 %.06898, 1                      ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.07493, i64 %i.o ; 2 uses
  %.not15.i = icmp eq ptr %.07096, %.07294
  %.pre = ptrtoint ptr %.07294 to i64             ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.q = ptrtoint ptr %.07096 to i64
  %i.r = sub i64 %i.q, %.pre
  %i.s = ashr exact i64 %i.r, 3
  %i.t = load i32, ptr %i.p, align 4, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.017.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.01316.i = phi ptr [ %.07294, %.lr.ph.i ], [ %.114.i, %bb.h ] ; 2 uses
  %i.u = lshr i64 %.017.i, 1                      ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  %i.x = icmp slt i32 %i.w, %i.t                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.neg.i = xor i64 %i.u, -1
  %i.z = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.x, ptr %i.y, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.x, i64 %i.z, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %bb.h, !llvm.loop !1600

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre108 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.g, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit
  %.pre-phi109 = phi i64 [ %.pre108, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.g ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.07294, %bb.g ]
  %i.aa = sub i64 %.pre-phi109, %.pre
  %i.ab = ashr exact i64 %i.aa, 3
  br label %bb.k

bb.i:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_:bb.a
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph37.i
  %i.j = load i64, ptr %.02236.i, align 4         ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.j to i32
  store i32 %i.h, ptr %.02236.i, align 4, !tbaa !274
  %i.k = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !276
  %.not2628.i = icmp eq ptr %.pn35.i, %0
  br i1 %.not2628.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.030.i = phi ptr [ %i.n, %bb.d ], [ %.pn35.i, %bb.c ] ; 5 uses
  %i.n = getelementptr i8, ptr %.030.i, i64 -8    ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21   ; 2 uses
  %i.p = icmp sgt i32 %i.o, %.sroa.0.0.extract.trunc.i
  br i1 %i.p, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.021.lcssa.i = phi ptr [ %0, %bb.c ], [ %.030.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i64 %i.j, ptr %.021.lcssa.i, align 4
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.o, ptr %.030.i, align 4, !tbaa !274
  %i.q = getelementptr inbounds i8, ptr %.030.i, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !276
  %.not26.i = icmp eq ptr %i.n, %0
  br i1 %.not26.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2100

bb.e:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %.022.i = getelementptr inbounds nuw i8, ptr %.02236.i, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %.022.i, %i.f
  br i1 %.not25.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph37.i, !llvm.loop !2101

bb.f:                                             ; preds = %bb.a
  %i.t = lshr i64 %1, 1
  %i.u = sub i64 %1, %i.t                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1594
  %.not = icmp ugt i64 %i.u, %i.w
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.y = load ptr, ptr %2, align 8, !tbaa !1598
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %i.y)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !1562
  %i.z = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEmNS0_13adaptive_xbufIS4_S5_mEEEEbT_T1_T0_RSH_SJ_SJ_SJ_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.z, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !1594
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1599 ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %.not.i31 = icmp ult i64 %i.ae, %i.u
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %2, align 8, !tbaa !1598
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  call void @_ZN5boost7movelib10merge_sortIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef %i.ag)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_(ptr noundef %0, ptr noundef nonnull %i.aa)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !1562
  %i.aj = add i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load i64, ptr %i.d, align 8, !tbaa !1562 ; 3 uses
  %i.am = sub i64 0, %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = sub i64 %1, %i.aj
  %i.ap = add i64 %i.ao, %i.al
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !1562
  %i.ar = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_RT1_T0_(ptr noundef %i.an, i64 noundef %i.ap, i64 noundef %i.aq, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.as = load i64, ptr %i.c, align 8, !tbaa !1562 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  %i.au = sub i64 %1, %i.as
  %i.av = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEbT_RNS0_9iter_sizeISG_E4typeESG_SJ_SJ_SK_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.at, i64 noundef %i.au, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !1562
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvbT_NS0_9iter_sizeISG_E4typeESJ_SJ_RT1_T0_(i1 noundef zeroext %i.av, ptr noundef %0, i64 noundef %i.aw, i64 noundef %i.ax, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 3 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.02233.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2534.i = icmp eq ptr %.02233.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2534.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.b, %bb.e
  %.02236.i = phi ptr [ %.022.i, %bb.e ], [ %.02233.i, %bb.b ] ; 5 uses
  %.pn35.i = phi ptr [ %.02236.i, %bb.e ], [ %0, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.02236.i, align 4, !tbaa !21
  %i.h = load i32, ptr %.pn35.i, align 4, !tbaa !21 ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph37.i
  %i.j = load i64, ptr %.02236.i, align 4         ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.j to i32
  store i32 %i.h, ptr %.02236.i, align 4, !tbaa !274
  %i.k = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !276
  %.not2628.i = icmp eq ptr %.pn35.i, %0
  br i1 %.not2628.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.030.i = phi ptr [ %i.n, %bb.d ], [ %.pn35.i, %bb.c ] ; 5 uses
  %i.n = getelementptr i8, ptr %.030.i, i64 -8    ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21   ; 2 uses
  %i.p = icmp sgt i32 %i.o, %.sroa.0.0.extract.trunc.i
  br i1 %i.p, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.021.lcssa.i = phi ptr [ %0, %bb.c ], [ %.030.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i64 %i.j, ptr %.021.lcssa.i, align 4
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.o, ptr %.030.i, align 4, !tbaa !274
  %i.q = getelementptr inbounds i8, ptr %.030.i, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !276
  %.not26.i = icmp eq ptr %i.n, %0
  br i1 %.not26.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2100

bb.e:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %.022.i = getelementptr inbounds nuw i8, ptr %.02236.i, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %.022.i, %1
  br i1 %.not25.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph37.i, !llvm.loop !2101

bb.f:                                             ; preds = %bb.a
  %i.t = lshr i64 %i.e, 1                         ; 4 uses
  %i.u = sub i64 %i.e, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %i.v, ptr noundef %1, ptr noundef %2)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %i.v, ptr noundef %i.w)
  %.idx = shl nuw nsw i64 %i.u, 3
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ 0, %bb.f ], [ %indvar.next, %bb.j ] ; 2 uses
  %.027.i.i = phi ptr [ %2, %bb.f ], [ %.1.i.i, %bb.j ] ; 12 uses
  %.01626.i.i = phi ptr [ %0, %bb.f ], [ %i.bd, %bb.j ] ; 9 uses
  %.01725.i.i = phi ptr [ %i.w, %bb.f ], [ %.118.i.i, %bb.j ] ; 5 uses
  %i.y = icmp eq ptr %.01725.i.i, %1
  br i1 %i.y, label %.lr.ph.i.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i51.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = shl i64 %i.t, 3
  %i.z = add i64 %i.d, %i.a
  %4 = add i64 %i.z, -8
  %i.aa = add i64 %3, %.027.i.i51.le
  %i.ab = sub i64 %4, %i.aa                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ae = shl i64 %indvar, 3
  %i.af = getelementptr i8, ptr %0, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.af, i64 8
  %i.ag = add i64 %i.d, %i.a
  %i.ah = add i64 %i.ag, -8
  %i.ai = shl i64 %i.t, 3
  %i.aj = add i64 %i.ai, %.027.i.i51.le
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %scevgep52 = getelementptr i8, ptr %scevgep, i64 %i.al
  %scevgep53 = getelementptr i8, ptr %.027.i.i, i64 8
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.al
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep54
  %bound1 = icmp ult ptr %.027.i.i, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %.01626.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %.027.i.i, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.ap
  %next.gep55 = getelementptr i8, ptr %.01626.i.i, i64 %i.aq
  %next.gep56 = getelementptr i8, ptr %.027.i.i, i64 %i.ap
  %next.gep57 = getelementptr i8, ptr %.027.i.i, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep56, align 4, !tbaa !21, !alias.scope !2102
  %wide.vec59 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !21, !alias.scope !2102
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !2105, !noalias !2102
  store <4 x i32> %wide.vec59, ptr %next.gep55, align 4, !tbaa !21, !alias.scope !2105, !noalias !2102
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph.i.i.i.i.preheader64

.lr.ph.i.i.i.i.preheader64:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader64, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 3 uses
  %i.as = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !21
  store i32 %i.as, ptr %.010.i.i.i.i, align 4, !tbaa !274
  %i.at = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  store i32 %i.au, ptr %i.av, align 4, !tbaa !276
  %i.aw = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.x
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2108

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ay = load i32, ptr %.027.i.i, align 4, !tbaa !21 ; 2 uses
  %i.az = load i32, ptr %.01725.i.i, align 4, !tbaa !21 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.ay, %i.az
  br i1 %.not20.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi i32 [ %i.ay, %bb.i ], [ %i.az, %bb.h ]
  %.027.pn.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %.01725.i.i, %bb.h ]
  %.118.i.i = phi ptr [ %.01725.i.i, %bb.i ], [ %i.ba, %bb.h ]
  %.1.i.i = phi ptr [ %i.bb, %bb.i ], [ %.027.i.i, %bb.h ] ; 2 uses
  store i32 %.sink.i, ptr %.01626.i.i, align 4, !tbaa !274
  %.sink.in.i.i = getelementptr inbounds nuw i8, ptr %.027.pn.i.i, i64 4
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.01626.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.bc, align 4, !tbaa !276
  %i.bd = getelementptr i8, ptr %.01626.i.i, i64 8
  %.not.i.i = icmp eq ptr %.1.i.i, %i.x
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph.i.i, !llvm.loop !2109

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i, %bb.e, %middle.block, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEmNS0_13adaptive_xbufIS4_S5_mEEEEbT_T1_T0_RSH_SJ_SJ_SJ_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023.i.i.i = phi i32 [ 32, %bb.a ], [ %i.n, %bb.b ]
  %.01222.i.i.i = phi i64 [ 0, %bb.a ], [ %.1.i.i.i.1, %bb.b ] ; 2 uses
  %.01321.i.i.i = phi i64 [ 0, %bb.a ], [ %.114.i.i.i.1, %bb.b ]
  %.01520.i.i.i = phi i64 [ %1, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.a = shl i64 %.01222.i.i.i, 1                 ; 2 uses
  %i.b = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i.i, i64 %.01520.i.i.i, i64 2) ; 2 uses
  %i.c = shl i64 %.01520.i.i.i, 2
  %i.d = icmp ult i64 %i.a, %i.b                  ; 2 uses
  %.neg.i.i.i = xor i64 %i.a, -1
  %i.e = select i1 %i.d, i64 %.neg.i.i.i, i64 0
  %.114.i.i.i = add i64 %i.e, %i.b
  %i.f = shl i64 %.01222.i.i.i, 2                 ; 2 uses
  %i.g = add i64 %i.f, 4
  %i.h = select i1 %i.d, i64 %i.g, i64 %i.f       ; 4 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %.114.i.i.i, i64 %i.c, i64 2) ; 2 uses
  %i.j = shl i64 %.01520.i.i.i, 4
  %i.k = icmp ult i64 %i.h, %i.i                  ; 2 uses
  %.neg.i.i.i.1 = xor i64 %i.h, -1
  %i.l = or disjoint i64 %i.h, 2
  %i.m = select i1 %i.k, i64 %.neg.i.i.i.1, i64 0
  %.114.i.i.i.1 = add i64 %i.m, %i.i
  %.1.i.i.i.1 = select i1 %i.k, i64 %i.l, i64 %i.h ; 2 uses
  %i.n = add nsw i32 %.023.i.i.i, -2              ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, label %bb.b, !llvm.loop !1596

_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i: ; preds = %bb.b
  %i.o = lshr exact i64 %.1.i.i.i.1, 1            ; 2 uses
  %i.p = urem i64 %1, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw i64 %i.o, %i.r                   ; 4 uses
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ]
  %.0910.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ] ; 2 uses
  %i.u = lshr i64 %.0910.i.i.i, 1                 ; 2 uses
  %i.v = add nuw nsw i64 %.011.i.i.i, 1           ; 2 uses
  %i.w = icmp ugt i64 %.0910.i.i.i, 33
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, !llvm.loop !2110

_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i
  %.09.lcssa.i.i.i = phi i64 [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.u, %.lr.ph.i.i.i ] ; 4 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.v, %.lr.ph.i.i.i ] ; 4 uses
  %i.x = shl i64 %.09.lcssa.i.i.i, %.0.lcssa.i.i.i
  %.not.i.i = icmp eq i64 %i.x, %i.s
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i
  %i.y = icmp samesign ult i64 %.09.lcssa.i.i.i, 16
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw nsw i64 %.09.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = add i64 %.0.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, %bb.d, %bb.e
  %.0.i = phi i64 [ %.09.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %i.z, %bb.d ], [ 9, %bb.e ] ; 2 uses
  %i.ab = phi i64 [ %.0.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %.0.lcssa.i.i.i, %bb.d ], [ %i.aa, %bb.e ]
  store i64 %.0.i, ptr %4, align 8, !tbaa !1562
  %i.ac = shl i64 %.0.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit
  %storemerge = phi i64 [ %i.ac, %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit ], [ %i.af, %bb.f ] ; 8 uses
  store i64 %storemerge, ptr %3, align 8, !tbaa !1562
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1594 ; 4 uses
  %i.af = shl i64 %storemerge, 1                  ; 3 uses
  %.not = icmp ult i64 %i.ae, %i.af
  br i1 %.not, label %.preheader88, label %bb.f, !llvm.loop !2111

.preheader88:                                     ; preds = %bb.f
  %i.ag = sub i64 %1, %storemerge                 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader88, %bb.g
  %.071.in = phi i64 [ %.071, %bb.g ], [ %storemerge, %.preheader88 ] ; 5 uses
  %.071 = add i64 %.071.in, -1                    ; 3 uses
  %i.ah = sub i64 %i.ag, %.071
  %i.ai = udiv i64 %i.ah, %storemerge
  %.not80 = icmp ult i64 %.071, %i.ai
  br i1 %.not80, label %bb.h, label %bb.g, !llvm.loop !2112

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZNK5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE25supports_aligned_trailingImEEbmm.exit.thread, label %_ZNK5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE25supports_aligned_trailingImEEbmm.exit

_ZNK5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE25supports_aligned_trailingImEEbmm.exit: ; preds = %bb.h
  %i.aj = add i64 %i.ag, -1
  %i.ak = udiv i64 %i.aj, %storemerge
  %i.al = add i64 %i.ak, 1
  %i.am = load ptr, ptr %6, align 8, !tbaa !1598  ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %storemerge
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ae
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = add i64 %i.ao, 7
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %.not10.i = icmp ule i64 %i.as, %i.aq
  %i.at = sub nuw i64 %i.aq, %i.as
  %i.au = lshr i64 %i.at, 3
  %i.av = icmp uge i64 %i.au, %i.al
  %i.aw = select i1 %.not10.i, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.i, label %_ZNK5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE25supports_aligned_trailingImEEbmm.exit.thread

bb.i:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE25supports_aligned_trailingImEEbmm.exit
  store i64 0, ptr %2, align 8, !tbaa !1562
  %i.ax = load i64, ptr %3, align 8, !tbaa !1562
  store i64 %i.ax, ptr %5, align 8, !tbaa !1562
  br label %.critedge

_ZNK5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE25supports_aligned_trailingImEEbmm.exit.thread: ; preds = %bb.h, %_ZNK5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE25supports_aligned_trailingImEEbmm.exit
  %.not81 = icmp uge i64 %i.ae, %storemerge       ; 2 uses
  %i.ay = select i1 %.not81, i64 %.071.in, i64 %i.af
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.ba = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive14collect_uniqueIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEENS0_9iter_sizeIT_E4typeESH_SH_SJ_T0_RT1_(ptr noundef %0, ptr noundef %i.az, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %6) ; 8 uses
  %i.bb = icmp eq i64 %i.ba, %.071.in
  %or.cond = and i1 %.not81, %i.bb
  %i.bc = load i64, ptr %3, align 8, !tbaa !1562  ; 5 uses
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE25supports_aligned_trailingImEEbmm.exit.thread
  store i64 %i.bc, ptr %5, align 8, !tbaa !1562
  store i64 %.071.in, ptr %2, align 8, !tbaa !1562
  br label %.critedge

bb.k:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE25supports_aligned_trailingImEEbmm.exit.thread
  %i.bd = shl i64 %i.bc, 1
  %i.be = icmp eq i64 %i.ba, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %i.ba, ptr %5, align 8, !tbaa !1562
  %i.bf = load i64, ptr %3, align 8, !tbaa !1562
  store i64 %i.bf, ptr %2, align 8, !tbaa !1562
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.bg = add i64 %i.bc, %.071.in
  %.not82 = icmp ult i64 %i.ba, %i.bg
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bc, ptr %5, align 8, !tbaa !1562
  %i.bh = load i64, ptr %3, align 8, !tbaa !1562
  %i.bi = sub i64 %i.ba, %i.bh
  store i64 %i.bi, ptr %2, align 8, !tbaa !1562
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp ult i64 %i.ba, 4
  br i1 %i.bj, label %.critedge, label %.preheader87

.preheader87:                                     ; preds = %bb.o, %.preheader87
  %storemerge83 = phi i64 [ %i.bl, %.preheader87 ], [ %i.bc, %bb.o ] ; 6 uses
  %i.bk = add i64 %storemerge83, -1
  %i.bl = and i64 %i.bk, %storemerge83            ; 2 uses
  %.not84 = icmp eq i64 %i.bl, 0
  br i1 %.not84, label %.preheader, label %.preheader87, !llvm.loop !2113

.preheader:                                       ; preds = %.preheader87
  store i64 %storemerge83, ptr %2, align 8, !tbaa !1562
  %i.bm = icmp ugt i64 %storemerge83, %i.ba
  br i1 %i.bm, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bn = phi i64 [ %i.bo, %.lr.ph ], [ %storemerge83, %.preheader ]
  %i.bo = lshr i64 %i.bn, 1                       ; 4 uses
  %i.bp = icmp ugt i64 %i.bo, %i.ba
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !2114

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.bo, ptr %2, align 8, !tbaa !1562
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i64 [ %i.bo, %._crit_edge ], [ %storemerge83, %.preheader ]
  %i.bq = icmp ult i64 %.lcssa, 16
  %i.br = select i1 %i.bq, ptr %2, ptr @_ZN5boost7movelib15detail_adaptiveL34AdaptiveSortInsertionSortThresholdE
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1562
  store i64 %i.bs, ptr %4, align 8, !tbaa !1562
  store i64 0, ptr %3, align 8, !tbaa !1562
  %i.bt = load i64, ptr %2, align 8, !tbaa !1562
  store i64 %i.bt, ptr %5, align 8, !tbaa !1562
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.i, %bb.j, %bb.n, %bb.p, %bb.l
  %.1 = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.j ], [ false, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_RT1_T0_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr [8 x i8], ptr %0, i64 %3   ; 10 uses
  %i.c = sub i64 %1, %3                           ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1594 ; 2 uses
  %.sroa.speculated58 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.e) ; 10 uses
  %i.f = icmp ult i64 %.sroa.speculated58, %2
  %.not81 = icmp eq i64 %.sroa.speculated58, 0
  %.not = or i1 %i.f, %.not81
  br i1 %.not, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %.sroa.speculated58
  %i.h = getelementptr [8 x i8], ptr %i.b, i64 %i.g ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1599 ; 3 uses
  %.not.i = icmp ugt i64 %.sroa.speculated58, %i.j
  %i.k = load ptr, ptr %4, align 8, !tbaa !1598   ; 15 uses
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %.sroa.speculated58, 3    ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i
  %i.m = add i64 %.idx.i, -8                      ; 2 uses
  %i.n = lshr exact i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %scevgep = getelementptr i8, ptr %i.k, i64 %.idx.i
  %bound0 = icmp ult ptr %i.k, %i.b
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.k, i64 %i.p
  %i.r = getelementptr i8, ptr %i.h, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 3 uses
  %i.t = or disjoint i64 %i.s, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.s
  %next.gep91 = getelementptr i8, ptr %i.k, i64 %i.t
  %next.gep92 = getelementptr i8, ptr %i.h, i64 %i.s
  %next.gep93 = getelementptr i8, ptr %i.h, i64 %i.t
  %wide.vec = load <4 x i32>, ptr %next.gep92, align 4, !tbaa !21, !alias.scope !2115
  %wide.vec95 = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !21, !alias.scope !2115
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !2118, !noalias !2115
  store <4 x i32> %wide.vec95, ptr %next.gep91, align 4, !tbaa !21, !alias.scope !2118, !noalias !2115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !2120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader.i ], [ %i.q, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader.i ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.v = load i32, ptr %.079.i.i, align 4, !tbaa !21
  store i32 %i.v, ptr %.010.i.i, align 4, !tbaa !274
  %i.w = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !276
  %i.z = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.z, %i.l
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !2121

bb.c:                                             ; preds = %bb.b
  %.idx26.i = shl i64 %i.j, 3                     ; 6 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %.idx26.i ; 6 uses
  %.not8.i17.i = icmp eq i64 %i.j, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.c
  %i.ac = add i64 %.idx26.i, -8                   ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check106 = icmp ult i64 %i.ac, 40
  br i1 %min.iters.check106, label %.lr.ph.i18.i.preheader203, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.lr.ph.i18.i.preheader
  %scevgep101 = getelementptr i8, ptr %i.k, i64 %.idx26.i
  %bound0102 = icmp ult ptr %i.k, %i.ab
  %bound1103 = icmp ult ptr %i.h, %scevgep101
  %found.conflict104 = and i1 %bound0102, %bound1103
  br i1 %found.conflict104, label %.lr.ph.i18.i.preheader203, label %vector.ph107

vector.ph107:                                     ; preds = %vector.memcheck100
  %n.vec108 = and i64 %i.ae, 4611686018427387900  ; 3 uses
  %i.af = shl i64 %n.vec108, 3                    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.k, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.h, i64 %i.af
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next123, %vector.body109 ] ; 2 uses
  %i.ai = shl i64 %index110, 3                    ; 3 uses
  %i.aj = or disjoint i64 %i.ai, 16               ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.k, i64 %i.ai
  %next.gep112 = getelementptr i8, ptr %i.k, i64 %i.aj
  %next.gep113 = getelementptr i8, ptr %i.h, i64 %i.ai
  %next.gep114 = getelementptr i8, ptr %i.h, i64 %i.aj
  %wide.vec115 = load <4 x i32>, ptr %next.gep113, align 4, !tbaa !21, !alias.scope !2122
  %wide.vec118 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !21, !alias.scope !2122
  store <4 x i32> %wide.vec115, ptr %next.gep111, align 4, !tbaa !21, !alias.scope !2125, !noalias !2122
  store <4 x i32> %wide.vec118, ptr %next.gep112, align 4, !tbaa !21, !alias.scope !2125, !noalias !2122
  %index.next123 = add nuw i64 %index110, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next123, %n.vec108
  br i1 %i.ak, label %middle.block124, label %vector.body109, !llvm.loop !2127

middle.block124:                                  ; preds = %vector.body109
  %cmp.n125 = icmp eq i64 %i.ae, %n.vec108
  br i1 %cmp.n125, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader203

.lr.ph.i18.i.preheader203:                        ; preds = %vector.memcheck100, %.lr.ph.i18.i.preheader, %middle.block124
  %.010.i19.i.ph = phi ptr [ %i.k, %vector.memcheck100 ], [ %i.k, %.lr.ph.i18.i.preheader ], [ %i.ag, %middle.block124 ]
  %.079.i20.i.ph = phi ptr [ %i.h, %vector.memcheck100 ], [ %i.h, %.lr.ph.i18.i.preheader ], [ %i.ah, %middle.block124 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader203, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.aq, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader203 ] ; 3 uses
  %.079.i20.i = phi ptr [ %i.ap, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader203 ] ; 3 uses
  %i.al = load i32, ptr %.079.i20.i, align 4, !tbaa !21
  store i32 %i.al, ptr %.010.i19.i, align 4, !tbaa !274
  %i.am = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !276
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 8 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ap, %i.ab
  br i1 %.not.i21.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !2128

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i: ; preds = %.lr.ph.i18.i, %middle.block124, %bb.c
  %.0.lcssa.i22.i = phi ptr [ %i.k, %bb.c ], [ %i.ag, %middle.block124 ], [ %i.aq, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i129 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.idx27.i = shl nsw i64 %.sroa.speculated58, 3  ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.h, i64 %.idx27.i
  %.not10.i.i = icmp eq i64 %.idx26.i, %.idx27.i
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.as = add i64 %.idx27.i, -8
  %i.at = sub i64 %i.as, %.idx26.i                ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check131 = icmp ult i64 %i.at, 184
  br i1 %min.iters.check131, label %.lr.ph.i24.i.preheader202, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.lr.ph.i24.i.preheader
  %i.aw = add i64 %.idx26.i, %i.a
  %i.ax = shl i64 %3, 3
  %i.ay = add i64 %i.aw, %i.ax
  %.neg = sub i64 %.idx27.i, %i.ay
  %i.az = add i64 %.neg, %.0.lcssa.i22.i129
  %i.ba = add i64 %i.az, -1
  %diff.check = icmp ult i64 %i.ba, 31
  br i1 %diff.check, label %.lr.ph.i24.i.preheader202, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck128
  %n.vec133 = and i64 %i.av, 4611686018427387900  ; 3 uses
  %i.bb = shl i64 %n.vec133, 3                    ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ab, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bb
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next139, %vector.body134 ] ; 2 uses
  %i.be = shl i64 %index135, 3                    ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.ab, i64 %i.be ; 2 uses
  %next.gep137 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep136, align 4
  %wide.load138 = load <2 x i64>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep137, i64 16
  store <2 x i64> %wide.load, ptr %next.gep137, align 4
  store <2 x i64> %wide.load138, ptr %i.bg, align 4
  %index.next139 = add nuw i64 %index135, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next139, %n.vec133
  br i1 %i.bh, label %middle.block140, label %vector.body134, !llvm.loop !2129

middle.block140:                                  ; preds = %vector.body134
  %cmp.n141 = icmp eq i64 %i.av, %n.vec133
  br i1 %cmp.n141, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i24.i.preheader202

.lr.ph.i24.i.preheader202:                        ; preds = %vector.memcheck128, %.lr.ph.i24.i.preheader, %middle.block140
  %.012.i.i.ph = phi ptr [ %i.ab, %vector.memcheck128 ], [ %i.ab, %.lr.ph.i24.i.preheader ], [ %i.bc, %middle.block140 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck128 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bd, %middle.block140 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader202, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bj, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader202 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bk, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader202 ] ; 2 uses
  %i.bi = load i64, ptr %.012.i.i, align 4
  store i64 %i.bi, ptr %.0911.i.i, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bj, %i.ar
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i24.i, !llvm.loop !2130

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block140, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  store i64 %.sroa.speculated58, ptr %i.i, align 8, !tbaa !1599
  %i.bl = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_T1_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.bm = sub i64 0, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bm
  %i.bo = sub i64 %.sroa.speculated58, %i.bl
  %i.bp = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.bn, i64 noundef %i.c, i64 noundef %i.bl, i64 noundef %3, i64 noundef %i.bo) ; 8 uses
  %.not46.not = icmp ugt i64 %3, %i.e
  br i1 %.not46.not, label %bb.d, label %.lr.ph.i49.preheader

bb.d:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit
  %i.bq = load ptr, ptr %4, align 8, !tbaa !1598
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.sroa.speculated58 ; 3 uses
  %i.bs = sub i64 0, %i.bp                        ; 3 uses
  %.not8.i = icmp eq i64 %i.bp, 0
  br i1 %.not8.i, label %.loopexit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.bt = getelementptr [8 x i8], ptr %i.b, i64 %i.bs
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.c ; 6 uses
  %.idx = shl i64 %i.bs, 3
  %i.bv = getelementptr i8, ptr %i.br, i64 %.idx  ; 6 uses
  %i.bw = add i64 %i.bp, 2305843009213693951
  %i.bx = and i64 %i.bw, 2305843009213693951      ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check178 = icmp samesign ult i64 %i.bx, 7
  br i1 %min.iters.check178, label %.lr.ph.i.preheader200, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph.i.preheader
  %i.bz = shl i64 %1, 3
  %scevgep173 = getelementptr i8, ptr %0, i64 %i.bz
  %bound0174 = icmp ult ptr %i.bu, %i.br
  %bound1175 = icmp ult ptr %i.bv, %scevgep173
  %found.conflict176 = and i1 %bound0174, %bound1175
  br i1 %found.conflict176, label %.lr.ph.i.preheader200, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck172
  %n.vec180 = and i64 %i.by, 4611686018427387900  ; 3 uses
  %i.ca = shl i64 %n.vec180, 3                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bu, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.bv, i64 %i.ca
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next195, %vector.body181 ] ; 2 uses
  %i.cd = shl i64 %index182, 3                    ; 3 uses
  %i.ce = or disjoint i64 %i.cd, 16               ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.bu, i64 %i.cd
  %next.gep184 = getelementptr i8, ptr %i.bu, i64 %i.ce
  %next.gep185 = getelementptr i8, ptr %i.bv, i64 %i.cd
  %next.gep186 = getelementptr i8, ptr %i.bv, i64 %i.ce
  %wide.vec187 = load <4 x i32>, ptr %next.gep185, align 4, !tbaa !21, !alias.scope !2131
  %wide.vec190 = load <4 x i32>, ptr %next.gep186, align 4, !tbaa !21, !alias.scope !2131
  store <4 x i32> %wide.vec187, ptr %next.gep183, align 4, !tbaa !21, !alias.scope !2134, !noalias !2131
  store <4 x i32> %wide.vec190, ptr %next.gep184, align 4, !tbaa !21, !alias.scope !2134, !noalias !2131
  %index.next195 = add nuw i64 %index182, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next195, %n.vec180
  br i1 %i.cf, label %middle.block196, label %vector.body181, !llvm.loop !2136

middle.block196:                                  ; preds = %vector.body181
  %cmp.n197 = icmp eq i64 %i.by, %n.vec180
  br i1 %cmp.n197, label %.loopexit.thread, label %.lr.ph.i.preheader200

.lr.ph.i.preheader200:                            ; preds = %vector.memcheck172, %.lr.ph.i.preheader, %middle.block196
  %.010.i.ph = phi ptr [ %i.bu, %vector.memcheck172 ], [ %i.bu, %.lr.ph.i.preheader ], [ %i.cb, %middle.block196 ]
  %.079.i.ph = phi ptr [ %i.bv, %vector.memcheck172 ], [ %i.bv, %.lr.ph.i.preheader ], [ %i.cc, %middle.block196 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader200, %.lr.ph.i
  %.010.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader200 ] ; 3 uses
  %.079.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader200 ] ; 3 uses
  %i.cg = load i32, ptr %.079.i, align 4, !tbaa !21
  store i32 %i.cg, ptr %.010.i, align 4, !tbaa !274
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !276
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i47 = icmp eq ptr %i.ck, %i.br
  br i1 %.not.i47, label %.loopexit.thread, label %.lr.ph.i, !llvm.loop !2137

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit: ; preds = %bb.a
  %i.cm = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEENS0_9iter_sizeIT_E4typeESF_SH_SH_T0_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.cn = sub i64 0, %i.cm
  %i.co = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.cq = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_(ptr noundef %i.co, ptr noundef %i.b, ptr noundef %i.cp) ; 0 uses
  %i.cr = sub i64 %3, %i.cm
  %i.cs = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.co, i64 noundef %i.c, i64 noundef %i.cm, i64 noundef %3, i64 noundef %i.cr) ; 0 uses
  br label %bb.e

.loopexit.thread:                                 ; preds = %.lr.ph.i, %middle.block196, %bb.d
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bs
  %i.cu = sub i64 %3, %i.bp
  %i.cv = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef nonnull %i.ct, i64 noundef %i.c, i64 noundef %i.bp, i64 noundef %3, i64 noundef %i.cu) ; 0 uses
  br label %bb.e

.lr.ph.i49.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit
  %.pre = sub i64 0, %i.bp
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.pre
  %i.cx = sub i64 %3, %i.bp
  %i.cy = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.cw, i64 noundef %i.c, i64 noundef %i.bp, i64 noundef %3, i64 noundef %i.cx) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  %i.cz = load ptr, ptr %4, align 8, !tbaa !1598  ; 7 uses
  %.idx83 = shl nuw nsw i64 %.sroa.speculated58, 3 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx83 ; 2 uses
  %i.db = add nsw i64 %.idx83, -8                 ; 2 uses
  %i.dc = lshr exact i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.db, 40
  br i1 %min.iters.check150, label %.lr.ph.i49.preheader201, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.i49.preheader
  %scevgep145 = getelementptr i8, ptr %0, i64 %.idx83
  %bound0146 = icmp ult ptr %0, %i.da
  %bound1147 = icmp ult ptr %i.cz, %scevgep145
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i49.preheader201, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck144
  %n.vec152 = and i64 %i.dd, 4611686018427387900  ; 3 uses
  %i.de = shl i64 %n.vec152, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %0, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.cz, i64 %i.de
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next167, %vector.body153 ] ; 2 uses
  %i.dh = shl i64 %index154, 3                    ; 3 uses
  %i.di = or disjoint i64 %i.dh, 16               ; 2 uses
  %next.gep155 = getelementptr i8, ptr %0, i64 %i.dh
  %next.gep156 = getelementptr i8, ptr %0, i64 %i.di
  %next.gep157 = getelementptr i8, ptr %i.cz, i64 %i.dh
  %next.gep158 = getelementptr i8, ptr %i.cz, i64 %i.di
  %wide.vec159 = load <4 x i32>, ptr %next.gep157, align 4, !tbaa !21, !alias.scope !2138
  %wide.vec162 = load <4 x i32>, ptr %next.gep158, align 4, !tbaa !21, !alias.scope !2138
  store <4 x i32> %wide.vec159, ptr %next.gep155, align 4, !tbaa !21, !alias.scope !2141, !noalias !2138
  store <4 x i32> %wide.vec162, ptr %next.gep156, align 4, !tbaa !21, !alias.scope !2141, !noalias !2138
  %index.next167 = add nuw i64 %index154, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next167, %n.vec152
  br i1 %i.dj, label %middle.block168, label %vector.body153, !llvm.loop !2143

middle.block168:                                  ; preds = %vector.body153
  %cmp.n169 = icmp eq i64 %i.dd, %n.vec152
  br i1 %cmp.n169, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54, label %.lr.ph.i49.preheader201

.lr.ph.i49.preheader201:                          ; preds = %vector.memcheck144, %.lr.ph.i49.preheader, %middle.block168
  %.010.i50.ph = phi ptr [ %0, %vector.memcheck144 ], [ %0, %.lr.ph.i49.preheader ], [ %i.df, %middle.block168 ]
  %.079.i51.ph = phi ptr [ %i.cz, %vector.memcheck144 ], [ %i.cz, %.lr.ph.i49.preheader ], [ %i.dg, %middle.block168 ]
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader201, %.lr.ph.i49
  %.010.i50 = phi ptr [ %i.dp, %.lr.ph.i49 ], [ %.010.i50.ph, %.lr.ph.i49.preheader201 ] ; 3 uses
  %.079.i51 = phi ptr [ %i.do, %.lr.ph.i49 ], [ %.079.i51.ph, %.lr.ph.i49.preheader201 ] ; 3 uses
  %i.dk = load i32, ptr %.079.i51, align 4, !tbaa !21
  store i32 %i.dk, ptr %.010.i50, align 4, !tbaa !274
  %i.dl = getelementptr inbounds nuw i8, ptr %.079.i51, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !21
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i50, i64 4
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !276
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i51, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i50, i64 8
  %.not.i52 = icmp eq ptr %i.do, %i.da
  br i1 %.not.i52, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54, label %.lr.ph.i49, !llvm.loop !2144

bb.e:                                             ; preds = %.loopexit.thread, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  br label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54: ; preds = %.lr.ph.i49, %middle.block168, %bb.e
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1599
  %.not.i55 = icmp eq i64 %i.dr, 0
  br i1 %.not.i55, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54
  store i64 0, ptr %i.dq, align 8, !tbaa !1599
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54, %.preheader.preheader.i.i
  %i.ds = shl i64 %3, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.ds)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEbT_RNS0_9iter_sizeISG_E4typeESG_SJ_SJ_SK_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %i.c = load i64, ptr %5, align 8, !tbaa !1562   ; 13 uses
  %i.d = getelementptr [8 x i8], ptr %2, i64 %i.c ; 7 uses
  %i.e = sub i64 %3, %i.c                         ; 8 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !1562
  %i.g = add i64 %i.f, %i.c                       ; 2 uses
  %i.h = icmp ugt i64 %i.e, %4                    ; 3 uses
  %.not139 = icmp ne i64 %i.c, 0
  %or.cond143.not189 = and i1 %.not139, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ule i64 %i.c, %i.j
  %or.cond187 = select i1 %or.cond143.not189, i1 %i.k, i1 false ; 8 uses
  br i1 %or.cond187, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1599 ; 3 uses
  %.not.i = icmp ugt i64 %i.c, %i.m
  %i.n = load ptr, ptr %6, align 8, !tbaa !1598   ; 15 uses
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.c, 3                   ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.p = add i64 %.idx.i, -8                      ; 2 uses
  %i.q = lshr exact i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %scevgep = getelementptr i8, ptr %i.n, i64 %.idx.i
  %bound0 = icmp ult ptr %i.n, %i.o
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.s = shl i64 %n.vec, 3                        ; 2 uses
  %i.t = getelementptr i8, ptr %i.n, i64 %i.s
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 3                        ; 3 uses
  %i.w = or disjoint i64 %i.v, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.v
  %next.gep245 = getelementptr i8, ptr %i.n, i64 %i.w
  %next.gep246 = getelementptr i8, ptr %2, i64 %i.v
  %next.gep247 = getelementptr i8, ptr %2, i64 %i.w
  %wide.vec = load <4 x i32>, ptr %next.gep246, align 4, !tbaa !21, !alias.scope !2145
  %wide.vec249 = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !21, !alias.scope !2145
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !2148, !noalias !2145
  store <4 x i32> %wide.vec249, ptr %next.gep245, align 4, !tbaa !21, !alias.scope !2148, !noalias !2145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.preheader.i ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader.i ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.y = load i32, ptr %.079.i.i, align 4, !tbaa !21
  store i32 %i.y, ptr %.010.i.i, align 4, !tbaa !274
  %i.z = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !276
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !2151

bb.c:                                             ; preds = %bb.b
  %.idx26.i = shl i64 %i.m, 3                     ; 6 uses
  %i.ae = getelementptr i8, ptr %2, i64 %.idx26.i ; 6 uses
  %.not8.i17.i = icmp eq i64 %i.m, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.c
  %i.af = add i64 %.idx26.i, -8                   ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check260 = icmp ult i64 %i.af, 40
  br i1 %min.iters.check260, label %.lr.ph.i18.i.preheader473, label %vector.memcheck254

vector.memcheck254:                               ; preds = %.lr.ph.i18.i.preheader
  %scevgep255 = getelementptr i8, ptr %i.n, i64 %.idx26.i
  %bound0256 = icmp ult ptr %i.n, %i.ae
  %bound1257 = icmp ult ptr %2, %scevgep255
  %found.conflict258 = and i1 %bound0256, %bound1257
  br i1 %found.conflict258, label %.lr.ph.i18.i.preheader473, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck254
  %n.vec262 = and i64 %i.ah, 4611686018427387900  ; 3 uses
  %i.ai = shl i64 %n.vec262, 3                    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.n, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %2, i64 %i.ai
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next277, %vector.body263 ] ; 2 uses
  %i.al = shl i64 %index264, 3                    ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep265 = getelementptr i8, ptr %i.n, i64 %i.al
  %next.gep266 = getelementptr i8, ptr %i.n, i64 %i.am
  %next.gep267 = getelementptr i8, ptr %2, i64 %i.al
  %next.gep268 = getelementptr i8, ptr %2, i64 %i.am
  %wide.vec269 = load <4 x i32>, ptr %next.gep267, align 4, !tbaa !21, !alias.scope !2152
  %wide.vec272 = load <4 x i32>, ptr %next.gep268, align 4, !tbaa !21, !alias.scope !2152
  store <4 x i32> %wide.vec269, ptr %next.gep265, align 4, !tbaa !21, !alias.scope !2155, !noalias !2152
  store <4 x i32> %wide.vec272, ptr %next.gep266, align 4, !tbaa !21, !alias.scope !2155, !noalias !2152
  %index.next277 = add nuw i64 %index264, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next277, %n.vec262
  br i1 %i.an, label %middle.block278, label %vector.body263, !llvm.loop !2157

middle.block278:                                  ; preds = %vector.body263
  %cmp.n279 = icmp eq i64 %i.ah, %n.vec262
  br i1 %cmp.n279, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader473

.lr.ph.i18.i.preheader473:                        ; preds = %vector.memcheck254, %.lr.ph.i18.i.preheader, %middle.block278
  %.010.i19.i.ph = phi ptr [ %i.n, %vector.memcheck254 ], [ %i.n, %.lr.ph.i18.i.preheader ], [ %i.aj, %middle.block278 ]
  %.079.i20.i.ph = phi ptr [ %2, %vector.memcheck254 ], [ %2, %.lr.ph.i18.i.preheader ], [ %i.ak, %middle.block278 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader473, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.at, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader473 ] ; 3 uses
  %.079.i20.i = phi ptr [ %i.as, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader473 ] ; 3 uses
  %i.ao = load i32, ptr %.079.i20.i, align 4, !tbaa !21
  store i32 %i.ao, ptr %.010.i19.i, align 4, !tbaa !274
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !276
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 8 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.as, %i.ae
  br i1 %.not.i21.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !2158

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i: ; preds = %.lr.ph.i18.i, %middle.block278, %bb.c
  %.0.lcssa.i22.i = phi ptr [ %i.n, %bb.c ], [ %i.aj, %middle.block278 ], [ %i.at, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i283 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.idx27.i = shl nsw i64 %i.c, 3                 ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %2, i64 %.idx27.i
  %.not10.i.i = icmp eq i64 %.idx26.i, %.idx27.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.av = add i64 %.idx27.i, -8
  %i.aw = sub i64 %i.av, %.idx26.i                ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check285 = icmp ult i64 %i.aw, 104
  br i1 %min.iters.check285, label %.lr.ph.i24.i.preheader472, label %vector.memcheck282

vector.memcheck282:                               ; preds = %.lr.ph.i24.i.preheader
  %i.az = add i64 %.idx26.i, %i.a
  %i.ba = sub i64 %i.az, %.0.lcssa.i22.i283
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i24.i.preheader472, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck282
  %n.vec287 = and i64 %i.ay, 4611686018427387900  ; 3 uses
  %i.bb = shl i64 %n.vec287, 3                    ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ae, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bb
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next293, %vector.body288 ] ; 2 uses
  %i.be = shl i64 %index289, 3                    ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.ae, i64 %i.be ; 2 uses
  %next.gep291 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep290, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep290, align 4
  %wide.load292 = load <2 x i64>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep291, i64 16
  store <2 x i64> %wide.load, ptr %next.gep291, align 4
  store <2 x i64> %wide.load292, ptr %i.bg, align 4
  %index.next293 = add nuw i64 %index289, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next293, %n.vec287
  br i1 %i.bh, label %middle.block294, label %vector.body288, !llvm.loop !2159

middle.block294:                                  ; preds = %vector.body288
  %cmp.n295 = icmp eq i64 %i.ay, %n.vec287
  br i1 %cmp.n295, label %.thread, label %.lr.ph.i24.i.preheader472

.lr.ph.i24.i.preheader472:                        ; preds = %vector.memcheck282, %.lr.ph.i24.i.preheader, %middle.block294
  %.012.i.i.ph = phi ptr [ %i.ae, %vector.memcheck282 ], [ %i.ae, %.lr.ph.i24.i.preheader ], [ %i.bc, %middle.block294 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck282 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bd, %middle.block294 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader472, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bj, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader472 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bk, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader472 ] ; 2 uses
  %i.bi = load i64, ptr %.012.i.i, align 4
  store i64 %i.bi, ptr %.0911.i.i, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bj, %i.au
  br i1 %.not.i25.i, label %.thread, label %.lr.ph.i24.i, !llvm.loop !2160

.thread:                                          ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block294, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  store i64 %i.c, ptr %i.l, align 8, !tbaa !1599
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bm = shl i64 %3, 3                           ; 2 uses
  %i.bn = add i64 %i.bm, -4                       ; 2 uses
  %scevgep299 = getelementptr i8, ptr %2, i64 %i.bn
  %i.bo = shl i64 %i.c, 3
  %i.bp = or disjoint i64 %i.bo, 4                ; 2 uses
  %scevgep301 = getelementptr i8, ptr %2, i64 %i.bp
  %scevgep303 = getelementptr i8, ptr %2, i64 %i.bm
  %scevgep305 = getelementptr i8, ptr %2, i64 %i.bn
  %scevgep307 = getelementptr i8, ptr %2, i64 %i.bp
  %i.bq = shl i64 %3, 3                           ; 2 uses
  %i.br = add i64 %i.bq, -4                       ; 2 uses
  %scevgep351 = getelementptr i8, ptr %2, i64 %i.br
  %scevgep353 = getelementptr i8, ptr %2, i64 %i.br
  %i.bs = shl i64 %i.c, 3
  %i.bt = or disjoint i64 %i.bs, 4                ; 2 uses
  %scevgep355 = getelementptr i8, ptr %2, i64 %i.bt
  %scevgep357 = getelementptr i8, ptr %2, i64 %i.bt
  %scevgep359 = getelementptr i8, ptr %2, i64 %i.bq
  %i.bu = shl i64 %3, 3
  %i.bv = add i64 %i.bu, -8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s
  %i.bw = select i1 %.1, i1 %i.ch, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !1562
  %i.bx = sub i64 %i.g, %spec.select
  store i64 %i.bx, ptr %1, align 8, !tbaa !1562
  br i1 %or.cond187, label %bb.t, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.0205 = phi i64 [ %4, %.lr.ph ], [ %i.ca, %bb.s ] ; 5 uses
  %.0130204 = phi i64 [ 0, %.lr.ph ], [ %i.if, %bb.s ] ; 3 uses
  %.0131203 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.s ]
  %.0132202 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.s ]
  %.0133201 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 15 uses
  %.0134200 = phi i1 [ true, %.lr.ph ], [ %i.ch, %bb.s ]
  %i.by = load i64, ptr %5, align 8, !tbaa !1562  ; 2 uses
  %i.bz = load i64, ptr %1, align 8, !tbaa !1562  ; 4 uses
  %i.ca = shl i64 %.0205, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.by, 0
  br i1 %.not.i144, label %bb.e, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.e:                                             ; preds = %bb.d
  %i.cb = lshr i64 %i.bz, 1                       ; 3 uses
  %i.cc = sub i64 %i.bz, %i.cb                    ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, 3
  br i1 %i.cd, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ce = udiv i64 %i.ca, %i.cb
  %.not192 = icmp ult i64 %i.cc, %i.ce
  br i1 %.not192, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.e, %bb.f
  %i.cf = udiv i64 %i.ca, %i.bz
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.d, %bb.f, %.critedge.i
  %.1 = phi i1 [ true, %bb.f ], [ false, %.critedge.i ], [ true, %bb.d ] ; 10 uses
  %.1.i = phi i64 [ %i.cb, %bb.f ], [ %i.cf, %.critedge.i ], [ %i.by, %bb.d ] ; 14 uses
  %i.cg = and i64 %.0130204, 1
  %i.ch = icmp eq i64 %i.cg, 0                    ; 9 uses
  %i.ci = urem i64 %i.e, %i.ca                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.ci, %.0205
  %i.cj = select i1 %.not.i145, i64 0, i64 %i.ci  ; 6 uses
  %spec.select15.i = sub i64 %i.e, %i.cj          ; 5 uses
  %i.ck = icmp ne i64 %.0130204, 0
  %or.cond = and i1 %i.ck, %.0131203
  %or.cond3 = select i1 %or.cond, i1 %.0134200, i1 false
  br i1 %or.cond3, label %bb.g, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.ch, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = sub i64 0, %.0132202
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cl ; 4 uses
  %.not8.i.i146 = icmp eq i64 %.0133201, 0        ; 2 uses
  br i1 %or.cond187, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.preheader.i148

.lr.ph.i.preheader.i148:                          ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0133201 ; 2 uses
  %.idx13.i = shl i64 %.0133201, 3                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx13.i ; 2 uses
  %i.cp = add i64 %.idx13.i, -8                   ; 2 uses
  %i.cq = lshr exact i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1
  %xtraiter476 = and i64 %i.cr, 3                 ; 2 uses
  %lcmp.mod477.not = icmp eq i64 %xtraiter476, 0
  br i1 %lcmp.mod477.not, label %.lr.ph.i.i149.prol.loopexit, label %.lr.ph.i.i149.prol

.lr.ph.i.i149.prol:                               ; preds = %.lr.ph.i.preheader.i148, %.lr.ph.i.i149.prol
  %.010.i.i150.prol = phi ptr [ %i.ct, %.lr.ph.i.i149.prol ], [ %i.cn, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %.079.i.i151.prol = phi ptr [ %i.cs, %.lr.ph.i.i149.prol ], [ %i.co, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i149.prol ], [ 0, %.lr.ph.i.preheader.i148 ]
  %i.cs = getelementptr inbounds i8, ptr %.079.i.i151.prol, i64 -8 ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %.010.i.i150.prol, i64 -8 ; 3 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !21
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !274
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i151.prol, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !21
  %i.cx = getelementptr inbounds i8, ptr %.010.i.i150.prol, i64 -4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !276
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter476
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i149.prol.loopexit, label %.lr.ph.i.i149.prol, !llvm.loop !2161

.lr.ph.i.i149.prol.loopexit:                      ; preds = %.lr.ph.i.i149.prol, %.lr.ph.i.preheader.i148
  %.010.i.i150.unr = phi ptr [ %i.cn, %.lr.ph.i.preheader.i148 ], [ %i.ct, %.lr.ph.i.i149.prol ]
  %.079.i.i151.unr = phi ptr [ %i.co, %.lr.ph.i.preheader.i148 ], [ %i.cs, %.lr.ph.i.i149.prol ]
  %i.cy = icmp ult i64 %i.cp, 24
  br i1 %i.cy, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149.prol.loopexit, %.lr.ph.i.i149
  %.010.i.i150 = phi ptr [ %i.ds, %.lr.ph.i.i149 ], [ %.010.i.i150.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %.079.i.i151 = phi ptr [ %i.dr, %.lr.ph.i.i149 ], [ %.079.i.i151.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %i.cz = getelementptr inbounds i8, ptr %.079.i.i151, i64 -8
  %i.da = getelementptr inbounds i8, ptr %.010.i.i150, i64 -8
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !21
  store i32 %i.db, ptr %i.da, align 4, !tbaa !274
  %i.dc = getelementptr inbounds i8, ptr %.079.i.i151, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !21
  %i.de = getelementptr inbounds i8, ptr %.010.i.i150, i64 -4
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !276
  %i.df = getelementptr inbounds i8, ptr %.079.i.i151, i64 -16
  %i.dg = getelementptr inbounds i8, ptr %.010.i.i150, i64 -16
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !21
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !274
  %i.di = getelementptr inbounds i8, ptr %.079.i.i151, i64 -12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !21
  %i.dk = getelementptr inbounds i8, ptr %.010.i.i150, i64 -12
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !276
  %i.dl = getelementptr inbounds i8, ptr %.079.i.i151, i64 -24
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEESC_SC_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a

bb.z:                                             ; preds = %bb.y
  %i.ep = icmp eq ptr %i.en, %i.eh
  br i1 %i.ep, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eh, %bb.y ], [ %i.ei, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1840
  %.pre184 = load ptr, ptr %1, align 8, !tbaa !1840
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  %i.eq = phi ptr [ %i.eh, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit ], [ %i.eh, %bb.z ], [ %.pre184, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !1721
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 2 uses
  store ptr %i.er, ptr %1, align 8, !tbaa !1840
  %i.es = icmp ne i64 %.0141, 0
  %.neg = sext i1 %i.es to i64
  %i.et = add i64 %.0141, %.neg
  %i.eu = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.eu to i64
  %i.ev = add i64 %.sroa.speculated, %.neg24
  %i.ew = add i64 %.096140, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ew, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3015

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.ex = load ptr, ptr %6, align 8, !tbaa !1721
  store ptr %i.ex, ptr %0, align 8, !tbaa !1721
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SI_SI_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1594 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  %i.j = load ptr, ptr %3, align 8, !tbaa !3016, !nonnull !400 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.j, ptr %7, align 8, !tbaa !1694
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1599
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.k, align 8, !tbaa !1599
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !1598   ; 5 uses
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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !3018

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
  %storemerge.i.i = add i64 %.sroa.8.0.i, 1       ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i, !llvm.loop !3019

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %storemerge.in.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %.sroa.8.0.i, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %storemerge.in.lcssa.i.i
  store i32 %i.q, ptr %0, align 4, !tbaa !274
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !276
  store ptr %i.j, ptr %6, align 8, !tbaa !1694
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.m, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.j, ptr %5, align 8, !tbaa !1694
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
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !3020

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i140.le = ptrtoaddr ptr %.114.i to i64    ; 6 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1599 ; 3 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre107 = load ptr, ptr %4, align 8, !tbaa !1598 ; 10 uses
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
  %wide.vec = load <4 x i32>, ptr %next.gep145, align 4, !tbaa !21, !alias.scope !3021
  %wide.vec148 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !21, !alias.scope !3021
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21, !alias.scope !3024, !noalias !3021
  store <4 x i32> %wide.vec148, ptr %next.gep144, align 4, !tbaa !21, !alias.scope !3024, !noalias !3021
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !3026

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
  %i.ag = load i32, ptr %.079.i.i, align 4, !tbaa !21
  store i32 %i.ag, ptr %.010.i.i, align 4, !tbaa !274
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !276
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !3027

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.s, 3                     ; 6 uses
  %i.am = getelementptr i8, ptr %.114.i, i64 %.idx26.i ; 6 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !1598  ; 9 uses
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
  %wide.vec168 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !21, !alias.scope !3028
  %wide.vec171 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !21, !alias.scope !3028
  store <4 x i32> %wide.vec168, ptr %next.gep164, align 4, !tbaa !21, !alias.scope !3031, !noalias !3028
  store <4 x i32> %wide.vec171, ptr %next.gep165, align 4, !tbaa !21, !alias.scope !3031, !noalias !3028
  %index.next176 = add nuw i64 %index163, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next176, %n.vec161
  br i1 %i.aw, label %middle.block177, label %vector.body162, !llvm.loop !3033

middle.block177:                                  ; preds = %vector.body162
  %cmp.n178 = icmp eq i64 %i.aq, %n.vec161
  br i1 %cmp.n178, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader322

.lr.ph.i18.i.preheader322:                        ; preds = %vector.memcheck153, %.lr.ph.i18.i.preheader, %middle.block177
  %.010.i19.i.ph = phi ptr [ %i.an, %vector.memcheck153 ], [ %i.an, %.lr.ph.i18.i.preheader ], [ %i.as, %middle.block177 ]
  %.079.i20.i.ph = phi ptr [ %.114.i, %vector.memcheck153 ], [ %.114.i, %.lr.ph.i18.i.preheader ], [ %i.at, %middle.block177 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader322, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.bc, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader322 ] ; 3 uses
  %.079.i20.i = phi ptr [ %i.bb, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader322 ] ; 3 uses
  %i.ax = load i32, ptr %.079.i20.i, align 4, !tbaa !21
  store i32 %i.ax, ptr %.010.i19.i, align 4, !tbaa !274
  %i.ay = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !276
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 8 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.bb, %i.am
  br i1 %.not.i21.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !3034

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i: ; preds = %.lr.ph.i18.i, %middle.block177, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.an, %bb.f ], [ %i.as, %middle.block177 ], [ %i.bc, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i182 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.p
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.bd = add i64 %i.d, -8
  %i.be = add i64 %.idx26.i, %.114.i140.le
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check184 = icmp ult i64 %i.bf, 104
  br i1 %min.iters.check184, label %.lr.ph.i24.i.preheader321, label %vector.memcheck181

vector.memcheck181:                               ; preds = %.lr.ph.i24.i.preheader
  %i.bi = add i64 %.idx26.i, %.114.i140.le
  %i.bj = sub i64 %i.bi, %.0.lcssa.i22.i182
  %diff.check = icmp ugt i64 %i.bj, -32
  br i1 %diff.check, label %.lr.ph.i24.i.preheader321, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck181
  %n.vec186 = and i64 %i.bh, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec186, 3                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.am, i64 %i.bk
  %i.bm = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bk
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next192, %vector.body187 ] ; 2 uses
  %i.bn = shl i64 %index188, 3                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.am, i64 %i.bn ; 2 uses
  %next.gep190 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep189, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep189, align 4
  %wide.load191 = load <2 x i64>, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x i64> %wide.load, ptr %next.gep190, align 4
  store <2 x i64> %wide.load191, ptr %i.bp, align 4
  %index.next192 = add nuw i64 %index188, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next192, %n.vec186
  br i1 %i.bq, label %middle.block193, label %vector.body187, !llvm.loop !3035

middle.block193:                                  ; preds = %vector.body187
  %cmp.n194 = icmp eq i64 %i.bh, %n.vec186
  br i1 %cmp.n194, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, label %.lr.ph.i24.i.preheader321

.lr.ph.i24.i.preheader321:                        ; preds = %vector.memcheck181, %.lr.ph.i24.i.preheader, %middle.block193
  %.012.i.i.ph = phi ptr [ %i.am, %vector.memcheck181 ], [ %i.am, %.lr.ph.i24.i.preheader ], [ %i.bl, %middle.block193 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck181 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bm, %middle.block193 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader321, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bs, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader321 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bt, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader321 ] ; 2 uses
  %i.br = load i64, ptr %.012.i.i, align 4
  store i64 %i.br, ptr %.0911.i.i, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bs, %1
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, label %.lr.ph.i24.i, !llvm.loop !3036

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit: ; preds = %.lr.ph.i24.i, %middle.block193
  %.pre = load ptr, ptr %4, align 8, !tbaa !1598
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, %bb.e, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.bu = phi ptr [ %i.an, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit ], [ %.pre107, %bb.e ], [ %.pre107, %middle.block ], [ %.pre107, %.lr.ph.i.i ] ; 3 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64              ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !1599
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.p ; 2 uses
  %.not24.i = icmp eq ptr %1, %.114.i
  br i1 %.not24.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 2 uses
  %.027.i = phi ptr [ %.1.i41, %bb.j ], [ %i.bu, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 12 uses
  %.01626.i = phi ptr [ %i.dc, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 9 uses
  %.01725.i = phi ptr [ %.118.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 5 uses
  %i.bx = icmp eq ptr %.01725.i, %2
  br i1 %i.bx, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.027.i199.le = ptrtoaddr ptr %.027.i to i64    ; 2 uses
  %i.by = add i64 %i.bv, %i.d
  %i.bz = add i64 %i.by, -8
  %i.ca = add i64 %.114.i140.le, %.027.i199.le
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check207 = icmp ult i64 %i.cb, 152
  br i1 %min.iters.check207, label %.lr.ph.i.i.i.preheader314, label %vector.memcheck197

vector.memcheck197:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ce = shl i64 %indvar, 3
  %i.cf = getelementptr i8, ptr %.114.i, i64 %i.ce
  %scevgep198 = getelementptr i8, ptr %i.cf, i64 8
  %i.cg = add i64 %i.bv, %i.d
  %i.ch = add i64 %i.cg, -8
  %i.ci = add i64 %.114.i140.le, %.027.i199.le
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = and i64 %i.cj, -8                       ; 2 uses
  %scevgep200 = getelementptr i8, ptr %scevgep198, i64 %i.ck
  %scevgep201 = getelementptr i8, ptr %.027.i, i64 8
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.ck
  %bound0203 = icmp ult ptr %.01626.i, %scevgep202
  %bound1204 = icmp ult ptr %.027.i, %scevgep200
  %found.conflict205 = and i1 %bound0203, %bound1204
  br i1 %found.conflict205, label %.lr.ph.i.i.i.preheader314, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck197
  %n.vec209 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cl = shl i64 %n.vec209, 3                    ; 2 uses
  %i.cm = getelementptr i8, ptr %.01626.i, i64 %i.cl
  %i.cn = getelementptr i8, ptr %.027.i, i64 %i.cl
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next224, %vector.body210 ] ; 2 uses
  %i.co = shl i64 %index211, 3                    ; 3 uses
  %i.cp = or disjoint i64 %i.co, 16               ; 2 uses
  %next.gep212 = getelementptr i8, ptr %.01626.i, i64 %i.co
  %next.gep213 = getelementptr i8, ptr %.01626.i, i64 %i.cp
  %next.gep214 = getelementptr i8, ptr %.027.i, i64 %i.co
  %next.gep215 = getelementptr i8, ptr %.027.i, i64 %i.cp
  %wide.vec216 = load <4 x i32>, ptr %next.gep214, align 4, !tbaa !21, !alias.scope !3037
  %wide.vec219 = load <4 x i32>, ptr %next.gep215, align 4, !tbaa !21, !alias.scope !3037
  store <4 x i32> %wide.vec216, ptr %next.gep212, align 4, !tbaa !21, !alias.scope !3040, !noalias !3037
  store <4 x i32> %wide.vec219, ptr %next.gep213, align 4, !tbaa !21, !alias.scope !3040, !noalias !3037
  %index.next224 = add nuw i64 %index211, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next224, %n.vec209
  br i1 %i.cq, label %middle.block225, label %vector.body210, !llvm.loop !3042

middle.block225:                                  ; preds = %vector.body210
  %cmp.n226 = icmp eq i64 %i.cd, %n.vec209
  br i1 %cmp.n226, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i.preheader314

.lr.ph.i.i.i.preheader314:                        ; preds = %vector.memcheck197, %.lr.ph.i.i.i.preheader, %middle.block225
  %.010.i.i.i.ph = phi ptr [ %.01626.i, %vector.memcheck197 ], [ %.01626.i, %.lr.ph.i.i.i.preheader ], [ %i.cm, %middle.block225 ]
  %.079.i.i.i.ph = phi ptr [ %.027.i, %vector.memcheck197 ], [ %.027.i, %.lr.ph.i.i.i.preheader ], [ %i.cn, %middle.block225 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader314, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader314 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader314 ] ; 3 uses
  %i.cr = load i32, ptr %.079.i.i.i, align 4, !tbaa !21
  store i32 %i.cr, ptr %.010.i.i.i, align 4, !tbaa !274
  %i.cs = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !276
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.cv, %i.bw
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3043

bb.g:                                             ; preds = %.lr.ph.i40
  %i.cx = load i32, ptr %.027.i, align 4, !tbaa !21 ; 2 uses
  %i.cy = load i32, ptr %.01725.i, align 4, !tbaa !21 ; 2 uses
  %.not20.i = icmp slt i32 %i.cx, %i.cy
  br i1 %.not20.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi i32 [ %i.cx, %bb.i ], [ %i.cy, %bb.h ]
  %.027.pn.i = phi ptr [ %.027.i, %bb.i ], [ %.01725.i, %bb.h ]
  %.118.i = phi ptr [ %.01725.i, %bb.i ], [ %i.cz, %bb.h ]
  %.1.i41 = phi ptr [ %i.da, %bb.i ], [ %.027.i, %bb.h ] ; 2 uses
  store i32 %.sink, ptr %.01626.i, align 4, !tbaa !274
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.027.pn.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %.01626.i, i64 4
  store i32 %.sink.i, ptr %i.db, align 4, !tbaa !276
  %i.dc = getelementptr i8, ptr %.01626.i, i64 8
  %.not.i42 = icmp eq ptr %.1.i41, %i.bw
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !2109

.lr.ph.i44:                                       ; preds = %bb.c
  %i.dd = ashr exact i64 %i.h, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i44
  %.018.i45 = phi i64 [ %i.dd, %.lr.ph.i44 ], [ %.1.i50, %bb.k ] ; 2 uses
  %.01317.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i49, %bb.k ] ; 2 uses
  %i.de = lshr i64 %.018.i45, 1                   ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.01317.i46, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !21
  %.not15.i47 = icmp slt i32 %i.b, %i.dg          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.neg.i48 = xor i64 %i.de, -1
  %i.di = add i64 %.018.i45, %.neg.i48
  %.114.i49 = select i1 %.not15.i47, ptr %.01317.i46, ptr %i.dh ; 8 uses
  %.1.i50 = select i1 %.not15.i47, i64 %i.de, i64 %i.di ; 2 uses
  %.not.i51 = icmp eq i64 %.1.i50, 0
  br i1 %.not.i51, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.k, !llvm.loop !2007

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.k
  %.114.i49231.le = ptrtoaddr ptr %.114.i49 to i64 ; 3 uses
  %i.dj = ptrtoint ptr %.114.i49 to i64
  %i.dk = sub i64 %i.dj, %i.d                     ; 3 uses
  %i.dl = ashr exact i64 %i.dk, 3                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1599 ; 3 uses
  %.not.i53 = icmp ugt i64 %i.dl, %i.dn
  br i1 %.not.i53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i54 = icmp eq ptr %.114.i49, %1
  %.pre109 = load ptr, ptr %4, align 8, !tbaa !1598 ; 10 uses
  br i1 %.not8.i.i54, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, label %.lr.ph.i.i56.preheader

.lr.ph.i.i56.preheader:                           ; preds = %bb.l
  %i.do = add i64 %.114.i49231.le, -8
  %i.dp = sub i64 %i.do, %i.d                     ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check239 = icmp ult i64 %i.dp, 88
  br i1 %min.iters.check239, label %.lr.ph.i.i56.preheader312, label %vector.memcheck229

vector.memcheck229:                               ; preds = %.lr.ph.i.i56.preheader
  %reass.sub = sub i64 %.114.i49231.le, %i.d
  %i.ds = and i64 %reass.sub, -8                  ; 2 uses
  %scevgep232 = getelementptr i8, ptr %.pre109, i64 %i.ds
  %scevgep234 = getelementptr i8, ptr %1, i64 %i.ds
  %bound0235 = icmp ult ptr %.pre109, %scevgep234
  %bound1236 = icmp ult ptr %1, %scevgep232
  %found.conflict237 = and i1 %bound0235, %bound1236
  br i1 %found.conflict237, label %.lr.ph.i.i56.preheader312, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck229
  %n.vec241 = and i64 %i.dr, 4611686018427387900  ; 3 uses
  %i.dt = shl i64 %n.vec241, 3                    ; 2 uses
  %i.du = getelementptr i8, ptr %.pre109, i64 %i.dt
  %i.dv = getelementptr i8, ptr %1, i64 %i.dt
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next256, %vector.body242 ] ; 2 uses
  %i.dw = shl i64 %index243, 3                    ; 3 uses
  %i.dx = or disjoint i64 %i.dw, 16               ; 2 uses
  %next.gep244 = getelementptr i8, ptr %.pre109, i64 %i.dw
  %next.gep245 = getelementptr i8, ptr %.pre109, i64 %i.dx
  %next.gep246 = getelementptr i8, ptr %1, i64 %i.dw
  %next.gep247 = getelementptr i8, ptr %1, i64 %i.dx
  %wide.vec248 = load <4 x i32>, ptr %next.gep246, align 4, !tbaa !21, !alias.scope !3044
  %wide.vec251 = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !21, !alias.scope !3044
  store <4 x i32> %wide.vec248, ptr %next.gep244, align 4, !tbaa !21, !alias.scope !3047, !noalias !3044
  store <4 x i32> %wide.vec251, ptr %next.gep245, align 4, !tbaa !21, !alias.scope !3047, !noalias !3044
  %index.next256 = add nuw i64 %index243, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next256, %n.vec241
  br i1 %i.dy, label %middle.block257, label %vector.body242, !llvm.loop !3049

middle.block257:                                  ; preds = %vector.body242
  %cmp.n258 = icmp eq i64 %i.dr, %n.vec241
  br i1 %cmp.n258, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, label %.lr.ph.i.i56.preheader312

.lr.ph.i.i56.preheader312:                        ; preds = %vector.memcheck229, %.lr.ph.i.i56.preheader, %middle.block257
  %.010.i.i57.ph = phi ptr [ %.pre109, %vector.memcheck229 ], [ %.pre109, %.lr.ph.i.i56.preheader ], [ %i.du, %middle.block257 ]
  %.079.i.i58.ph = phi ptr [ %1, %vector.memcheck229 ], [ %1, %.lr.ph.i.i56.preheader ], [ %i.dv, %middle.block257 ]
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader312, %.lr.ph.i.i56
  %.010.i.i57 = phi ptr [ %i.ee, %.lr.ph.i.i56 ], [ %.010.i.i57.ph, %.lr.ph.i.i56.preheader312 ] ; 3 uses
  %.079.i.i58 = phi ptr [ %i.ed, %.lr.ph.i.i56 ], [ %.079.i.i58.ph, %.lr.ph.i.i56.preheader312 ] ; 3 uses
  %i.dz = load i32, ptr %.079.i.i58, align 4, !tbaa !21
  store i32 %i.dz, ptr %.010.i.i57, align 4, !tbaa !274
  %i.ea = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 4
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !276
  %i.ed = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 8
  %.not.i.i59 = icmp eq ptr %i.ed, %.114.i49
  br i1 %.not.i.i59, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, label %.lr.ph.i.i56, !llvm.loop !3050

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx26.i60 = shl i64 %i.dn, 3                  ; 6 uses
  %i.ef = getelementptr i8, ptr %1, i64 %.idx26.i60 ; 6 uses
  %i.eg = load ptr, ptr %4, align 8, !tbaa !1598  ; 9 uses
  %.not8.i17.i61 = icmp eq i64 %i.dn, 0
  br i1 %.not8.i17.i61, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66, label %.lr.ph.i18.i62.preheader

.lr.ph.i18.i62.preheader:                         ; preds = %bb.m
  %i.eh = add i64 %.idx26.i60, -8                 ; 2 uses
  %i.ei = lshr exact i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check267 = icmp ult i64 %i.eh, 40
  br i1 %min.iters.check267, label %.lr.ph.i18.i62.preheader311, label %vector.memcheck261

vector.memcheck261:                               ; preds = %.lr.ph.i18.i62.preheader
  %scevgep262 = getelementptr i8, ptr %i.eg, i64 %.idx26.i60
  %bound0263 = icmp ult ptr %i.eg, %i.ef
  %bound1264 = icmp ult ptr %1, %scevgep262
  %found.conflict265 = and i1 %bound0263, %bound1264
  br i1 %found.conflict265, label %.lr.ph.i18.i62.preheader311, label %vector.ph268

vector.ph268:                                     ; preds = %vector.memcheck261
  %n.vec269 = and i64 %i.ej, 4611686018427387900  ; 3 uses
  %i.ek = shl i64 %n.vec269, 3                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.eg, i64 %i.ek  ; 2 uses
  %i.em = getelementptr i8, ptr %1, i64 %i.ek
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph268
  %index271 = phi i64 [ 0, %vector.ph268 ], [ %index.next284, %vector.body270 ] ; 2 uses
  %i.en = shl i64 %index271, 3                    ; 3 uses
  %i.eo = or disjoint i64 %i.en, 16               ; 2 uses
  %next.gep272 = getelementptr i8, ptr %i.eg, i64 %i.en
  %next.gep273 = getelementptr i8, ptr %i.eg, i64 %i.eo
  %next.gep274 = getelementptr i8, ptr %1, i64 %i.en
  %next.gep275 = getelementptr i8, ptr %1, i64 %i.eo
  %wide.vec276 = load <4 x i32>, ptr %next.gep274, align 4, !tbaa !21, !alias.scope !3051
  %wide.vec279 = load <4 x i32>, ptr %next.gep275, align 4, !tbaa !21, !alias.scope !3051
  store <4 x i32> %wide.vec276, ptr %next.gep272, align 4, !tbaa !21, !alias.scope !3054, !noalias !3051
  store <4 x i32> %wide.vec279, ptr %next.gep273, align 4, !tbaa !21, !alias.scope !3054, !noalias !3051
  %index.next284 = add nuw i64 %index271, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next284, %n.vec269
  br i1 %i.ep, label %middle.block285, label %vector.body270, !llvm.loop !3056

middle.block285:                                  ; preds = %vector.body270
  %cmp.n286 = icmp eq i64 %i.ej, %n.vec269
  br i1 %cmp.n286, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66, label %.lr.ph.i18.i62.preheader311

.lr.ph.i18.i62.preheader311:                      ; preds = %vector.memcheck261, %.lr.ph.i18.i62.preheader, %middle.block285
  %.010.i19.i63.ph = phi ptr [ %i.eg, %vector.memcheck261 ], [ %i.eg, %.lr.ph.i18.i62.preheader ], [ %i.el, %middle.block285 ]
  %.079.i20.i64.ph = phi ptr [ %1, %vector.memcheck261 ], [ %1, %.lr.ph.i18.i62.preheader ], [ %i.em, %middle.block285 ]
  br label %.lr.ph.i18.i62

.lr.ph.i18.i62:                                   ; preds = %.lr.ph.i18.i62.preheader311, %.lr.ph.i18.i62
  %.010.i19.i63 = phi ptr [ %i.ev, %.lr.ph.i18.i62 ], [ %.010.i19.i63.ph, %.lr.ph.i18.i62.preheader311 ] ; 3 uses
  %.079.i20.i64 = phi ptr [ %i.eu, %.lr.ph.i18.i62 ], [ %.079.i20.i64.ph, %.lr.ph.i18.i62.preheader311 ] ; 3 uses
  %i.eq = load i32, ptr %.079.i20.i64, align 4, !tbaa !21
  store i32 %i.eq, ptr %.010.i19.i63, align 4, !tbaa !274
  %i.er = getelementptr inbounds nuw i8, ptr %.079.i20.i64, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !21
  %i.et = getelementptr inbounds nuw i8, ptr %.010.i19.i63, i64 4
  store i32 %i.es, ptr %i.et, align 4, !tbaa !276
  %i.eu = getelementptr inbounds nuw i8, ptr %.079.i20.i64, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i19.i63, i64 8 ; 2 uses
  %.not.i21.i65 = icmp eq ptr %i.eu, %i.ef
  br i1 %.not.i21.i65, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66, label %.lr.ph.i18.i62, !llvm.loop !3057

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66: ; preds = %.lr.ph.i18.i62, %middle.block285, %bb.m
  %.0.lcssa.i22.i67 = phi ptr [ %i.eg, %bb.m ], [ %i.el, %middle.block285 ], [ %i.ev, %.lr.ph.i18.i62 ] ; 5 uses
  %.0.lcssa.i22.i67290 = ptrtoaddr ptr %.0.lcssa.i22.i67 to i64
  %.not10.i.i68 = icmp eq i64 %.idx26.i60, %i.dk
  br i1 %.not10.i.i68, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, label %.lr.ph.i24.i69.preheader

.lr.ph.i24.i69.preheader:                         ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66
  %i.ew = add i64 %.114.i49231.le, -8
  %i.ex = add i64 %.idx26.i60, %i.d
  %i.ey = sub i64 %i.ew, %i.ex                    ; 2 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check293 = icmp ult i64 %i.ey, 104
  br i1 %min.iters.check293, label %.lr.ph.i24.i69.preheader310, label %vector.memcheck289

vector.memcheck289:                               ; preds = %.lr.ph.i24.i69.preheader
  %i.fb = add i64 %.idx26.i60, %i.d
  %i.fc = sub i64 %i.fb, %.0.lcssa.i22.i67290
  %diff.check291 = icmp ugt i64 %i.fc, -32
  br i1 %diff.check291, label %.lr.ph.i24.i69.preheader310, label %vector.ph294

vector.ph294:                                     ; preds = %vector.memcheck289
  %n.vec295 = and i64 %i.fa, 4611686018427387900  ; 3 uses
  %i.fd = shl i64 %n.vec295, 3                    ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ef, i64 %i.fd
  %i.ff = getelementptr i8, ptr %.0.lcssa.i22.i67, i64 %i.fd
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph294
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next302, %vector.body296 ] ; 2 uses
  %i.fg = shl i64 %index297, 3                    ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.ef, i64 %i.fg ; 2 uses
  %next.gep299 = getelementptr i8, ptr %.0.lcssa.i22.i67, i64 %i.fg ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep298, i64 16
  %wide.load300 = load <2 x i64>, ptr %next.gep298, align 4
  %wide.load301 = load <2 x i64>, ptr %i.fh, align 4
  %i.fi = getelementptr i8, ptr %next.gep299, i64 16
  store <2 x i64> %wide.load300, ptr %next.gep299, align 4
  store <2 x i64> %wide.load301, ptr %i.fi, align 4
  %index.next302 = add nuw i64 %index297, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next302, %n.vec295
  br i1 %i.fj, label %middle.block303, label %vector.body296, !llvm.loop !3058

middle.block303:                                  ; preds = %vector.body296
  %cmp.n304 = icmp eq i64 %i.fa, %n.vec295
  br i1 %cmp.n304, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73.loopexit, label %.lr.ph.i24.i69.preheader310

.lr.ph.i24.i69.preheader310:                      ; preds = %vector.memcheck289, %.lr.ph.i24.i69.preheader, %middle.block303
  %.012.i.i70.ph = phi ptr [ %i.ef, %vector.memcheck289 ], [ %i.ef, %.lr.ph.i24.i69.preheader ], [ %i.fe, %middle.block303 ]
  %.0911.i.i71.ph = phi ptr [ %.0.lcssa.i22.i67, %vector.memcheck289 ], [ %.0.lcssa.i22.i67, %.lr.ph.i24.i69.preheader ], [ %i.ff, %middle.block303 ]
  br label %.lr.ph.i24.i69

.lr.ph.i24.i69:                                   ; preds = %.lr.ph.i24.i69.preheader310, %.lr.ph.i24.i69
  %.012.i.i70 = phi ptr [ %i.fl, %.lr.ph.i24.i69 ], [ %.012.i.i70.ph, %.lr.ph.i24.i69.preheader310 ] ; 2 uses
  %.0911.i.i71 = phi ptr [ %i.fm, %.lr.ph.i24.i69 ], [ %.0911.i.i71.ph, %.lr.ph.i24.i69.preheader310 ] ; 2 uses
  %i.fk = load i64, ptr %.012.i.i70, align 4
  store i64 %i.fk, ptr %.0911.i.i71, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i70, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0911.i.i71, i64 8
  %.not.i25.i72 = icmp eq ptr %i.fl, %.114.i49
  br i1 %.not.i25.i72, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73.loopexit, label %.lr.ph.i24.i69, !llvm.loop !3059

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73.loopexit: ; preds = %.lr.ph.i24.i69, %middle.block303
  %.pre108 = load ptr, ptr %4, align 8, !tbaa !1598
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73: ; preds = %.lr.ph.i.i56, %middle.block257, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73.loopexit, %bb.l, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66
  %i.fn = phi ptr [ %i.eg, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66 ], [ %.pre108, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73.loopexit ], [ %.pre109, %bb.l ], [ %.pre109, %middle.block257 ], [ %.pre109, %.lr.ph.i.i56 ] ; 3 uses
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !1599
  %.not28.i = icmp eq ptr %.114.i49, %1
  br i1 %.not28.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.dk
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %bb.n
  %.031.i = phi ptr [ %.031..i, %bb.n ], [ %1, %.lr.ph.i74.preheader ] ; 4 uses
  %.01930.i = phi ptr [ %..01930.i, %bb.n ], [ %i.fo, %.lr.ph.i74.preheader ] ; 4 uses
  %.02129.i = phi ptr [ %i.ga, %bb.n ], [ %.114.i49, %.lr.ph.i74.preheader ] ; 3 uses
  %i.fp = icmp eq ptr %0, %.031.i
  br i1 %i.fp, label %.lr.ph.i.i.i79, label %bb.n

.lr.ph.i.i.i79:                                   ; preds = %.lr.ph.i74, %.lr.ph.i.i.i79
  %.010.i.i.i80 = phi ptr [ %i.fr, %.lr.ph.i.i.i79 ], [ %.02129.i, %.lr.ph.i74 ] ; 2 uses
  %.079.i.i.i81 = phi ptr [ %i.fq, %.lr.ph.i.i.i79 ], [ %.01930.i, %.lr.ph.i74 ] ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.079.i.i.i81, i64 -8 ; 3 uses
  %i.fr = getelementptr inbounds i8, ptr %.010.i.i.i80, i64 -8 ; 2 uses
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !21
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !274
  %i.ft = getelementptr inbounds i8, ptr %.079.i.i.i81, i64 -4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !21
  %i.fv = getelementptr inbounds i8, ptr %.010.i.i.i80, i64 -4
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !276
  %.not.i.i.i82 = icmp eq ptr %i.fn, %i.fq
  br i1 %.not.i.i.i82, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i79, !llvm.loop !1607

bb.n:                                             ; preds = %.lr.ph.i74
  %i.fw = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !21 ; 2 uses
  %i.fz = load i32, ptr %i.fw, align 4, !tbaa !21 ; 2 uses
  %.not24.i75 = icmp slt i32 %i.fy, %i.fz         ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.fz)
  %.01930..031.i = select i1 %.not24.i75, ptr %.01930.i, ptr %.031.i
  %..01930.i = select i1 %.not24.i75, ptr %i.fw, ptr %.01930.i ; 2 uses
  %.031..i = select i1 %.not24.i75, ptr %.031.i, ptr %i.fx
  store i32 %..i, ptr %i.ga, align 4, !tbaa !274
  %.sink.in.i76 = getelementptr inbounds i8, ptr %.01930..031.i, i64 -4
  %.sink.i77 = load i32, ptr %.sink.in.i76, align 4, !tbaa !21
  %i.gb = getelementptr inbounds i8, ptr %.02129.i, i64 -4
  store i32 %.sink.i77, ptr %i.gb, align 4, !tbaa !276
  %.not.i78 = icmp eq ptr %i.fn, %..01930.i
  br i1 %.not.i78, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i74, !llvm.loop !3060

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.n, %.lr.ph.i.i.i79, %middle.block225, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %9 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %11 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %12 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not76 = icmp ugt i64 %4, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %9, align 8, !tbaa !2039
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !2041
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2042
  %i.f = load ptr, ptr %7, align 8, !tbaa !3016, !nonnull !400
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.f, ptr %8, align 8, !tbaa !1694
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_10range_xbufIS4_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %0, align 4, !tbaa !21     ; 2 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
  %.not90 = icmp slt i32 %i.i, %i.j
  br i1 %.not90, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %0, align 4, !tbaa !21
  store i32 %i.i, ptr %1, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !21
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  store i32 %i.n, ptr %i.k, align 4, !tbaa !21
  store i32 %i.m, ptr %i.l, align 4, !tbaa !21
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.o = icmp ult i64 %i.g, 16
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %7, align 8, !tbaa !3016, !nonnull !400
  store ptr %i.p, ptr %10, align 8, !tbaa !1694
  call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %10)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.q = icmp ugt i64 %3, %4
  br i1 %i.q, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.r = lshr i64 %3, 1                           ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %.not16.i = icmp eq ptr %2, %1
  %.pre = ptrtoint ptr %1 to i64                  ; 3 uses
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.t, %.pre
  %i.v = ashr exact i64 %i.u, 3
  %i.w = load i32, ptr %i.s, align 4, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.018.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %.01317.i = phi ptr [ %1, %.lr.ph.i ], [ %.114.i, %bb.k ] ; 2 uses
  %i.x = lshr i64 %.018.i, 1                      ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_bbT0_RT1_:bb.a
  %i.ao = sub i64 0, %5
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ao
  store ptr %i.ap, ptr %17, align 8, !tbaa !391, !alias.scope !6197
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %5, i64 noundef %i.af, i64 noundef %i.al, i64 noundef %i.am, i64 noundef %i.ah, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.h:                                             ; preds = %bb.f
  store ptr %i.d, ptr %18, align 8, !tbaa !391
  store ptr %i.e, ptr %19, align 8, !tbaa !391
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, i64 noundef %5, i64 noundef %i.af, i64 noundef %i.al, i64 noundef %i.am, i64 noundef %i.ah)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.i:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1599 ; 3 uses
  %i.as = icmp ugt i64 %i.ar, %5
  br i1 %i.as, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.i
  store i64 %5, ptr %i.aq, align 8, !tbaa !1599
  %.pre101 = load ptr, ptr %8, align 8, !tbaa !1598
  br label %bb.k

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit: ; preds = %bb.i
  %i.at = icmp ult i64 %i.ar, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !1598  ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !391   ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ar
  %i.aw = load i64, ptr %i.au, align 4
  store i64 %i.aw, ptr %i.av, align 4
  %storemerge.in6.i43 = load i64, ptr %i.aq, align 8, !tbaa !1599 ; 3 uses
  %storemerge7.i44 = add i64 %storemerge.in6.i43, 1 ; 3 uses
  store i64 %storemerge7.i44, ptr %i.aq, align 8, !tbaa !1599
  %.not8.i45 = icmp eq i64 %storemerge7.i44, %5
  br i1 %.not8.i45, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.j, %.lr.ph.i46
  %storemerge10.i47 = phi i64 [ %storemerge.i50, %.lr.ph.i46 ], [ %storemerge7.i44, %bb.j ]
  %storemerge.in9.i48 = phi i64 [ %storemerge.in.i49, %.lr.ph.i46 ], [ %storemerge.in6.i43, %bb.j ]
  %i.ax = load ptr, ptr %8, align 8, !tbaa !1598  ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %storemerge10.i47
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %storemerge.in9.i48
  %i.ba = load i64, ptr %i.az, align 4
  store i64 %i.ba, ptr %i.ay, align 4
  %storemerge.in.i49 = load i64, ptr %i.aq, align 8, !tbaa !1599 ; 3 uses
  %storemerge.i50 = add i64 %storemerge.in.i49, 1 ; 3 uses
  store i64 %storemerge.i50, ptr %i.aq, align 8, !tbaa !1599
  %.not.i51 = icmp eq i64 %storemerge.i50, %5
  br i1 %.not.i51, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54, label %.lr.ph.i46, !llvm.loop !1617

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54: ; preds = %.lr.ph.i46, %bb.j
  %storemerge.in.lcssa.i53 = phi i64 [ %storemerge.in6.i43, %bb.j ], [ %storemerge.in.i49, %.lr.ph.i46 ]
  %i.bb = load ptr, ptr %8, align 8, !tbaa !1598  ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %storemerge.in.lcssa.i53 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  store i32 %i.bd, ptr %i.au, align 4, !tbaa !274
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !276
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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !1562
  store <2 x i64> %step.add, ptr %i.cb, align 8, !tbaa !1562
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !6200

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
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !1562
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ce = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ce, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i, !llvm.loop !6201

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  %i.cf = load ptr, ptr %0, align 8, !tbaa !44
  store ptr %i.cf, ptr %20, align 8, !tbaa !391
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %i.bm, ptr noundef nonnull align 8 dead_on_return %20, i64 noundef %5, i64 noundef %i.bn, i64 noundef %i.bt, i64 noundef %i.bu, i64 noundef %i.bp, ptr noundef %i.bh)
  %i.cg = load i64, ptr %i.aq, align 8, !tbaa !1599
  %.not.i55 = icmp eq i64 %i.cg, 0
  br i1 %.not.i55, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit
  store i64 0, ptr %i.aq, align 8, !tbaa !1599
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, %bb.e, %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !391    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !391    ; 6 uses
  %.not60 = icmp eq ptr %i.a, %i.b
  br i1 %.not60, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !391    ; 2 uses
  %.not61 = icmp eq ptr %i.b, %i.c
  br i1 %.not61, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !21   ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !21   ; 2 uses
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21, !noalias !6202
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 24 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !6205

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.w = ptrtoaddr ptr %i.v to i64                ; 6 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !391
  %i.x = load ptr, ptr %1, align 8, !tbaa !391    ; 9 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 6 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 3                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1599 ; 3 uses
  %.not.i7 = icmp ugt i64 %i.ab, %i.ad
  br i1 %.not.i7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.not3.i.i = icmp eq ptr %i.x, %i.v
  %.pre86 = load ptr, ptr %3, align 8, !tbaa !1598 ; 10 uses
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
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !21, !alias.scope !6206
  %wide.vec142 = load <4 x i32>, ptr %next.gep138, align 4, !tbaa !21, !alias.scope !6206
  store <4 x i32> %wide.vec, ptr %next.gep139, align 4, !tbaa !21, !alias.scope !6209, !noalias !6206
  store <4 x i32> %wide.vec142, ptr %next.gep140, align 4, !tbaa !21, !alias.scope !6209, !noalias !6206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !6211

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
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21
  store i32 %i.as, ptr %.04.i.i, align 4, !tbaa !274
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.au, ptr %i.av, align 4, !tbaa !276
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.aw, %i.x
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !6212

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx28.i = shl i64 %i.ad, 3                    ; 6 uses
  %i.ay = getelementptr i8, ptr %i.v, i64 %.idx28.i ; 6 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !1598  ; 9 uses
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
  %wide.vec162 = load <4 x i32>, ptr %next.gep158, align 4, !tbaa !21, !alias.scope !6213
  %wide.vec165 = load <4 x i32>, ptr %next.gep159, align 4, !tbaa !21, !alias.scope !6213
  store <4 x i32> %wide.vec162, ptr %next.gep160, align 4, !tbaa !21, !alias.scope !6216, !noalias !6213
  store <4 x i32> %wide.vec165, ptr %next.gep161, align 4, !tbaa !21, !alias.scope !6216, !noalias !6213
  %index.next170 = add nuw i64 %index157, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next170, %n.vec155
  br i1 %i.bi, label %middle.block171, label %vector.body156, !llvm.loop !6218

middle.block171:                                  ; preds = %vector.body156
  %cmp.n172 = icmp eq i64 %i.bc, %n.vec155
  br i1 %cmp.n172, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i, label %.lr.ph.i11.i.preheader319

.lr.ph.i11.i.preheader319:                        ; preds = %vector.memcheck147, %.lr.ph.i11.i.preheader, %middle.block171
  %.ph320 = phi ptr [ %i.v, %vector.memcheck147 ], [ %i.v, %.lr.ph.i11.i.preheader ], [ %i.be, %middle.block171 ]
  %.04.i12.i.ph = phi ptr [ %i.az, %vector.memcheck147 ], [ %i.az, %.lr.ph.i11.i.preheader ], [ %i.bf, %middle.block171 ]
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i.preheader319, %.lr.ph.i11.i
  %i.bj = phi ptr [ %i.bo, %.lr.ph.i11.i ], [ %.ph320, %.lr.ph.i11.i.preheader319 ] ; 3 uses
  %.04.i12.i = phi ptr [ %i.bp, %.lr.ph.i11.i ], [ %.04.i12.i.ph, %.lr.ph.i11.i.preheader319 ] ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !21
  store i32 %i.bk, ptr %.04.i12.i, align 4, !tbaa !274
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.04.i12.i, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !276
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.04.i12.i, i64 8 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.bo, %i.ay
  br i1 %.not.i13.i, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i, label %.lr.ph.i11.i, !llvm.loop !6219

_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i: ; preds = %.lr.ph.i11.i, %middle.block171, %bb.f
  %.0.lcssa.i14.i = phi ptr [ %i.az, %bb.f ], [ %i.bf, %middle.block171 ], [ %i.bp, %.lr.ph.i11.i ] ; 5 uses
  %.0.lcssa.i14.i176 = ptrtoaddr ptr %.0.lcssa.i14.i to i64
  %.not5.i.i = icmp eq i64 %.idx28.i, %i.aa
  br i1 %.not5.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i16.i.preheader

.lr.ph.i16.i.preheader:                           ; preds = %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i
  %i.bq = add i64 %i.y, -8
  %i.br = add i64 %.idx28.i, %i.w
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check178 = icmp ult i64 %i.bs, 104
  br i1 %min.iters.check178, label %.lr.ph.i16.i.preheader318, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.lr.ph.i16.i.preheader
  %i.bv = add i64 %.idx28.i, %i.w
  %i.bw = sub i64 %i.bv, %.0.lcssa.i14.i176
  %diff.check = icmp ugt i64 %i.bw, -32
  br i1 %diff.check, label %.lr.ph.i16.i.preheader318, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck175
  %n.vec180 = and i64 %i.bu, 4611686018427387900  ; 3 uses
  %i.bx = shl i64 %n.vec180, 3                    ; 2 uses
  %i.by = getelementptr i8, ptr %i.ay, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.0.lcssa.i14.i, i64 %i.bx
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body181 ] ; 2 uses
  %i.ca = shl i64 %index182, 3                    ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.ay, i64 %i.ca ; 2 uses
  %next.gep184 = getelementptr i8, ptr %.0.lcssa.i14.i, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep183, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep183, align 4
  %wide.load185 = load <2 x i64>, ptr %i.cb, align 4
  %i.cc = getelementptr i8, ptr %next.gep184, i64 16
  store <2 x i64> %wide.load, ptr %next.gep184, align 4
  store <2 x i64> %wide.load185, ptr %i.cc, align 4
  %index.next186 = add nuw i64 %index182, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next186, %n.vec180
  br i1 %i.cd, label %middle.block187, label %vector.body181, !llvm.loop !6220

middle.block187:                                  ; preds = %vector.body181
  %cmp.n188 = icmp eq i64 %i.bu, %n.vec180
  br i1 %cmp.n188, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit, label %.lr.ph.i16.i.preheader318

.lr.ph.i16.i.preheader318:                        ; preds = %vector.memcheck175, %.lr.ph.i16.i.preheader, %middle.block187
  %.sroa.020.0.i.ph = phi ptr [ %i.ay, %vector.memcheck175 ], [ %i.ay, %.lr.ph.i16.i.preheader ], [ %i.by, %middle.block187 ]
  %.06.i.i.ph = phi ptr [ %.0.lcssa.i14.i, %vector.memcheck175 ], [ %.0.lcssa.i14.i, %.lr.ph.i16.i.preheader ], [ %i.bz, %middle.block187 ]
  br label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %.lr.ph.i16.i.preheader318, %.lr.ph.i16.i
  %.sroa.020.0.i = phi ptr [ %i.cf, %.lr.ph.i16.i ], [ %.sroa.020.0.i.ph, %.lr.ph.i16.i.preheader318 ] ; 2 uses
  %.06.i.i = phi ptr [ %i.cg, %.lr.ph.i16.i ], [ %.06.i.i.ph, %.lr.ph.i16.i.preheader318 ] ; 2 uses
  %i.ce = load i64, ptr %.sroa.020.0.i, align 4
  store i64 %i.ce, ptr %.06.i.i, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %.not.i17.i = icmp eq ptr %i.cf, %i.x
  br i1 %.not.i17.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit, label %.lr.ph.i16.i, !llvm.loop !6221

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit: ; preds = %.lr.ph.i16.i, %middle.block187
  %.pre = load ptr, ptr %3, align 8, !tbaa !1598
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !44
  %.pre88 = load ptr, ptr %1, align 8, !tbaa !44
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit, %bb.e, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i
  %i.ch = phi ptr [ %i.x, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i ], [ %.pre88, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit ], [ %i.x, %bb.e ], [ %i.x, %middle.block ], [ %i.x, %.lr.ph.i.i ]
  %i.ci = phi ptr [ %i.v, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i ], [ %.pre87, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit ], [ %i.v, %bb.e ], [ %i.v, %middle.block ], [ %i.v, %.lr.ph.i.i ] ; 2 uses
  %i.cj = phi ptr [ %i.az, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit ], [ %.pre86, %bb.e ], [ %.pre86, %middle.block ], [ %.pre86, %.lr.ph.i.i ] ; 3 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64              ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !1599
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.aa ; 2 uses
  %i.cm = load ptr, ptr %2, align 8, !tbaa !44
  %.not14.i = icmp eq ptr %i.x, %i.v
  br i1 %.not14.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ] ; 2 uses
  %.sroa.052.0 = phi ptr [ %.sroa.052.1, %bb.j ], [ %i.ch, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ] ; 5 uses
  %.sroa.053.0 = phi ptr [ %i.du, %bb.j ], [ %i.ci, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ] ; 10 uses
  %.015.i = phi ptr [ %.1.i9, %bb.j ], [ %i.cj, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ] ; 12 uses
  %i.cn = icmp eq ptr %.sroa.052.0, %i.cm
  br i1 %i.cn, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i8
  %.015.i193.le = ptrtoaddr ptr %.015.i to i64    ; 2 uses
  %i.co = add i64 %i.ck, %i.y
  %i.cp = add i64 %i.co, -8
  %i.cq = add i64 %i.w, %.015.i193.le
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.cr, 152
  br i1 %min.iters.check201, label %.lr.ph.i.i.i.preheader310, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.cu = shl i64 %indvar, 3
  %i.cv = getelementptr i8, ptr %i.ci, i64 %i.cu
  %scevgep192 = getelementptr i8, ptr %i.cv, i64 8
  %i.cw = add i64 %i.ck, %i.y
  %i.cx = add i64 %i.cw, -8
  %i.cy = add i64 %i.w, %.015.i193.le
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = and i64 %i.cz, -8                       ; 2 uses
  %scevgep194 = getelementptr i8, ptr %scevgep192, i64 %i.da
  %scevgep195 = getelementptr i8, ptr %.015.i, i64 8
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.da
  %bound0197 = icmp ult ptr %.sroa.053.0, %scevgep196
  %bound1198 = icmp ult ptr %.015.i, %scevgep194
  %found.conflict199 = and i1 %bound0197, %bound1198
  br i1 %found.conflict199, label %.lr.ph.i.i.i.preheader310, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck191
  %n.vec203 = and i64 %i.ct, 4611686018427387900  ; 3 uses
  %i.db = shl i64 %n.vec203, 3                    ; 2 uses
  %i.dc = getelementptr i8, ptr %.sroa.053.0, i64 %i.db
  %i.dd = getelementptr i8, ptr %.015.i, i64 %i.db
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next218, %vector.body204 ] ; 2 uses
  %i.de = shl i64 %index205, 3                    ; 3 uses
  %i.df = or disjoint i64 %i.de, 16               ; 2 uses
  %next.gep206 = getelementptr i8, ptr %.sroa.053.0, i64 %i.de
  %next.gep207 = getelementptr i8, ptr %.sroa.053.0, i64 %i.df
  %next.gep208 = getelementptr i8, ptr %.015.i, i64 %i.de
  %next.gep209 = getelementptr i8, ptr %.015.i, i64 %i.df
  %wide.vec210 = load <4 x i32>, ptr %next.gep208, align 4, !tbaa !21, !alias.scope !6222, !noalias !6225
  %wide.vec213 = load <4 x i32>, ptr %next.gep209, align 4, !tbaa !21, !alias.scope !6222, !noalias !6225
  store <4 x i32> %wide.vec210, ptr %next.gep206, align 4, !tbaa !21, !alias.scope !6230, !noalias !6225
  store <4 x i32> %wide.vec213, ptr %next.gep207, align 4, !tbaa !21, !alias.scope !6230, !noalias !6225
  %index.next218 = add nuw i64 %index205, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next218, %n.vec203
  br i1 %i.dg, label %middle.block219, label %vector.body204, !llvm.loop !6232

middle.block219:                                  ; preds = %vector.body204
  %cmp.n220 = icmp eq i64 %i.ct, %n.vec203
  br i1 %cmp.n220, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i.preheader310

.lr.ph.i.i.i.preheader310:                        ; preds = %vector.memcheck191, %.lr.ph.i.i.i.preheader, %middle.block219
  %.ph311 = phi ptr [ %.sroa.053.0, %vector.memcheck191 ], [ %.sroa.053.0, %.lr.ph.i.i.i.preheader ], [ %i.dc, %middle.block219 ]
  %.05.i.i.i.ph = phi ptr [ %.015.i, %vector.memcheck191 ], [ %.015.i, %.lr.ph.i.i.i.preheader ], [ %i.dd, %middle.block219 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader310, %.lr.ph.i.i.i
  %i.dh = phi ptr [ %i.dn, %.lr.ph.i.i.i ], [ %.ph311, %.lr.ph.i.i.i.preheader310 ] ; 3 uses
  %.05.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i.preheader310 ] ; 3 uses
  %i.di = load i32, ptr %.05.i.i.i, align 4, !tbaa !21, !noalias !6225
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !274, !noalias !6225
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21, !noalias !6225
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !276, !noalias !6225
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.not.i.i.i = icmp eq ptr %i.dm, %i.cl
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !6233

bb.g:                                             ; preds = %.lr.ph.i8
  %i.do = load i32, ptr %.sroa.052.0, align 4, !tbaa !21 ; 2 uses
  %i.dp = load i32, ptr %.015.i, align 4, !tbaa !21 ; 2 uses
  %i.dq = icmp slt i32 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.053.0, i64 4
  br i1 %i.dq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.do, ptr %.sroa.053.0, align 4, !tbaa !274
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.052.0, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.dp, ptr %.sroa.053.0, align 4, !tbaa !274
  %i.dt = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.pn = phi ptr [ %.sroa.052.0, %bb.h ], [ %.015.i, %bb.i ]
  %.sroa.052.1 = phi ptr [ %i.ds, %bb.h ], [ %.sroa.052.0, %bb.i ]
  %.1.i9 = phi ptr [ %.015.i, %bb.h ], [ %i.dt, %bb.i ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sroa.052.0.pn, i64 4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !21
  store i32 %.sink, ptr %i.dr, align 4, !tbaa !276
  %i.du = getelementptr i8, ptr %.sroa.053.0, i64 8
  %.not.i10 = icmp eq ptr %.1.i9, %i.cl
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i10, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i8, !llvm.loop !6234

.lr.ph.i12:                                       ; preds = %bb.d, %.lr.ph.i12
  %i.dv = phi ptr [ %i.ec, %.lr.ph.i12 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i13 = phi i64 [ %.1.i15, %.lr.ph.i12 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dw = lshr i64 %.010.i13, 1                   ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !21, !noalias !6235
  %i.dz = icmp slt i32 %i.dy, %i.f                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.neg.i14 = xor i64 %i.dw, -1
  %i.eb = add i64 %.010.i13, %.neg.i14
  %i.ec = select i1 %i.dz, ptr %i.ea, ptr %i.dv   ; 8 uses
  %.1.i15 = select i1 %i.dz, i64 %i.eb, i64 %i.dw ; 2 uses
  %.not.i16 = icmp eq i64 %.1.i15, 0
  br i1 %.not.i16, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i12, !llvm.loop !6186

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i12
  %i.ed = ptrtoaddr ptr %i.ec to i64              ; 3 uses
  store ptr %i.ec, ptr %2, align 8, !tbaa !391
  %i.ee = load ptr, ptr %1, align 8, !tbaa !44    ; 21 uses
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = ptrtoint ptr %i.ee to i64               ; 5 uses
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = ashr exact i64 %i.eh, 3                 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1599 ; 3 uses
  %.not.i17 = icmp ugt i64 %i.ei, %i.ek
  br i1 %.not.i17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.not3.i.i18 = icmp eq ptr %i.ec, %i.ee
  %.pre91 = load ptr, ptr %3, align 8, !tbaa !1598 ; 10 uses
  br i1 %.not3.i.i18, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35, label %.lr.ph.i.i20.preheader

.lr.ph.i.i20.preheader:                           ; preds = %bb.k
  %i.el = add i64 %i.ed, -8
  %i.em = sub i64 %i.el, %i.eg                    ; 2 uses
  %i.en = lshr i64 %i.em, 3
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check232 = icmp ult i64 %i.em, 88
  br i1 %min.iters.check232, label %.lr.ph.i.i20.preheader305, label %vector.memcheck223

vector.memcheck223:                               ; preds = %.lr.ph.i.i20.preheader
  %reass.sub = sub i64 %i.ed, %i.eg
  %i.ep = and i64 %reass.sub, -8                  ; 2 uses
  %scevgep225 = getelementptr i8, ptr %.pre91, i64 %i.ep
  %scevgep227 = getelementptr i8, ptr %i.ee, i64 %i.ep
  %bound0228 = icmp ult ptr %.pre91, %scevgep227
  %bound1229 = icmp ult ptr %i.ee, %scevgep225
  %found.conflict230 = and i1 %bound0228, %bound1229
  br i1 %found.conflict230, label %.lr.ph.i.i20.preheader305, label %vector.ph233

vector.ph233:                                     ; preds = %vector.memcheck223
  %n.vec234 = and i64 %i.eo, 4611686018427387900  ; 3 uses
  %i.eq = shl i64 %n.vec234, 3                    ; 2 uses
  %i.er = getelementptr i8, ptr %i.ee, i64 %i.eq
  %i.es = getelementptr i8, ptr %.pre91, i64 %i.eq
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next249, %vector.body235 ] ; 2 uses
  %i.et = shl i64 %index236, 3                    ; 3 uses
  %i.eu = or disjoint i64 %i.et, 16               ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.ee, i64 %i.et
  %next.gep238 = getelementptr i8, ptr %i.ee, i64 %i.eu
  %next.gep239 = getelementptr i8, ptr %.pre91, i64 %i.et
  %next.gep240 = getelementptr i8, ptr %.pre91, i64 %i.eu
  %wide.vec241 = load <4 x i32>, ptr %next.gep237, align 4, !tbaa !21, !alias.scope !6238
  %wide.vec244 = load <4 x i32>, ptr %next.gep238, align 4, !tbaa !21, !alias.scope !6238
  store <4 x i32> %wide.vec241, ptr %next.gep239, align 4, !tbaa !21, !alias.scope !6241, !noalias !6238
  store <4 x i32> %wide.vec244, ptr %next.gep240, align 4, !tbaa !21, !alias.scope !6241, !noalias !6238
  %index.next249 = add nuw i64 %index236, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next249, %n.vec234
  br i1 %i.ev, label %middle.block250, label %vector.body235, !llvm.loop !6243

middle.block250:                                  ; preds = %vector.body235
  %cmp.n251 = icmp eq i64 %i.eo, %n.vec234
  br i1 %cmp.n251, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35, label %.lr.ph.i.i20.preheader305

.lr.ph.i.i20.preheader305:                        ; preds = %vector.memcheck223, %.lr.ph.i.i20.preheader, %middle.block250
  %.ph306 = phi ptr [ %i.ee, %vector.memcheck223 ], [ %i.ee, %.lr.ph.i.i20.preheader ], [ %i.er, %middle.block250 ]
  %.04.i.i21.ph = phi ptr [ %.pre91, %vector.memcheck223 ], [ %.pre91, %.lr.ph.i.i20.preheader ], [ %i.es, %middle.block250 ]
  br label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i.i20.preheader305, %.lr.ph.i.i20
  %i.ew = phi ptr [ %i.fb, %.lr.ph.i.i20 ], [ %.ph306, %.lr.ph.i.i20.preheader305 ] ; 3 uses
  %.04.i.i21 = phi ptr [ %i.fc, %.lr.ph.i.i20 ], [ %.04.i.i21.ph, %.lr.ph.i.i20.preheader305 ] ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !21
  store i32 %i.ex, ptr %.04.i.i21, align 4, !tbaa !274
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %.04.i.i21, i64 4
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !276
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.04.i.i21, i64 8
  %.not.i.i22 = icmp eq ptr %i.fb, %i.ec
  br i1 %.not.i.i22, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35, label %.lr.ph.i.i20, !llvm.loop !6244

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx28.i23 = shl i64 %i.ek, 3                  ; 6 uses
  %i.fd = getelementptr i8, ptr %i.ee, i64 %.idx28.i23 ; 6 uses
  %i.fe = load ptr, ptr %3, align 8, !tbaa !1598  ; 9 uses
  %.not3.i10.i24 = icmp eq i64 %i.ek, 0
  br i1 %.not3.i10.i24, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28, label %.lr.ph.i11.i25.preheader

.lr.ph.i11.i25.preheader:                         ; preds = %bb.l
  %i.ff = add i64 %.idx28.i23, -8                 ; 2 uses
  %i.fg = lshr exact i64 %i.ff, 3
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check260 = icmp ult i64 %i.ff, 40
  br i1 %min.iters.check260, label %.lr.ph.i11.i25.preheader304, label %vector.memcheck254

vector.memcheck254:                               ; preds = %.lr.ph.i11.i25.preheader
  %scevgep255 = getelementptr i8, ptr %i.fe, i64 %.idx28.i23
  %bound0256 = icmp ult ptr %i.fe, %i.fd
  %bound1257 = icmp ult ptr %i.ee, %scevgep255
  %found.conflict258 = and i1 %bound0256, %bound1257
  br i1 %found.conflict258, label %.lr.ph.i11.i25.preheader304, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck254
  %n.vec262 = and i64 %i.fh, 4611686018427387900  ; 3 uses
  %i.fi = shl i64 %n.vec262, 3                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ee, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fe, i64 %i.fi  ; 2 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next277, %vector.body263 ] ; 2 uses
  %i.fl = shl i64 %index264, 3                    ; 3 uses
  %i.fm = or disjoint i64 %i.fl, 16               ; 2 uses
  %next.gep265 = getelementptr i8, ptr %i.ee, i64 %i.fl
  %next.gep266 = getelementptr i8, ptr %i.ee, i64 %i.fm
  %next.gep267 = getelementptr i8, ptr %i.fe, i64 %i.fl
  %next.gep268 = getelementptr i8, ptr %i.fe, i64 %i.fm
  %wide.vec269 = load <4 x i32>, ptr %next.gep265, align 4, !tbaa !21, !alias.scope !6245
  %wide.vec272 = load <4 x i32>, ptr %next.gep266, align 4, !tbaa !21, !alias.scope !6245
  store <4 x i32> %wide.vec269, ptr %next.gep267, align 4, !tbaa !21, !alias.scope !6248, !noalias !6245
  store <4 x i32> %wide.vec272, ptr %next.gep268, align 4, !tbaa !21, !alias.scope !6248, !noalias !6245
  %index.next277 = add nuw i64 %index264, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next277, %n.vec262
  br i1 %i.fn, label %middle.block278, label %vector.body263, !llvm.loop !6250

middle.block278:                                  ; preds = %vector.body263
  %cmp.n279 = icmp eq i64 %i.fh, %n.vec262
  br i1 %cmp.n279, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28, label %.lr.ph.i11.i25.preheader304

.lr.ph.i11.i25.preheader304:                      ; preds = %vector.memcheck254, %.lr.ph.i11.i25.preheader, %middle.block278
  %.ph = phi ptr [ %i.ee, %vector.memcheck254 ], [ %i.ee, %.lr.ph.i11.i25.preheader ], [ %i.fj, %middle.block278 ]
  %.04.i12.i26.ph = phi ptr [ %i.fe, %vector.memcheck254 ], [ %i.fe, %.lr.ph.i11.i25.preheader ], [ %i.fk, %middle.block278 ]
  br label %.lr.ph.i11.i25

.lr.ph.i11.i25:                                   ; preds = %.lr.ph.i11.i25.preheader304, %.lr.ph.i11.i25
  %i.fo = phi ptr [ %i.ft, %.lr.ph.i11.i25 ], [ %.ph, %.lr.ph.i11.i25.preheader304 ] ; 3 uses
  %.04.i12.i26 = phi ptr [ %i.fu, %.lr.ph.i11.i25 ], [ %.04.i12.i26.ph, %.lr.ph.i11.i25.preheader304 ] ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !21
  store i32 %i.fp, ptr %.04.i12.i26, align 4, !tbaa !274
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !21
  %i.fs = getelementptr inbounds nuw i8, ptr %.04.i12.i26, i64 4
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !276
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.04.i12.i26, i64 8 ; 2 uses
  %.not.i13.i27 = icmp eq ptr %i.ft, %i.fd
  br i1 %.not.i13.i27, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28, label %.lr.ph.i11.i25, !llvm.loop !6251

_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28: ; preds = %.lr.ph.i11.i25, %middle.block278, %bb.l
  %.0.lcssa.i14.i29 = phi ptr [ %i.fe, %bb.l ], [ %i.fk, %middle.block278 ], [ %i.fu, %.lr.ph.i11.i25 ] ; 5 uses
  %.0.lcssa.i14.i29283 = ptrtoaddr ptr %.0.lcssa.i14.i29 to i64
  %.not5.i.i30 = icmp eq i64 %.idx28.i23, %i.eh
  br i1 %.not5.i.i30, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35, label %.lr.ph.i16.i31.preheader

.lr.ph.i16.i31.preheader:                         ; preds = %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28
  %i.fv = add i64 %i.ed, -8
  %i.fw = add i64 %.idx28.i23, %i.eg
  %i.fx = sub i64 %i.fv, %i.fw                    ; 2 uses
  %i.fy = lshr i64 %i.fx, 3
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check286 = icmp ult i64 %i.fx, 104
  br i1 %min.iters.check286, label %.lr.ph.i16.i31.preheader303, label %vector.memcheck282

vector.memcheck282:                               ; preds = %.lr.ph.i16.i31.preheader
  %i.ga = add i64 %.idx28.i23, %i.eg
  %i.gb = sub i64 %i.ga, %.0.lcssa.i14.i29283
  %diff.check284 = icmp ugt i64 %i.gb, -32
  br i1 %diff.check284, label %.lr.ph.i16.i31.preheader303, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck282
  %n.vec288 = and i64 %i.fz, 4611686018427387900  ; 3 uses
  %i.gc = shl i64 %n.vec288, 3                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fd, i64 %i.gc
  %i.ge = getelementptr i8, ptr %.0.lcssa.i14.i29, i64 %i.gc
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next295, %vector.body289 ] ; 2 uses
  %i.gf = shl i64 %index290, 3                    ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.fd, i64 %i.gf ; 2 uses
  %next.gep292 = getelementptr i8, ptr %.0.lcssa.i14.i29, i64 %i.gf ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep291, i64 16
  %wide.load293 = load <2 x i64>, ptr %next.gep291, align 4
  %wide.load294 = load <2 x i64>, ptr %i.gg, align 4
  %i.gh = getelementptr i8, ptr %next.gep292, i64 16
  store <2 x i64> %wide.load293, ptr %next.gep292, align 4
  store <2 x i64> %wide.load294, ptr %i.gh, align 4
  %index.next295 = add nuw i64 %index290, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next295, %n.vec288
  br i1 %i.gi, label %middle.block296, label %vector.body289, !llvm.loop !6252

middle.block296:                                  ; preds = %vector.body289
  %cmp.n297 = icmp eq i64 %i.fz, %n.vec288
  br i1 %cmp.n297, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit, label %.lr.ph.i16.i31.preheader303

.lr.ph.i16.i31.preheader303:                      ; preds = %vector.memcheck282, %.lr.ph.i16.i31.preheader, %middle.block296
  %.sroa.020.0.i32.ph = phi ptr [ %i.fd, %vector.memcheck282 ], [ %i.fd, %.lr.ph.i16.i31.preheader ], [ %i.gd, %middle.block296 ]
  %.06.i.i33.ph = phi ptr [ %.0.lcssa.i14.i29, %vector.memcheck282 ], [ %.0.lcssa.i14.i29, %.lr.ph.i16.i31.preheader ], [ %i.ge, %middle.block296 ]
  br label %.lr.ph.i16.i31

.lr.ph.i16.i31:                                   ; preds = %.lr.ph.i16.i31.preheader303, %.lr.ph.i16.i31
  %.sroa.020.0.i32 = phi ptr [ %i.gk, %.lr.ph.i16.i31 ], [ %.sroa.020.0.i32.ph, %.lr.ph.i16.i31.preheader303 ] ; 2 uses
  %.06.i.i33 = phi ptr [ %i.gl, %.lr.ph.i16.i31 ], [ %.06.i.i33.ph, %.lr.ph.i16.i31.preheader303 ] ; 2 uses
  %i.gj = load i64, ptr %.sroa.020.0.i32, align 4
  store i64 %i.gj, ptr %.06.i.i33, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i32, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.06.i.i33, i64 8
  %.not.i17.i34 = icmp eq ptr %i.gk, %i.ec
  br i1 %.not.i17.i34, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit, label %.lr.ph.i16.i31, !llvm.loop !6253

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit: ; preds = %.lr.ph.i16.i31, %middle.block296
  %.pre89 = load ptr, ptr %1, align 8, !tbaa !44
  %.pre90 = load ptr, ptr %3, align 8, !tbaa !1598
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35: ; preds = %.lr.ph.i.i20, %middle.block250, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit, %bb.k, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28
  %i.gm = phi ptr [ %i.fe, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28 ], [ %.pre90, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit ], [ %.pre91, %bb.k ], [ %.pre91, %middle.block250 ], [ %.pre91, %.lr.ph.i.i20 ] ; 3 uses
  %i.gn = phi ptr [ %i.ee, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28 ], [ %.pre89, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit ], [ %i.ee, %bb.k ], [ %i.ee, %middle.block250 ], [ %i.ee, %.lr.ph.i.i20 ]
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !1599
  %i.go = load ptr, ptr %0, align 8, !tbaa !44
  %.not15.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not15.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.eh
  %i.gq = load ptr, ptr %2, align 8, !tbaa !44
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.preheader, %bb.m
  %.sroa.044.0 = phi ptr [ %..sroa.044.0, %bb.m ], [ %i.gn, %.lr.ph.i36.preheader ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.he, %bb.m ], [ %i.gq, %.lr.ph.i36.preheader ] ; 3 uses
  %.016.i = phi ptr [ %.016.i., %bb.m ], [ %i.gp, %.lr.ph.i36.preheader ] ; 4 uses
  %i.gr = icmp eq ptr %i.go, %.sroa.044.0
  br i1 %i.gr, label %.lr.ph.i.i.i39, label %bb.m

.lr.ph.i.i.i39:                                   ; preds = %.lr.ph.i36, %.lr.ph.i.i.i39
  %i.gs = phi ptr [ %i.gu, %.lr.ph.i.i.i39 ], [ %.sroa.0.0, %.lr.ph.i36 ] ; 2 uses
  %.05.i.i.i40 = phi ptr [ %i.gt, %.lr.ph.i.i.i39 ], [ %.016.i, %.lr.ph.i36 ] ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %.05.i.i.i40, i64 -8 ; 3 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gs, i64 -8 ; 2 uses
  %i.gv = load i32, ptr %i.gt, align 4, !tbaa !21, !noalias !6254
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !274, !noalias !6254
  %i.gw = getelementptr inbounds i8, ptr %.05.i.i.i40, i64 -4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !21, !noalias !6254
  %i.gy = getelementptr inbounds i8, ptr %i.gs, i64 -4
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !276, !noalias !6254
  %.not.i.i.i41 = icmp eq ptr %i.gm, %i.gt
  br i1 %.not.i.i.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i39, !llvm.loop !6259

bb.m:                                             ; preds = %.lr.ph.i36
  %i.gz = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8 ; 2 uses
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !21 ; 2 uses
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !21 ; 2 uses
  %i.hd = icmp slt i32 %i.hb, %i.hc               ; 3 uses
  %i.he = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 %i.hc)
  %..sroa.044.0 = select i1 %i.hd, ptr %i.ha, ptr %.sroa.044.0
  %.sroa.044.0..016.i = select i1 %i.hd, ptr %.sroa.044.0, ptr %.016.i
  %.016.i. = select i1 %i.hd, ptr %.016.i, ptr %i.gz ; 2 uses
  store i32 %., ptr %i.he, align 4, !tbaa !274
  %.sink.in.i = getelementptr inbounds i8, ptr %.sroa.044.0..016.i, i64 -4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !21
  %i.hf = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  store i32 %.sink.i, ptr %i.hf, align 4, !tbaa !276
  %.not.i38 = icmp eq ptr %i.gm, %.016.i.
  br i1 %.not.i38, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i36, !llvm.loop !6260

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i39, %middle.block219, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %6 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %7 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %8 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 7 uses
  %9 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond60 = and i1 %i.a, %i.b
  br i1 %or.cond60, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.03262 = phi i64 [ %.1, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %.03361 = phi i64 [ %.134, %bb.n ], [ %3, %bb.a ] ; 6 uses
  %i.c = or i64 %.03262, %.03361
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = load ptr, ptr %1, align 8, !tbaa !391    ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !391    ; 3 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21   ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !21   ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.f, align 4, !tbaa !21
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !21
  %i.m = load i32, ptr %i.k, align 4, !tbaa !21
  store i32 %i.m, ptr %i.j, align 4, !tbaa !21
  store i32 %i.l, ptr %i.k, align 4, !tbaa !21
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.n = add i64 %.03262, %.03361                 ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  %i.p = load ptr, ptr %0, align 8, !tbaa !44     ; 6 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %5, align 8, !tbaa !391
  %i.q = load ptr, ptr %1, align 8, !tbaa !44
  store ptr %i.q, ptr %6, align 8, !tbaa !391
  %i.r = load ptr, ptr %2, align 8, !tbaa !44
  store ptr %i.r, ptr %7, align 8, !tbaa !391
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %1, align 8, !tbaa !44     ; 8 uses
  %i.t = icmp ugt i64 %.03361, %.03262
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = lshr i64 %.03361, 1                      ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %.not9.i = icmp eq ptr %i.w, %i.s
  %.pre = ptrtoint ptr %i.s to i64                ; 3 uses
  br i1 %.not9.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %.pre
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !21, !noalias !6261
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %i.ab = phi ptr [ %i.s, %.lr.ph.i ], [ %i.ai, %bb.h ] ; 2 uses
  %.010.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 4
  store i32 %i.l, ptr %i.t, align 4, !tbaa !830
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.v = add i32 %i.u, -2
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.02231.i, align 4, !tbaa !830
  store i32 0, ptr %i.q, align 4, !tbaa !830
  %i.w = getelementptr inbounds i8, ptr %.02231.i, i64 -4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02231.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !830
  store i32 %i.y, ptr %i.x, align 4, !tbaa !830
  store i32 0, ptr %i.w, align 4, !tbaa !830
  %.not27.i = icmp eq ptr %i.q, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !14000

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 8 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %i.f
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph38.i, !llvm.loop !14001

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %1, 1
  %i.aa = sub i64 %1, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13415
  %.not = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.ae = load ptr, ptr %2, align 8, !tbaa !13412
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test11movable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %i.ae)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !1562
  %i.af = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSJ_SL_SL_SL_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.af, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !13415
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13414 ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %.not.i31 = icmp ult i64 %i.ak, %i.aa
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !13412
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test11movable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef %i.am)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef nonnull %i.ag)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !1562
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !1562 ; 3 uses
  %i.as = sub i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = sub i64 %1, %i.ap
  %i.av = add i64 %i.au, %i.ar
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !1562
  %i.ax = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEENS0_9iter_sizeIT_E4typeESJ_SL_SL_SL_RT1_T0_(ptr noundef %i.at, i64 noundef %i.av, i64 noundef %i.aw, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !1562 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = sub i64 %1, %i.ay
  %i.bb = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEbT_RNS0_9iter_sizeISI_E4typeESI_SL_SL_SM_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.az, i64 noundef %i.ba, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !1562
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvbT_NS0_9iter_sizeISI_E4typeESL_SL_RT1_T0_(i1 noundef zeroext %i.bb, ptr noundef %0, i64 noundef %i.bc, i64 noundef %i.bd, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test11movable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 3 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.034.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2635.i = icmp eq ptr %.034.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2635.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.b, %bb.e
  %.037.i = phi ptr [ %.0.i, %bb.e ], [ %.034.i, %bb.b ] ; 5 uses
  %.pn36.i = phi ptr [ %.037.i, %bb.e ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i32, ptr %.037.i, align 4, !tbaa !830 ; 3 uses
  %i.h = load i32, ptr %.pn36.i, align 4, !tbaa !830
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph38.i
  store i32 0, ptr %.037.i, align 4, !tbaa !830
  %i.j = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.pn36.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !830
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.n = load i32, ptr %.pn36.i, align 4, !tbaa !830
  store i32 %i.n, ptr %.037.i, align 4, !tbaa !830
  store i32 0, ptr %.pn36.i, align 4, !tbaa !830
  %i.o = getelementptr inbounds nuw i8, ptr %.pn36.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !830
  store i32 %i.p, ptr %i.k, align 4, !tbaa !830
  store i32 0, ptr %i.o, align 4, !tbaa !830
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.q, %bb.d ], [ %.pn36.i, %bb.c ] ; 5 uses
  %i.q = getelementptr i8, ptr %.02231.i, i64 -8  ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !830  ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ] ; 2 uses
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !830
  %i.t = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 4
  store i32 %i.l, ptr %i.t, align 4, !tbaa !830
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.v = add i32 %i.u, -2
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.02231.i, align 4, !tbaa !830
  store i32 0, ptr %i.q, align 4, !tbaa !830
  %i.w = getelementptr inbounds i8, ptr %.02231.i, i64 -4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02231.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !830
  store i32 %i.y, ptr %i.x, align 4, !tbaa !830
  store i32 0, ptr %i.w, align 4, !tbaa !830
  %.not27.i = icmp eq ptr %i.q, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !14000

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 8 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %1
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph38.i, !llvm.loop !14001

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.e, 1                         ; 4 uses
  %i.aa = sub i64 %i.e, %i.z                      ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairINS_9container4test11movable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %i.ab, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPSt4pairINS_9container4test11movable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %0, ptr noundef %i.ab, ptr noundef %i.ac)
          to label %bb.g unwind label %.lr.ph.preheader.i29

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.aa, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ 0, %bb.g ], [ %indvar.next, %bb.k ] ; 2 uses
  %.027.i.i = phi ptr [ %2, %bb.g ], [ %.1.i.i, %bb.k ] ; 13 uses
  %.01626.i.i = phi ptr [ %0, %bb.g ], [ %i.bn, %bb.k ] ; 10 uses
  %.01725.i.i = phi ptr [ %i.ac, %bb.g ], [ %.118.i.i, %bb.k ] ; 6 uses
  %i.ae = icmp eq ptr %.01725.i.i, %1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i56.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = shl i64 %i.z, 3
  %i.af = add i64 %i.d, %i.a
  %4 = add i64 %i.af, -8
  %i.ag = add i64 %3, %.027.i.i56.le
  %i.ah = sub i64 %4, %i.ag                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = shl i64 %indvar, 3
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.al, i64 8
  %i.am = add i64 %i.d, %i.a
  %i.an = add i64 %i.am, -8
  %i.ao = shl i64 %i.z, 3
  %i.ap = add i64 %i.ao, %.027.i.i56.le
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep57 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep58 = getelementptr i8, ptr %.027.i.i, i64 8
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %i.ar
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep59
  %bound1 = icmp ult ptr %.027.i.i, %scevgep57
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %.01626.i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %.027.i.i, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 3 uses
  %i.aw = or disjoint i64 %i.av, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.av
  %next.gep60 = getelementptr i8, ptr %.01626.i.i, i64 %i.aw
  %next.gep61 = getelementptr i8, ptr %.027.i.i, i64 %i.av ; 2 uses
  %next.gep62 = getelementptr i8, ptr %.027.i.i, i64 %i.aw ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !830, !alias.scope !14002
  %wide.vec64 = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !830, !alias.scope !14002
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !830, !alias.scope !14005, !noalias !14002
  store <4 x i32> %wide.vec64, ptr %next.gep60, align 4, !tbaa !830, !alias.scope !14005, !noalias !14002
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !830, !alias.scope !14002
  store <4 x i32> zeroinitializer, ptr %next.gep62, align 4, !tbaa !830, !alias.scope !14002
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !14007

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.preheader69

.lr.ph.i.i.i.i.preheader69:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader69, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 4 uses
  %i.ay = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !830
  store i32 %i.ay, ptr %.010.i.i.i.i, align 4, !tbaa !830
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !830
  %i.az = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !830
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !830
  store i32 0, ptr %i.az, align 4, !tbaa !830
  %i.bc = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.ad
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i, !llvm.loop !14008

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.be = load i32, ptr %.027.i.i, align 4, !tbaa !830 ; 2 uses
  %i.bf = load i32, ptr %.01725.i.i, align 4, !tbaa !830 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.be, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %.01626.i.i, i64 4 ; 2 uses
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bf, ptr %.01626.i.i, align 4, !tbaa !830
  store i32 0, ptr %.01725.i.i, align 4, !tbaa !830
  %i.bh = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !830
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !830
  store i32 0, ptr %i.bh, align 4, !tbaa !830
  %i.bj = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.be, ptr %.01626.i.i, align 4, !tbaa !830
  store i32 0, ptr %.027.i.i, align 4, !tbaa !830
  %i.bk = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !830
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !830
  store i32 0, ptr %i.bk, align 4, !tbaa !830
  %i.bm = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.118.i.i = phi ptr [ %i.bj, %bb.i ], [ %.01725.i.i, %bb.j ]
  %.1.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.01626.i.i, i64 8
  %.not.i.i = icmp eq ptr %.1.i.i, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !14009

.lr.ph.preheader.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %_ZN5boost9container4test11movable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.bo = trunc i64 %i.aa to i32
  %i.bp = shl i32 %i.bo, 1
  %i.bq = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

.lr.ph.preheader.i29:                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test11movable_int5countE.promoted.i30 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.bs = trunc i64 %i.aa to i32
  %i.bt = shl i32 %i.bs, 1
  %i.bu = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i30, %i.bt
  store i32 %i.bu, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.br

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.e, %.lr.ph.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSJ_SL_SL_SL_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023.i.i.i = phi i32 [ 32, %bb.a ], [ %i.n, %bb.b ]
  %.01222.i.i.i = phi i64 [ 0, %bb.a ], [ %.1.i.i.i.1, %bb.b ] ; 2 uses
  %.01321.i.i.i = phi i64 [ 0, %bb.a ], [ %.114.i.i.i.1, %bb.b ]
  %.01520.i.i.i = phi i64 [ %1, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.a = shl i64 %.01222.i.i.i, 1                 ; 2 uses
  %i.b = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i.i, i64 %.01520.i.i.i, i64 2) ; 2 uses
  %i.c = shl i64 %.01520.i.i.i, 2
  %i.d = icmp ult i64 %i.a, %i.b                  ; 2 uses
  %.neg.i.i.i = xor i64 %i.a, -1
  %i.e = select i1 %i.d, i64 %.neg.i.i.i, i64 0
  %.114.i.i.i = add i64 %i.e, %i.b
  %i.f = shl i64 %.01222.i.i.i, 2                 ; 2 uses
  %i.g = add i64 %i.f, 4
  %i.h = select i1 %i.d, i64 %i.g, i64 %i.f       ; 4 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %.114.i.i.i, i64 %i.c, i64 2) ; 2 uses
  %i.j = shl i64 %.01520.i.i.i, 4
  %i.k = icmp ult i64 %i.h, %i.i                  ; 2 uses
  %.neg.i.i.i.1 = xor i64 %i.h, -1
  %i.l = or disjoint i64 %i.h, 2
  %i.m = select i1 %i.k, i64 %.neg.i.i.i.1, i64 0
  %.114.i.i.i.1 = add i64 %i.m, %i.i
  %.1.i.i.i.1 = select i1 %i.k, i64 %i.l, i64 %i.h ; 2 uses
  %i.n = add nsw i32 %.023.i.i.i, -2              ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, label %bb.b, !llvm.loop !1596

_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i: ; preds = %bb.b
  %i.o = lshr exact i64 %.1.i.i.i.1, 1            ; 2 uses
  %i.p = urem i64 %1, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw i64 %i.o, %i.r                   ; 4 uses
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ]
  %.0910.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ] ; 2 uses
  %i.u = lshr i64 %.0910.i.i.i, 1                 ; 2 uses
  %i.v = add nuw nsw i64 %.011.i.i.i, 1           ; 2 uses
  %i.w = icmp ugt i64 %.0910.i.i.i, 33
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, !llvm.loop !2110

_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i
  %.09.lcssa.i.i.i = phi i64 [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.u, %.lr.ph.i.i.i ] ; 4 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.v, %.lr.ph.i.i.i ] ; 4 uses
  %i.x = shl i64 %.09.lcssa.i.i.i, %.0.lcssa.i.i.i
  %.not.i.i = icmp eq i64 %i.x, %i.s
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i
  %i.y = icmp samesign ult i64 %.09.lcssa.i.i.i, 16
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw nsw i64 %.09.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = add i64 %.0.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, %bb.d, %bb.e
  %.0.i = phi i64 [ %.09.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %i.z, %bb.d ], [ 9, %bb.e ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_:bb.a
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16254 ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.035.i, align 4, !tbaa !16254
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !16254
  store i32 %i.v, ptr %i.u, align 4, !tbaa !16254
  %.not29.i = icmp eq ptr %i.q, %0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18308

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.024.lcssa.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !16254
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !16254
  %i.x = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %i.f
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !18309

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %1, 1
  %i.aa = sub i64 %1, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !17505
  %.not = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.ae = load ptr, ptr %2, align 8, !tbaa !17502
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test12copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %i.ae)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !1562
  %i.af = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSJ_SL_SL_SL_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.af, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !17505
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !17504 ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %.not.i31 = icmp ult i64 %i.ak, %i.aa
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !17502
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test12copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef %i.am)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef nonnull %i.ag)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !1562
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !1562 ; 3 uses
  %i.as = sub i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = sub i64 %1, %i.ap
  %i.av = add i64 %i.au, %i.ar
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !1562
  %i.ax = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEENS0_9iter_sizeIT_E4typeESJ_SL_SL_SL_RT1_T0_(ptr noundef %i.at, i64 noundef %i.av, i64 noundef %i.aw, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !1562 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = sub i64 %1, %i.ay
  %i.bb = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEbT_RNS0_9iter_sizeISI_E4typeESI_SL_SL_SM_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.az, i64 noundef %i.ba, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !1562
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvbT_NS0_9iter_sizeISI_E4typeESL_SL_RT1_T0_(i1 noundef zeroext %i.bb, ptr noundef %0, i64 noundef %i.bc, i64 noundef %i.bd, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test12copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 3 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.02538.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2839.i = icmp eq ptr %.02538.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2839.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %bb.b, %bb.e
  %.02541.i = phi ptr [ %.025.i, %bb.e ], [ %.02538.i, %bb.b ] ; 4 uses
  %.pn40.i = phi ptr [ %.02541.i, %bb.e ], [ %0, %bb.b ] ; 6 uses
  %i.g = load i32, ptr %.02541.i, align 4, !tbaa !16254 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !16254
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph42.i
  %i.j = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16254
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !16254
  store i32 %i.n, ptr %.02541.i, align 4, !tbaa !16254
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16254
  store i32 %i.p, ptr %i.k, align 4, !tbaa !16254
  %.not2933.i = icmp eq ptr %.pn40.i, %0
  br i1 %.not2933.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.035.i = phi ptr [ %i.q, %bb.d ], [ %.pn40.i, %bb.c ] ; 5 uses
  %i.q = getelementptr i8, ptr %.035.i, i64 -8    ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16254 ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.035.i, align 4, !tbaa !16254
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !16254
  store i32 %i.v, ptr %i.u, align 4, !tbaa !16254
  %.not29.i = icmp eq ptr %i.q, %0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18308

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.024.lcssa.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !16254
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !16254
  %i.x = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %1
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !18309

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.e, 1                         ; 4 uses
  %i.aa = sub i64 %i.e, %i.z                      ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairINS_9container4test12copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %i.ab, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPSt4pairINS_9container4test12copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %0, ptr noundef %i.ab, ptr noundef %i.ac)
          to label %bb.g unwind label %.lr.ph.preheader.i29

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.aa, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ 0, %bb.g ], [ %indvar.next, %bb.k ] ; 2 uses
  %.027.i.i = phi ptr [ %2, %bb.g ], [ %.1.i.i, %bb.k ] ; 12 uses
  %.01626.i.i = phi ptr [ %0, %bb.g ], [ %i.bj, %bb.k ] ; 9 uses
  %.01725.i.i = phi ptr [ %i.ac, %bb.g ], [ %.118.i.i, %bb.k ] ; 5 uses
  %i.ae = icmp eq ptr %.01725.i.i, %1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i54.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = shl i64 %i.z, 3
  %i.af = add i64 %i.d, %i.a
  %4 = add i64 %i.af, -8
  %i.ag = add i64 %3, %.027.i.i54.le
  %i.ah = sub i64 %4, %i.ag                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader67, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = shl i64 %indvar, 3
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.al, i64 8
  %i.am = add i64 %i.d, %i.a
  %i.an = add i64 %i.am, -8
  %i.ao = shl i64 %i.z, 3
  %i.ap = add i64 %i.ao, %.027.i.i54.le
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep55 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep56 = getelementptr i8, ptr %.027.i.i, i64 8
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.ar
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep57
  %bound1 = icmp ult ptr %.027.i.i, %scevgep55
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %.01626.i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %.027.i.i, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 3 uses
  %i.aw = or disjoint i64 %i.av, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.av
  %next.gep58 = getelementptr i8, ptr %.01626.i.i, i64 %i.aw
  %next.gep59 = getelementptr i8, ptr %.027.i.i, i64 %i.av
  %next.gep60 = getelementptr i8, ptr %.027.i.i, i64 %i.aw
  %wide.vec = load <4 x i32>, ptr %next.gep59, align 4, !tbaa !16254, !alias.scope !18310
  %wide.vec62 = load <4 x i32>, ptr %next.gep60, align 4, !tbaa !16254, !alias.scope !18310
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !16254, !alias.scope !18313, !noalias !18310
  store <4 x i32> %wide.vec62, ptr %next.gep58, align 4, !tbaa !16254, !alias.scope !18313, !noalias !18310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !18315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.preheader67

.lr.ph.i.i.i.i.preheader67:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader67, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader67 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader67 ] ; 3 uses
  %i.ay = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !16254
  store i32 %i.ay, ptr %.010.i.i.i.i, align 4, !tbaa !16254
  %i.az = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !16254
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !16254
  %i.bc = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.ad
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i, !llvm.loop !18316

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.be = load i32, ptr %.027.i.i, align 4, !tbaa !16254 ; 2 uses
  %i.bf = load i32, ptr %.01725.i.i, align 4, !tbaa !16254 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.be, %i.bf
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi i32 [ %i.be, %bb.j ], [ %i.bf, %bb.i ]
  %.027.pn.i.i = phi ptr [ %.027.i.i, %bb.j ], [ %.01725.i.i, %bb.i ]
  %.118.i.i = phi ptr [ %.01725.i.i, %bb.j ], [ %i.bg, %bb.i ]
  %.1.i.i = phi ptr [ %i.bh, %bb.j ], [ %.027.i.i, %bb.i ] ; 2 uses
  store i32 %.sink.i, ptr %.01626.i.i, align 4, !tbaa !16254
  %.sink.in.i.i = getelementptr inbounds nuw i8, ptr %.027.pn.i.i, i64 4
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !16254
  %i.bi = getelementptr inbounds nuw i8, ptr %.01626.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.bi, align 4, !tbaa !16254
  %i.bj = getelementptr i8, ptr %.01626.i.i, i64 8
  %.not.i.i = icmp eq ptr %.1.i.i, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !18317

.lr.ph.preheader.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %_ZN5boost9container4test12copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.bk = trunc i64 %i.aa to i32
  %i.bl = shl i32 %i.bk, 1
  %i.bm = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, %i.bl
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

.lr.ph.preheader.i29:                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test12copyable_int5countE.promoted.i30 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.bo = trunc i64 %i.aa to i32
  %i.bp = shl i32 %i.bo, 1
  %i.bq = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i30, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.bn

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.e, %.lr.ph.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSJ_SL_SL_SL_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023.i.i.i = phi i32 [ 32, %bb.a ], [ %i.n, %bb.b ]
  %.01222.i.i.i = phi i64 [ 0, %bb.a ], [ %.1.i.i.i.1, %bb.b ] ; 2 uses
  %.01321.i.i.i = phi i64 [ 0, %bb.a ], [ %.114.i.i.i.1, %bb.b ]
  %.01520.i.i.i = phi i64 [ %1, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.a = shl i64 %.01222.i.i.i, 1                 ; 2 uses
  %i.b = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i.i, i64 %.01520.i.i.i, i64 2) ; 2 uses
  %i.c = shl i64 %.01520.i.i.i, 2
  %i.d = icmp ult i64 %i.a, %i.b                  ; 2 uses
  %.neg.i.i.i = xor i64 %i.a, -1
  %i.e = select i1 %i.d, i64 %.neg.i.i.i, i64 0
  %.114.i.i.i = add i64 %i.e, %i.b
  %i.f = shl i64 %.01222.i.i.i, 2                 ; 2 uses
  %i.g = add i64 %i.f, 4
  %i.h = select i1 %i.d, i64 %i.g, i64 %i.f       ; 4 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %.114.i.i.i, i64 %i.c, i64 2) ; 2 uses
  %i.j = shl i64 %.01520.i.i.i, 4
  %i.k = icmp ult i64 %i.h, %i.i                  ; 2 uses
  %.neg.i.i.i.1 = xor i64 %i.h, -1
  %i.l = or disjoint i64 %i.h, 2
  %i.m = select i1 %i.k, i64 %.neg.i.i.i.1, i64 0
  %.114.i.i.i.1 = add i64 %i.m, %i.i
  %.1.i.i.i.1 = select i1 %i.k, i64 %i.l, i64 %i.h ; 2 uses
  %i.n = add nsw i32 %.023.i.i.i, -2              ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, label %bb.b, !llvm.loop !1596

_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i: ; preds = %bb.b
  %i.o = lshr exact i64 %.1.i.i.i.1, 1            ; 2 uses
  %i.p = urem i64 %1, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw i64 %i.o, %i.r                   ; 4 uses
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ]
  %.0910.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ] ; 2 uses
  %i.u = lshr i64 %.0910.i.i.i, 1                 ; 2 uses
  %i.v = add nuw nsw i64 %.011.i.i.i, 1           ; 2 uses
  %i.w = icmp ugt i64 %.0910.i.i.i, 33
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, !llvm.loop !2110

_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i
  %.09.lcssa.i.i.i = phi i64 [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.u, %.lr.ph.i.i.i ] ; 4 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.v, %.lr.ph.i.i.i ] ; 4 uses
  %i.x = shl i64 %.09.lcssa.i.i.i, %.0.lcssa.i.i.i
  %.not.i.i = icmp eq i64 %i.x, %i.s
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i
  %i.y = icmp samesign ult i64 %.09.lcssa.i.i.i, 16
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw nsw i64 %.09.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = add i64 %.0.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, %bb.d, %bb.e
  %.0.i = phi i64 [ %.09.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %i.z, %bb.d ], [ 9, %bb.e ] ; 2 uses
  %i.ab = phi i64 [ %.0.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %.0.lcssa.i.i.i, %bb.d ], [ %i.aa, %bb.e ]
  store i64 %.0.i, ptr %4, align 8, !tbaa !1562
  %i.ac = shl i64 %.0.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit
  %storemerge = phi i64 [ %i.ac, %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit ], [ %i.af, %bb.f ] ; 8 uses
  store i64 %storemerge, ptr %3, align 8, !tbaa !1562
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17505 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_:bb.a
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !21233
  store i32 %i.v, ptr %i.u, align 4, !tbaa !21233
  store i32 0, ptr %i.t, align 4, !tbaa !21233
  %.not29.i = icmp eq ptr %i.q, %0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23124

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.024.lcssa.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !21233
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !21233
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %i.f
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !23125

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %1, 1
  %i.aa = sub i64 %1, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !22406
  %.not = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.ae = load ptr, ptr %2, align 8, !tbaa !22403
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %i.ae)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !1562
  %i.af = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSJ_SL_SL_SL_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.af, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !22406
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !22405 ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %.not.i31 = icmp ult i64 %i.ak, %i.aa
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !22403
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef %i.am)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef nonnull %i.ag)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !1562
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !1562 ; 3 uses
  %i.as = sub i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = sub i64 %1, %i.ap
  %i.av = add i64 %i.au, %i.ar
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !1562
  %i.ax = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEENS0_9iter_sizeIT_E4typeESJ_SL_SL_SL_RT1_T0_(ptr noundef %i.at, i64 noundef %i.av, i64 noundef %i.aw, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !1562 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = sub i64 %1, %i.ay
  %i.bb = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEbT_RNS0_9iter_sizeISI_E4typeESI_SL_SL_SM_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.az, i64 noundef %i.ba, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !1562
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvbT_NS0_9iter_sizeISI_E4typeESL_SL_RT1_T0_(i1 noundef zeroext %i.bb, ptr noundef %0, i64 noundef %i.bc, i64 noundef %i.bd, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 3 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.02538.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2839.i = icmp eq ptr %.02538.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2839.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %bb.b, %bb.e
  %.02541.i = phi ptr [ %.025.i, %bb.e ], [ %.02538.i, %bb.b ] ; 5 uses
  %.pn40.i = phi ptr [ %.02541.i, %bb.e ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i32, ptr %.02541.i, align 4, !tbaa !21233 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !21233
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i, align 4, !tbaa !21233
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21233
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !21233
  store i32 %i.n, ptr %.02541.i, align 4, !tbaa !21233
  store i32 0, ptr %.pn40.i, align 4, !tbaa !21233
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21233
  store i32 %i.p, ptr %i.k, align 4, !tbaa !21233
  store i32 0, ptr %i.o, align 4, !tbaa !21233
  %.not2933.i = icmp eq ptr %.pn40.i, %0
  br i1 %.not2933.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.035.i = phi ptr [ %i.q, %bb.d ], [ %.pn40.i, %bb.c ] ; 5 uses
  %i.q = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21233 ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.035.i, align 4, !tbaa !21233
  store i32 0, ptr %i.q, align 4, !tbaa !21233
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !21233
  store i32 %i.v, ptr %i.u, align 4, !tbaa !21233
  store i32 0, ptr %i.t, align 4, !tbaa !21233
  %.not29.i = icmp eq ptr %i.q, %0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23124

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.024.lcssa.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !21233
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !21233
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %1
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !23125

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.e, 1                         ; 4 uses
  %i.aa = sub i64 %i.e, %i.z                      ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %i.ab, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %0, ptr noundef %i.ab, ptr noundef %i.ac)
          to label %bb.g unwind label %.lr.ph.preheader.i29

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.aa, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ 0, %bb.g ], [ %indvar.next, %bb.k ] ; 2 uses
  %.027.i.i = phi ptr [ %2, %bb.g ], [ %.1.i.i, %bb.k ] ; 13 uses
  %.01626.i.i = phi ptr [ %0, %bb.g ], [ %i.bn, %bb.k ] ; 10 uses
  %.01725.i.i = phi ptr [ %i.ac, %bb.g ], [ %.118.i.i, %bb.k ] ; 6 uses
  %i.ae = icmp eq ptr %.01725.i.i, %1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i56.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = shl i64 %i.z, 3
  %i.af = add i64 %i.d, %i.a
  %4 = add i64 %i.af, -8
  %i.ag = add i64 %3, %.027.i.i56.le
  %i.ah = sub i64 %4, %i.ag                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = shl i64 %indvar, 3
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.al, i64 8
  %i.am = add i64 %i.d, %i.a
  %i.an = add i64 %i.am, -8
  %i.ao = shl i64 %i.z, 3
  %i.ap = add i64 %i.ao, %.027.i.i56.le
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep57 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep58 = getelementptr i8, ptr %.027.i.i, i64 8
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %i.ar
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep59
  %bound1 = icmp ult ptr %.027.i.i, %scevgep57
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %.01626.i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %.027.i.i, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 3 uses
  %i.aw = or disjoint i64 %i.av, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.av
  %next.gep60 = getelementptr i8, ptr %.01626.i.i, i64 %i.aw
  %next.gep61 = getelementptr i8, ptr %.027.i.i, i64 %i.av ; 2 uses
  %next.gep62 = getelementptr i8, ptr %.027.i.i, i64 %i.aw ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !21233, !alias.scope !23126
  %wide.vec64 = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !21233, !alias.scope !23126
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21233, !alias.scope !23129, !noalias !23126
  store <4 x i32> %wide.vec64, ptr %next.gep60, align 4, !tbaa !21233, !alias.scope !23129, !noalias !23126
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !21233, !alias.scope !23126
  store <4 x i32> zeroinitializer, ptr %next.gep62, align 4, !tbaa !21233, !alias.scope !23126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !23131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.preheader69

.lr.ph.i.i.i.i.preheader69:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader69, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 4 uses
  %i.ay = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !21233
  store i32 %i.ay, ptr %.010.i.i.i.i, align 4, !tbaa !21233
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !21233
  %i.az = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !21233
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !21233
  store i32 0, ptr %i.az, align 4, !tbaa !21233
  %i.bc = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.ad
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i, !llvm.loop !23132

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.be = load i32, ptr %.027.i.i, align 4, !tbaa !21233 ; 2 uses
  %i.bf = load i32, ptr %.01725.i.i, align 4, !tbaa !21233 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.be, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %.01626.i.i, i64 4 ; 2 uses
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bf, ptr %.01626.i.i, align 4, !tbaa !21233
  store i32 0, ptr %.01725.i.i, align 4, !tbaa !21233
  %i.bh = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !21233
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !21233
  store i32 0, ptr %i.bh, align 4, !tbaa !21233
  %i.bj = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.be, ptr %.01626.i.i, align 4, !tbaa !21233
  store i32 0, ptr %.027.i.i, align 4, !tbaa !21233
  %i.bk = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21233
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !21233
  store i32 0, ptr %i.bk, align 4, !tbaa !21233
  %i.bm = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.118.i.i = phi ptr [ %i.bj, %bb.i ], [ %.01725.i.i, %bb.j ]
  %.1.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.01626.i.i, i64 8
  %.not.i.i = icmp eq ptr %.1.i.i, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !23133

.lr.ph.preheader.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bo = trunc i64 %i.aa to i32
  %i.bp = shl i32 %i.bo, 1
  %i.bq = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

.lr.ph.preheader.i29:                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i30 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bs = trunc i64 %i.aa to i32
  %i.bt = shl i32 %i.bs, 1
  %i.bu = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i30, %i.bt
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.br

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.e, %.lr.ph.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSJ_SL_SL_SL_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023.i.i.i = phi i32 [ 32, %bb.a ], [ %i.n, %bb.b ]
  %.01222.i.i.i = phi i64 [ 0, %bb.a ], [ %.1.i.i.i.1, %bb.b ] ; 2 uses
  %.01321.i.i.i = phi i64 [ 0, %bb.a ], [ %.114.i.i.i.1, %bb.b ]
  %.01520.i.i.i = phi i64 [ %1, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.a = shl i64 %.01222.i.i.i, 1                 ; 2 uses
  %i.b = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i.i, i64 %.01520.i.i.i, i64 2) ; 2 uses
  %i.c = shl i64 %.01520.i.i.i, 2
  %i.d = icmp ult i64 %i.a, %i.b                  ; 2 uses
  %.neg.i.i.i = xor i64 %i.a, -1
  %i.e = select i1 %i.d, i64 %.neg.i.i.i, i64 0
  %.114.i.i.i = add i64 %i.e, %i.b
  %i.f = shl i64 %.01222.i.i.i, 2                 ; 2 uses
  %i.g = add i64 %i.f, 4
  %i.h = select i1 %i.d, i64 %i.g, i64 %i.f       ; 4 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %.114.i.i.i, i64 %i.c, i64 2) ; 2 uses
  %i.j = shl i64 %.01520.i.i.i, 4
  %i.k = icmp ult i64 %i.h, %i.i                  ; 2 uses
  %.neg.i.i.i.1 = xor i64 %i.h, -1
  %i.l = or disjoint i64 %i.h, 2
  %i.m = select i1 %i.k, i64 %.neg.i.i.i.1, i64 0
  %.114.i.i.i.1 = add i64 %i.m, %i.i
  %.1.i.i.i.1 = select i1 %i.k, i64 %i.l, i64 %i.h ; 2 uses
  %i.n = add nsw i32 %.023.i.i.i, -2              ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, label %bb.b, !llvm.loop !1596

_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i: ; preds = %bb.b
  %i.o = lshr exact i64 %.1.i.i.i.1, 1            ; 2 uses
  %i.p = urem i64 %1, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw i64 %i.o, %i.r                   ; 4 uses
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ]
  %.0910.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ] ; 2 uses
  %i.u = lshr i64 %.0910.i.i.i, 1                 ; 2 uses
  %i.v = add nuw nsw i64 %.011.i.i.i, 1           ; 2 uses
  %i.w = icmp ugt i64 %.0910.i.i.i, 33
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, !llvm.loop !2110

_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i
  %.09.lcssa.i.i.i = phi i64 [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.u, %.lr.ph.i.i.i ] ; 4 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.v, %.lr.ph.i.i.i ] ; 4 uses
  %i.x = shl i64 %.09.lcssa.i.i.i, %.0.lcssa.i.i.i
  %.not.i.i = icmp eq i64 %i.x, %i.s
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i
  %i.y = icmp samesign ult i64 %.09.lcssa.i.i.i, 16
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw nsw i64 %.09.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = add i64 %.0.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, %bb.d, %bb.e
  %.0.i = phi i64 [ %.09.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %i.z, %bb.d ], [ 9, %bb.e ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISH_E4typeET0_RT1_:bb.a
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !21233
  store i32 %i.v, ptr %i.u, align 4, !tbaa !21233
  store i32 0, ptr %i.t, align 4, !tbaa !21233
  %.not29.i = icmp eq ptr %i.q, %0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !27510

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.024.lcssa.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !21233
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !21233
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %i.f
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_EEvT0_SE_T_.exit, label %.lr.ph42.i, !llvm.loop !27511

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %1, 1
  %i.aa = sub i64 %1, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !22406
  %.not = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.ae = load ptr, ptr %2, align 8, !tbaa !22403
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %i.ae)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_EEvT0_SE_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !1562
  %i.af = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSI_SK_SK_SK_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.af, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !22406
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !22405 ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %.not.i31 = icmp ult i64 %i.ak, %i.aa
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !22403
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef %i.am)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SH_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEEEEvT_SF_T0_(ptr noundef %0, ptr noundef nonnull %i.ag)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SH_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !1562
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !1562 ; 3 uses
  %i.as = sub i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = sub i64 %1, %i.ap
  %i.av = add i64 %i.au, %i.ar
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !1562
  %i.ax = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_(ptr noundef %i.at, i64 noundef %i.av, i64 noundef %i.aw, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !1562 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = sub i64 %1, %i.ay
  %i.bb = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.az, i64 noundef %i.ba, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !1562
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !1562
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %i.bb, ptr noundef %0, i64 noundef %i.bc, i64 noundef %i.bd, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SH_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SH_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_EEvT0_SE_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_EEvT0_SE_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SH_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 3 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.02538.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2839.i = icmp eq ptr %.02538.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2839.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_EEvT0_SE_T_.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %bb.b, %bb.e
  %.02541.i = phi ptr [ %.025.i, %bb.e ], [ %.02538.i, %bb.b ] ; 5 uses
  %.pn40.i = phi ptr [ %.02541.i, %bb.e ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i32, ptr %.02541.i, align 4, !tbaa !21233 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !21233
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i, align 4, !tbaa !21233
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21233
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !21233
  store i32 %i.n, ptr %.02541.i, align 4, !tbaa !21233
  store i32 0, ptr %.pn40.i, align 4, !tbaa !21233
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21233
  store i32 %i.p, ptr %i.k, align 4, !tbaa !21233
  store i32 0, ptr %i.o, align 4, !tbaa !21233
  %.not2933.i = icmp eq ptr %.pn40.i, %0
  br i1 %.not2933.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.035.i = phi ptr [ %i.q, %bb.d ], [ %.pn40.i, %bb.c ] ; 5 uses
  %i.q = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21233 ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.035.i, align 4, !tbaa !21233
  store i32 0, ptr %i.q, align 4, !tbaa !21233
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !21233
  store i32 %i.v, ptr %i.u, align 4, !tbaa !21233
  store i32 0, ptr %i.t, align 4, !tbaa !21233
  %.not29.i = icmp eq ptr %i.q, %0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !27510

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.024.lcssa.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !21233
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !21233
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %1
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_EEvT0_SE_T_.exit, label %.lr.ph42.i, !llvm.loop !27511

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.e, 1                         ; 4 uses
  %i.aa = sub i64 %i.e, %i.z                      ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEEvT_SE_T0_T1_(ptr noundef %i.ab, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareINS4_16less_transparentES6_NS8_9select1stIS5_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.ab, ptr noundef %i.ac)
          to label %bb.g unwind label %.lr.ph.preheader.i29

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.aa, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ 0, %bb.g ], [ %indvar.next, %bb.k ] ; 2 uses
  %.027.i.i = phi ptr [ %2, %bb.g ], [ %.1.i.i, %bb.k ] ; 13 uses
  %.01626.i.i = phi ptr [ %0, %bb.g ], [ %i.bn, %bb.k ] ; 10 uses
  %.01725.i.i = phi ptr [ %i.ac, %bb.g ], [ %.118.i.i, %bb.k ] ; 6 uses
  %i.ae = icmp eq ptr %.01725.i.i, %1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i56.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = shl i64 %i.z, 3
  %i.af = add i64 %i.d, %i.a
  %4 = add i64 %i.af, -8
  %i.ag = add i64 %3, %.027.i.i56.le
  %i.ah = sub i64 %4, %i.ag                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = shl i64 %indvar, 3
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.al, i64 8
  %i.am = add i64 %i.d, %i.a
  %i.an = add i64 %i.am, -8
  %i.ao = shl i64 %i.z, 3
  %i.ap = add i64 %i.ao, %.027.i.i56.le
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep57 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep58 = getelementptr i8, ptr %.027.i.i, i64 8
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %i.ar
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep59
  %bound1 = icmp ult ptr %.027.i.i, %scevgep57
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %.01626.i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %.027.i.i, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 3 uses
  %i.aw = or disjoint i64 %i.av, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.av
  %next.gep60 = getelementptr i8, ptr %.01626.i.i, i64 %i.aw
  %next.gep61 = getelementptr i8, ptr %.027.i.i, i64 %i.av ; 2 uses
  %next.gep62 = getelementptr i8, ptr %.027.i.i, i64 %i.aw ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !21233, !alias.scope !27512
  %wide.vec64 = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !21233, !alias.scope !27512
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !21233, !alias.scope !27515, !noalias !27512
  store <4 x i32> %wide.vec64, ptr %next.gep60, align 4, !tbaa !21233, !alias.scope !27515, !noalias !27512
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !21233, !alias.scope !27512
  store <4 x i32> zeroinitializer, ptr %next.gep62, align 4, !tbaa !21233, !alias.scope !27512
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !27517

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.preheader69

.lr.ph.i.i.i.i.preheader69:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader69, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 4 uses
  %i.ay = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !21233
  store i32 %i.ay, ptr %.010.i.i.i.i, align 4, !tbaa !21233
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !21233
  %i.az = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !21233
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !21233
  store i32 0, ptr %i.az, align 4, !tbaa !21233
  %i.bc = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.ad
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i, !llvm.loop !27518

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.be = load i32, ptr %.027.i.i, align 4, !tbaa !21233 ; 2 uses
  %i.bf = load i32, ptr %.01725.i.i, align 4, !tbaa !21233 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.be, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %.01626.i.i, i64 4 ; 2 uses
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bf, ptr %.01626.i.i, align 4, !tbaa !21233
  store i32 0, ptr %.01725.i.i, align 4, !tbaa !21233
  %i.bh = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !21233
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !21233
  store i32 0, ptr %i.bh, align 4, !tbaa !21233
  %i.bj = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.be, ptr %.01626.i.i, align 4, !tbaa !21233
  store i32 0, ptr %.027.i.i, align 4, !tbaa !21233
  %i.bk = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21233
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !21233
  store i32 0, ptr %i.bk, align 4, !tbaa !21233
  %i.bm = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.118.i.i = phi ptr [ %i.bj, %bb.i ], [ %.01725.i.i, %bb.j ]
  %.1.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.01626.i.i, i64 8
  %.not.i.i = icmp eq ptr %.1.i.i, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !27519

.lr.ph.preheader.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bo = trunc i64 %i.aa to i32
  %i.bp = shl i32 %i.bo, 1
  %i.bq = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_EEvT0_SE_T_.exit

.lr.ph.preheader.i29:                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i30 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bs = trunc i64 %i.aa to i32
  %i.bt = shl i32 %i.bs, 1
  %i.bu = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i30, %i.bt
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  resume { ptr, i32 } %i.br

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_EEvT0_SE_T_.exit: ; preds = %bb.e, %.lr.ph.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSI_SK_SK_SK_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023.i.i.i = phi i32 [ 32, %bb.a ], [ %i.n, %bb.b ]
  %.01222.i.i.i = phi i64 [ 0, %bb.a ], [ %.1.i.i.i.1, %bb.b ] ; 2 uses
  %.01321.i.i.i = phi i64 [ 0, %bb.a ], [ %.114.i.i.i.1, %bb.b ]
  %.01520.i.i.i = phi i64 [ %1, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.a = shl i64 %.01222.i.i.i, 1                 ; 2 uses
  %i.b = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i.i, i64 %.01520.i.i.i, i64 2) ; 2 uses
  %i.c = shl i64 %.01520.i.i.i, 2
  %i.d = icmp ult i64 %i.a, %i.b                  ; 2 uses
  %.neg.i.i.i = xor i64 %i.a, -1
  %i.e = select i1 %i.d, i64 %.neg.i.i.i, i64 0
  %.114.i.i.i = add i64 %i.e, %i.b
  %i.f = shl i64 %.01222.i.i.i, 2                 ; 2 uses
  %i.g = add i64 %i.f, 4
  %i.h = select i1 %i.d, i64 %i.g, i64 %i.f       ; 4 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %.114.i.i.i, i64 %i.c, i64 2) ; 2 uses
  %i.j = shl i64 %.01520.i.i.i, 4
  %i.k = icmp ult i64 %i.h, %i.i                  ; 2 uses
  %.neg.i.i.i.1 = xor i64 %i.h, -1
  %i.l = or disjoint i64 %i.h, 2
  %i.m = select i1 %i.k, i64 %.neg.i.i.i.1, i64 0
  %.114.i.i.i.1 = add i64 %i.m, %i.i
  %.1.i.i.i.1 = select i1 %i.k, i64 %i.l, i64 %i.h ; 2 uses
  %i.n = add nsw i32 %.023.i.i.i, -2              ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, label %bb.b, !llvm.loop !1596

_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i: ; preds = %bb.b
  %i.o = lshr exact i64 %.1.i.i.i.1, 1            ; 2 uses
  %i.p = urem i64 %1, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw i64 %i.o, %i.r                   ; 4 uses
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ]
  %.0910.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ] ; 2 uses
  %i.u = lshr i64 %.0910.i.i.i, 1                 ; 2 uses
  %i.v = add nuw nsw i64 %.011.i.i.i, 1           ; 2 uses
  %i.w = icmp ugt i64 %.0910.i.i.i, 33
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, !llvm.loop !2110

_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i
  %.09.lcssa.i.i.i = phi i64 [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.u, %.lr.ph.i.i.i ] ; 4 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.v, %.lr.ph.i.i.i ] ; 4 uses
  %i.x = shl i64 %.09.lcssa.i.i.i, %.0.lcssa.i.i.i
  %.not.i.i = icmp eq i64 %i.x, %i.s
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i
  %i.y = icmp samesign ult i64 %.09.lcssa.i.i.i, 16
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw nsw i64 %.09.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = add i64 %.0.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, %bb.d, %bb.e
  %.0.i = phi i64 [ %.09.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %i.z, %bb.d ], [ 9, %bb.e ] ; 2 uses
end_hunk_7
