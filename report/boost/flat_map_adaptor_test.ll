Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 252
loop-unroll.NumUnrolled: 523
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_:bb.a
  %i.z = udiv i64 %i.y, %5                        ; 2 uses
  %i.aa = udiv i64 %i.c, %5                       ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %0, i64 %i.z
  tail call void @_ZN5boost7movelib16heap_sort_helperIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEE4sortES4_S4_SC_(ptr noundef %0, ptr noundef %i.ac)
  %i.ad = load ptr, ptr %8, align 8, !tbaa !372
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
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !373 ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, %5
  br i1 %i.ar, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.i
  store i64 %5, ptr %i.ap, align 8, !tbaa !373
  %.pre103 = load ptr, ptr %8, align 8, !tbaa !372
  br label %bb.k

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit: ; preds = %bb.i
  %i.as = icmp ult i64 %i.aq, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !372   ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.aq
  %i.au = load i64, ptr %0, align 4
  store i64 %i.au, ptr %i.at, align 4
  %storemerge.in6.i57 = load i64, ptr %i.ap, align 8, !tbaa !373 ; 3 uses
  %storemerge7.i58 = add i64 %storemerge.in6.i57, 1 ; 3 uses
  store i64 %storemerge7.i58, ptr %i.ap, align 8, !tbaa !373
  %.not8.i59 = icmp eq i64 %storemerge7.i58, %5
  br i1 %.not8.i59, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.j, %.lr.ph.i60
  %storemerge10.i61 = phi i64 [ %storemerge.i64, %.lr.ph.i60 ], [ %storemerge7.i58, %bb.j ]
  %storemerge.in9.i62 = phi i64 [ %storemerge.in.i63, %.lr.ph.i60 ], [ %storemerge.in6.i57, %bb.j ]
  %i.av = load ptr, ptr %8, align 8, !tbaa !372   ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %storemerge10.i61
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %storemerge.in9.i62
  %i.ay = load i64, ptr %i.ax, align 4
  store i64 %i.ay, ptr %i.aw, align 4
  %storemerge.in.i63 = load i64, ptr %i.ap, align 8, !tbaa !373 ; 3 uses
  %storemerge.i64 = add i64 %storemerge.in.i63, 1 ; 3 uses
  store i64 %storemerge.i64, ptr %i.ap, align 8, !tbaa !373
  %.not.i65 = icmp eq i64 %storemerge.i64, %5
  br i1 %.not.i65, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68, label %.lr.ph.i60, !llvm.loop !33

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit68: ; preds = %.lr.ph.i60, %bb.j
  %storemerge.in.lcssa.i67 = phi i64 [ %storemerge.in6.i57, %bb.j ], [ %storemerge.in.i63, %.lr.ph.i60 ]
  %i.az = load ptr, ptr %8, align 8, !tbaa !372   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %storemerge.in.lcssa.i67 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !338
  store i32 %i.bb, ptr %0, align 4, !tbaa !347
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !348
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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !368
  store <2 x i64> %step.add, ptr %i.bz, align 8, !tbaa !368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !2446

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
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !368
  %i.cb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.cc = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.cc, %i.bu
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i, !llvm.loop !2447

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %i.bk, ptr noundef %0, i64 noundef %5, i64 noundef %i.bl, i64 noundef %i.br, i64 noundef %i.bs, i64 noundef %i.bn, ptr noundef %i.bf)
  %i.cd = load i64, ptr %i.ap, align 8, !tbaa !373
  %.not.i69 = icmp eq i64 %i.cd, 0
  br i1 %.not.i69, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit
  store i64 0, ptr %i.ap, align 8, !tbaa !373
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
  %i.b = load i32, ptr %1, align 4, !tbaa !338    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !338  ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 8 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !338
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 22 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %bb.d, !llvm.loop !34

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i179.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.q = ptrtoint ptr %.114.i to i64
  %i.r = sub i64 %i.e, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !373  ; 3 uses
  %.not.i39 = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre101 = load ptr, ptr %3, align 8, !tbaa !372 ; 10 uses
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %4 = ptrtoaddr ptr %.114.i to i64
  %i.v = add i64 %i.e, -8
  %i.w = sub i64 %i.v, %4                         ; 3 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader293, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.z = and i64 %i.w, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %i.ab = getelementptr i8, ptr %.pre101, i64 %i.aa
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  %bound0 = icmp ult ptr %.pre101, %i.ac
  %bound1 = icmp ult ptr %.114.i, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader293, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %.pre101, i64 %i.ad
  %i.af = getelementptr i8, ptr %.114.i, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 3 uses
  %i.ah = or disjoint i64 %i.ag, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre101, i64 %i.ag
  %next.gep138 = getelementptr i8, ptr %.pre101, i64 %i.ah
  %next.gep139 = getelementptr i8, ptr %.114.i, i64 %i.ag
  %next.gep140 = getelementptr i8, ptr %.114.i, i64 %i.ah
  %wide.vec = load <4 x i32>, ptr %next.gep139, align 4, !tbaa !338, !alias.scope !2473
  %wide.vec142 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !338, !alias.scope !2473
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !2474, !noalias !2473
  store <4 x i32> %wide.vec142, ptr %next.gep138, align 4, !tbaa !338, !alias.scope !2474, !noalias !2473
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader293

.lr.ph.i.i.preheader293:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.pre101, %vector.memcheck ], [ %.pre101, %.lr.ph.i.i.preheader ], [ %i.ae, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader293, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader293 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader293 ] ; 3 uses
  %i.aj = load i32, ptr %.079.i.i, align 4, !tbaa !338
  store i32 %i.aj, ptr %.010.i.i, align 4, !tbaa !347
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.al, ptr %i.am, align 4, !tbaa !348
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !2452

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.u, 3                     ; 4 uses
  %i.ap = getelementptr i8, ptr %.114.i, i64 %.idx26.i ; 3 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !372   ; 9 uses
  %.not8.i17.i = icmp eq i64 %i.u, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.f
  %i.ar = add i64 %.idx26.i, -8                   ; 2 uses
  %i.as = lshr exact i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.ar, 56
  br i1 %min.iters.check152, label %.lr.ph.i18.i.preheader291, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph.i18.i.preheader
  %i.au = getelementptr i8, ptr %i.aq, i64 %.idx26.i
  %bound0154 = icmp ult ptr %i.aq, %i.ap
  %bound1155 = icmp ult ptr %.114.i, %i.au
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph.i18.i.preheader291, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck153
  %n.vec158 = and i64 %i.at, 4611686018427387900  ; 3 uses
  %i.av = shl i64 %n.vec158, 3                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %.114.i, i64 %i.av
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next173, %vector.body159 ] ; 2 uses
  %i.ay = shl i64 %index160, 3                    ; 3 uses
  %i.az = or disjoint i64 %i.ay, 16               ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.aq, i64 %i.ay
  %next.gep162 = getelementptr i8, ptr %i.aq, i64 %i.az
  %next.gep163 = getelementptr i8, ptr %.114.i, i64 %i.ay
  %next.gep164 = getelementptr i8, ptr %.114.i, i64 %i.az
  %wide.vec165 = load <4 x i32>, ptr %next.gep163, align 4, !tbaa !338, !alias.scope !2475
  %wide.vec168 = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !338, !alias.scope !2475
  store <4 x i32> %wide.vec165, ptr %next.gep161, align 4, !tbaa !338, !alias.scope !2476, !noalias !2475
  store <4 x i32> %wide.vec168, ptr %next.gep162, align 4, !tbaa !338, !alias.scope !2476, !noalias !2475
  %index.next173 = add nuw i64 %index160, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next173, %n.vec158
  br i1 %i.ba, label %middle.block174, label %vector.body159, !llvm.loop !2456

middle.block174:                                  ; preds = %vector.body159
  %cmp.n175 = icmp eq i64 %i.at, %n.vec158
  br i1 %cmp.n175, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader291

.lr.ph.i18.i.preheader291:                        ; preds = %vector.memcheck153, %.lr.ph.i18.i.preheader, %middle.block174
  %.010.i19.i.ph = phi ptr [ %i.aq, %vector.memcheck153 ], [ %i.aq, %.lr.ph.i18.i.preheader ], [ %i.aw, %middle.block174 ]
  %.079.i20.i.ph = phi ptr [ %.114.i, %vector.memcheck153 ], [ %.114.i, %.lr.ph.i18.i.preheader ], [ %i.ax, %middle.block174 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader291, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.bg, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader291 ] ; 3 uses
  %.079.i20.i = phi ptr [ %i.bf, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader291 ] ; 3 uses
  %i.bb = load i32, ptr %.079.i20.i, align 4, !tbaa !338
  store i32 %i.bb, ptr %.010.i19.i, align 4, !tbaa !347
  %i.bc = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !348
  %i.bf = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 8 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.bf, %i.ap
  br i1 %.not.i21.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !2457

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i: ; preds = %.lr.ph.i18.i, %middle.block174, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.aq, %bb.f ], [ %i.aw, %middle.block174 ], [ %i.bg, %.lr.ph.i18.i ]
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.r
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bi, %.lr.ph.i24.i ], [ %i.ap, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bj, %.lr.ph.i24.i ], [ %.0.lcssa.i22.i, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i ] ; 2 uses
  %i.bh = load i64, ptr %.012.i.i, align 4
  store i64 %i.bh, ptr %.0911.i.i, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bi, %1
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, label %.lr.ph.i24.i, !llvm.loop !35

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit: ; preds = %.lr.ph.i24.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !372
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, %bb.e, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.bk = phi ptr [ %i.aq, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit ], [ %.pre101, %bb.e ], [ %.pre101, %middle.block ], [ %.pre101, %.lr.ph.i.i ] ; 3 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64              ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !373
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.r ; 2 uses
  %.not23.i = icmp eq ptr %1, %.114.i
  br i1 %.not23.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 2 uses
  %.026.i = phi ptr [ %.1.i41, %bb.j ], [ %i.bk, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 12 uses
  %.01625.i = phi ptr [ %.117.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 5 uses
  %.01824.i = phi ptr [ %i.ct, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 9 uses
  %i.bn = icmp eq ptr %.01625.i, %2
  br i1 %i.bn, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.026.i180.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
  %i.bo = add i64 %i.bl, %i.e
  %i.bp = add i64 %i.bo, -8
  %i.bq = add i64 %.114.i179.le, %.026.i180.le
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check188 = icmp ult i64 %i.br, 168
  br i1 %min.iters.check188, label %.lr.ph.i.i.i.preheader284, label %vector.memcheck178

vector.memcheck178:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.bu = shl i64 %indvar, 3
  %i.bv = getelementptr i8, ptr %.114.i, i64 %i.bu
  %scevgep = getelementptr i8, ptr %i.bv, i64 8
  %i.bw = add i64 %i.bl, %i.e
  %i.bx = add i64 %i.bw, -8
  %i.by = add i64 %.114.i179.le, %.026.i180.le
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = and i64 %i.bz, -8                       ; 2 uses
  %scevgep181 = getelementptr i8, ptr %scevgep, i64 %i.ca
  %scevgep182 = getelementptr i8, ptr %.026.i, i64 8
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.ca
  %bound0184 = icmp ult ptr %.01824.i, %scevgep183
  %bound1185 = icmp ult ptr %.026.i, %scevgep181
  %found.conflict186 = and i1 %bound0184, %bound1185
  br i1 %found.conflict186, label %.lr.ph.i.i.i.preheader284, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck178
  %n.vec190 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.cb = shl i64 %n.vec190, 3                    ; 2 uses
  %i.cc = getelementptr i8, ptr %.01824.i, i64 %i.cb
  %i.cd = getelementptr i8, ptr %.026.i, i64 %i.cb
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next205, %vector.body191 ] ; 2 uses
  %i.ce = shl i64 %index192, 3                    ; 3 uses
  %i.cf = or disjoint i64 %i.ce, 16               ; 2 uses
  %next.gep193 = getelementptr i8, ptr %.01824.i, i64 %i.ce
  %next.gep194 = getelementptr i8, ptr %.01824.i, i64 %i.cf
  %next.gep195 = getelementptr i8, ptr %.026.i, i64 %i.ce
  %next.gep196 = getelementptr i8, ptr %.026.i, i64 %i.cf
  %wide.vec197 = load <4 x i32>, ptr %next.gep195, align 4, !tbaa !338, !alias.scope !2477
  %wide.vec200 = load <4 x i32>, ptr %next.gep196, align 4, !tbaa !338, !alias.scope !2477
  store <4 x i32> %wide.vec197, ptr %next.gep193, align 4, !tbaa !338, !alias.scope !2478, !noalias !2477
  store <4 x i32> %wide.vec200, ptr %next.gep194, align 4, !tbaa !338, !alias.scope !2478, !noalias !2477
  %index.next205 = add nuw i64 %index192, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next205, %n.vec190
  br i1 %i.cg, label %middle.block206, label %vector.body191, !llvm.loop !2461

middle.block206:                                  ; preds = %vector.body191
  %cmp.n207 = icmp eq i64 %i.bt, %n.vec190
  br i1 %cmp.n207, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i.preheader284

.lr.ph.i.i.i.preheader284:                        ; preds = %vector.memcheck178, %.lr.ph.i.i.i.preheader, %middle.block206
  %.010.i.i.i.ph = phi ptr [ %.01824.i, %vector.memcheck178 ], [ %.01824.i, %.lr.ph.i.i.i.preheader ], [ %i.cc, %middle.block206 ]
  %.079.i.i.i.ph = phi ptr [ %.026.i, %vector.memcheck178 ], [ %.026.i, %.lr.ph.i.i.i.preheader ], [ %i.cd, %middle.block206 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader284, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader284 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader284 ] ; 3 uses
  %i.ch = load i32, ptr %.079.i.i.i, align 4, !tbaa !338
  store i32 %i.ch, ptr %.010.i.i.i, align 4, !tbaa !347
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !338
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !348
  %i.cl = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.cl, %i.bm
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !2462

bb.g:                                             ; preds = %.lr.ph.i40
  %i.cn = load i32, ptr %.01625.i, align 4, !tbaa !338 ; 2 uses
  %i.co = load i32, ptr %.026.i, align 4, !tbaa !338 ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi i32 [ %i.cn, %bb.h ], [ %i.co, %bb.i ]
  %.01625.pn.i = phi ptr [ %.01625.i, %bb.h ], [ %.026.i, %bb.i ]
  %.117.i = phi ptr [ %i.cq, %bb.h ], [ %.01625.i, %bb.i ]
  %.1.i41 = phi ptr [ %.026.i, %bb.h ], [ %i.cr, %bb.i ] ; 2 uses
  store i32 %.sink, ptr %.01824.i, align 4, !tbaa !347
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.01625.pn.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !338
  %i.cs = getelementptr inbounds nuw i8, ptr %.01824.i, i64 4
  store i32 %.sink.i, ptr %i.cs, align 4, !tbaa !348
  %i.ct = getelementptr i8, ptr %.01824.i, i64 8
  %.not.i42 = icmp eq ptr %.1.i41, %i.bm
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !36

.lr.ph.i44:                                       ; preds = %bb.c
  %i.cu = ashr exact i64 %i.i, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i44
  %.017.i45 = phi i64 [ %i.cu, %.lr.ph.i44 ], [ %.1.i49, %bb.k ] ; 2 uses
  %.01316.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i48, %bb.k ] ; 2 uses
  %i.cv = lshr i64 %.017.i45, 1                   ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.01316.i46, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !338
  %i.cy = icmp slt i32 %i.cx, %i.c                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.neg.i47 = xor i64 %i.cv, -1
  %i.da = add i64 %.017.i45, %.neg.i47
  %.114.i48 = select i1 %i.cy, ptr %i.cz, ptr %.01316.i46 ; 8 uses
  %.1.i49 = select i1 %i.cy, i64 %i.da, i64 %i.cv ; 2 uses
  %.not.i50 = icmp eq i64 %.1.i49, 0
  br i1 %.not.i50, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %bb.k, !llvm.loop !31

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.k
  %i.db = ptrtoint ptr %.114.i48 to i64
  %i.dc = sub i64 %i.db, %i.e                     ; 3 uses
  %i.dd = ashr exact i64 %i.dc, 3                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !373 ; 3 uses
  %.not.i52 = icmp ugt i64 %i.dd, %i.df
  br i1 %.not.i52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.not8.i.i53 = icmp eq ptr %.114.i48, %1
  %.pre103 = load ptr, ptr %3, align 8, !tbaa !372 ; 10 uses
  br i1 %.not8.i.i53, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %bb.l
  %5 = ptrtoaddr ptr %.114.i48 to i64
  %i.dg = add i64 %5, -8
  %i.dh = sub i64 %i.dg, %i.e                     ; 3 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check220 = icmp ult i64 %i.dh, 104
  br i1 %min.iters.check220, label %.lr.ph.i.i55.preheader282, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph.i.i55.preheader
  %i.dk = and i64 %i.dh, -8
  %i.dl = add i64 %i.dk, 8                        ; 2 uses
  %i.dm = getelementptr i8, ptr %.pre103, i64 %i.dl
  %i.dn = getelementptr i8, ptr %1, i64 %i.dl
  %bound0222 = icmp ult ptr %.pre103, %i.dn
  %bound1223 = icmp ult ptr %1, %i.dm
  %found.conflict224 = and i1 %bound0222, %bound1223
  br i1 %found.conflict224, label %.lr.ph.i.i55.preheader282, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck221
  %n.vec226 = and i64 %i.dj, 4611686018427387900  ; 3 uses
  %i.do = shl i64 %n.vec226, 3                    ; 2 uses
  %i.dp = getelementptr i8, ptr %.pre103, i64 %i.do
  %i.dq = getelementptr i8, ptr %1, i64 %i.do
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next241, %vector.body227 ] ; 2 uses
  %i.dr = shl i64 %index228, 3                    ; 3 uses
  %i.ds = or disjoint i64 %i.dr, 16               ; 2 uses
  %next.gep229 = getelementptr i8, ptr %.pre103, i64 %i.dr
  %next.gep230 = getelementptr i8, ptr %.pre103, i64 %i.ds
  %next.gep231 = getelementptr i8, ptr %1, i64 %i.dr
  %next.gep232 = getelementptr i8, ptr %1, i64 %i.ds
  %wide.vec233 = load <4 x i32>, ptr %next.gep231, align 4, !tbaa !338, !alias.scope !2479
  %wide.vec236 = load <4 x i32>, ptr %next.gep232, align 4, !tbaa !338, !alias.scope !2479
  store <4 x i32> %wide.vec233, ptr %next.gep229, align 4, !tbaa !338, !alias.scope !2480, !noalias !2479
  store <4 x i32> %wide.vec236, ptr %next.gep230, align 4, !tbaa !338, !alias.scope !2480, !noalias !2479
  %index.next241 = add nuw i64 %index228, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next241, %n.vec226
  br i1 %i.dt, label %middle.block242, label %vector.body227, !llvm.loop !2466

middle.block242:                                  ; preds = %vector.body227
  %cmp.n243 = icmp eq i64 %i.dj, %n.vec226
  br i1 %cmp.n243, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, label %.lr.ph.i.i55.preheader282

.lr.ph.i.i55.preheader282:                        ; preds = %vector.memcheck221, %.lr.ph.i.i55.preheader, %middle.block242
  %.010.i.i56.ph = phi ptr [ %.pre103, %vector.memcheck221 ], [ %.pre103, %.lr.ph.i.i55.preheader ], [ %i.dp, %middle.block242 ]
  %.079.i.i57.ph = phi ptr [ %1, %vector.memcheck221 ], [ %1, %.lr.ph.i.i55.preheader ], [ %i.dq, %middle.block242 ]
  br label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.preheader282, %.lr.ph.i.i55
  %.010.i.i56 = phi ptr [ %i.dz, %.lr.ph.i.i55 ], [ %.010.i.i56.ph, %.lr.ph.i.i55.preheader282 ] ; 3 uses
  %.079.i.i57 = phi ptr [ %i.dy, %.lr.ph.i.i55 ], [ %.079.i.i57.ph, %.lr.ph.i.i55.preheader282 ] ; 3 uses
  %i.du = load i32, ptr %.079.i.i57, align 4, !tbaa !338
  store i32 %i.du, ptr %.010.i.i56, align 4, !tbaa !347
  %i.dv = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !338
  %i.dx = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 4
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !348
  %i.dy = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 8
  %.not.i.i58 = icmp eq ptr %i.dy, %.114.i48
  br i1 %.not.i.i58, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, label %.lr.ph.i.i55, !llvm.loop !2467

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.idx26.i59 = shl i64 %i.df, 3                  ; 4 uses
  %i.ea = getelementptr i8, ptr %1, i64 %.idx26.i59 ; 3 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !372   ; 9 uses
  %.not8.i17.i60 = icmp eq i64 %i.df, 0
  br i1 %.not8.i17.i60, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65, label %.lr.ph.i18.i61.preheader

.lr.ph.i18.i61.preheader:                         ; preds = %bb.m
  %i.ec = add i64 %.idx26.i59, -8                 ; 2 uses
  %i.ed = lshr exact i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.ec, 56
  br i1 %min.iters.check252, label %.lr.ph.i18.i61.preheader281, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph.i18.i61.preheader
  %i.ef = getelementptr i8, ptr %i.eb, i64 %.idx26.i59
  %bound0254 = icmp ult ptr %i.eb, %i.ea
  %bound1255 = icmp ult ptr %1, %i.ef
  %found.conflict256 = and i1 %bound0254, %bound1255
  br i1 %found.conflict256, label %.lr.ph.i18.i61.preheader281, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck253
  %n.vec258 = and i64 %i.ee, 4611686018427387900  ; 3 uses
  %i.eg = shl i64 %n.vec258, 3                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eb, i64 %i.eg  ; 2 uses
  %i.ei = getelementptr i8, ptr %1, i64 %i.eg
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next273, %vector.body259 ] ; 2 uses
  %i.ej = shl i64 %index260, 3                    ; 3 uses
  %i.ek = or disjoint i64 %i.ej, 16               ; 2 uses
  %next.gep261 = getelementptr i8, ptr %i.eb, i64 %i.ej
  %next.gep262 = getelementptr i8, ptr %i.eb, i64 %i.ek
  %next.gep263 = getelementptr i8, ptr %1, i64 %i.ej
  %next.gep264 = getelementptr i8, ptr %1, i64 %i.ek
  %wide.vec265 = load <4 x i32>, ptr %next.gep263, align 4, !tbaa !338, !alias.scope !2481
  %wide.vec268 = load <4 x i32>, ptr %next.gep264, align 4, !tbaa !338, !alias.scope !2481
  store <4 x i32> %wide.vec265, ptr %next.gep261, align 4, !tbaa !338, !alias.scope !2482, !noalias !2481
  store <4 x i32> %wide.vec268, ptr %next.gep262, align 4, !tbaa !338, !alias.scope !2482, !noalias !2481
  %index.next273 = add nuw i64 %index260, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next273, %n.vec258
  br i1 %i.el, label %middle.block274, label %vector.body259, !llvm.loop !2471

middle.block274:                                  ; preds = %vector.body259
  %cmp.n275 = icmp eq i64 %i.ee, %n.vec258
  br i1 %cmp.n275, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65, label %.lr.ph.i18.i61.preheader281

.lr.ph.i18.i61.preheader281:                      ; preds = %vector.memcheck253, %.lr.ph.i18.i61.preheader, %middle.block274
  %.010.i19.i62.ph = phi ptr [ %i.eb, %vector.memcheck253 ], [ %i.eb, %.lr.ph.i18.i61.preheader ], [ %i.eh, %middle.block274 ]
  %.079.i20.i63.ph = phi ptr [ %1, %vector.memcheck253 ], [ %1, %.lr.ph.i18.i61.preheader ], [ %i.ei, %middle.block274 ]
  br label %.lr.ph.i18.i61

.lr.ph.i18.i61:                                   ; preds = %.lr.ph.i18.i61.preheader281, %.lr.ph.i18.i61
  %.010.i19.i62 = phi ptr [ %i.er, %.lr.ph.i18.i61 ], [ %.010.i19.i62.ph, %.lr.ph.i18.i61.preheader281 ] ; 3 uses
  %.079.i20.i63 = phi ptr [ %i.eq, %.lr.ph.i18.i61 ], [ %.079.i20.i63.ph, %.lr.ph.i18.i61.preheader281 ] ; 3 uses
  %i.em = load i32, ptr %.079.i20.i63, align 4, !tbaa !338
  store i32 %i.em, ptr %.010.i19.i62, align 4, !tbaa !347
  %i.en = getelementptr inbounds nuw i8, ptr %.079.i20.i63, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !338
  %i.ep = getelementptr inbounds nuw i8, ptr %.010.i19.i62, i64 4
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !348
  %i.eq = getelementptr inbounds nuw i8, ptr %.079.i20.i63, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i19.i62, i64 8 ; 2 uses
  %.not.i21.i64 = icmp eq ptr %i.eq, %i.ea
  br i1 %.not.i21.i64, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65, label %.lr.ph.i18.i61, !llvm.loop !2472

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65: ; preds = %.lr.ph.i18.i61, %middle.block274, %bb.m
  %.0.lcssa.i22.i66 = phi ptr [ %i.eb, %bb.m ], [ %i.eh, %middle.block274 ], [ %i.er, %.lr.ph.i18.i61 ]
  %.not10.i.i67 = icmp eq i64 %.idx26.i59, %i.dc
  br i1 %.not10.i.i67, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, label %.lr.ph.i24.i68

.lr.ph.i24.i68:                                   ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65, %.lr.ph.i24.i68
  %.012.i.i69 = phi ptr [ %i.et, %.lr.ph.i24.i68 ], [ %i.ea, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65 ] ; 2 uses
  %.0911.i.i70 = phi ptr [ %i.eu, %.lr.ph.i24.i68 ], [ %.0.lcssa.i22.i66, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65 ] ; 2 uses
  %i.es = load i64, ptr %.012.i.i69, align 4
  store i64 %i.es, ptr %.0911.i.i70, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i69, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i70, i64 8
  %.not.i25.i71 = icmp eq ptr %i.et, %.114.i48
  br i1 %.not.i25.i71, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72.loopexit, label %.lr.ph.i24.i68, !llvm.loop !35

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72.loopexit: ; preds = %.lr.ph.i24.i68
  %.pre102 = load ptr, ptr %3, align 8, !tbaa !372
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72: ; preds = %.lr.ph.i.i55, %middle.block242, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72.loopexit, %bb.l, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65
  %i.ev = phi ptr [ %i.eb, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i65 ], [ %.pre102, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72.loopexit ], [ %.pre103, %bb.l ], [ %.pre103, %middle.block242 ], [ %.pre103, %.lr.ph.i.i55 ] ; 3 uses
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !373
  %.not27.i = icmp eq ptr %.114.i48, %1
  br i1 %.not27.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i73.preheader

.lr.ph.i73.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.dc
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.preheader, %bb.n
  %.030.i = phi ptr [ %.030..i, %bb.n ], [ %i.ew, %.lr.ph.i73.preheader ] ; 4 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.n ], [ %1, %.lr.ph.i73.preheader ] ; 4 uses
  %.02128.i = phi ptr [ %i.fj, %bb.n ], [ %.114.i48, %.lr.ph.i73.preheader ] ; 3 uses
  %i.ex = icmp eq ptr %0, %.01929.i
  br i1 %i.ex, label %.lr.ph.i.i.i77, label %bb.n

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i73, %.lr.ph.i.i.i77
  %.010.i.i.i78 = phi ptr [ %i.ez, %.lr.ph.i.i.i77 ], [ %.02128.i, %.lr.ph.i73 ] ; 2 uses
  %.079.i.i.i79 = phi ptr [ %i.ey, %.lr.ph.i.i.i77 ], [ %.030.i, %.lr.ph.i73 ] ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.079.i.i.i79, i64 -8 ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.010.i.i.i78, i64 -8 ; 2 uses
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !338
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !347
  %i.fb = getelementptr inbounds i8, ptr %.079.i.i.i79, i64 -4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !338
  %i.fd = getelementptr inbounds i8, ptr %.010.i.i.i78, i64 -4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !348
  %.not.i.i.i80 = icmp eq ptr %i.ev, %i.ey
  br i1 %.not.i.i.i80, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i77, !llvm.loop !32

bb.n:                                             ; preds = %.lr.ph.i73
  %i.fe = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 2 uses
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !338 ; 2 uses
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !338 ; 2 uses
  %i.fi = icmp slt i32 %i.fg, %i.fh               ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 %i.fh)
  %.01929..030.i = select i1 %i.fi, ptr %.01929.i, ptr %.030.i
  %..01929.i = select i1 %i.fi, ptr %i.ff, ptr %.01929.i
  %.030..i = select i1 %i.fi, ptr %.030.i, ptr %i.fe ; 2 uses
  store i32 %..i, ptr %i.fj, align 4, !tbaa !347
  %.sink.in.i74 = getelementptr inbounds i8, ptr %.01929..030.i, i64 -4
  %.sink.i75 = load i32, ptr %.sink.in.i74, align 4, !tbaa !338
  %i.fk = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  store i32 %.sink.i75, ptr %i.fk, align 4, !tbaa !348
  %.not.i76 = icmp eq ptr %i.ev, %.030..i
  br i1 %.not.i76, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i73, !llvm.loop !37

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.n, %.lr.ph.i.i.i77, %middle.block206, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit72, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, %bb.b, %bb.a
  ret void
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_:bb.a
.lr.ph.i.i.preheader22:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.8.0.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader22, %.lr.ph.i.i
  %.sroa.8.0.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %.sroa.8.0.i.ph, %.lr.ph.i.i.preheader22 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.8.0.i
  store i64 %i.o, ptr %i.w, align 4
  %storemerge.i.i = add nuw i64 %.sroa.8.0.i, 1   ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i, !llvm.loop !2821

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %storemerge.in.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %.sroa.8.0.i, %.lr.ph.i.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %storemerge.in.lcssa.i.i
  store i32 %i.p, ptr %0, align 4, !tbaa !347
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !338
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !348
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
  store ptr %5, ptr %7, align 8, !tbaa !394
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !395
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !396
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS4_mSD_EEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !338 ; 2 uses
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !338 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.tr100, align 4, !tbaa !338
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !338
  %i.l = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !338
  %i.o = load i32, ptr %i.m, align 4, !tbaa !338
  store i32 %i.o, ptr %i.l, align 4, !tbaa !338
  store i32 %i.n, ptr %i.m, align 4, !tbaa !338
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
  %i.v = load i32, ptr %i.s, align 4, !tbaa !338
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.w = lshr i64 %.017.i, 1                      ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !338
  %i.z = icmp slt i32 %i.y, %i.v                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.neg.i = xor i64 %i.w, -1
  %i.ab = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.z, ptr %i.aa, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.z, i64 %i.ab, i64 %i.w     ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !31

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
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !338
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.ai, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr100, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.ak = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.01316.i81, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !338
  %i.an = icmp slt i32 %i.aj, %i.am               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.neg.i82 = xor i64 %i.ak, -1
  %i.ap = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.an, ptr %.01316.i81, ptr %i.ao ; 3 uses
  %.1.i84 = select i1 %i.an, i64 %i.ak, i64 %i.ap ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !34

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
  %i.a = icmp ule i64 %3, %4
  %.not = icmp ugt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not8.i = icmp eq ptr %1, %2
  br i1 %.not8.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %7 = ptrtoaddr ptr %2 to i64
  %8 = ptrtoaddr ptr %1 to i64
  %i.b = add i64 %7, -8
  %i.c = sub i64 %i.b, %8                         ; 3 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 120
  br i1 %min.iters.check, label %.lr.ph.i.preheader243, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.f = and i64 %i.c, -8
  %i.g = add i64 %i.f, 8                          ; 2 uses
  %i.h = getelementptr i8, ptr %5, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %bound0 = icmp ult ptr %5, %i.i
  %bound1 = icmp ult ptr %1, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader243, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 3 uses
  %i.j = shl i64 %n.vec, 3                        ; 2 uses
  %i.k = getelementptr i8, ptr %5, i64 %i.j       ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 3                        ; 3 uses
  %i.n = or disjoint i64 %i.m, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.m
  %next.gep97 = getelementptr i8, ptr %5, i64 %i.n
  %next.gep98 = getelementptr i8, ptr %1, i64 %i.m
  %next.gep99 = getelementptr i8, ptr %1, i64 %i.n
  %wide.vec = load <4 x i32>, ptr %next.gep98, align 4, !tbaa !338, !alias.scope !2847
  %wide.vec101 = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !338, !alias.scope !2847
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !2848, !noalias !2847
  store <4 x i32> %wide.vec101, ptr %next.gep97, align 4, !tbaa !338, !alias.scope !2848, !noalias !2847
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !2825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.preheader243

.lr.ph.i.preheader243:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  %.079.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader243, %.lr.ph.i
  %.010.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader243 ] ; 3 uses
  %.079.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader243 ] ; 3 uses
  %i.p = load i32, ptr %.079.i, align 4, !tbaa !338
  store i32 %i.p, ptr %.010.i, align 4, !tbaa !347
  %i.q = getelementptr inbounds nuw i8, ptr %.079.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !348
  %i.t = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %2
  br i1 %.not.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i, !llvm.loop !2826

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.c
  %.0.lcssa.i = phi ptr [ %5, %bb.c ], [ %i.k, %middle.block ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %.not8.i37 = icmp eq ptr %0, %1
  br i1 %.not8.i37, label %_ZN5boost13move_backwardIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit, %.lr.ph.i38
  %.010.i39 = phi ptr [ %i.w, %.lr.ph.i38 ], [ %2, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit ] ; 2 uses
  %.079.i40 = phi ptr [ %i.v, %.lr.ph.i38 ], [ %1, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.079.i40, i64 -8 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.010.i39, i64 -8 ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !338
  store i32 %i.x, ptr %i.w, align 4, !tbaa !347
  %i.y = getelementptr inbounds i8, ptr %.079.i40, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !338
  %i.aa = getelementptr inbounds i8, ptr %.010.i39, i64 -4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !348
  %.not.i41 = icmp eq ptr %0, %i.v
  br i1 %.not.i41, label %_ZN5boost13move_backwardIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i38, !llvm.loop !32

_ZN5boost13move_backwardIPSt4pairIiiES3_EET0_T_S5_S4_.exit: ; preds = %.lr.ph.i38, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit
  %.not8.i43 = icmp eq ptr %5, %.0.lcssa.i
  br i1 %.not8.i43, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %_ZN5boost13move_backwardIPSt4pairIiiES3_EET0_T_S5_S4_.exit
  %9 = ptrtoaddr ptr %.0.lcssa.i to i64
  %10 = ptrtoaddr ptr %5 to i64
  %i.ab = add i64 %9, -8
  %i.ac = sub i64 %i.ab, %10                      ; 3 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.ac, 120
  br i1 %min.iters.check113, label %.lr.ph.i44.preheader240, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i44.preheader
  %i.af = and i64 %i.ac, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr i8, ptr %5, i64 %i.ag
  %bound0115 = icmp ult ptr %0, %i.ai
  %bound1116 = icmp ult ptr %5, %i.ah
  %found.conflict117 = and i1 %bound0115, %bound1116
  br i1 %found.conflict117, label %.lr.ph.i44.preheader240, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec119 = and i64 %i.ae, 4611686018427387900  ; 3 uses
  %i.aj = shl i64 %n.vec119, 3                    ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj     ; 2 uses
  %i.al = getelementptr i8, ptr %5, i64 %i.aj
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next134, %vector.body120 ] ; 2 uses
  %i.am = shl i64 %index121, 3                    ; 3 uses
  %i.an = or disjoint i64 %i.am, 16               ; 2 uses
  %next.gep122 = getelementptr i8, ptr %0, i64 %i.am
  %next.gep123 = getelementptr i8, ptr %0, i64 %i.an
  %next.gep124 = getelementptr i8, ptr %5, i64 %i.am
  %next.gep125 = getelementptr i8, ptr %5, i64 %i.an
  %wide.vec126 = load <4 x i32>, ptr %next.gep124, align 4, !tbaa !338, !alias.scope !2849
  %wide.vec129 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !338, !alias.scope !2849
  store <4 x i32> %wide.vec126, ptr %next.gep122, align 4, !tbaa !338, !alias.scope !2850, !noalias !2849
  store <4 x i32> %wide.vec129, ptr %next.gep123, align 4, !tbaa !338, !alias.scope !2850, !noalias !2849
  %index.next134 = add nuw i64 %index121, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next134, %n.vec119
  br i1 %i.ao, label %middle.block135, label %vector.body120, !llvm.loop !2830

middle.block135:                                  ; preds = %vector.body120
  %cmp.n136 = icmp eq i64 %i.ae, %n.vec119
  br i1 %cmp.n136, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49, label %.lr.ph.i44.preheader240

.lr.ph.i44.preheader240:                          ; preds = %vector.memcheck114, %.lr.ph.i44.preheader, %middle.block135
  %.010.i45.ph = phi ptr [ %0, %vector.memcheck114 ], [ %0, %.lr.ph.i44.preheader ], [ %i.ak, %middle.block135 ]
  %.079.i46.ph = phi ptr [ %5, %vector.memcheck114 ], [ %5, %.lr.ph.i44.preheader ], [ %i.al, %middle.block135 ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader240, %.lr.ph.i44
  %.010.i45 = phi ptr [ %i.au, %.lr.ph.i44 ], [ %.010.i45.ph, %.lr.ph.i44.preheader240 ] ; 3 uses
  %.079.i46 = phi ptr [ %i.at, %.lr.ph.i44 ], [ %.079.i46.ph, %.lr.ph.i44.preheader240 ] ; 3 uses
  %i.ap = load i32, ptr %.079.i46, align 4, !tbaa !338
  store i32 %i.ap, ptr %.010.i45, align 4, !tbaa !347
  %i.aq = getelementptr inbounds nuw i8, ptr %.079.i46, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !338
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i45, i64 4
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !348
  %i.at = getelementptr inbounds nuw i8, ptr %.079.i46, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i45, i64 8 ; 2 uses
  %.not.i47 = icmp eq ptr %i.at, %.0.lcssa.i
  br i1 %.not.i47, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49, label %.lr.ph.i44, !llvm.loop !2831

bb.d:                                             ; preds = %bb.a
  %.not34 = icmp ugt i64 %3, %6
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not8.i50 = icmp eq ptr %0, %1
  br i1 %.not8.i50, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit56, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %bb.f
  %11 = ptrtoaddr ptr %1 to i64
  %12 = ptrtoaddr ptr %0 to i64
  %i.av = add i64 %11, -8
  %i.aw = sub i64 %i.av, %12                      ; 3 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.aw, 120
  br i1 %min.iters.check145, label %.lr.ph.i51.preheader238, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph.i51.preheader
  %i.az = and i64 %i.aw, -8
  %i.ba = add i64 %i.az, 8                        ; 2 uses
  %i.bb = getelementptr i8, ptr %5, i64 %i.ba
  %i.bc = getelementptr i8, ptr %0, i64 %i.ba
  %bound0147 = icmp ult ptr %5, %i.bc
  %bound1148 = icmp ult ptr %0, %i.bb
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i51.preheader238, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck146
  %n.vec151 = and i64 %i.ay, 4611686018427387900  ; 3 uses
  %i.bd = shl i64 %n.vec151, 3                    ; 2 uses
  %i.be = getelementptr i8, ptr %5, i64 %i.bd     ; 2 uses
  %i.bf = getelementptr i8, ptr %0, i64 %i.bd
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next166, %vector.body152 ] ; 2 uses
  %i.bg = shl i64 %index153, 3                    ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 16               ; 2 uses
  %next.gep154 = getelementptr i8, ptr %5, i64 %i.bg
  %next.gep155 = getelementptr i8, ptr %5, i64 %i.bh
  %next.gep156 = getelementptr i8, ptr %0, i64 %i.bg
  %next.gep157 = getelementptr i8, ptr %0, i64 %i.bh
  %wide.vec158 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !338, !alias.scope !2851
  %wide.vec161 = load <4 x i32>, ptr %next.gep157, align 4, !tbaa !338, !alias.scope !2851
  store <4 x i32> %wide.vec158, ptr %next.gep154, align 4, !tbaa !338, !alias.scope !2852, !noalias !2851
  store <4 x i32> %wide.vec161, ptr %next.gep155, align 4, !tbaa !338, !alias.scope !2852, !noalias !2851
  %index.next166 = add nuw i64 %index153, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next166, %n.vec151
  br i1 %i.bi, label %middle.block167, label %vector.body152, !llvm.loop !2835

middle.block167:                                  ; preds = %vector.body152
  %cmp.n168 = icmp eq i64 %i.ay, %n.vec151
  br i1 %cmp.n168, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit56, label %.lr.ph.i51.preheader238

.lr.ph.i51.preheader238:                          ; preds = %vector.memcheck146, %.lr.ph.i51.preheader, %middle.block167
  %.010.i52.ph = phi ptr [ %5, %vector.memcheck146 ], [ %5, %.lr.ph.i51.preheader ], [ %i.be, %middle.block167 ]
  %.079.i53.ph = phi ptr [ %0, %vector.memcheck146 ], [ %0, %.lr.ph.i51.preheader ], [ %i.bf, %middle.block167 ]
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader238, %.lr.ph.i51
  %.010.i52 = phi ptr [ %i.bo, %.lr.ph.i51 ], [ %.010.i52.ph, %.lr.ph.i51.preheader238 ] ; 3 uses
  %.079.i53 = phi ptr [ %i.bn, %.lr.ph.i51 ], [ %.079.i53.ph, %.lr.ph.i51.preheader238 ] ; 3 uses
  %i.bj = load i32, ptr %.079.i53, align 4, !tbaa !338
  store i32 %i.bj, ptr %.010.i52, align 4, !tbaa !347
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i53, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i52, i64 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !348
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i53, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i52, i64 8 ; 2 uses
  %.not.i54 = icmp eq ptr %i.bn, %1
  br i1 %.not.i54, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit56, label %.lr.ph.i51, !llvm.loop !2836

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit56: ; preds = %.lr.ph.i51, %middle.block167, %bb.f
  %.0.lcssa.i55 = phi ptr [ %5, %bb.f ], [ %i.be, %middle.block167 ], [ %i.bo, %.lr.ph.i51 ] ; 3 uses
  %.not8.i57 = icmp eq ptr %1, %2
  br i1 %.not8.i57, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit63, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit56
  %13 = ptrtoaddr ptr %2 to i64
  %14 = ptrtoaddr ptr %1 to i64
  %i.bp = add i64 %13, -8
  %i.bq = sub i64 %i.bp, %14                      ; 3 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check177 = icmp ult i64 %i.bq, 120
  br i1 %min.iters.check177, label %.lr.ph.i58.preheader237, label %vector.memcheck178

vector.memcheck178:                               ; preds = %.lr.ph.i58.preheader
  %i.bt = and i64 %i.bq, -8
  %i.bu = add i64 %i.bt, 8                        ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 %i.bu
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  %bound0179 = icmp ult ptr %0, %i.bw
  %bound1180 = icmp ult ptr %1, %i.bv
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i58.preheader237, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck178
  %n.vec183 = and i64 %i.bs, 4611686018427387900  ; 3 uses
  %i.bx = shl i64 %n.vec183, 3                    ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.bx     ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.bx
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next198, %vector.body184 ] ; 2 uses
  %i.ca = shl i64 %index185, 3                    ; 3 uses
  %i.cb = or disjoint i64 %i.ca, 16               ; 2 uses
  %next.gep186 = getelementptr i8, ptr %0, i64 %i.ca
  %next.gep187 = getelementptr i8, ptr %0, i64 %i.cb
  %next.gep188 = getelementptr i8, ptr %1, i64 %i.ca
  %next.gep189 = getelementptr i8, ptr %1, i64 %i.cb
  %wide.vec190 = load <4 x i32>, ptr %next.gep188, align 4, !tbaa !338, !alias.scope !2853
  %wide.vec193 = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !338, !alias.scope !2853
  store <4 x i32> %wide.vec190, ptr %next.gep186, align 4, !tbaa !338, !alias.scope !2854, !noalias !2853
  store <4 x i32> %wide.vec193, ptr %next.gep187, align 4, !tbaa !338, !alias.scope !2854, !noalias !2853
  %index.next198 = add nuw i64 %index185, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next198, %n.vec183
  br i1 %i.cc, label %middle.block199, label %vector.body184, !llvm.loop !2840

middle.block199:                                  ; preds = %vector.body184
  %cmp.n200 = icmp eq i64 %i.bs, %n.vec183
  br i1 %cmp.n200, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit63, label %.lr.ph.i58.preheader237

.lr.ph.i58.preheader237:                          ; preds = %vector.memcheck178, %.lr.ph.i58.preheader, %middle.block199
  %.010.i59.ph = phi ptr [ %0, %vector.memcheck178 ], [ %0, %.lr.ph.i58.preheader ], [ %i.by, %middle.block199 ]
  %.079.i60.ph = phi ptr [ %1, %vector.memcheck178 ], [ %1, %.lr.ph.i58.preheader ], [ %i.bz, %middle.block199 ]
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader237, %.lr.ph.i58
  %.010.i59 = phi ptr [ %i.ci, %.lr.ph.i58 ], [ %.010.i59.ph, %.lr.ph.i58.preheader237 ] ; 3 uses
  %.079.i60 = phi ptr [ %i.ch, %.lr.ph.i58 ], [ %.079.i60.ph, %.lr.ph.i58.preheader237 ] ; 3 uses
  %i.cd = load i32, ptr %.079.i60, align 4, !tbaa !338
  store i32 %i.cd, ptr %.010.i59, align 4, !tbaa !347
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i60, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !338
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i59, i64 4
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !348
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i60, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i59, i64 8 ; 2 uses
  %.not.i61 = icmp eq ptr %i.ch, %2
  br i1 %.not.i61, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit63, label %.lr.ph.i58, !llvm.loop !2841

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit63: ; preds = %.lr.ph.i58, %middle.block199, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit56
  %.0.lcssa.i62 = phi ptr [ %0, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit56 ], [ %i.by, %middle.block199 ], [ %i.ci, %.lr.ph.i58 ] ; 10 uses
  %.not8.i64 = icmp eq ptr %5, %.0.lcssa.i55
  br i1 %.not8.i64, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49, label %.lr.ph.i65.preheader

.lr.ph.i65.preheader:                             ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit63
  %15 = ptrtoaddr ptr %.0.lcssa.i55 to i64
  %16 = ptrtoaddr ptr %5 to i64
  %i.cj = add i64 %15, -8
  %i.ck = sub i64 %i.cj, %16                      ; 3 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %i.ck, 120
  br i1 %min.iters.check210, label %.lr.ph.i65.preheader236, label %vector.memcheck211

vector.memcheck211:                               ; preds = %.lr.ph.i65.preheader
  %i.cn = and i64 %i.ck, -8
  %i.co = add i64 %i.cn, 8                        ; 2 uses
  %i.cp = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.co
  %i.cq = getelementptr i8, ptr %5, i64 %i.co
  %bound0212 = icmp ult ptr %.0.lcssa.i62, %i.cq
  %bound1213 = icmp ult ptr %5, %i.cp
  %found.conflict214 = and i1 %bound0212, %bound1213
  br i1 %found.conflict214, label %.lr.ph.i65.preheader236, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck211
  %n.vec216 = and i64 %i.cm, 4611686018427387900  ; 3 uses
  %i.cr = shl i64 %n.vec216, 3                    ; 2 uses
  %i.cs = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.cr
  %i.ct = getelementptr i8, ptr %5, i64 %i.cr
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next231, %vector.body217 ] ; 2 uses
  %i.cu = shl i64 %index218, 3                    ; 3 uses
  %i.cv = or disjoint i64 %i.cu, 16               ; 2 uses
  %next.gep219 = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.cu
  %next.gep220 = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.cv
  %next.gep221 = getelementptr i8, ptr %5, i64 %i.cu
  %next.gep222 = getelementptr i8, ptr %5, i64 %i.cv
  %wide.vec223 = load <4 x i32>, ptr %next.gep221, align 4, !tbaa !338, !alias.scope !2855
  %wide.vec226 = load <4 x i32>, ptr %next.gep222, align 4, !tbaa !338, !alias.scope !2855
  store <4 x i32> %wide.vec223, ptr %next.gep219, align 4, !tbaa !338, !alias.scope !2856, !noalias !2855
  store <4 x i32> %wide.vec226, ptr %next.gep220, align 4, !tbaa !338, !alias.scope !2856, !noalias !2855
  %index.next231 = add nuw i64 %index218, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next231, %n.vec216
  br i1 %i.cw, label %middle.block232, label %vector.body217, !llvm.loop !2845

middle.block232:                                  ; preds = %vector.body217
  %cmp.n233 = icmp eq i64 %i.cm, %n.vec216
  br i1 %cmp.n233, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49, label %.lr.ph.i65.preheader236

.lr.ph.i65.preheader236:                          ; preds = %vector.memcheck211, %.lr.ph.i65.preheader, %middle.block232
  %.010.i66.ph = phi ptr [ %.0.lcssa.i62, %vector.memcheck211 ], [ %.0.lcssa.i62, %.lr.ph.i65.preheader ], [ %i.cs, %middle.block232 ]
  %.079.i67.ph = phi ptr [ %5, %vector.memcheck211 ], [ %5, %.lr.ph.i65.preheader ], [ %i.ct, %middle.block232 ]
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader236, %.lr.ph.i65
  %.010.i66 = phi ptr [ %i.dc, %.lr.ph.i65 ], [ %.010.i66.ph, %.lr.ph.i65.preheader236 ] ; 3 uses
  %.079.i67 = phi ptr [ %i.db, %.lr.ph.i65 ], [ %.079.i67.ph, %.lr.ph.i65.preheader236 ] ; 3 uses
  %i.cx = load i32, ptr %.079.i67, align 4, !tbaa !338
  store i32 %i.cx, ptr %.010.i66, align 4, !tbaa !347
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i67, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !338
  %i.da = getelementptr inbounds nuw i8, ptr %.010.i66, i64 4
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !348
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i67, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i66, i64 8
  %.not.i68 = icmp eq ptr %i.db, %.0.lcssa.i55
  br i1 %.not.i68, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49, label %.lr.ph.i65, !llvm.loop !2846

bb.g:                                             ; preds = %bb.d
  %i.dd = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit49: ; preds = %.lr.ph.i44, %.lr.ph.i65, %middle.block135, %middle.block232, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit63, %_ZN5boost13move_backwardIPSt4pairIiiES3_EET0_T_S5_S4_.exit, %bb.e, %bb.b, %bb.g
  %.0 = phi ptr [ %2, %bb.e ], [ %i.dd, %bb.g ], [ %.0.lcssa.i62, %middle.block232 ], [ %0, %bb.b ], [ %0, %_ZN5boost13move_backwardIPSt4pairIiiES3_EET0_T_S5_S4_.exit ], [ %.0.lcssa.i62, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit63 ], [ %.0.lcssa.i62, %.lr.ph.i65 ], [ %i.ak, %middle.block135 ], [ %i.au, %.lr.ph.i44 ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS4_mSD_EEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %1, align 4, !tbaa !338    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !338  ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !338
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 12 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %bb.d, !llvm.loop !34

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !394    ; 10 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %4 = ptrtoaddr ptr %.114.i to i64               ; 3 uses
  %i.s = add i64 %i.e, -8
  %i.t = sub i64 %i.s, %4                         ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader208, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = and i64 %i.t, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 %i.x
  %i.z = getelementptr i8, ptr %.114.i, i64 %i.x
  %bound0 = icmp ult ptr %i.q, %i.z
  %bound1 = icmp ult ptr %.114.i, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader208, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 3 uses
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad
  %next.gep120 = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep121 = getelementptr i8, ptr %.114.i, i64 %i.ad
  %next.gep122 = getelementptr i8, ptr %.114.i, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep121, align 4, !tbaa !338, !alias.scope !2873
  %wide.vec124 = load <4 x i32>, ptr %next.gep122, align 4, !tbaa !338, !alias.scope !2873
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !2874, !noalias !2873
  store <4 x i32> %wide.vec124, ptr %next.gep120, align 4, !tbaa !338, !alias.scope !2874, !noalias !2873
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !2860

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.ab, i64 -8
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.i.preheader208

.lr.ph.i.i.i.preheader208:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader208, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader208 ] ; 4 uses
  %.079.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader208 ] ; 3 uses
  %i.ag = load i32, ptr %.079.i.i.i, align 4, !tbaa !338
  store i32 %i.ag, ptr %.010.i.i.i, align 4, !tbaa !347
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !338
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !348
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !2861

_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa115 = phi ptr [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa211 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa115, ptr %i.am, align 8, !tbaa !395
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.026.i = phi ptr [ %i.q, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit ], [ %.1.i40, %bb.h ] ; 12 uses
  %.01625.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit ], [ %.117.i, %bb.h ] ; 5 uses
  %.01824.i = phi ptr [ %.114.i, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit ], [ %i.cx, %bb.h ] ; 9 uses
  %i.an = icmp eq ptr %.01625.i, %2
  br i1 %i.an, label %.lr.ph.i.i.i42.preheader, label %bb.e

.lr.ph.i.i.i42.preheader:                         ; preds = %.lr.ph.i39
  %.026.i130.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
  %i.ao = add i64 %i.e, -8
  %i.ap = sub i64 %i.ao, %4
  %i.aq = and i64 %i.ap, -8
  %i.ar = add i64 %i.aq, %i.r
  %i.as = sub i64 %i.ar, %.026.i130.le            ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check138 = icmp ult i64 %i.as, 184
  br i1 %min.iters.check138, label %.lr.ph.i.i.i42.preheader201, label %vector.memcheck129

vector.memcheck129:                               ; preds = %.lr.ph.i.i.i42.preheader
  %i.av = shl i64 %indvar, 3
  %i.aw = getelementptr i8, ptr %.114.i, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.aw, i64 8
  %i.ax = add i64 %i.e, -8
  %i.ay = sub i64 %i.ax, %4
  %i.az = and i64 %i.ay, -8
  %i.ba = add i64 %i.az, %i.r
  %i.bb = sub i64 %i.ba, %.026.i130.le
  %i.bc = and i64 %i.bb, -8                       ; 2 uses
  %scevgep131 = getelementptr i8, ptr %scevgep, i64 %i.bc
  %scevgep132 = getelementptr i8, ptr %.026.i, i64 8
  %scevgep133 = getelementptr i8, ptr %scevgep132, i64 %i.bc
  %bound0134 = icmp ult ptr %.01824.i, %scevgep133
  %bound1135 = icmp ult ptr %.026.i, %scevgep131
  %found.conflict136 = and i1 %bound0134, %bound1135
  br i1 %found.conflict136, label %.lr.ph.i.i.i42.preheader201, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck129
  %n.vec140 = and i64 %i.au, 4611686018427387900  ; 3 uses
  %i.bd = shl i64 %n.vec140, 3                    ; 2 uses
  %i.be = getelementptr i8, ptr %.01824.i, i64 %i.bd
  %i.bf = getelementptr i8, ptr %.026.i, i64 %i.bd
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next155, %vector.body141 ] ; 2 uses
  %i.bg = shl i64 %index142, 3                    ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 16               ; 2 uses
  %next.gep143 = getelementptr i8, ptr %.01824.i, i64 %i.bg
  %next.gep144 = getelementptr i8, ptr %.01824.i, i64 %i.bh
  %next.gep145 = getelementptr i8, ptr %.026.i, i64 %i.bg
  %next.gep146 = getelementptr i8, ptr %.026.i, i64 %i.bh
  %wide.vec147 = load <4 x i32>, ptr %next.gep145, align 4, !tbaa !338, !alias.scope !2875
  %wide.vec150 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !338, !alias.scope !2875
  store <4 x i32> %wide.vec147, ptr %next.gep143, align 4, !tbaa !338, !alias.scope !2876, !noalias !2875
  store <4 x i32> %wide.vec150, ptr %next.gep144, align 4, !tbaa !338, !alias.scope !2876, !noalias !2875
  %index.next155 = add nuw i64 %index142, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next155, %n.vec140
  br i1 %i.bi, label %middle.block156, label %vector.body141, !llvm.loop !2865

middle.block156:                                  ; preds = %vector.body141
  %cmp.n157 = icmp eq i64 %i.au, %n.vec140
  br i1 %cmp.n157, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i42.preheader201

.lr.ph.i.i.i42.preheader201:                      ; preds = %vector.memcheck129, %.lr.ph.i.i.i42.preheader, %middle.block156
  %.010.i.i.i43.ph = phi ptr [ %.01824.i, %vector.memcheck129 ], [ %.01824.i, %.lr.ph.i.i.i42.preheader ], [ %i.be, %middle.block156 ] ; 2 uses
  %.079.i.i.i44.ph = phi ptr [ %.026.i, %vector.memcheck129 ], [ %.026.i, %.lr.ph.i.i.i42.preheader ], [ %i.bf, %middle.block156 ] ; 3 uses
  %.079.i.i.i44.ph212 = ptrtoaddr ptr %.079.i.i.i44.ph to i64
  %i.bj = sub i64 %.010.i.i.i.lcssa211, %.079.i.i.i44.ph212 ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1
  %xtraiter = and i64 %i.bl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol

.lr.ph.i.i.i42.prol:                              ; preds = %.lr.ph.i.i.i42.preheader201, %.lr.ph.i.i.i42.prol
  %.010.i.i.i43.prol = phi ptr [ %i.br, %.lr.ph.i.i.i42.prol ], [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader201 ] ; 3 uses
  %.079.i.i.i44.prol = phi ptr [ %i.bq, %.lr.ph.i.i.i42.prol ], [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader201 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i42.preheader201 ]
  %i.bm = load i32, ptr %.079.i.i.i44.prol, align 4, !tbaa !338
  store i32 %i.bm, ptr %.010.i.i.i43.prol, align 4, !tbaa !347
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !348
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol, !llvm.loop !2866

.lr.ph.i.i.i42.prol.loopexit:                     ; preds = %.lr.ph.i.i.i42.prol, %.lr.ph.i.i.i42.preheader201
  %.010.i.i.i43.unr = phi ptr [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader201 ], [ %i.br, %.lr.ph.i.i.i42.prol ]
  %.079.i.i.i44.unr = phi ptr [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader201 ], [ %i.bq, %.lr.ph.i.i.i42.prol ]
  %i.bs = icmp ult i64 %i.bj, 24
  br i1 %i.bs, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42
  %.010.i.i.i43 = phi ptr [ %i.cq, %.lr.ph.i.i.i42 ], [ %.010.i.i.i43.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %.079.i.i.i44 = phi ptr [ %i.cp, %.lr.ph.i.i.i42 ], [ %.079.i.i.i44.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %i.bt = load i32, ptr %.079.i.i.i44, align 4, !tbaa !338
  store i32 %i.bt, ptr %.010.i.i.i43, align 4, !tbaa !347
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !338
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 4
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !348
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 8
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !338
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !347
  %i.ca = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !338
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 12
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !348
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 16
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !338
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !347
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !338
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 20
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !348
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 24
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !338
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !347
  %i.cm = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !338
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 28
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !348
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 32
  %.not.i.i.i45.3 = icmp eq ptr %i.cj, %.010.i.i.i.lcssa
  br i1 %.not.i.i.i45.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i42, !llvm.loop !2867

bb.e:                                             ; preds = %.lr.ph.i39
  %i.cr = load i32, ptr %.01625.i, align 4, !tbaa !338 ; 2 uses
  %i.cs = load i32, ptr %.026.i, align 4, !tbaa !338 ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.cr, %bb.f ], [ %i.cs, %bb.g ]
  %.01625.pn.i = phi ptr [ %.01625.i, %bb.f ], [ %.026.i, %bb.g ]
  %.117.i = phi ptr [ %i.cu, %bb.f ], [ %.01625.i, %bb.g ]
  %.1.i40 = phi ptr [ %.026.i, %bb.f ], [ %i.cv, %bb.g ] ; 2 uses
  store i32 %.sink, ptr %.01824.i, align 4, !tbaa !347
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.01625.pn.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !338
  %i.cw = getelementptr inbounds nuw i8, ptr %.01824.i, i64 4
  store i32 %.sink.i, ptr %i.cw, align 4, !tbaa !348
  %i.cx = getelementptr i8, ptr %.01824.i, i64 8
  %.not.i41 = icmp eq ptr %.1.i40, %.lcssa115
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i39, !llvm.loop !36

.lr.ph.i47:                                       ; preds = %bb.c
  %i.cy = ashr exact i64 %i.i, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i47
  %.017.i48 = phi i64 [ %i.cy, %.lr.ph.i47 ], [ %.1.i52, %bb.i ] ; 2 uses
  %.01316.i49 = phi ptr [ %1, %.lr.ph.i47 ], [ %.114.i51, %bb.i ] ; 2 uses
  %i.cz = lshr i64 %.017.i48, 1                   ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.01316.i49, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !338
  %i.dc = icmp slt i32 %i.db, %i.c                ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.neg.i50 = xor i64 %i.cz, -1
  %i.de = add i64 %.017.i48, %.neg.i50
  %.114.i51 = select i1 %i.dc, ptr %i.dd, ptr %.01316.i49 ; 5 uses
  %.1.i52 = select i1 %i.dc, i64 %i.de, i64 %i.cz ; 2 uses
  %.not.i53 = icmp eq i64 %.1.i52, 0
  br i1 %.not.i53, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, label %bb.i, !llvm.loop !31

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %bb.i
  %i.df = load ptr, ptr %3, align 8, !tbaa !394   ; 10 uses
  %.not8.i.i.i55 = icmp eq ptr %.114.i51, %1
  br i1 %.not8.i.i.i55, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit.sink.split, label %.lr.ph.i.i.i56.preheader

.lr.ph.i.i.i56.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %5 = ptrtoaddr ptr %.114.i51 to i64
  %i.dg = add i64 %5, -8
  %i.dh = sub i64 %i.dg, %i.e                     ; 3 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check170 = icmp ult i64 %i.dh, 104
  br i1 %min.iters.check170, label %.lr.ph.i.i.i56.preheader199, label %vector.memcheck171

vector.memcheck171:                               ; preds = %.lr.ph.i.i.i56.preheader
  %i.dk = and i64 %i.dh, -8
  %i.dl = add i64 %i.dk, 8                        ; 2 uses
  %i.dm = getelementptr i8, ptr %i.df, i64 %i.dl
  %i.dn = getelementptr i8, ptr %1, i64 %i.dl
  %bound0172 = icmp ult ptr %i.df, %i.dn
  %bound1173 = icmp ult ptr %1, %i.dm
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %.lr.ph.i.i.i56.preheader199, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck171
  %n.vec176 = and i64 %i.dj, 4611686018427387900  ; 3 uses
  %i.do = shl i64 %n.vec176, 3                    ; 2 uses
  %i.dp = getelementptr i8, ptr %i.df, i64 %i.do  ; 2 uses
  %i.dq = getelementptr i8, ptr %1, i64 %i.do
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next191, %vector.body177 ] ; 2 uses
  %i.dr = shl i64 %index178, 3                    ; 3 uses
  %i.ds = or disjoint i64 %i.dr, 16               ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.df, i64 %i.dr
  %next.gep180 = getelementptr i8, ptr %i.df, i64 %i.ds
  %next.gep181 = getelementptr i8, ptr %1, i64 %i.dr
  %next.gep182 = getelementptr i8, ptr %1, i64 %i.ds
  %wide.vec183 = load <4 x i32>, ptr %next.gep181, align 4, !tbaa !338, !alias.scope !2877
  %wide.vec186 = load <4 x i32>, ptr %next.gep182, align 4, !tbaa !338, !alias.scope !2877
  store <4 x i32> %wide.vec183, ptr %next.gep179, align 4, !tbaa !338, !alias.scope !2878, !noalias !2877
  store <4 x i32> %wide.vec186, ptr %next.gep180, align 4, !tbaa !338, !alias.scope !2878, !noalias !2877
  %index.next191 = add nuw i64 %index178, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next191, %n.vec176
  br i1 %i.dt, label %middle.block192, label %vector.body177, !llvm.loop !2871

middle.block192:                                  ; preds = %vector.body177
  %cmp.n193 = icmp eq i64 %i.dj, %n.vec176
  br i1 %cmp.n193, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit61, label %.lr.ph.i.i.i56.preheader199

.lr.ph.i.i.i56.preheader199:                      ; preds = %vector.memcheck171, %.lr.ph.i.i.i56.preheader, %middle.block192
  %.010.i.i.i57.ph = phi ptr [ %i.df, %vector.memcheck171 ], [ %i.df, %.lr.ph.i.i.i56.preheader ], [ %i.dp, %middle.block192 ]
  %.079.i.i.i58.ph = phi ptr [ %1, %vector.memcheck171 ], [ %1, %.lr.ph.i.i.i56.preheader ], [ %i.dq, %middle.block192 ]
  br label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %.lr.ph.i.i.i56.preheader199, %.lr.ph.i.i.i56
  %.010.i.i.i57 = phi ptr [ %i.dz, %.lr.ph.i.i.i56 ], [ %.010.i.i.i57.ph, %.lr.ph.i.i.i56.preheader199 ] ; 3 uses
  %.079.i.i.i58 = phi ptr [ %i.dy, %.lr.ph.i.i.i56 ], [ %.079.i.i.i58.ph, %.lr.ph.i.i.i56.preheader199 ] ; 3 uses
  %i.du = load i32, ptr %.079.i.i.i58, align 4, !tbaa !338
  store i32 %i.du, ptr %.010.i.i.i57, align 4, !tbaa !347
  %i.dv = getelementptr inbounds nuw i8, ptr %.079.i.i.i58, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !338
  %i.dx = getelementptr inbounds nuw i8, ptr %.010.i.i.i57, i64 4
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !348
  %i.dy = getelementptr inbounds nuw i8, ptr %.079.i.i.i58, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.010.i.i.i57, i64 8 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.dy, %.114.i51
  br i1 %.not.i.i.i59, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit61, label %.lr.ph.i.i.i56, !llvm.loop !2872

_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit61: ; preds = %.lr.ph.i.i.i56, %middle.block192
  %.lcssa = phi ptr [ %i.dp, %middle.block192 ], [ %i.dz, %.lr.ph.i.i.i56 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.ea, align 8, !tbaa !395
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit61, %bb.j
  %.030.i = phi ptr [ %.030..i, %bb.j ], [ %.lcssa, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit61 ] ; 4 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.j ], [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit61 ] ; 4 uses
  %.02128.i = phi ptr [ %i.en, %bb.j ], [ %.114.i51, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit61 ] ; 3 uses
  %i.eb = icmp eq ptr %0, %.01929.i
  br i1 %i.eb, label %.lr.ph.i.i.i66, label %bb.j

.lr.ph.i.i.i66:                                   ; preds = %.lr.ph.i62, %.lr.ph.i.i.i66
  %.010.i.i.i67 = phi ptr [ %i.ed, %.lr.ph.i.i.i66 ], [ %.02128.i, %.lr.ph.i62 ] ; 2 uses
  %.079.i.i.i68 = phi ptr [ %i.ec, %.lr.ph.i.i.i66 ], [ %.030.i, %.lr.ph.i62 ] ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.079.i.i.i68, i64 -8 ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.010.i.i.i67, i64 -8 ; 2 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !338
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !347
  %i.ef = getelementptr inbounds i8, ptr %.079.i.i.i68, i64 -4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !338
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i.i67, i64 -4
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !348
  %.not.i.i.i69 = icmp eq ptr %i.df, %i.ec
  br i1 %.not.i.i.i69, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i.i.i66, !llvm.loop !32

bb.j:                                             ; preds = %.lr.ph.i62
  %i.ei = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 2 uses
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !338 ; 2 uses
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !338 ; 2 uses
  %i.em = icmp slt i32 %i.ek, %i.el               ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.ek, i32 %i.el)
  %.01929..030.i = select i1 %i.em, ptr %.01929.i, ptr %.030.i
  %..01929.i = select i1 %i.em, ptr %i.ej, ptr %.01929.i
  %.030..i = select i1 %i.em, ptr %.030.i, ptr %i.ei ; 2 uses
  store i32 %..i, ptr %i.en, align 4, !tbaa !347
  %.sink.in.i63 = getelementptr inbounds i8, ptr %.01929..030.i, i64 -4
  %.sink.i64 = load i32, ptr %.sink.in.i63, align 4, !tbaa !338
  %i.eo = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  store i32 %.sink.i64, ptr %i.eo, align 4, !tbaa !348
  %.not.i65 = icmp eq ptr %i.df, %.030..i
  br i1 %.not.i65, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit, label %.lr.ph.i62, !llvm.loop !37

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit
  %.sink106 = phi ptr [ %i.q, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ], [ %i.df, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEET_SD_SD_RKT0_T1_.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink106, ptr %i.ep, align 8, !tbaa !395
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42, %bb.j, %.lr.ph.i.i.i66, %middle.block156, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_SF_SF_T_T2_.exit.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = icmp ult i64 %1, 17
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %1, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %or.cond.i = icmp samesign ult i64 %1, 2
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph37.i.preheader

.lr.ph37.i.preheader:                             ; preds = %bb.b
  %.02233.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph37.i.preheader, %bb.e
  %.02236.i = phi ptr [ %.022.i, %bb.e ], [ %.02233.i, %.lr.ph37.i.preheader ] ; 5 uses
  %.pn35.i = phi ptr [ %.02236.i, %bb.e ], [ %0, %.lr.ph37.i.preheader ] ; 5 uses
  %i.g = load i32, ptr %.02236.i, align 4, !tbaa !338
  %i.h = load i32, ptr %.pn35.i, align 4, !tbaa !338 ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph37.i
  %i.j = load i64, ptr %.02236.i, align 4         ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.j to i32
  store i32 %i.h, ptr %.02236.i, align 4, !tbaa !347
  %i.k = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !338
  %i.m = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !348
  %.not2628.i = icmp eq ptr %.pn35.i, %0
  br i1 %.not2628.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.030.i = phi ptr [ %i.n, %bb.d ], [ %.pn35.i, %bb.c ] ; 5 uses
  %i.n = getelementptr i8, ptr %.030.i, i64 -8    ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !338  ; 2 uses
  %i.p = icmp sgt i32 %i.o, %.sroa.0.0.extract.trunc.i
  br i1 %i.p, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.021.lcssa.i = phi ptr [ %0, %bb.c ], [ %.030.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i64 %i.j, ptr %.021.lcssa.i, align 4
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.o, ptr %.030.i, align 4, !tbaa !347
  %i.q = getelementptr inbounds i8, ptr %.030.i, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338
  %i.s = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !348
  %.not26.i = icmp eq ptr %i.n, %0
  br i1 %.not26.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !68

bb.e:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %.022.i = getelementptr inbounds nuw i8, ptr %.02236.i, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %.022.i, %i.f
  br i1 %.not25.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph37.i, !llvm.loop !69

bb.f:                                             ; preds = %bb.a
  %i.t = lshr i64 %1, 1
  %i.u = sub nuw i64 %1, %i.t                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !374
  %.not = icmp ugt i64 %i.u, %i.w
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.y = load ptr, ptr %2, align 8, !tbaa !372
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %i.y)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !368
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvbT_NS0_9iter_sizeISG_E4typeESJ_SJ_RT1_T0_:bb.a
_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit53: ; preds = %bb.f, %bb.g
  %i.s = load i64, ptr %i.p, align 8, !tbaa !374  ; 2 uses
  %.not = icmp ult i64 %i.s, %i.l
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit53
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SG_SG_T0_T1_RT2_(ptr noundef %1, ptr noundef %i.m, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.l

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit53
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %3)
  %.not50 = icmp ult i64 %i.s, %.sroa.speculated
  br i1 %.not50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4 ; 2 uses
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %i.u, ptr noundef nonnull %i.m, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %5)
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %1, ptr noundef %i.u, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_(ptr noundef %1, ptr noundef nonnull %i.m, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %0, align 4
  store i64 %i.f, ptr %2, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2245.i = icmp eq ptr %i.g, %1
  br i1 %.not2245.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %bb.c, %bb.g
  %i.h = phi ptr [ %i.x, %bb.g ], [ %i.g, %bb.c ] ; 6 uses
  %.01847.i = phi ptr [ %i.h, %bb.g ], [ %0, %bb.c ]
  %.03446.i = phi ptr [ %storemerge48.i, %bb.g ], [ %2, %bb.c ] ; 5 uses
  %storemerge48.i = getelementptr inbounds nuw i8, ptr %.03446.i, i64 8 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !338
  %i.j = load i32, ptr %.03446.i, align 4, !tbaa !338
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph49.i
  %i.l = load i64, ptr %.03446.i, align 4
  store i64 %i.l, ptr %storemerge48.i, align 4
  %.not2436.i = icmp eq ptr %.03446.i, %2
  br i1 %.not2436.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %storemerge2339.i = phi ptr [ %storemerge23.i, %bb.e ], [ %.03446.i, %bb.d ] ; 6 uses
  %.03337.i = phi ptr [ %storemerge2339.i, %bb.e ], [ %storemerge48.i, %bb.d ] ; 2 uses
  %storemerge23.i = getelementptr i8, ptr %storemerge2339.i, i64 -8 ; 3 uses
  %i.m = load i32, ptr %i.h, align 4, !tbaa !338
  %i.n = load i32, ptr %storemerge23.i, align 4, !tbaa !338 ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %storemerge2339.i, align 4, !tbaa !347
  %i.p = getelementptr inbounds i8, ptr %storemerge2339.i, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !338
  %i.r = getelementptr inbounds i8, ptr %.03337.i, i64 -4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !348
  %.not24.i = icmp eq ptr %storemerge23.i, %2
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2952

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.033.lcssa.i = phi ptr [ %storemerge48.i, %bb.d ], [ %.03337.i, %.lr.ph.i ], [ %storemerge2339.i, %bb.e ]
  %storemerge23.lcssa.i = phi ptr [ %2, %bb.d ], [ %storemerge2339.i, %.lr.ph.i ], [ %2, %bb.e ]
  %i.s = load i32, ptr %i.h, align 4, !tbaa !338
  store i32 %i.s, ptr %storemerge23.lcssa.i, align 4, !tbaa !347
  %i.t = getelementptr inbounds nuw i8, ptr %.01847.i, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !338
  %i.v = getelementptr inbounds i8, ptr %.033.lcssa.i, i64 -4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !348
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph49.i
  %i.w = load i64, ptr %i.h, align 4
  store i64 %i.w, ptr %storemerge48.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.x, %1
  br i1 %.not22.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph49.i, !llvm.loop !2953

bb.h:                                             ; preds = %bb.a
  %i.y = lshr i64 %i.d, 1                         ; 7 uses
  %.idx = shl nuw nsw i64 %i.y, 3                 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 13 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %i.z, ptr noundef %1, ptr noundef %i.aa)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %i.z, ptr noundef %i.z)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.h, %bb.i
  %indvar130 = phi i64 [ %indvar.next131, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.047.i = phi ptr [ %.2.i, %bb.i ], [ %i.z, %bb.h ] ; 6 uses
  %.02446.i = phi ptr [ %.125.i, %bb.i ], [ %i.aa, %bb.h ] ; 4 uses
  %.03645.i = phi ptr [ %i.cq, %bb.i ], [ %2, %bb.h ] ; 5 uses
  %i.ad = icmp eq ptr %.02446.i, %i.ac
  br i1 %i.ad, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %.lr.ph.i32
  %.not49.i = icmp eq ptr %.03645.i, %i.aa
  br i1 %.not49.i, label %._crit_edge53.i, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.ae = add nsw i64 %.idx, -8
  %i.af = shl i64 %indvar130, 3
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1
  %xtraiter = and i64 %i.ai, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.i.prol.loopexit, label %.lr.ph52.i.prol

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader, %.lr.ph52.i.prol
  %.151.i.prol = phi ptr [ %i.al, %.lr.ph52.i.prol ], [ %.047.i, %.lr.ph52.i.preheader ] ; 2 uses
  %.13750.i.prol = phi ptr [ %i.ak, %.lr.ph52.i.prol ], [ %.03645.i, %.lr.ph52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph52.i.prol ], [ 0, %.lr.ph52.i.preheader ]
  %i.aj = load i64, ptr %.151.i.prol, align 4
  store i64 %i.aj, ptr %.13750.i.prol, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.13750.i.prol, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.151.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph52.i.prol.loopexit, label %.lr.ph52.i.prol, !llvm.loop !2954

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph52.i.preheader ], [ %i.al, %.lr.ph52.i.prol ]
  %.151.i.unr = phi ptr [ %.047.i, %.lr.ph52.i.preheader ], [ %i.al, %.lr.ph52.i.prol ]
  %.13750.i.unr = phi ptr [ %.03645.i, %.lr.ph52.i.preheader ], [ %i.ak, %.lr.ph52.i.prol ]
  %i.am = icmp ult i64 %i.ag, 56
  br i1 %i.am, label %._crit_edge53.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.151.i = phi ptr [ %i.bk, %.lr.ph52.i ], [ %.151.i.unr, %.lr.ph52.i.prol.loopexit ] ; 9 uses
  %.13750.i = phi ptr [ %i.bj, %.lr.ph52.i ], [ %.13750.i.unr, %.lr.ph52.i.prol.loopexit ] ; 9 uses
  %i.an = load i64, ptr %.151.i, align 4
  store i64 %i.an, ptr %.13750.i, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.151.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 4
  store i64 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.13750.i, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.151.i, i64 16
  %i.at = load i64, ptr %i.as, align 4
  store i64 %i.at, ptr %i.ar, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.13750.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.151.i, i64 24
  %i.aw = load i64, ptr %i.av, align 4
  store i64 %i.aw, ptr %i.au, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.13750.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.151.i, i64 32
  %i.az = load i64, ptr %i.ay, align 4
  store i64 %i.az, ptr %i.ax, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.13750.i, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.151.i, i64 40
  %i.bc = load i64, ptr %i.bb, align 4
  store i64 %i.bc, ptr %i.ba, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.13750.i, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.151.i, i64 48
  %i.bf = load i64, ptr %i.be, align 4
  store i64 %i.bf, ptr %i.bd, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.13750.i, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %.151.i, i64 56
  %i.bi = load i64, ptr %i.bh, align 4
  store i64 %i.bi, ptr %i.bg, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.13750.i, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.151.i, i64 64 ; 2 uses
  %.not.i33.7 = icmp eq ptr %i.bj, %i.aa
  br i1 %.not.i33.7, label %._crit_edge53.i, label %.lr.ph52.i, !llvm.loop !2955

._crit_edge53.i:                                  ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.047.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph52.i.prol.loopexit ], [ %i.bk, %.lr.ph52.i ] ; 9 uses
  %.not8.i.i = icmp eq ptr %.1.lcssa.i, %i.ab
  br i1 %.not8.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge53.i
  %i.bl = shl i64 %i.y, 4
  %3 = ptrtoaddr ptr %.1.lcssa.i to i64           ; 2 uses
  %i.bm = add i64 %i.bl, %i.b
  %i.bn = add i64 %i.bm, -8
  %i.bo = sub i64 %i.bn, %3                       ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 184
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.br = shl i64 %i.y, 4
  %i.bs = add i64 %i.br, %i.b
  %i.bt = add i64 %i.bs, -8
  %i.bu = sub i64 %i.bt, %3
  %i.bv = and i64 %i.bu, -8                       ; 2 uses
  %i.bw = getelementptr i8, ptr %2, i64 %.idx
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bv
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %bound0 = icmp ult ptr %i.aa, %i.ca
  %bound1 = icmp ult ptr %.1.lcssa.i, %i.by
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.aa, i64 %i.cb
  %i.cd = getelementptr i8, ptr %.1.lcssa.i, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 3 uses
  %i.cf = or disjoint i64 %i.ce, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ce
  %next.gep79 = getelementptr i8, ptr %i.aa, i64 %i.cf
  %next.gep80 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.ce
  %next.gep81 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.cf
  %wide.vec = load <4 x i32>, ptr %next.gep80, align 4, !tbaa !338, !alias.scope !2967
  %wide.vec83 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !338, !alias.scope !2967
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !2968, !noalias !2967
  store <4 x i32> %wide.vec83, ptr %next.gep79, align 4, !tbaa !338, !alias.scope !2968, !noalias !2967
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !2959

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.preheader126

.lr.ph.i.i.preheader126:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.preheader ], [ %i.cc, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.1.lcssa.i, %vector.memcheck ], [ %.1.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader126, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader126 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader126 ] ; 3 uses
  %i.ch = load i32, ptr %.079.i.i, align 4, !tbaa !338
  store i32 %i.ch, ptr %.010.i.i, align 4, !tbaa !347
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !338
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !348
  %i.cl = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cl, %i.ab
  br i1 %.not.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i, !llvm.loop !2960

bb.i:                                             ; preds = %.lr.ph.i32
  %i.cn = load i32, ptr %.02446.i, align 4, !tbaa !338
  %i.co = load i32, ptr %.047.i, align 4, !tbaa !338
  %i.cp = icmp slt i32 %i.cn, %i.co               ; 3 uses
  %.sink.in.i = select i1 %i.cp, ptr %.02446.i, ptr %.047.i
  %.125.idx.i = select i1 %i.cp, i64 8, i64 0
  %.125.i = getelementptr inbounds nuw i8, ptr %.02446.i, i64 %.125.idx.i ; 2 uses
  %.2.idx.i = select i1 %i.cp, i64 0, i64 8
  %.2.i = getelementptr inbounds nuw i8, ptr %.047.i, i64 %.2.idx.i ; 3 uses
  %.sink.i = load i64, ptr %.sink.in.i, align 4
  store i64 %.sink.i, ptr %.03645.i, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.03645.i, i64 8 ; 2 uses
  %i.cr = icmp ne ptr %.2.i, %i.ab
  %i.cs = icmp ne ptr %i.cq, %i.aa
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  %indvar.next131 = add i64 %indvar130, 1
  br i1 %i.ct, label %.lr.ph.i32, label %._crit_edge.i, !llvm.loop !2961

._crit_edge.i:                                    ; preds = %bb.i, %bb.h
  %.024.lcssa.i = phi ptr [ %i.aa, %bb.h ], [ %.125.i, %bb.i ]
  %.0.lcssa.i = phi ptr [ %i.z, %bb.h ], [ %.2.i, %bb.i ] ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.0.lcssa.i, %i.ab
  br i1 %.not23.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %bb.m
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %._crit_edge.i ] ; 2 uses
  %.026.i.i.i = phi ptr [ %.1.i.i.i, %bb.m ], [ %.0.lcssa.i, %._crit_edge.i ] ; 12 uses
  %.01625.i.i.i = phi ptr [ %.117.i.i.i, %bb.m ], [ %.024.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.01824.i.i.i = phi ptr [ %i.eb, %bb.m ], [ %i.aa, %._crit_edge.i ] ; 9 uses
  %i.cu = icmp eq ptr %.01625.i.i.i, %i.ac
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.preheader, label %bb.j

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i
  %.026.i.i.i89.le = ptrtoaddr ptr %.026.i.i.i to i64 ; 2 uses
  %i.cv = shl i64 %i.y, 4
  %i.cw = add i64 %i.cv, %i.b
  %i.cx = add i64 %i.cw, -8
  %i.cy = sub i64 %i.cx, %.026.i.i.i89.le         ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check97 = icmp ult i64 %i.cy, 184
  br i1 %min.iters.check97, label %.lr.ph.i.i.i.i.i.preheader119, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.db = shl i64 %indvar, 3
  %i.dc = getelementptr i8, ptr %2, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 %.idx
  %scevgep = getelementptr i8, ptr %i.dd, i64 8
  %i.de = shl i64 %i.y, 4
  %i.df = add i64 %i.de, %i.b
  %i.dg = add i64 %i.df, -8
  %i.dh = sub i64 %i.dg, %.026.i.i.i89.le
  %i.di = and i64 %i.dh, -8                       ; 2 uses
  %scevgep90 = getelementptr i8, ptr %scevgep, i64 %i.di
  %scevgep91 = getelementptr i8, ptr %.026.i.i.i, i64 8
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.di
  %bound093 = icmp ult ptr %.01824.i.i.i, %scevgep92
  %bound194 = icmp ult ptr %.026.i.i.i, %scevgep90
  %found.conflict95 = and i1 %bound093, %bound194
  br i1 %found.conflict95, label %.lr.ph.i.i.i.i.i.preheader119, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck88
  %n.vec99 = and i64 %i.da, 4611686018427387900   ; 3 uses
  %i.dj = shl i64 %n.vec99, 3                     ; 2 uses
  %i.dk = getelementptr i8, ptr %.01824.i.i.i, i64 %i.dj
  %i.dl = getelementptr i8, ptr %.026.i.i.i, i64 %i.dj
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next114, %vector.body100 ] ; 2 uses
  %i.dm = shl i64 %index101, 3                    ; 3 uses
  %i.dn = or disjoint i64 %i.dm, 16               ; 2 uses
  %next.gep102 = getelementptr i8, ptr %.01824.i.i.i, i64 %i.dm
  %next.gep103 = getelementptr i8, ptr %.01824.i.i.i, i64 %i.dn
  %next.gep104 = getelementptr i8, ptr %.026.i.i.i, i64 %i.dm
  %next.gep105 = getelementptr i8, ptr %.026.i.i.i, i64 %i.dn
  %wide.vec106 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !338, !alias.scope !2969
  %wide.vec109 = load <4 x i32>, ptr %next.gep105, align 4, !tbaa !338, !alias.scope !2969
  store <4 x i32> %wide.vec106, ptr %next.gep102, align 4, !tbaa !338, !alias.scope !2970, !noalias !2969
  store <4 x i32> %wide.vec109, ptr %next.gep103, align 4, !tbaa !338, !alias.scope !2970, !noalias !2969
  %index.next114 = add nuw i64 %index101, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next114, %n.vec99
  br i1 %i.do, label %middle.block115, label %vector.body100, !llvm.loop !2965

middle.block115:                                  ; preds = %vector.body100
  %cmp.n116 = icmp eq i64 %i.da, %n.vec99
  br i1 %cmp.n116, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.i.i.i.preheader119

.lr.ph.i.i.i.i.i.preheader119:                    ; preds = %vector.memcheck88, %.lr.ph.i.i.i.i.i.preheader, %middle.block115
  %.010.i.i.i.i.i.ph = phi ptr [ %.01824.i.i.i, %vector.memcheck88 ], [ %.01824.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dk, %middle.block115 ]
  %.079.i.i.i.i.i.ph = phi ptr [ %.026.i.i.i, %vector.memcheck88 ], [ %.026.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dl, %middle.block115 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader119, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader119 ] ; 3 uses
  %.079.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i ], [ %.079.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader119 ] ; 3 uses
  %i.dp = load i32, ptr %.079.i.i.i.i.i, align 4, !tbaa !338
  store i32 %i.dp, ptr %.010.i.i.i.i.i, align 4, !tbaa !347
  %i.dq = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !338
  %i.ds = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 4
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !348
  %i.dt = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2966

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.dv = load i32, ptr %.01625.i.i.i, align 4, !tbaa !338 ; 2 uses
  %i.dw = load i32, ptr %.026.i.i.i, align 4, !tbaa !338 ; 2 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %.01625.i.i.i, i64 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i.i = phi i32 [ %i.dv, %bb.k ], [ %i.dw, %bb.l ]
  %.01625.pn.i.i.i = phi ptr [ %.01625.i.i.i, %bb.k ], [ %.026.i.i.i, %bb.l ]
  %.117.i.i.i = phi ptr [ %i.dy, %bb.k ], [ %.01625.i.i.i, %bb.l ]
  %.1.i.i.i = phi ptr [ %.026.i.i.i, %bb.k ], [ %i.dz, %bb.l ] ; 2 uses
  store i32 %.sink.i.i, ptr %.01824.i.i.i, align 4, !tbaa !347
  %.sink.in.i.i.i = getelementptr inbounds nuw i8, ptr %.01625.pn.i.i.i, i64 4
  %.sink.i.i.i = load i32, ptr %.sink.in.i.i.i, align 4, !tbaa !338
  %i.ea = getelementptr inbounds nuw i8, ptr %.01824.i.i.i, i64 4
  store i32 %.sink.i.i.i, ptr %i.ea, align 4, !tbaa !348
  %i.eb = getelementptr i8, ptr %.01824.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, %i.ab
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.i, !llvm.loop !36

_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit: ; preds = %.lr.ph.i.i, %bb.m, %.lr.ph.i.i.i.i.i, %bb.g, %middle.block, %middle.block115, %._crit_edge53.i, %._crit_edge.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_:bb.a

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.g
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.fu, %bb.aa ], [ %i.hv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142 ]
  %storemerge122 = phi ptr [ %i.hx, %bb.aa ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142 ]
  %.1109 = phi ptr [ %i.bo, %bb.aa ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142 ]
  %.1106 = phi i8 [ %i.ft, %bb.aa ], [ %.0105283, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.hy = phi i1 [ %i.fs, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %.0102284, %bb.m ], [ %.0228279, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.1223, %bb.n ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.an, %bb.m ], [ %i.an, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.an, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bo, %bb.m ], [ %i.bo, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bo, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105283, %bb.m ], [ %.0105283, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.0105283, %bb.n ] ; 2 uses
  %not. = xor i1 %i.hy, true
  %i.hz = sext i1 %not. to i64
  %.1 = add i64 %.0287, %i.hz
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !331
  %i.ia = getelementptr inbounds nuw i8, ptr %.0102284, i64 8 ; 2 uses
  %i.ib = icmp ne i64 %.099286, 0
  %.neg = sext i1 %i.ib to i64
  %i.ic = add i64 %.099286, %.neg                 ; 2 uses
  %i.id = icmp ne i64 %i.bk, 0
  %.neg123 = sext i1 %i.id to i64
  %i.ie = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.if = add i64 %.0234278, -1                   ; 2 uses
  %.not = icmp eq i64 %i.if, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3052

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ig = phi ptr [ %i.bo, %.sink.split.i ], [ %i.an, %bb.f ]
  %.4 = phi i64 [ %i.ie, %.sink.split.i ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0234278, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %.sink.split.i ], [ %.0228279, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %.sink.split.i ], [ %.0222280, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %.sink.split.i ], [ %.0216281, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108282, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105283, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.ia, %.sink.split.i ], [ %.0102284, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.ic, %.sink.split.i ], [ %.099286, %bb.f ]
  %i.ih = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ii = phi ptr [ %i.i, %bb.a ], [ %i.ig, %.thread.loopexit ] ; 10 uses
  %.1320 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.ih, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.ij = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !331
  %.idx252 = shl nuw nsw i64 %6, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx252 ; 7 uses
  %i.il = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.il, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.ij, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.im = load i32, ptr %i.k, align 4, !tbaa !338
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.ip, %bb.af ] ; 3 uses
  %i.in = load i32, ptr %.07.i, align 4, !tbaa !338
  %i.io = icmp slt i32 %i.im, %i.in
  br i1 %i.io, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ip = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.ip, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !51

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.ip, %bb.af ] ; 12 uses
  %i.iq = ptrtoint ptr %.0222.lcssa to i64        ; 2 uses
  %i.ir = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.is = sub i64 %i.iq, %i.ir                    ; 4 uses
  %i.it = ashr exact i64 %i.is, 3
  %i.iu = sub nsw i64 0, %i.it
  %i.iv = getelementptr [8 x i8], ptr %i.ii, i64 %i.iu ; 10 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.iw = add i64 %i.iq, -8
  %i.ix = sub i64 %i.iw, %i.ir                    ; 3 uses
  %i.iy = lshr i64 %i.ix, 3
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check592 = icmp ult i64 %i.ix, 456
  br i1 %min.iters.check592, label %.lr.ph.i.i146.preheader751, label %vector.memcheck593

vector.memcheck593:                               ; preds = %.lr.ph.i.i146.preheader
  %i.ja = and i64 %i.ix, -8                       ; 2 uses
  %i.jb = or disjoint i64 %i.ja, 4                ; 2 uses
  %i.jc = sub i64 %i.jb, %i.is
  %i.jd = getelementptr i8, ptr %i.ii, i64 %i.jc  ; 3 uses
  %i.je = sub i64 4, %i.is
  %i.jf = getelementptr i8, ptr %i.ii, i64 %i.je  ; 3 uses
  %i.jg = add i64 %i.ja, 8                        ; 2 uses
  %i.jh = sub i64 %i.jg, %i.is
  %i.ji = getelementptr i8, ptr %i.ii, i64 %i.jh  ; 3 uses
  %i.jj = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jb ; 2 uses
  %i.jk = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.jl = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jg ; 2 uses
  %bound0594 = icmp ult ptr %i.iv, %i.ji
  %bound1595 = icmp ult ptr %i.jf, %i.jd
  %found.conflict596 = and i1 %bound0594, %bound1595
  %bound0597 = icmp ult ptr %i.iv, %i.jj
  %bound1598 = icmp ult ptr %.0.lcssa.i, %i.jd
  %found.conflict599 = and i1 %bound0597, %bound1598
  %conflict.rdx600 = or i1 %found.conflict596, %found.conflict599
  %bound0601 = icmp ult ptr %i.iv, %i.jl
  %bound1602 = icmp ult ptr %i.jk, %i.jd
  %found.conflict603 = and i1 %bound0601, %bound1602
  %conflict.rdx604 = or i1 %conflict.rdx600, %found.conflict603
  %bound0605 = icmp ult ptr %i.jf, %i.jj
  %bound1606 = icmp ult ptr %.0.lcssa.i, %i.ji
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx608 = or i1 %conflict.rdx604, %found.conflict607
  %bound0609 = icmp ult ptr %i.jf, %i.jl
  %bound1610 = icmp ult ptr %i.jk, %i.ji
  %found.conflict611 = and i1 %bound0609, %bound1610
  %conflict.rdx612 = or i1 %conflict.rdx608, %found.conflict611
  br i1 %conflict.rdx612, label %.lr.ph.i.i146.preheader751, label %vector.ph613

vector.ph613:                                     ; preds = %vector.memcheck593
  %n.vec614 = and i64 %i.iz, 4611686018427387900  ; 3 uses
  %i.jm = shl i64 %n.vec614, 3                    ; 2 uses
  %i.jn = getelementptr i8, ptr %i.iv, i64 %i.jm
  %i.jo = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jm
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph613
  %index616 = phi i64 [ 0, %vector.ph613 ], [ %index.next629, %vector.body615 ] ; 2 uses
  %i.jp = shl i64 %index616, 3                    ; 3 uses
  %i.jq = or disjoint i64 %i.jp, 16               ; 2 uses
  %next.gep617 = getelementptr i8, ptr %i.iv, i64 %i.jp
  %next.gep618 = getelementptr i8, ptr %i.iv, i64 %i.jq
  %next.gep619 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jp
  %next.gep620 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jq
  %wide.vec621 = load <4 x i32>, ptr %next.gep619, align 4, !tbaa !338
  %wide.vec624 = load <4 x i32>, ptr %next.gep620, align 4, !tbaa !338
  store <4 x i32> %wide.vec621, ptr %next.gep617, align 4, !tbaa !338
  store <4 x i32> %wide.vec624, ptr %next.gep618, align 4, !tbaa !338
  %index.next629 = add nuw i64 %index616, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next629, %n.vec614
  br i1 %i.jr, label %middle.block630, label %vector.body615, !llvm.loop !3053

middle.block630:                                  ; preds = %vector.body615
  %cmp.n631 = icmp eq i64 %i.iz, %n.vec614
  br i1 %cmp.n631, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, label %.lr.ph.i.i146.preheader751

.lr.ph.i.i146.preheader751:                       ; preds = %vector.memcheck593, %.lr.ph.i.i146.preheader, %middle.block630
  %.010.i.i147.ph = phi ptr [ %i.iv, %vector.memcheck593 ], [ %i.iv, %.lr.ph.i.i146.preheader ], [ %i.jn, %middle.block630 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck593 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.jo, %middle.block630 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader751, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.jx, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader751 ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.jw, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader751 ] ; 3 uses
  %i.js = load i32, ptr %.079.i.i148, align 4, !tbaa !338
  store i32 %i.js, ptr %.010.i.i147, align 4, !tbaa !347
  %i.jt = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !338
  %i.jv = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !348
  %i.jw = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.jw, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, label %.lr.ph.i.i146, !llvm.loop !3054

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151: ; preds = %.lr.ph.i.i146, %middle.block630, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.jy, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.iv, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ii, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.kc, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ki, %bb.ai ], [ %.5221, %bb.ag ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.kc, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ke, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.jz = load i32, ptr %.0.i, align 4, !tbaa !338 ; 2 uses
  %i.ka = load i32, ptr %.021.i.ph, align 4, !tbaa !338 ; 2 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.kb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.jz, ptr %.024.i, align 4, !tbaa !347
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !338
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !348
  %i.kh = icmp eq ptr %i.ke, %i.ik
  br i1 %i.kh, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i, !llvm.loop !53

bb.ai:                                            ; preds = %.preheader.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.ka, ptr %.024.i, align 4, !tbaa !347
  %i.kj = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !338
  store i32 %i.kk, ptr %i.kd, align 4, !tbaa !348
  %i.kl = icmp eq ptr %i.ki, %.5
  br i1 %i.kl, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !53

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.kc, %bb.ai ], [ %i.kc, %bb.ah ] ; 12 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ki, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.ik, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !331
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.km = ptrtoaddr ptr %.223.i to i64
  %i.kn = add i64 %11, -8
  %i.ko = sub i64 %i.kn, %i.km                    ; 3 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check663 = icmp ult i64 %i.ko, 392
  br i1 %min.iters.check663, label %.lr.ph.i.i154.preheader739, label %vector.memcheck664

vector.memcheck664:                               ; preds = %.lr.ph.i.i154.preheader
  %i.kr = and i64 %i.ko, -8                       ; 2 uses
  %i.ks = or disjoint i64 %i.kr, 4                ; 2 uses
  %i.kt = getelementptr i8, ptr %.226.i, i64 %i.ks ; 3 uses
  %i.ku = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.kv = add i64 %i.kr, 8                        ; 2 uses
  %i.kw = getelementptr i8, ptr %.226.i, i64 %i.kv ; 3 uses
  %i.kx = getelementptr i8, ptr %.223.i, i64 %i.ks ; 2 uses
  %i.ky = getelementptr i8, ptr %.223.i, i64 4    ; 2 uses
  %i.kz = getelementptr i8, ptr %.223.i, i64 %i.kv ; 2 uses
  %bound0665 = icmp ult ptr %.226.i, %i.kw
  %bound1666 = icmp ult ptr %i.ku, %i.kt
  %found.conflict667 = and i1 %bound0665, %bound1666
  %bound0668 = icmp ult ptr %.226.i, %i.kx
  %bound1669 = icmp ult ptr %.223.i, %i.kt
  %found.conflict670 = and i1 %bound0668, %bound1669
  %conflict.rdx671 = or i1 %found.conflict667, %found.conflict670
  %bound0672 = icmp ult ptr %.226.i, %i.kz
  %bound1673 = icmp ult ptr %i.ky, %i.kt
  %found.conflict674 = and i1 %bound0672, %bound1673
  %conflict.rdx675 = or i1 %conflict.rdx671, %found.conflict674
  %bound0676 = icmp ult ptr %i.ku, %i.kx
  %bound1677 = icmp ult ptr %.223.i, %i.kw
  %found.conflict678 = and i1 %bound0676, %bound1677
  %conflict.rdx679 = or i1 %conflict.rdx675, %found.conflict678
  %bound0680 = icmp ult ptr %i.ku, %i.kz
  %bound1681 = icmp ult ptr %i.ky, %i.kw
  %found.conflict682 = and i1 %bound0680, %bound1681
  %conflict.rdx683 = or i1 %conflict.rdx679, %found.conflict682
  br i1 %conflict.rdx683, label %.lr.ph.i.i154.preheader739, label %vector.ph684

vector.ph684:                                     ; preds = %vector.memcheck664
  %n.vec685 = and i64 %i.kq, 4611686018427387900  ; 3 uses
  %i.la = shl i64 %n.vec685, 3                    ; 2 uses
  %i.lb = getelementptr i8, ptr %.226.i, i64 %i.la ; 2 uses
  %i.lc = getelementptr i8, ptr %.223.i, i64 %i.la
  br label %vector.body686

vector.body686:                                   ; preds = %vector.body686, %vector.ph684
  %index687 = phi i64 [ 0, %vector.ph684 ], [ %index.next700, %vector.body686 ] ; 2 uses
  %i.ld = shl i64 %index687, 3                    ; 3 uses
  %i.le = or disjoint i64 %i.ld, 16               ; 2 uses
  %next.gep688 = getelementptr i8, ptr %.226.i, i64 %i.ld
  %next.gep689 = getelementptr i8, ptr %.226.i, i64 %i.le
  %next.gep690 = getelementptr i8, ptr %.223.i, i64 %i.ld
  %next.gep691 = getelementptr i8, ptr %.223.i, i64 %i.le
  %wide.vec692 = load <4 x i32>, ptr %next.gep690, align 4, !tbaa !338
  %wide.vec695 = load <4 x i32>, ptr %next.gep691, align 4, !tbaa !338
  store <4 x i32> %wide.vec692, ptr %next.gep688, align 4, !tbaa !338
  store <4 x i32> %wide.vec695, ptr %next.gep689, align 4, !tbaa !338
  %index.next700 = add nuw i64 %index687, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next700, %n.vec685
  br i1 %i.lf, label %middle.block701, label %vector.body686, !llvm.loop !3055

middle.block701:                                  ; preds = %vector.body686
  %cmp.n702 = icmp eq i64 %i.kq, %n.vec685
  br i1 %cmp.n702, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i154.preheader739

.lr.ph.i.i154.preheader739:                       ; preds = %vector.memcheck664, %.lr.ph.i.i154.preheader, %middle.block701
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck664 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.lb, %middle.block701 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck664 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.lc, %middle.block701 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader739, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.ll, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader739 ] ; 3 uses
  %.079.i.i156 = phi ptr [ %i.lk, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader739 ] ; 3 uses
  %i.lg = load i32, ptr %.079.i.i156, align 4, !tbaa !338
  store i32 %i.lg, ptr %.010.i.i155, align 4, !tbaa !347
  %i.lh = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !338
  %i.lj = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !348
  %i.lk = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.lk, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i154, !llvm.loop !3056

bb.aj:                                            ; preds = %.thread
  br i1 %i.ij, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.lm = phi ptr [ %i.ii, %bb.aj ], [ %i.an, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 12 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 12 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.ln = phi ptr [ %i.ik, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %i.lo = ptrtoaddr ptr %.0108266 to i64
  %i.lp = ptrtoaddr ptr %.0216268 to i64
  %i.lq = add i64 %i.lo, -8
  %i.lr = sub i64 %i.lq, %i.lp                    ; 3 uses
  %i.ls = lshr i64 %i.lr, 3
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %min.iters.check523 = icmp ult i64 %i.lr, 392
  br i1 %min.iters.check523, label %.lr.ph.i.i161.preheader752, label %vector.memcheck524

vector.memcheck524:                               ; preds = %.lr.ph.i.i161.preheader
  %i.lu = and i64 %i.lr, -8                       ; 2 uses
  %i.lv = or disjoint i64 %i.lu, 4                ; 2 uses
  %i.lw = getelementptr i8, ptr %.0222270, i64 %i.lv ; 3 uses
  %i.lx = getelementptr i8, ptr %.0222270, i64 4  ; 3 uses
  %i.ly = add i64 %i.lu, 8                        ; 2 uses
  %i.lz = getelementptr i8, ptr %.0222270, i64 %i.ly ; 3 uses
  %i.ma = getelementptr i8, ptr %.0216268, i64 %i.lv ; 2 uses
  %i.mb = getelementptr i8, ptr %.0216268, i64 4  ; 2 uses
  %i.mc = getelementptr i8, ptr %.0216268, i64 %i.ly ; 2 uses
  %bound0525 = icmp ult ptr %.0222270, %i.lz
  %bound1526 = icmp ult ptr %i.lx, %i.lw
  %found.conflict527 = and i1 %bound0525, %bound1526
  %bound0528 = icmp ult ptr %.0222270, %i.ma
  %bound1529 = icmp ult ptr %.0216268, %i.lw
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %found.conflict527, %found.conflict530
  %bound0532 = icmp ult ptr %.0222270, %i.mc
  %bound1533 = icmp ult ptr %i.mb, %i.lw
  %found.conflict534 = and i1 %bound0532, %bound1533
  %conflict.rdx535 = or i1 %conflict.rdx531, %found.conflict534
  %bound0536 = icmp ult ptr %i.lx, %i.ma
  %bound1537 = icmp ult ptr %.0216268, %i.lz
  %found.conflict538 = and i1 %bound0536, %bound1537
  %conflict.rdx539 = or i1 %conflict.rdx535, %found.conflict538
  %bound0540 = icmp ult ptr %i.lx, %i.mc
  %bound1541 = icmp ult ptr %i.mb, %i.lz
  %found.conflict542 = and i1 %bound0540, %bound1541
  %conflict.rdx543 = or i1 %conflict.rdx539, %found.conflict542
  br i1 %conflict.rdx543, label %.lr.ph.i.i161.preheader752, label %vector.ph544

vector.ph544:                                     ; preds = %vector.memcheck524
  %n.vec545 = and i64 %i.lt, 4611686018427387900  ; 3 uses
  %i.md = shl i64 %n.vec545, 3                    ; 2 uses
  %i.me = getelementptr i8, ptr %.0222270, i64 %i.md ; 2 uses
  %i.mf = getelementptr i8, ptr %.0216268, i64 %i.md
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph544
  %index547 = phi i64 [ 0, %vector.ph544 ], [ %index.next560, %vector.body546 ] ; 2 uses
  %i.mg = shl i64 %index547, 3                    ; 3 uses
  %i.mh = or disjoint i64 %i.mg, 16               ; 2 uses
  %next.gep548 = getelementptr i8, ptr %.0222270, i64 %i.mg
  %next.gep549 = getelementptr i8, ptr %.0222270, i64 %i.mh
  %next.gep550 = getelementptr i8, ptr %.0216268, i64 %i.mg
  %next.gep551 = getelementptr i8, ptr %.0216268, i64 %i.mh
  %wide.vec552 = load <4 x i32>, ptr %next.gep550, align 4, !tbaa !338
  %wide.vec555 = load <4 x i32>, ptr %next.gep551, align 4, !tbaa !338
  store <4 x i32> %wide.vec552, ptr %next.gep548, align 4, !tbaa !338
  store <4 x i32> %wide.vec555, ptr %next.gep549, align 4, !tbaa !338
  %index.next560 = add nuw i64 %index547, 4       ; 2 uses
  %i.mi = icmp eq i64 %index.next560, %n.vec545
  br i1 %i.mi, label %middle.block561, label %vector.body546, !llvm.loop !3057

middle.block561:                                  ; preds = %vector.body546
  %cmp.n562 = icmp eq i64 %i.lt, %n.vec545
  br i1 %cmp.n562, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader752

.lr.ph.i.i161.preheader752:                       ; preds = %vector.memcheck524, %.lr.ph.i.i161.preheader, %middle.block561
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck524 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.me, %middle.block561 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck524 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.mf, %middle.block561 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader752, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.mo, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader752 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.mn, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader752 ] ; 3 uses
  %i.mj = load i32, ptr %.079.i.i163, align 4, !tbaa !338
  store i32 %i.mj, ptr %.010.i.i162, align 4, !tbaa !347
  %i.mk = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !338
  %i.mm = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !348
  %i.mn = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.mn, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161, !llvm.loop !3058

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block561, %middle.block701, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, %bb.aj
  %i.mp = phi ptr [ %i.ii, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.ii, %bb.aj ], [ %i.lm, %bb.ak ], [ %i.ii, %middle.block701 ], [ %i.lm, %middle.block561 ], [ %i.ii, %.lr.ph.i.i154 ], [ %i.lm, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block701 ], [ %.2, %middle.block561 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block701 ], [ %.0234275, %middle.block561 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block701 ], [ %.0228272, %middle.block561 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block701 ], [ %.0102262, %middle.block561 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block701 ], [ %.099259, %middle.block561 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.mq = phi ptr [ %i.ik, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.ik, %bb.aj ], [ %i.ln, %bb.ak ], [ %i.ik, %middle.block701 ], [ %i.ln, %middle.block561 ], [ %i.ik, %.lr.ph.i.i154 ], [ %i.ln, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.lb, %middle.block701 ], [ %i.me, %middle.block561 ], [ %i.ll, %.lr.ph.i.i154 ], [ %i.mo, %.lr.ph.i.i161 ]
  %i.mr = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_S5_S5_SD_NS0_7move_opEEET3_T_SG_T0_T1_RT2_SJ_SF_NS0_9iter_sizeISI_E4typeESN_SN_SN_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.mp, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.mq, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 7 uses
  %i.ms = load ptr, ptr %i.d, align 8, !tbaa !331 ; 9 uses
  %.not8.i.i167 = icmp eq ptr %i.ms, %i.mq
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  %i.mt = ptrtoaddr ptr %i.mq to i64
  %i.mu = ptrtoaddr ptr %i.ms to i64
  %i.mv = add i64 %i.mt, -8
  %i.mw = sub i64 %i.mv, %i.mu                    ; 3 uses
  %i.mx = lshr i64 %i.mw, 3
  %i.my = add nuw nsw i64 %i.mx, 1                ; 2 uses
  %min.iters.check712 = icmp ult i64 %i.mw, 120
  br i1 %min.iters.check712, label %.lr.ph.i.i168.preheader738, label %vector.memcheck713

vector.memcheck713:                               ; preds = %.lr.ph.i.i168.preheader
  %i.mz = and i64 %i.mw, -8
  %i.na = add i64 %i.mz, 8                        ; 2 uses
  %i.nb = getelementptr i8, ptr %i.mr, i64 %i.na
  %i.nc = getelementptr i8, ptr %i.ms, i64 %i.na
  %bound0714 = icmp ult ptr %i.mr, %i.nc
  %bound1715 = icmp ult ptr %i.ms, %i.nb
  %found.conflict716 = and i1 %bound0714, %bound1715
  br i1 %found.conflict716, label %.lr.ph.i.i168.preheader738, label %vector.ph717

vector.ph717:                                     ; preds = %vector.memcheck713
  %n.vec718 = and i64 %i.my, 4611686018427387900  ; 3 uses
  %i.nd = shl i64 %n.vec718, 3                    ; 2 uses
  %i.ne = getelementptr i8, ptr %i.mr, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ms, i64 %i.nd
  br label %vector.body719

vector.body719:                                   ; preds = %vector.body719, %vector.ph717
  %index720 = phi i64 [ 0, %vector.ph717 ], [ %index.next733, %vector.body719 ] ; 2 uses
  %i.ng = shl i64 %index720, 3                    ; 3 uses
  %i.nh = or disjoint i64 %i.ng, 16               ; 2 uses
  %next.gep721 = getelementptr i8, ptr %i.mr, i64 %i.ng
  %next.gep722 = getelementptr i8, ptr %i.mr, i64 %i.nh
  %next.gep723 = getelementptr i8, ptr %i.ms, i64 %i.ng
  %next.gep724 = getelementptr i8, ptr %i.ms, i64 %i.nh
  %wide.vec725 = load <4 x i32>, ptr %next.gep723, align 4, !tbaa !338, !alias.scope !3066
  %wide.vec728 = load <4 x i32>, ptr %next.gep724, align 4, !tbaa !338, !alias.scope !3066
  store <4 x i32> %wide.vec725, ptr %next.gep721, align 4, !tbaa !338, !alias.scope !3067, !noalias !3066
  store <4 x i32> %wide.vec728, ptr %next.gep722, align 4, !tbaa !338, !alias.scope !3067, !noalias !3066
  %index.next733 = add nuw i64 %index720, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next733, %n.vec718
  br i1 %i.ni, label %middle.block734, label %vector.body719, !llvm.loop !3062

middle.block734:                                  ; preds = %vector.body719
  %cmp.n735 = icmp eq i64 %i.my, %n.vec718
  br i1 %cmp.n735, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader738

.lr.ph.i.i168.preheader738:                       ; preds = %vector.memcheck713, %.lr.ph.i.i168.preheader, %middle.block734
  %.010.i.i169.ph = phi ptr [ %i.mr, %vector.memcheck713 ], [ %i.mr, %.lr.ph.i.i168.preheader ], [ %i.ne, %middle.block734 ]
  %.079.i.i170.ph = phi ptr [ %i.ms, %vector.memcheck713 ], [ %i.ms, %.lr.ph.i.i168.preheader ], [ %i.nf, %middle.block734 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader738, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.no, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader738 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.nn, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader738 ] ; 3 uses
  %i.nj = load i32, ptr %.079.i.i170, align 4, !tbaa !338
  store i32 %i.nj, ptr %.010.i.i169, align 4, !tbaa !347
  %i.nk = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !338
  %i.nm = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  store i32 %i.nl, ptr %i.nm, align 4, !tbaa !348
  %i.nn = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.nn, %i.mq
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168, !llvm.loop !3063

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173: ; preds = %.lr.ph.i.i168, %middle.block734, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
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
  store ptr %i.i, ptr %i.a, align 8, !tbaa !331
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 12 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64
  %.idx254 = shl i64 %2, 3                        ; 4 uses
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
  %scevgep382 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %i.x = shl i64 %3, 3                            ; 2 uses
  %i.y = add i64 %i.x, %i.o
  %i.z = add i64 %i.y, %.idx254
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = shl i64 %2, 3
  %i.ac = shl i64 %2, 3
  %i.ad = getelementptr i8, ptr %1, i64 %i.x
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = getelementptr i8, ptr %1, i64 %i.r
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.w
  %i.ai = add i64 %.idx254, -8                    ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 168
  %bound0385 = icmp ult ptr %i.i, %i.k
  %bound1386 = icmp ult ptr %scevgep382, %scevgep
  %found.conflict387 = and i1 %bound0385, %bound1386
  %stride.check388 = icmp slt i64 %.idx254, 0
  %i.al = or i1 %found.conflict387, %stride.check388
  %n.vec = and i64 %i.ak, 4611686018427387902     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 4 uses
  %i.an = phi ptr [ %i.i, %.lr.ph ], [ %i.bo, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.if, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.id, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.ib, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 22 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 20 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.ig, %.sink.split.i ] ; 5 uses
  %i.ao = mul i64 %i.ac, %indvar
  %i.ap = add i64 %i.aa, %i.ao                    ; 3 uses
  %i.aq = mul i64 %i.ab, %indvar                  ; 2 uses
  %i.ar = add i64 %i.aa, %i.aq
  %scevgep475 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %.0108286418 = ptrtoaddr ptr %.0108286 to i64   ; 2 uses
  %.0220285419 = ptrtoaddr ptr %.0220285 to i64   ; 2 uses
  %i.as = mul i64 %i.v, %indvar                   ; 2 uses
  %scevgep380 = getelementptr i8, ptr %i.ag, i64 %i.as
  %scevgep383 = getelementptr i8, ptr %i.ah, i64 %i.as
  %i.at = icmp ult i64 %.099290, %.0
  br i1 %i.at, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bi, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bh, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.au = mul i64 %.02226.i, %2
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.au
  %i.aw = mul i64 %.027.i, %2
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.02226.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.027.i
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !338 ; 2 uses
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !338 ; 2 uses
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.bd = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bd, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = load i32, ptr %i.az, align 4, !tbaa !338
  %i.bf = load i32, ptr %i.ay, align 4, !tbaa !338
  %i.bg = icmp slt i32 %i.be, %i.bf
  %cond.fr.i = freeze i1 %i.bg
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bh = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bi = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !40

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bh, %.thread24.i ] ; 7 uses
  %i.bj = add i64 %.022.lcssa.i, 2
  %i.bk = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bj) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.bk, i64 %.0238282) ; 4 uses
  %i.bl = mul i64 %.022.lcssa.i, %2               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_:bb.a
bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142, %bb.aa
  %.1221 = phi ptr [ %i.fv, %bb.aa ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142 ]
  %storemerge122 = phi ptr [ %i.hy, %bb.aa ], [ %i.hx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142 ]
  %.1109 = phi ptr [ %i.bo, %bb.aa ], [ %i.hx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142 ]
  %.1106 = phi i8 [ %i.fu, %bb.aa ], [ %.0105287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.hz = phi i1 [ %i.ft, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.1233 = phi ptr [ %.5237, %bb.ab ], [ %.0102288, %bb.m ], [ %.0232283, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2228 = phi ptr [ %storemerge122, %bb.ab ], [ %.1227, %bb.m ], [ %.1227, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.1227, %bb.n ] ; 2 uses
  %.2222 = phi ptr [ %.1221, %bb.ab ], [ %i.an, %bb.m ], [ %i.an, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.an, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bo, %bb.m ], [ %i.bo, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bo, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105287, %bb.m ], [ %.0105287, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.0105287, %bb.n ] ; 2 uses
  %not. = xor i1 %i.hz, true
  %i.ia = sext i1 %not. to i64
  %.1 = add i64 %.0291, %i.ia
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !331
  %i.ib = getelementptr inbounds nuw i8, ptr %.0102288, i64 8 ; 2 uses
  %i.ic = icmp ne i64 %.099290, 0
  %.neg = sext i1 %i.ic to i64
  %i.id = add i64 %.099290, %.neg                 ; 2 uses
  %i.ie = icmp ne i64 %i.bk, 0
  %.neg123 = sext i1 %i.ie to i64
  %i.if = add i64 %.sroa.speculated210, %.neg123  ; 2 uses
  %i.ig = add i64 %.0238282, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ig, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3077

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ih = phi ptr [ %i.bo, %.sink.split.i ], [ %i.an, %bb.f ]
  %.4 = phi i64 [ %i.if, %.sink.split.i ], [ %.sroa.speculated210, %bb.f ]
  %.0238.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0238282, %bb.f ]
  %.0232.lcssa.ph = phi ptr [ %.1233, %.sink.split.i ], [ %.0232283, %bb.f ]
  %.0226.lcssa.ph = phi ptr [ %.2228, %.sink.split.i ], [ %.0226284, %bb.f ]
  %.0220.lcssa.ph = phi ptr [ %.2222, %.sink.split.i ], [ %.0220285, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108286, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105287, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.ib, %.sink.split.i ], [ %.0102288, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.id, %.sink.split.i ], [ %.099290, %bb.f ]
  %i.ii = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ij = phi ptr [ %i.i, %bb.a ], [ %i.ih, %.thread.loopexit ] ; 10 uses
  %.1324 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0238.lcssa = phi i64 [ 0, %bb.a ], [ %.0238.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0232.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0232.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0226.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0226.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0220.lcssa = phi ptr [ %1, %bb.a ], [ %.0220.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.ii, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.ik = icmp eq ptr %.0108.lcssa, %.0226.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !331
  %.idx256 = shl nuw nsw i64 %6, 3
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx256 ; 7 uses
  %i.im = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.im, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.ik, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0220.lcssa, %.0226.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.in = load i32, ptr %i.k, align 4, !tbaa !338
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0220.lcssa, %.lr.ph.i143 ], [ %i.iq, %bb.af ] ; 3 uses
  %i.io = load i32, ptr %.07.i, align 4, !tbaa !338
  %i.ip = icmp slt i32 %i.in, %i.io
  br i1 %i.ip, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iq = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.iq, %.0226.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !51

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0220.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.iq, %bb.af ] ; 12 uses
  %i.ir = ptrtoint ptr %.0226.lcssa to i64        ; 2 uses
  %i.is = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 4 uses
  %i.iu = ashr exact i64 %i.it, 3
  %i.iv = sub nsw i64 0, %i.iu
  %i.iw = getelementptr [8 x i8], ptr %i.ij, i64 %i.iv ; 9 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0226.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.ix = add i64 %i.ir, -8
  %i.iy = sub i64 %i.ix, %i.is                    ; 3 uses
  %i.iz = lshr i64 %i.iy, 3
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check609 = icmp ult i64 %i.iy, 280
  br i1 %min.iters.check609, label %.lr.ph.i.i146.preheader776, label %vector.memcheck610

vector.memcheck610:                               ; preds = %.lr.ph.i.i146.preheader
  %i.jb = and i64 %i.iy, -8                       ; 2 uses
  %i.jc = or disjoint i64 %i.jb, 4                ; 2 uses
  %i.jd = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jc ; 3 uses
  %i.je = sub i64 %i.jc, %i.it
  %i.jf = getelementptr i8, ptr %i.ij, i64 %i.je  ; 3 uses
  %i.jg = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.jh = add i64 %i.jb, 8                        ; 2 uses
  %i.ji = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jh ; 3 uses
  %i.jj = sub i64 4, %i.it
  %i.jk = getelementptr i8, ptr %i.ij, i64 %i.jj  ; 3 uses
  %i.jl = sub i64 %i.jh, %i.it
  %i.jm = getelementptr i8, ptr %i.ij, i64 %i.jl  ; 3 uses
  %bound0611 = icmp ult ptr %.0.lcssa.i, %i.jf
  %bound1612 = icmp ult ptr %i.iw, %i.jd
  %found.conflict613 = and i1 %bound0611, %bound1612
  %bound0614 = icmp ult ptr %.0.lcssa.i, %i.ji
  %bound1615 = icmp ult ptr %i.jg, %i.jd
  %found.conflict616 = and i1 %bound0614, %bound1615
  %conflict.rdx617 = or i1 %found.conflict613, %found.conflict616
  %bound0618 = icmp ult ptr %.0.lcssa.i, %i.jm
  %bound1619 = icmp ult ptr %i.jk, %i.jd
  %found.conflict620 = and i1 %bound0618, %bound1619
  %conflict.rdx621 = or i1 %conflict.rdx617, %found.conflict620
  %bound0622 = icmp ult ptr %i.iw, %i.ji
  %bound1623 = icmp ult ptr %i.jg, %i.jf
  %found.conflict624 = and i1 %bound0622, %bound1623
  %conflict.rdx625 = or i1 %conflict.rdx621, %found.conflict624
  %bound0626 = icmp ult ptr %i.iw, %i.jm
  %bound1627 = icmp ult ptr %i.jk, %i.jf
  %found.conflict628 = and i1 %bound0626, %bound1627
  %conflict.rdx629 = or i1 %conflict.rdx625, %found.conflict628
  %bound0630 = icmp ult ptr %i.jg, %i.jm
  %bound1631 = icmp ult ptr %i.jk, %i.ji
  %found.conflict632 = and i1 %bound0630, %bound1631
  %conflict.rdx633 = or i1 %conflict.rdx629, %found.conflict632
  br i1 %conflict.rdx633, label %.lr.ph.i.i146.preheader776, label %vector.ph634

vector.ph634:                                     ; preds = %vector.memcheck610
  %n.vec635 = and i64 %i.ja, 4611686018427387902  ; 3 uses
  %i.jn = shl i64 %n.vec635, 3                    ; 2 uses
  %i.jo = getelementptr i8, ptr %i.iw, i64 %i.jn
  %i.jp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jn
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph634
  %index637 = phi i64 [ 0, %vector.ph634 ], [ %index.next648, %vector.body636 ] ; 2 uses
  %i.jq = shl i64 %index637, 3                    ; 2 uses
  %next.gep638 = getelementptr i8, ptr %i.iw, i64 %i.jq ; 2 uses
  %next.gep639 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jq ; 2 uses
  %wide.vec640 = load <4 x i32>, ptr %next.gep639, align 4, !tbaa !338
  %wide.vec643 = load <4 x i32>, ptr %next.gep638, align 4, !tbaa !338
  store <4 x i32> %wide.vec643, ptr %next.gep639, align 4, !tbaa !338
  store <4 x i32> %wide.vec640, ptr %next.gep638, align 4, !tbaa !338
  %index.next648 = add nuw i64 %index637, 2       ; 2 uses
  %i.jr = icmp eq i64 %index.next648, %n.vec635
  br i1 %i.jr, label %middle.block649, label %vector.body636, !llvm.loop !3078

middle.block649:                                  ; preds = %vector.body636
  %cmp.n650 = icmp eq i64 %i.ja, %n.vec635
  br i1 %cmp.n650, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, label %.lr.ph.i.i146.preheader776

.lr.ph.i.i146.preheader776:                       ; preds = %vector.memcheck610, %.lr.ph.i.i146.preheader, %middle.block649
  %.010.i.i147.ph = phi ptr [ %i.iw, %vector.memcheck610 ], [ %i.iw, %.lr.ph.i.i146.preheader ], [ %i.jo, %middle.block649 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck610 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.jp, %middle.block649 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader776, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.jz, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader776 ] ; 4 uses
  %.079.i.i148 = phi ptr [ %i.jy, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader776 ] ; 4 uses
  %i.js = load i32, ptr %.079.i.i148, align 4, !tbaa !338
  %i.jt = load i32, ptr %.010.i.i147, align 4, !tbaa !338
  store i32 %i.jt, ptr %.079.i.i148, align 4, !tbaa !338
  store i32 %i.js, ptr %.010.i.i147, align 4, !tbaa !338
  %i.ju = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4 ; 2 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !338
  %i.jx = load i32, ptr %i.jv, align 4, !tbaa !338
  store i32 %i.jx, ptr %i.ju, align 4, !tbaa !338
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !338
  %i.jy = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.jy, %.0226.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, label %.lr.ph.i.i146, !llvm.loop !3079

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152: ; preds = %.lr.ph.i.i146, %middle.block649, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, %bb.ac
  %.5231 = phi ptr [ %i.ka, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152 ], [ %.0226.lcssa, %bb.ac ] ; 2 uses
  %.5225 = phi ptr [ %i.iw, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152 ], [ %.0220.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ij, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5225
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.ke, %bb.ai ], [ %.5231, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.km, %bb.ai ], [ %.5225, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.ke, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 5 uses
  %.0.i = phi ptr [ %i.kh, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.kb = load i32, ptr %.0.i, align 4, !tbaa !338 ; 2 uses
  %i.kc = load i32, ptr %.021.i.ph, align 4, !tbaa !338 ; 2 uses
  %i.kd = icmp slt i32 %i.kb, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.kf = load i32, ptr %.024.i, align 4, !tbaa !338 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.kd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.kb, ptr %.024.i, align 4, !tbaa !338
  store i32 %i.kf, ptr %.0.i, align 4, !tbaa !338
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.kj = load i32, ptr %i.kg, align 4, !tbaa !338
  %i.kk = load i32, ptr %i.ki, align 4, !tbaa !338
  store i32 %i.kk, ptr %i.kg, align 4, !tbaa !338
  store i32 %i.kj, ptr %i.ki, align 4, !tbaa !338
  %i.kl = icmp eq ptr %i.kh, %i.il
  br i1 %i.kl, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i, !llvm.loop !63

bb.ai:                                            ; preds = %.preheader.i
  %i.km = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.kc, ptr %.024.i, align 4, !tbaa !338
  store i32 %i.kf, ptr %.021.i.ph, align 4, !tbaa !338
  %i.kn = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ko = load i32, ptr %i.kg, align 4, !tbaa !338
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !338
  store i32 %i.kp, ptr %i.kg, align 4, !tbaa !338
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !338
  %i.kq = icmp eq ptr %i.km, %.5
  br i1 %i.kq, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !63

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5231, %bb.ag ], [ %i.ke, %bb.ai ], [ %i.ke, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5225, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.km, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.il, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !331
  %.not8.i.i154 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i154, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.kr = ptrtoaddr ptr %.223.i to i64
  %i.ks = add i64 %11, -8
  %i.kt = sub i64 %i.ks, %i.kr                    ; 3 uses
  %i.ku = lshr i64 %i.kt, 3
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 2 uses
  %min.iters.check686 = icmp ult i64 %i.kt, 248
  br i1 %min.iters.check686, label %.lr.ph.i.i155.preheader762, label %vector.memcheck687

vector.memcheck687:                               ; preds = %.lr.ph.i.i155.preheader
  %i.kw = and i64 %i.kt, -8                       ; 2 uses
  %i.kx = or disjoint i64 %i.kw, 4                ; 2 uses
  %i.ky = getelementptr i8, ptr %.223.i, i64 %i.kx ; 3 uses
  %i.kz = getelementptr i8, ptr %.226.i, i64 %i.kx ; 3 uses
  %i.la = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.lb = add i64 %i.kw, 8                        ; 2 uses
  %i.lc = getelementptr i8, ptr %.223.i, i64 %i.lb ; 3 uses
  %i.ld = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.le = getelementptr i8, ptr %.226.i, i64 %i.lb ; 3 uses
  %bound0688 = icmp ult ptr %.223.i, %i.kz
  %bound1689 = icmp ult ptr %.226.i, %i.ky
  %found.conflict690 = and i1 %bound0688, %bound1689
  %bound0691 = icmp ult ptr %.223.i, %i.lc
  %bound1692 = icmp ult ptr %i.la, %i.ky
  %found.conflict693 = and i1 %bound0691, %bound1692
  %conflict.rdx694 = or i1 %found.conflict690, %found.conflict693
  %bound0695 = icmp ult ptr %.223.i, %i.le
  %bound1696 = icmp ult ptr %i.ld, %i.ky
  %found.conflict697 = and i1 %bound0695, %bound1696
  %conflict.rdx698 = or i1 %conflict.rdx694, %found.conflict697
  %bound0699 = icmp ult ptr %.226.i, %i.lc
  %bound1700 = icmp ult ptr %i.la, %i.kz
  %found.conflict701 = and i1 %bound0699, %bound1700
  %conflict.rdx702 = or i1 %conflict.rdx698, %found.conflict701
  %bound0703 = icmp ult ptr %.226.i, %i.le
  %bound1704 = icmp ult ptr %i.ld, %i.kz
  %found.conflict705 = and i1 %bound0703, %bound1704
  %conflict.rdx706 = or i1 %conflict.rdx702, %found.conflict705
  %bound0707 = icmp ult ptr %i.la, %i.le
  %bound1708 = icmp ult ptr %i.ld, %i.lc
  %found.conflict709 = and i1 %bound0707, %bound1708
  %conflict.rdx710 = or i1 %conflict.rdx706, %found.conflict709
  br i1 %conflict.rdx710, label %.lr.ph.i.i155.preheader762, label %vector.ph711

vector.ph711:                                     ; preds = %vector.memcheck687
  %n.vec712 = and i64 %i.kv, 4611686018427387902  ; 3 uses
  %i.lf = shl i64 %n.vec712, 3                    ; 2 uses
  %i.lg = getelementptr i8, ptr %.226.i, i64 %i.lf ; 2 uses
  %i.lh = getelementptr i8, ptr %.223.i, i64 %i.lf
  br label %vector.body713

vector.body713:                                   ; preds = %vector.body713, %vector.ph711
  %index714 = phi i64 [ 0, %vector.ph711 ], [ %index.next725, %vector.body713 ] ; 2 uses
  %i.li = shl i64 %index714, 3                    ; 2 uses
  %next.gep715 = getelementptr i8, ptr %.226.i, i64 %i.li ; 2 uses
  %next.gep716 = getelementptr i8, ptr %.223.i, i64 %i.li ; 2 uses
  %wide.vec717 = load <4 x i32>, ptr %next.gep716, align 4, !tbaa !338
  %wide.vec720 = load <4 x i32>, ptr %next.gep715, align 4, !tbaa !338
  store <4 x i32> %wide.vec720, ptr %next.gep716, align 4, !tbaa !338
  store <4 x i32> %wide.vec717, ptr %next.gep715, align 4, !tbaa !338
  %index.next725 = add nuw i64 %index714, 2       ; 2 uses
  %i.lj = icmp eq i64 %index.next725, %n.vec712
  br i1 %i.lj, label %middle.block726, label %vector.body713, !llvm.loop !3080

middle.block726:                                  ; preds = %vector.body713
  %cmp.n727 = icmp eq i64 %i.kv, %n.vec712
  br i1 %cmp.n727, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i155.preheader762

.lr.ph.i.i155.preheader762:                       ; preds = %vector.memcheck687, %.lr.ph.i.i155.preheader, %middle.block726
  %.010.i.i156.ph = phi ptr [ %.226.i, %vector.memcheck687 ], [ %.226.i, %.lr.ph.i.i155.preheader ], [ %i.lg, %middle.block726 ]
  %.079.i.i157.ph = phi ptr [ %.223.i, %vector.memcheck687 ], [ %.223.i, %.lr.ph.i.i155.preheader ], [ %i.lh, %middle.block726 ]
  br label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155.preheader762, %.lr.ph.i.i155
  %.010.i.i156 = phi ptr [ %i.lr, %.lr.ph.i.i155 ], [ %.010.i.i156.ph, %.lr.ph.i.i155.preheader762 ] ; 4 uses
  %.079.i.i157 = phi ptr [ %i.lq, %.lr.ph.i.i155 ], [ %.079.i.i157.ph, %.lr.ph.i.i155.preheader762 ] ; 4 uses
  %i.lk = load i32, ptr %.079.i.i157, align 4, !tbaa !338
  %i.ll = load i32, ptr %.010.i.i156, align 4, !tbaa !338
  store i32 %i.ll, ptr %.079.i.i157, align 4, !tbaa !338
  store i32 %i.lk, ptr %.010.i.i156, align 4, !tbaa !338
  %i.lm = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 4 ; 2 uses
  %i.lo = load i32, ptr %i.lm, align 4, !tbaa !338
  %i.lp = load i32, ptr %i.ln, align 4, !tbaa !338
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !338
  store i32 %i.lo, ptr %i.ln, align 4, !tbaa !338
  %i.lq = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 8 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.lq, %.5
  br i1 %.not.i.i158, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i155, !llvm.loop !3081

bb.aj:                                            ; preds = %.thread
  br i1 %i.ik, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.ls = phi ptr [ %i.ij, %bb.aj ], [ %i.an, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1324, %bb.aj ], [ %.sroa.speculated210, %.thread.thread ] ; 3 uses
  %.0238279 = phi i64 [ %.0238.lcssa, %bb.aj ], [ %.0238282, %.thread.thread ] ; 3 uses
  %.0232276 = phi ptr [ %.0232.lcssa, %bb.aj ], [ %.0232283, %.thread.thread ] ; 3 uses
  %.0226274 = phi ptr [ %.0226.lcssa, %bb.aj ], [ %.0226284, %.thread.thread ] ; 11 uses
  %.0220272 = phi ptr [ %.0220.lcssa, %bb.aj ], [ %.0220285, %.thread.thread ] ; 12 uses
  %.0108270 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108286, %.thread.thread ] ; 3 uses
  %.0102266 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102288, %.thread.thread ] ; 3 uses
  %.099263 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099290, %.thread.thread ] ; 3 uses
  %i.lt = phi ptr [ %i.il, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0220272, %.0108270
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %i.lu = ptrtoaddr ptr %.0108270 to i64
  %i.lv = ptrtoaddr ptr %.0220272 to i64
  %i.lw = add i64 %i.lu, -8
  %i.lx = sub i64 %i.lw, %i.lv                    ; 3 uses
  %i.ly = lshr i64 %i.lx, 3
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 2 uses
  %min.iters.check534 = icmp ult i64 %i.lx, 248
  br i1 %min.iters.check534, label %.lr.ph.i.i163.preheader777, label %vector.memcheck535

vector.memcheck535:                               ; preds = %.lr.ph.i.i163.preheader
  %i.ma = and i64 %i.lx, -8                       ; 2 uses
  %i.mb = or disjoint i64 %i.ma, 4                ; 2 uses
  %i.mc = getelementptr i8, ptr %.0220272, i64 %i.mb ; 3 uses
  %i.md = getelementptr i8, ptr %.0226274, i64 %i.mb ; 3 uses
  %i.me = getelementptr i8, ptr %.0220272, i64 4  ; 3 uses
  %i.mf = add i64 %i.ma, 8                        ; 2 uses
  %i.mg = getelementptr i8, ptr %.0220272, i64 %i.mf ; 3 uses
  %i.mh = getelementptr i8, ptr %.0226274, i64 4  ; 3 uses
  %i.mi = getelementptr i8, ptr %.0226274, i64 %i.mf ; 3 uses
  %bound0536 = icmp ult ptr %.0220272, %i.md
  %bound1537 = icmp ult ptr %.0226274, %i.mc
  %found.conflict538 = and i1 %bound0536, %bound1537
  %bound0539 = icmp ult ptr %.0220272, %i.mg
  %bound1540 = icmp ult ptr %i.me, %i.mc
  %found.conflict541 = and i1 %bound0539, %bound1540
  %conflict.rdx542 = or i1 %found.conflict538, %found.conflict541
  %bound0543 = icmp ult ptr %.0220272, %i.mi
  %bound1544 = icmp ult ptr %i.mh, %i.mc
  %found.conflict545 = and i1 %bound0543, %bound1544
  %conflict.rdx546 = or i1 %conflict.rdx542, %found.conflict545
  %bound0547 = icmp ult ptr %.0226274, %i.mg
  %bound1548 = icmp ult ptr %i.me, %i.md
  %found.conflict549 = and i1 %bound0547, %bound1548
  %conflict.rdx550 = or i1 %conflict.rdx546, %found.conflict549
  %bound0551 = icmp ult ptr %.0226274, %i.mi
  %bound1552 = icmp ult ptr %i.mh, %i.md
  %found.conflict553 = and i1 %bound0551, %bound1552
  %conflict.rdx554 = or i1 %conflict.rdx550, %found.conflict553
  %bound0555 = icmp ult ptr %i.me, %i.mi
  %bound1556 = icmp ult ptr %i.mh, %i.mg
  %found.conflict557 = and i1 %bound0555, %bound1556
  %conflict.rdx558 = or i1 %conflict.rdx554, %found.conflict557
  br i1 %conflict.rdx558, label %.lr.ph.i.i163.preheader777, label %vector.ph559

vector.ph559:                                     ; preds = %vector.memcheck535
  %n.vec560 = and i64 %i.lz, 4611686018427387902  ; 3 uses
  %i.mj = shl i64 %n.vec560, 3                    ; 2 uses
  %i.mk = getelementptr i8, ptr %.0226274, i64 %i.mj ; 2 uses
  %i.ml = getelementptr i8, ptr %.0220272, i64 %i.mj
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph559
  %index562 = phi i64 [ 0, %vector.ph559 ], [ %index.next573, %vector.body561 ] ; 2 uses
  %i.mm = shl i64 %index562, 3                    ; 2 uses
  %next.gep563 = getelementptr i8, ptr %.0226274, i64 %i.mm ; 2 uses
  %next.gep564 = getelementptr i8, ptr %.0220272, i64 %i.mm ; 2 uses
  %wide.vec565 = load <4 x i32>, ptr %next.gep564, align 4, !tbaa !338
  %wide.vec568 = load <4 x i32>, ptr %next.gep563, align 4, !tbaa !338
  store <4 x i32> %wide.vec568, ptr %next.gep564, align 4, !tbaa !338
  store <4 x i32> %wide.vec565, ptr %next.gep563, align 4, !tbaa !338
  %index.next573 = add nuw i64 %index562, 2       ; 2 uses
  %i.mn = icmp eq i64 %index.next573, %n.vec560
  br i1 %i.mn, label %middle.block574, label %vector.body561, !llvm.loop !3082

middle.block574:                                  ; preds = %vector.body561
  %cmp.n575 = icmp eq i64 %i.lz, %n.vec560
  br i1 %cmp.n575, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i163.preheader777

.lr.ph.i.i163.preheader777:                       ; preds = %vector.memcheck535, %.lr.ph.i.i163.preheader, %middle.block574
  %.010.i.i164.ph = phi ptr [ %.0226274, %vector.memcheck535 ], [ %.0226274, %.lr.ph.i.i163.preheader ], [ %i.mk, %middle.block574 ]
  %.079.i.i165.ph = phi ptr [ %.0220272, %vector.memcheck535 ], [ %.0220272, %.lr.ph.i.i163.preheader ], [ %i.ml, %middle.block574 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader777, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.mv, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader777 ] ; 4 uses
  %.079.i.i165 = phi ptr [ %i.mu, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader777 ] ; 4 uses
  %i.mo = load i32, ptr %.079.i.i165, align 4, !tbaa !338
  %i.mp = load i32, ptr %.010.i.i164, align 4, !tbaa !338
  store i32 %i.mp, ptr %.079.i.i165, align 4, !tbaa !338
  store i32 %i.mo, ptr %.010.i.i164, align 4, !tbaa !338
  %i.mq = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %i.ms = load i32, ptr %i.mq, align 4, !tbaa !338
  %i.mt = load i32, ptr %i.mr, align 4, !tbaa !338
  store i32 %i.mt, ptr %i.mq, align 4, !tbaa !338
  store i32 %i.ms, ptr %i.mr, align 4, !tbaa !338
  %i.mu = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 8 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 8 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.mu, %.0108270
  br i1 %.not.i.i166, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i163, !llvm.loop !3083

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i155, %middle.block574, %middle.block726, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, %bb.aj
  %i.mw = phi ptr [ %i.ij, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.ij, %bb.aj ], [ %i.ls, %bb.ak ], [ %i.ij, %middle.block726 ], [ %i.ls, %middle.block574 ], [ %i.ij, %.lr.ph.i.i155 ], [ %i.ls, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1324, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.sroa.speculated210, %.thread.thread ], [ %.1324, %bb.aj ], [ %.2, %bb.ak ], [ %.1324, %middle.block726 ], [ %.2, %middle.block574 ], [ %.1324, %.lr.ph.i.i155 ], [ %.2, %.lr.ph.i.i163 ]
  %.0238280 = phi i64 [ %.0238.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0238282, %.thread.thread ], [ %.0238.lcssa, %bb.aj ], [ %.0238279, %bb.ak ], [ %.0238.lcssa, %middle.block726 ], [ %.0238279, %middle.block574 ], [ %.0238.lcssa, %.lr.ph.i.i155 ], [ %.0238279, %.lr.ph.i.i163 ]
  %.0232277 = phi ptr [ %.0232.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0232283, %.thread.thread ], [ %.0232.lcssa, %bb.aj ], [ %.0232276, %bb.ak ], [ %.0232.lcssa, %middle.block726 ], [ %.0232276, %middle.block574 ], [ %.0232.lcssa, %.lr.ph.i.i155 ], [ %.0232276, %.lr.ph.i.i163 ]
  %.0102267 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0102288, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102266, %bb.ak ], [ %.0102.lcssa, %middle.block726 ], [ %.0102266, %middle.block574 ], [ %.0102.lcssa, %.lr.ph.i.i155 ], [ %.0102266, %.lr.ph.i.i163 ]
  %.099264 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.099290, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099263, %bb.ak ], [ %.099.lcssa, %middle.block726 ], [ %.099263, %middle.block574 ], [ %.099.lcssa, %.lr.ph.i.i155 ], [ %.099263, %.lr.ph.i.i163 ]
  %i.mx = phi ptr [ %i.il, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.il, %bb.aj ], [ %i.lt, %bb.ak ], [ %i.il, %middle.block726 ], [ %i.lt, %middle.block574 ], [ %i.il, %.lr.ph.i.i155 ], [ %i.lt, %.lr.ph.i.i163 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0226284, %.thread.thread ], [ %.0226.lcssa, %bb.aj ], [ %.0226274, %bb.ak ], [ %i.lg, %middle.block726 ], [ %i.mk, %middle.block574 ], [ %i.lr, %.lr.ph.i.i155 ], [ %i.mv, %.lr.ph.i.i163 ]
  %i.my = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_S5_S5_SD_NS0_7swap_opEEET3_T_SG_T0_T1_RT2_SJ_SF_NS0_9iter_sizeISI_E4typeESN_SN_SN_T4_bT5_(ptr noundef %.0102267, ptr noundef %.0232277, ptr noundef %i.mw, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.mx, ptr noundef %.6, i64 noundef %2, i64 noundef %.0238280, i64 noundef %.099264, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.mz = load ptr, ptr %i.d, align 8, !tbaa !331 ; 8 uses
  %.not8.i.i170 = icmp eq ptr %i.mz, %i.mx
  br i1 %.not8.i.i170, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177, label %.lr.ph.i.i171.preheader

.lr.ph.i.i171.preheader:                          ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161
  %i.na = ptrtoaddr ptr %i.mx to i64
  %i.nb = ptrtoaddr ptr %i.mz to i64
  %i.nc = add i64 %i.na, -8
  %i.nd = sub i64 %i.nc, %i.nb                    ; 3 uses
  %i.ne = lshr i64 %i.nd, 3
  %i.nf = add nuw nsw i64 %i.ne, 1                ; 2 uses
  %min.iters.check737 = icmp ult i64 %i.nd, 56
  br i1 %min.iters.check737, label %.lr.ph.i.i171.preheader761, label %vector.memcheck738

vector.memcheck738:                               ; preds = %.lr.ph.i.i171.preheader
  %i.ng = and i64 %i.nd, -8
  %i.nh = add i64 %i.ng, 8                        ; 2 uses
  %i.ni = getelementptr i8, ptr %i.mz, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.my, i64 %i.nh
  %bound0739 = icmp ult ptr %i.mz, %i.nj
  %bound1740 = icmp ult ptr %i.my, %i.ni
  %found.conflict741 = and i1 %bound0739, %bound1740
  br i1 %found.conflict741, label %.lr.ph.i.i171.preheader761, label %vector.ph742

vector.ph742:                                     ; preds = %vector.memcheck738
  %n.vec743 = and i64 %i.nf, 4611686018427387902  ; 3 uses
  %i.nk = shl i64 %n.vec743, 3                    ; 2 uses
  %i.nl = getelementptr i8, ptr %i.my, i64 %i.nk
  %i.nm = getelementptr i8, ptr %i.mz, i64 %i.nk
  br label %vector.body744

vector.body744:                                   ; preds = %vector.body744, %vector.ph742
  %index745 = phi i64 [ 0, %vector.ph742 ], [ %index.next756, %vector.body744 ] ; 2 uses
  %i.nn = shl i64 %index745, 3                    ; 2 uses
  %next.gep746 = getelementptr i8, ptr %i.my, i64 %i.nn ; 2 uses
  %next.gep747 = getelementptr i8, ptr %i.mz, i64 %i.nn ; 2 uses
  %wide.vec748 = load <4 x i32>, ptr %next.gep747, align 4, !tbaa !338, !alias.scope !3091, !noalias !3092
  %wide.vec751 = load <4 x i32>, ptr %next.gep746, align 4, !tbaa !338, !alias.scope !3092
  store <4 x i32> %wide.vec751, ptr %next.gep747, align 4, !tbaa !338, !alias.scope !3091, !noalias !3092
  store <4 x i32> %wide.vec748, ptr %next.gep746, align 4, !tbaa !338, !alias.scope !3092
  %index.next756 = add nuw i64 %index745, 2       ; 2 uses
  %i.no = icmp eq i64 %index.next756, %n.vec743
  br i1 %i.no, label %middle.block757, label %vector.body744, !llvm.loop !3087

middle.block757:                                  ; preds = %vector.body744
  %cmp.n758 = icmp eq i64 %i.nf, %n.vec743
  br i1 %cmp.n758, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177, label %.lr.ph.i.i171.preheader761

.lr.ph.i.i171.preheader761:                       ; preds = %vector.memcheck738, %.lr.ph.i.i171.preheader, %middle.block757
  %.010.i.i172.ph = phi ptr [ %i.my, %vector.memcheck738 ], [ %i.my, %.lr.ph.i.i171.preheader ], [ %i.nl, %middle.block757 ]
  %.079.i.i173.ph = phi ptr [ %i.mz, %vector.memcheck738 ], [ %i.mz, %.lr.ph.i.i171.preheader ], [ %i.nm, %middle.block757 ]
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.preheader761, %.lr.ph.i.i171
  %.010.i.i172 = phi ptr [ %i.nw, %.lr.ph.i.i171 ], [ %.010.i.i172.ph, %.lr.ph.i.i171.preheader761 ] ; 4 uses
  %.079.i.i173 = phi ptr [ %i.nv, %.lr.ph.i.i171 ], [ %.079.i.i173.ph, %.lr.ph.i.i171.preheader761 ] ; 4 uses
  %i.np = load i32, ptr %.079.i.i173, align 4, !tbaa !338
  %i.nq = load i32, ptr %.010.i.i172, align 4, !tbaa !338
  store i32 %i.nq, ptr %.079.i.i173, align 4, !tbaa !338
  store i32 %i.np, ptr %.010.i.i172, align 4, !tbaa !338
  %i.nr = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 4 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 4 ; 2 uses
  %i.nt = load i32, ptr %i.nr, align 4, !tbaa !338
  %i.nu = load i32, ptr %i.ns, align 4, !tbaa !338
  store i32 %i.nu, ptr %i.nr, align 4, !tbaa !338
  store i32 %i.nt, ptr %i.ns, align 4, !tbaa !338
  %i.nv = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 8
  %.not.i.i174 = icmp eq ptr %i.nv, %i.mx
  br i1 %.not.i.i174, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177, label %.lr.ph.i.i171, !llvm.loop !3088

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177: ; preds = %.lr.ph.i.i171, %middle.block757, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_S5_S5_SD_NS0_7move_opEEET3_T_SG_T0_T1_RT2_SJ_SF_NS0_9iter_sizeISI_E4typeESN_SN_SN_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #2 comdat {
bb.a:
  %.not120 = icmp eq i64 %7, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.idx = shl i64 %6, 3                           ; 2 uses
  %.not.i.i = icmp eq i64 %6, 0
  %i.b = add i64 %i.a, -8                         ; 2 uses
  %i.c = shl i64 %6, 3
  %i.d = shl i64 %6, 3
  %i.e = add i64 %.idx, %i.a
  %i.f = add i64 %i.e, -8                         ; 4 uses
  %i.g = shl i64 %6, 3
  %i.h = shl i64 %6, 3
  %i.i = shl i64 %6, 3
  %i.j = shl i64 %6, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 7 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.hp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 3 uses
  %.0126 = phi ptr [ %0, %.lr.ph ], [ %i.hl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 6 uses
  %.038125 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 8 uses
  %.039124 = phi i64 [ %8, %.lr.ph ], [ %i.hn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 4 uses
  %.082123 = phi i64 [ %7, %.lr.ph ], [ %i.hq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %.083122 = phi ptr [ %2, %.lr.ph ], [ %i.ao, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 12 uses
  %i.k = mul i64 %i.j, %indvar
  %i.l = add i64 %i.f, %i.k                       ; 3 uses
  %i.m = mul i64 %i.i, %indvar
  %i.n = add i64 %i.f, %i.m
  %i.o = mul i64 %i.h, %indvar
  %i.p = add i64 %i.f, %i.o
  %i.q = mul i64 %i.g, %indvar
  %i.r = add i64 %i.f, %i.q
  %i.s = mul i64 %i.d, %indvar
  %i.t = add i64 %i.b, %i.s
  %i.u = mul i64 %i.c, %indvar
  %i.v = add i64 %i.b, %i.u
  %i.w = icmp ult i64 %.039124, %.0
  br i1 %i.w, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.al, %.thread24.i ], [ %.039124, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ak, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.x = mul i64 %.02226.i, %6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.083122, i64 %i.x
  %i.z = mul i64 %.027.i, %6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.083122, i64 %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.02226.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.027.i
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !338 ; 2 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = icmp slt i32 %i.ae, %i.ad
  br i1 %i.ag, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !338
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !338
  %i.aj = icmp slt i32 %i.ah, %i.ai
  %cond.fr.i = freeze i1 %i.aj
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ak = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.al = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !40

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ak, %.thread24.i ] ; 6 uses
  %i.am = add i64 %.022.lcssa.i, 2
  %i.an = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.am) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.082123)
  %i.ao = getelementptr inbounds nuw i8, ptr %.083122, i64 %.idx ; 14 uses
  %i.ap = mul i64 %.022.lcssa.i, %6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.083122, i64 %i.ap ; 11 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %6 ; 2 uses
  %.not43 = icmp eq i64 %.022.lcssa.i, 0          ; 4 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !331   ; 7 uses
  %.not36.i.i46 = icmp eq ptr %4, %i.as
  %or.cond.i.i47 = select i1 %.not.i.i, i1 true, i1 %.not36.i.i46 ; 4 uses
  br i1 %.not43, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  br i1 %10, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %bb.h
  %.030.ph.i.i = phi ptr [ %.131.i.i, %bb.h ], [ %.038125, %bb.f ]
  %.028.ph.i.i = phi ptr [ %i.be, %bb.h ], [ %i.as, %bb.f ] ; 4 uses
  %.026.ph.i.i = phi ptr [ %.026.i.i, %bb.h ], [ %.083122, %bb.f ]
  %.025.ph.i.i = phi ptr [ %.025.i.i, %bb.h ], [ %i.aq, %bb.f ]
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 6 uses
  %.026.i.i = phi ptr [ %i.aw, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 5 uses
  %.025.i.i = phi ptr [ %i.ax, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.at = load i32, ptr %.025.i.i, align 4, !tbaa !338 ; 2 uses
  %i.au = load i32, ptr %.028.ph.i.i, align 4, !tbaa !338 ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  store i32 %i.at, ptr %.030.i.i, align 4, !tbaa !347
  %i.ay = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !348
  %i.bb = load i32, ptr %.026.i.i, align 4, !tbaa !338
  store i32 %i.bb, ptr %.025.i.i, align 4, !tbaa !347
  %i.bc = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !338
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !348
  %.not43.i.i = icmp eq ptr %i.aw, %i.ao
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !52

end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.g
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.fu, %bb.aa ], [ %i.hv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %storemerge122 = phi ptr [ %i.hx, %bb.aa ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1109 = phi ptr [ %i.bo, %bb.aa ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1106 = phi i8 [ %i.ft, %bb.aa ], [ %.0105282, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.n, %bb.ab
  %i.hy = phi i1 [ %i.fs, %bb.ab ], [ %i.cf, %bb.n ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %spec.select, %bb.n ], [ %.0102283, %bb.m ], [ %.0228278, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.n ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.an, %bb.n ], [ %i.an, %bb.m ], [ %i.an, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bo, %bb.n ], [ %i.bo, %bb.m ], [ %i.bo, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105282, %bb.n ], [ %.0105282, %bb.m ], [ %.0105282, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %not. = xor i1 %i.hy, true
  %i.hz = sext i1 %not. to i64
  %.1 = add i64 %.0286, %i.hz
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !331
  %i.ia = getelementptr inbounds nuw i8, ptr %.0102283, i64 1 ; 2 uses
  %i.ib = icmp ne i64 %.099285, 0
  %.neg = sext i1 %i.ib to i64
  %i.ic = add i64 %.099285, %.neg                 ; 2 uses
  %i.id = icmp ne i64 %i.bk, 0
  %.neg123 = sext i1 %i.id to i64
  %i.ie = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.if = add i64 %.0234277, -1                   ; 2 uses
  %.not = icmp eq i64 %i.if, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3365

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %i.ig = phi ptr [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %i.an, %bb.f ]
  %.4 = phi i64 [ %i.ie, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0234277, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0228278, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0222279, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0216280, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0108281, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0105282, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.ia, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0102283, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.ic, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.099285, %bb.f ]
  %i.ih = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ii = phi ptr [ %i.i, %bb.a ], [ %i.ig, %.thread.loopexit ] ; 10 uses
  %.1319 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.ih, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.ij = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !331
  %.idx251 = shl nuw nsw i64 %6, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx251 ; 7 uses
  %i.il = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.il, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.ij, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.im = load i32, ptr %i.k, align 4, !tbaa !338
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.ip, %bb.af ] ; 3 uses
  %i.in = load i32, ptr %.07.i, align 4, !tbaa !338
  %i.io = icmp slt i32 %i.im, %i.in
  br i1 %i.io, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ip = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.ip, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !51

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.ip, %bb.af ] ; 12 uses
  %i.iq = ptrtoint ptr %.0222.lcssa to i64        ; 2 uses
  %i.ir = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.is = sub i64 %i.iq, %i.ir                    ; 4 uses
  %i.it = ashr exact i64 %i.is, 3
  %i.iu = sub nsw i64 0, %i.it
  %i.iv = getelementptr [8 x i8], ptr %i.ii, i64 %i.iu ; 10 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.iw = add i64 %i.iq, -8
  %i.ix = sub i64 %i.iw, %i.ir                    ; 3 uses
  %i.iy = lshr i64 %i.ix, 3
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check591 = icmp ult i64 %i.ix, 456
  br i1 %min.iters.check591, label %.lr.ph.i.i146.preheader750, label %vector.memcheck592

vector.memcheck592:                               ; preds = %.lr.ph.i.i146.preheader
  %i.ja = and i64 %i.ix, -8                       ; 2 uses
  %i.jb = or disjoint i64 %i.ja, 4                ; 2 uses
  %i.jc = sub i64 %i.jb, %i.is
  %i.jd = getelementptr i8, ptr %i.ii, i64 %i.jc  ; 3 uses
  %i.je = sub i64 4, %i.is
  %i.jf = getelementptr i8, ptr %i.ii, i64 %i.je  ; 3 uses
  %i.jg = add i64 %i.ja, 8                        ; 2 uses
  %i.jh = sub i64 %i.jg, %i.is
  %i.ji = getelementptr i8, ptr %i.ii, i64 %i.jh  ; 3 uses
  %i.jj = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jb ; 2 uses
  %i.jk = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.jl = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jg ; 2 uses
  %bound0593 = icmp ult ptr %i.iv, %i.ji
  %bound1594 = icmp ult ptr %i.jf, %i.jd
  %found.conflict595 = and i1 %bound0593, %bound1594
  %bound0596 = icmp ult ptr %i.iv, %i.jj
  %bound1597 = icmp ult ptr %.0.lcssa.i, %i.jd
  %found.conflict598 = and i1 %bound0596, %bound1597
  %conflict.rdx599 = or i1 %found.conflict595, %found.conflict598
  %bound0600 = icmp ult ptr %i.iv, %i.jl
  %bound1601 = icmp ult ptr %i.jk, %i.jd
  %found.conflict602 = and i1 %bound0600, %bound1601
  %conflict.rdx603 = or i1 %conflict.rdx599, %found.conflict602
  %bound0604 = icmp ult ptr %i.jf, %i.jj
  %bound1605 = icmp ult ptr %.0.lcssa.i, %i.ji
  %found.conflict606 = and i1 %bound0604, %bound1605
  %conflict.rdx607 = or i1 %conflict.rdx603, %found.conflict606
  %bound0608 = icmp ult ptr %i.jf, %i.jl
  %bound1609 = icmp ult ptr %i.jk, %i.ji
  %found.conflict610 = and i1 %bound0608, %bound1609
  %conflict.rdx611 = or i1 %conflict.rdx607, %found.conflict610
  br i1 %conflict.rdx611, label %.lr.ph.i.i146.preheader750, label %vector.ph612

vector.ph612:                                     ; preds = %vector.memcheck592
  %n.vec613 = and i64 %i.iz, 4611686018427387900  ; 3 uses
  %i.jm = shl i64 %n.vec613, 3                    ; 2 uses
  %i.jn = getelementptr i8, ptr %i.iv, i64 %i.jm
  %i.jo = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jm
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph612
  %index615 = phi i64 [ 0, %vector.ph612 ], [ %index.next628, %vector.body614 ] ; 2 uses
  %i.jp = shl i64 %index615, 3                    ; 3 uses
  %i.jq = or disjoint i64 %i.jp, 16               ; 2 uses
  %next.gep616 = getelementptr i8, ptr %i.iv, i64 %i.jp
  %next.gep617 = getelementptr i8, ptr %i.iv, i64 %i.jq
  %next.gep618 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jp
  %next.gep619 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jq
  %wide.vec620 = load <4 x i32>, ptr %next.gep618, align 4, !tbaa !338
  %wide.vec623 = load <4 x i32>, ptr %next.gep619, align 4, !tbaa !338
  store <4 x i32> %wide.vec620, ptr %next.gep616, align 4, !tbaa !338
  store <4 x i32> %wide.vec623, ptr %next.gep617, align 4, !tbaa !338
  %index.next628 = add nuw i64 %index615, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next628, %n.vec613
  br i1 %i.jr, label %middle.block629, label %vector.body614, !llvm.loop !3366

middle.block629:                                  ; preds = %vector.body614
  %cmp.n630 = icmp eq i64 %i.iz, %n.vec613
  br i1 %cmp.n630, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, label %.lr.ph.i.i146.preheader750

.lr.ph.i.i146.preheader750:                       ; preds = %vector.memcheck592, %.lr.ph.i.i146.preheader, %middle.block629
  %.010.i.i147.ph = phi ptr [ %i.iv, %vector.memcheck592 ], [ %i.iv, %.lr.ph.i.i146.preheader ], [ %i.jn, %middle.block629 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck592 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.jo, %middle.block629 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader750, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.jx, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader750 ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.jw, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader750 ] ; 3 uses
  %i.js = load i32, ptr %.079.i.i148, align 4, !tbaa !338
  store i32 %i.js, ptr %.010.i.i147, align 4, !tbaa !347
  %i.jt = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !338
  %i.jv = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !348
  %i.jw = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.jw, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, label %.lr.ph.i.i146, !llvm.loop !3367

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151: ; preds = %.lr.ph.i.i146, %middle.block629, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.jy, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.iv, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ii, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.kc, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ki, %bb.ai ], [ %.5221, %bb.ag ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.kc, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ke, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.jz = load i32, ptr %.0.i, align 4, !tbaa !338 ; 2 uses
  %i.ka = load i32, ptr %.021.i.ph, align 4, !tbaa !338 ; 2 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.kb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.jz, ptr %.024.i, align 4, !tbaa !347
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !338
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !348
  %i.kh = icmp eq ptr %i.ke, %i.ik
  br i1 %i.kh, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i, !llvm.loop !53

bb.ai:                                            ; preds = %.preheader.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.ka, ptr %.024.i, align 4, !tbaa !347
  %i.kj = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !338
  store i32 %i.kk, ptr %i.kd, align 4, !tbaa !348
  %i.kl = icmp eq ptr %i.ki, %.5
  br i1 %i.kl, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !53

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.kc, %bb.ai ], [ %i.kc, %bb.ah ] ; 12 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ki, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.ik, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !331
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.km = ptrtoaddr ptr %.223.i to i64
  %i.kn = add i64 %11, -8
  %i.ko = sub i64 %i.kn, %i.km                    ; 3 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check662 = icmp ult i64 %i.ko, 392
  br i1 %min.iters.check662, label %.lr.ph.i.i154.preheader738, label %vector.memcheck663

vector.memcheck663:                               ; preds = %.lr.ph.i.i154.preheader
  %i.kr = and i64 %i.ko, -8                       ; 2 uses
  %i.ks = or disjoint i64 %i.kr, 4                ; 2 uses
  %i.kt = getelementptr i8, ptr %.226.i, i64 %i.ks ; 3 uses
  %i.ku = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.kv = add i64 %i.kr, 8                        ; 2 uses
  %i.kw = getelementptr i8, ptr %.226.i, i64 %i.kv ; 3 uses
  %i.kx = getelementptr i8, ptr %.223.i, i64 %i.ks ; 2 uses
  %i.ky = getelementptr i8, ptr %.223.i, i64 4    ; 2 uses
  %i.kz = getelementptr i8, ptr %.223.i, i64 %i.kv ; 2 uses
  %bound0664 = icmp ult ptr %.226.i, %i.kw
  %bound1665 = icmp ult ptr %i.ku, %i.kt
  %found.conflict666 = and i1 %bound0664, %bound1665
  %bound0667 = icmp ult ptr %.226.i, %i.kx
  %bound1668 = icmp ult ptr %.223.i, %i.kt
  %found.conflict669 = and i1 %bound0667, %bound1668
  %conflict.rdx670 = or i1 %found.conflict666, %found.conflict669
  %bound0671 = icmp ult ptr %.226.i, %i.kz
  %bound1672 = icmp ult ptr %i.ky, %i.kt
  %found.conflict673 = and i1 %bound0671, %bound1672
  %conflict.rdx674 = or i1 %conflict.rdx670, %found.conflict673
  %bound0675 = icmp ult ptr %i.ku, %i.kx
  %bound1676 = icmp ult ptr %.223.i, %i.kw
  %found.conflict677 = and i1 %bound0675, %bound1676
  %conflict.rdx678 = or i1 %conflict.rdx674, %found.conflict677
  %bound0679 = icmp ult ptr %i.ku, %i.kz
  %bound1680 = icmp ult ptr %i.ky, %i.kw
  %found.conflict681 = and i1 %bound0679, %bound1680
  %conflict.rdx682 = or i1 %conflict.rdx678, %found.conflict681
  br i1 %conflict.rdx682, label %.lr.ph.i.i154.preheader738, label %vector.ph683

vector.ph683:                                     ; preds = %vector.memcheck663
  %n.vec684 = and i64 %i.kq, 4611686018427387900  ; 3 uses
  %i.la = shl i64 %n.vec684, 3                    ; 2 uses
  %i.lb = getelementptr i8, ptr %.226.i, i64 %i.la ; 2 uses
  %i.lc = getelementptr i8, ptr %.223.i, i64 %i.la
  br label %vector.body685

vector.body685:                                   ; preds = %vector.body685, %vector.ph683
  %index686 = phi i64 [ 0, %vector.ph683 ], [ %index.next699, %vector.body685 ] ; 2 uses
  %i.ld = shl i64 %index686, 3                    ; 3 uses
  %i.le = or disjoint i64 %i.ld, 16               ; 2 uses
  %next.gep687 = getelementptr i8, ptr %.226.i, i64 %i.ld
  %next.gep688 = getelementptr i8, ptr %.226.i, i64 %i.le
  %next.gep689 = getelementptr i8, ptr %.223.i, i64 %i.ld
  %next.gep690 = getelementptr i8, ptr %.223.i, i64 %i.le
  %wide.vec691 = load <4 x i32>, ptr %next.gep689, align 4, !tbaa !338
  %wide.vec694 = load <4 x i32>, ptr %next.gep690, align 4, !tbaa !338
  store <4 x i32> %wide.vec691, ptr %next.gep687, align 4, !tbaa !338
  store <4 x i32> %wide.vec694, ptr %next.gep688, align 4, !tbaa !338
  %index.next699 = add nuw i64 %index686, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next699, %n.vec684
  br i1 %i.lf, label %middle.block700, label %vector.body685, !llvm.loop !3368

middle.block700:                                  ; preds = %vector.body685
  %cmp.n701 = icmp eq i64 %i.kq, %n.vec684
  br i1 %cmp.n701, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i154.preheader738

.lr.ph.i.i154.preheader738:                       ; preds = %vector.memcheck663, %.lr.ph.i.i154.preheader, %middle.block700
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck663 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.lb, %middle.block700 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck663 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.lc, %middle.block700 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader738, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.ll, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader738 ] ; 3 uses
  %.079.i.i156 = phi ptr [ %i.lk, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader738 ] ; 3 uses
  %i.lg = load i32, ptr %.079.i.i156, align 4, !tbaa !338
  store i32 %i.lg, ptr %.010.i.i155, align 4, !tbaa !347
  %i.lh = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !338
  %i.lj = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !348
  %i.lk = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.lk, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i154, !llvm.loop !3369

bb.aj:                                            ; preds = %.thread
  br i1 %i.ij, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.lm = phi ptr [ %i.ii, %bb.aj ], [ %i.an, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1319, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234274 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234277, %.thread.thread ] ; 3 uses
  %.0228271 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228278, %.thread.thread ] ; 3 uses
  %.0222269 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222279, %.thread.thread ] ; 12 uses
  %.0216267 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216280, %.thread.thread ] ; 12 uses
  %.0108265 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108281, %.thread.thread ] ; 3 uses
  %.0102261 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102283, %.thread.thread ] ; 3 uses
  %.099258 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099285, %.thread.thread ] ; 3 uses
  %i.ln = phi ptr [ %i.ik, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216267, %.0108265
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %i.lo = ptrtoaddr ptr %.0108265 to i64
  %i.lp = ptrtoaddr ptr %.0216267 to i64
  %i.lq = add i64 %i.lo, -8
  %i.lr = sub i64 %i.lq, %i.lp                    ; 3 uses
  %i.ls = lshr i64 %i.lr, 3
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %min.iters.check522 = icmp ult i64 %i.lr, 392
  br i1 %min.iters.check522, label %.lr.ph.i.i161.preheader751, label %vector.memcheck523

vector.memcheck523:                               ; preds = %.lr.ph.i.i161.preheader
  %i.lu = and i64 %i.lr, -8                       ; 2 uses
  %i.lv = or disjoint i64 %i.lu, 4                ; 2 uses
  %i.lw = getelementptr i8, ptr %.0222269, i64 %i.lv ; 3 uses
  %i.lx = getelementptr i8, ptr %.0222269, i64 4  ; 3 uses
  %i.ly = add i64 %i.lu, 8                        ; 2 uses
  %i.lz = getelementptr i8, ptr %.0222269, i64 %i.ly ; 3 uses
  %i.ma = getelementptr i8, ptr %.0216267, i64 %i.lv ; 2 uses
  %i.mb = getelementptr i8, ptr %.0216267, i64 4  ; 2 uses
  %i.mc = getelementptr i8, ptr %.0216267, i64 %i.ly ; 2 uses
  %bound0524 = icmp ult ptr %.0222269, %i.lz
  %bound1525 = icmp ult ptr %i.lx, %i.lw
  %found.conflict526 = and i1 %bound0524, %bound1525
  %bound0527 = icmp ult ptr %.0222269, %i.ma
  %bound1528 = icmp ult ptr %.0216267, %i.lw
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx530 = or i1 %found.conflict526, %found.conflict529
  %bound0531 = icmp ult ptr %.0222269, %i.mc
  %bound1532 = icmp ult ptr %i.mb, %i.lw
  %found.conflict533 = and i1 %bound0531, %bound1532
  %conflict.rdx534 = or i1 %conflict.rdx530, %found.conflict533
  %bound0535 = icmp ult ptr %i.lx, %i.ma
  %bound1536 = icmp ult ptr %.0216267, %i.lz
  %found.conflict537 = and i1 %bound0535, %bound1536
  %conflict.rdx538 = or i1 %conflict.rdx534, %found.conflict537
  %bound0539 = icmp ult ptr %i.lx, %i.mc
  %bound1540 = icmp ult ptr %i.mb, %i.lz
  %found.conflict541 = and i1 %bound0539, %bound1540
  %conflict.rdx542 = or i1 %conflict.rdx538, %found.conflict541
  br i1 %conflict.rdx542, label %.lr.ph.i.i161.preheader751, label %vector.ph543

vector.ph543:                                     ; preds = %vector.memcheck523
  %n.vec544 = and i64 %i.lt, 4611686018427387900  ; 3 uses
  %i.md = shl i64 %n.vec544, 3                    ; 2 uses
  %i.me = getelementptr i8, ptr %.0222269, i64 %i.md ; 2 uses
  %i.mf = getelementptr i8, ptr %.0216267, i64 %i.md
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph543
  %index546 = phi i64 [ 0, %vector.ph543 ], [ %index.next559, %vector.body545 ] ; 2 uses
  %i.mg = shl i64 %index546, 3                    ; 3 uses
  %i.mh = or disjoint i64 %i.mg, 16               ; 2 uses
  %next.gep547 = getelementptr i8, ptr %.0222269, i64 %i.mg
  %next.gep548 = getelementptr i8, ptr %.0222269, i64 %i.mh
  %next.gep549 = getelementptr i8, ptr %.0216267, i64 %i.mg
  %next.gep550 = getelementptr i8, ptr %.0216267, i64 %i.mh
  %wide.vec551 = load <4 x i32>, ptr %next.gep549, align 4, !tbaa !338
  %wide.vec554 = load <4 x i32>, ptr %next.gep550, align 4, !tbaa !338
  store <4 x i32> %wide.vec551, ptr %next.gep547, align 4, !tbaa !338
  store <4 x i32> %wide.vec554, ptr %next.gep548, align 4, !tbaa !338
  %index.next559 = add nuw i64 %index546, 4       ; 2 uses
  %i.mi = icmp eq i64 %index.next559, %n.vec544
  br i1 %i.mi, label %middle.block560, label %vector.body545, !llvm.loop !3370

middle.block560:                                  ; preds = %vector.body545
  %cmp.n561 = icmp eq i64 %i.lt, %n.vec544
  br i1 %cmp.n561, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader751

.lr.ph.i.i161.preheader751:                       ; preds = %vector.memcheck523, %.lr.ph.i.i161.preheader, %middle.block560
  %.010.i.i162.ph = phi ptr [ %.0222269, %vector.memcheck523 ], [ %.0222269, %.lr.ph.i.i161.preheader ], [ %i.me, %middle.block560 ]
  %.079.i.i163.ph = phi ptr [ %.0216267, %vector.memcheck523 ], [ %.0216267, %.lr.ph.i.i161.preheader ], [ %i.mf, %middle.block560 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader751, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.mo, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader751 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.mn, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader751 ] ; 3 uses
  %i.mj = load i32, ptr %.079.i.i163, align 4, !tbaa !338
  store i32 %i.mj, ptr %.010.i.i162, align 4, !tbaa !347
  %i.mk = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !338
  %i.mm = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !348
  %i.mn = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.mn, %.0108265
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161, !llvm.loop !3371

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block560, %middle.block700, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, %bb.aj
  %i.mp = phi ptr [ %i.ii, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.ii, %bb.aj ], [ %i.lm, %bb.ak ], [ %i.ii, %middle.block700 ], [ %i.lm, %middle.block560 ], [ %i.ii, %.lr.ph.i.i154 ], [ %i.lm, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1319, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1319, %bb.aj ], [ %.2, %bb.ak ], [ %.1319, %middle.block700 ], [ %.2, %middle.block560 ], [ %.1319, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234275 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0234277, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234274, %bb.ak ], [ %.0234.lcssa, %middle.block700 ], [ %.0234274, %middle.block560 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234274, %.lr.ph.i.i161 ]
  %.0228272 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0228278, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228271, %bb.ak ], [ %.0228.lcssa, %middle.block700 ], [ %.0228271, %middle.block560 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228271, %.lr.ph.i.i161 ]
  %.0102262 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0102283, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102261, %bb.ak ], [ %.0102.lcssa, %middle.block700 ], [ %.0102261, %middle.block560 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102261, %.lr.ph.i.i161 ]
  %.099259 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.099285, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099258, %bb.ak ], [ %.099.lcssa, %middle.block700 ], [ %.099258, %middle.block560 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099258, %.lr.ph.i.i161 ]
  %i.mq = phi ptr [ %i.ik, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.ik, %bb.aj ], [ %i.ln, %bb.ak ], [ %i.ik, %middle.block700 ], [ %i.ln, %middle.block560 ], [ %i.ik, %.lr.ph.i.i154 ], [ %i.ln, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0222279, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222269, %bb.ak ], [ %i.lb, %middle.block700 ], [ %i.me, %middle.block560 ], [ %i.ll, %.lr.ph.i.i154 ], [ %i.mo, %.lr.ph.i.i161 ]
  %i.mr = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %.0102262, ptr noundef %.0228272, ptr noundef %i.mp, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.mq, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234275, i64 noundef %.099259, i64 noundef %.3, i1 noundef zeroext false) ; 7 uses
  %i.ms = load ptr, ptr %i.d, align 8, !tbaa !331 ; 9 uses
  %.not8.i.i167 = icmp eq ptr %i.ms, %i.mq
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  %i.mt = ptrtoaddr ptr %i.mq to i64
  %i.mu = ptrtoaddr ptr %i.ms to i64
  %i.mv = add i64 %i.mt, -8
  %i.mw = sub i64 %i.mv, %i.mu                    ; 3 uses
  %i.mx = lshr i64 %i.mw, 3
  %i.my = add nuw nsw i64 %i.mx, 1                ; 2 uses
  %min.iters.check711 = icmp ult i64 %i.mw, 120
  br i1 %min.iters.check711, label %.lr.ph.i.i168.preheader737, label %vector.memcheck712

vector.memcheck712:                               ; preds = %.lr.ph.i.i168.preheader
  %i.mz = and i64 %i.mw, -8
  %i.na = add i64 %i.mz, 8                        ; 2 uses
  %i.nb = getelementptr i8, ptr %i.mr, i64 %i.na
  %i.nc = getelementptr i8, ptr %i.ms, i64 %i.na
  %bound0713 = icmp ult ptr %i.mr, %i.nc
  %bound1714 = icmp ult ptr %i.ms, %i.nb
  %found.conflict715 = and i1 %bound0713, %bound1714
  br i1 %found.conflict715, label %.lr.ph.i.i168.preheader737, label %vector.ph716

vector.ph716:                                     ; preds = %vector.memcheck712
  %n.vec717 = and i64 %i.my, 4611686018427387900  ; 3 uses
  %i.nd = shl i64 %n.vec717, 3                    ; 2 uses
  %i.ne = getelementptr i8, ptr %i.mr, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ms, i64 %i.nd
  br label %vector.body718

vector.body718:                                   ; preds = %vector.body718, %vector.ph716
  %index719 = phi i64 [ 0, %vector.ph716 ], [ %index.next732, %vector.body718 ] ; 2 uses
  %i.ng = shl i64 %index719, 3                    ; 3 uses
  %i.nh = or disjoint i64 %i.ng, 16               ; 2 uses
  %next.gep720 = getelementptr i8, ptr %i.mr, i64 %i.ng
  %next.gep721 = getelementptr i8, ptr %i.mr, i64 %i.nh
  %next.gep722 = getelementptr i8, ptr %i.ms, i64 %i.ng
  %next.gep723 = getelementptr i8, ptr %i.ms, i64 %i.nh
  %wide.vec724 = load <4 x i32>, ptr %next.gep722, align 4, !tbaa !338, !alias.scope !3379
  %wide.vec727 = load <4 x i32>, ptr %next.gep723, align 4, !tbaa !338, !alias.scope !3379
  store <4 x i32> %wide.vec724, ptr %next.gep720, align 4, !tbaa !338, !alias.scope !3380, !noalias !3379
  store <4 x i32> %wide.vec727, ptr %next.gep721, align 4, !tbaa !338, !alias.scope !3380, !noalias !3379
  %index.next732 = add nuw i64 %index719, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next732, %n.vec717
  br i1 %i.ni, label %middle.block733, label %vector.body718, !llvm.loop !3375

middle.block733:                                  ; preds = %vector.body718
  %cmp.n734 = icmp eq i64 %i.my, %n.vec717
  br i1 %cmp.n734, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader737

.lr.ph.i.i168.preheader737:                       ; preds = %vector.memcheck712, %.lr.ph.i.i168.preheader, %middle.block733
  %.010.i.i169.ph = phi ptr [ %i.mr, %vector.memcheck712 ], [ %i.mr, %.lr.ph.i.i168.preheader ], [ %i.ne, %middle.block733 ]
  %.079.i.i170.ph = phi ptr [ %i.ms, %vector.memcheck712 ], [ %i.ms, %.lr.ph.i.i168.preheader ], [ %i.nf, %middle.block733 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader737, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.no, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader737 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.nn, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader737 ] ; 3 uses
  %i.nj = load i32, ptr %.079.i.i170, align 4, !tbaa !338
  store i32 %i.nj, ptr %.010.i.i169, align 4, !tbaa !347
  %i.nk = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !338
  %i.nm = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  store i32 %i.nl, ptr %i.nm, align 4, !tbaa !348
  %i.nn = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.nn, %i.mq
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168, !llvm.loop !3376

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173: ; preds = %.lr.ph.i.i168, %middle.block733, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
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
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !331
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 12 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not280 = icmp eq i64 %i.e, 0
  br i1 %.not280, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64
  %.idx254 = shl i64 %2, 3                        ; 4 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = mul i64 %2, %i.e
  %i.r = shl i64 %3, 3                            ; 2 uses
  %i.s = add i64 %i.q, %3
  %i.t = shl i64 %i.s, 3
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 -4   ; 3 uses
  %i.v = shl i64 %2, 3
  %i.w = or disjoint i64 %i.r, 4                  ; 2 uses
  %scevgep381 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %i.x = shl i64 %3, 3                            ; 2 uses
  %i.y = add i64 %i.x, %i.o
  %i.z = add i64 %i.y, %.idx254
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = shl i64 %2, 3
  %i.ac = shl i64 %2, 3
  %i.ad = getelementptr i8, ptr %1, i64 %i.x
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = getelementptr i8, ptr %1, i64 %i.r
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.w
  %i.ai = add i64 %.idx254, -8                    ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 168
  %bound0384 = icmp ult ptr %i.i, %i.k
  %bound1385 = icmp ult ptr %scevgep381, %scevgep
  %found.conflict386 = and i1 %bound0384, %bound1385
  %stride.check387 = icmp slt i64 %.idx254, 0
  %i.al = or i1 %found.conflict386, %stride.check387
  %n.vec = and i64 %i.ak, 4611686018427387902     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %i.an = phi ptr [ %i.i, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.if, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %.0290 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.099289 = phi i64 [ %i.m, %.lr.ph ], [ %i.id, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 7 uses
  %.0102287 = phi ptr [ %0, %.lr.ph ], [ %i.ib, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 15 uses
  %.0105286 = phi i8 [ 1, %.lr.ph ], [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.0108285 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 16 uses
  %.0220284 = phi ptr [ %1, %.lr.ph ], [ %.2222, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 22 uses
  %.0226283 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 20 uses
  %.0232282 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 13 uses
  %.0238281 = phi i64 [ %i.e, %.lr.ph ], [ %i.ig, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 5 uses
  %i.ao = mul i64 %i.ac, %indvar
  %i.ap = add i64 %i.aa, %i.ao                    ; 3 uses
  %i.aq = mul i64 %i.ab, %indvar                  ; 2 uses
  %i.ar = add i64 %i.aa, %i.aq
  %scevgep474 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %.0108285417 = ptrtoaddr ptr %.0108285 to i64   ; 2 uses
  %.0220284418 = ptrtoaddr ptr %.0220284 to i64   ; 2 uses
  %i.as = mul i64 %i.v, %indvar                   ; 2 uses
  %scevgep379 = getelementptr i8, ptr %i.ag, i64 %i.as
  %scevgep382 = getelementptr i8, ptr %i.ah, i64 %i.as
  %i.at = icmp ult i64 %.099289, %.0
  br i1 %i.at, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bi, %.thread24.i ], [ %.099289, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bh, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.au = mul i64 %.02226.i, %2
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.au
  %i.aw = mul i64 %.027.i, %2
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.02226.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.027.i
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !338 ; 2 uses
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !338 ; 2 uses
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.bd = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bd, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = load i8, ptr %i.az, align 1, !tbaa !307
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !307
  %i.bg = icmp ult i8 %i.be, %i.bf
  %cond.fr.i = freeze i1 %i.bg
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bh = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bi = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !76

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bh, %.thread24.i ] ; 7 uses
  %i.bj = add i64 %.022.lcssa.i, 2
  %i.bk = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bj) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.bk, i64 %.0238281) ; 4 uses
  %i.bl = mul i64 %.022.lcssa.i, %2               ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142, %bb.aa
  %.1221 = phi ptr [ %i.fv, %bb.aa ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %storemerge122 = phi ptr [ %i.hy, %bb.aa ], [ %i.hx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1109 = phi ptr [ %i.bo, %bb.aa ], [ %i.hx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1106 = phi i8 [ %i.fu, %bb.aa ], [ %.0105286, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.n, %bb.ab
  %i.hz = phi i1 [ %i.ft, %bb.ab ], [ %i.cf, %bb.n ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ]
  %.1233 = phi ptr [ %.5237, %bb.ab ], [ %spec.select, %bb.n ], [ %.0102287, %bb.m ], [ %.0232282, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.2228 = phi ptr [ %storemerge122, %bb.ab ], [ %.1227, %bb.n ], [ %.1227, %bb.m ], [ %.1227, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.2222 = phi ptr [ %.1221, %bb.ab ], [ %i.an, %bb.n ], [ %i.an, %bb.m ], [ %i.an, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bo, %bb.n ], [ %i.bo, %bb.m ], [ %i.bo, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105286, %bb.n ], [ %.0105286, %bb.m ], [ %.0105286, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %not. = xor i1 %i.hz, true
  %i.ia = sext i1 %not. to i64
  %.1 = add i64 %.0290, %i.ia
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !331
  %i.ib = getelementptr inbounds nuw i8, ptr %.0102287, i64 1 ; 2 uses
  %i.ic = icmp ne i64 %.099289, 0
  %.neg = sext i1 %i.ic to i64
  %i.id = add i64 %.099289, %.neg                 ; 2 uses
  %i.ie = icmp ne i64 %i.bk, 0
  %.neg123 = sext i1 %i.ie to i64
  %i.if = add i64 %.sroa.speculated210, %.neg123  ; 2 uses
  %i.ig = add i64 %.0238281, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ig, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3390

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %i.ih = phi ptr [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %i.an, %bb.f ]
  %.4 = phi i64 [ %i.if, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.sroa.speculated210, %bb.f ]
  %.0238.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0238281, %bb.f ]
  %.0232.lcssa.ph = phi ptr [ %.1233, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0232282, %bb.f ]
  %.0226.lcssa.ph = phi ptr [ %.2228, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0226283, %bb.f ]
  %.0220.lcssa.ph = phi ptr [ %.2222, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0220284, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0108285, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0105286, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.ib, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.0102287, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.id, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ], [ %.099289, %bb.f ]
  %i.ii = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ij = phi ptr [ %i.i, %bb.a ], [ %i.ih, %.thread.loopexit ] ; 10 uses
  %.1323 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0238.lcssa = phi i64 [ 0, %bb.a ], [ %.0238.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0232.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0232.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0226.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0226.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0220.lcssa = phi ptr [ %1, %bb.a ], [ %.0220.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.ii, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.ik = icmp eq ptr %.0108.lcssa, %.0226.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !331
  %.idx255 = shl nuw nsw i64 %6, 3
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx255 ; 7 uses
  %i.im = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.im, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.ik, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0220.lcssa, %.0226.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.in = load i32, ptr %i.k, align 4, !tbaa !338
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0220.lcssa, %.lr.ph.i143 ], [ %i.iq, %bb.af ] ; 3 uses
  %i.io = load i32, ptr %.07.i, align 4, !tbaa !338
  %i.ip = icmp slt i32 %i.in, %i.io
  br i1 %i.ip, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iq = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.iq, %.0226.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !51

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0220.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.iq, %bb.af ] ; 12 uses
  %i.ir = ptrtoint ptr %.0226.lcssa to i64        ; 2 uses
  %i.is = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 4 uses
  %i.iu = ashr exact i64 %i.it, 3
  %i.iv = sub nsw i64 0, %i.iu
  %i.iw = getelementptr [8 x i8], ptr %i.ij, i64 %i.iv ; 9 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0226.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.ix = add i64 %i.ir, -8
  %i.iy = sub i64 %i.ix, %i.is                    ; 3 uses
  %i.iz = lshr i64 %i.iy, 3
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check608 = icmp ult i64 %i.iy, 280
  br i1 %min.iters.check608, label %.lr.ph.i.i146.preheader775, label %vector.memcheck609

vector.memcheck609:                               ; preds = %.lr.ph.i.i146.preheader
  %i.jb = and i64 %i.iy, -8                       ; 2 uses
  %i.jc = or disjoint i64 %i.jb, 4                ; 2 uses
  %i.jd = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jc ; 3 uses
  %i.je = sub i64 %i.jc, %i.it
  %i.jf = getelementptr i8, ptr %i.ij, i64 %i.je  ; 3 uses
  %i.jg = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.jh = add i64 %i.jb, 8                        ; 2 uses
  %i.ji = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jh ; 3 uses
  %i.jj = sub i64 4, %i.it
  %i.jk = getelementptr i8, ptr %i.ij, i64 %i.jj  ; 3 uses
  %i.jl = sub i64 %i.jh, %i.it
  %i.jm = getelementptr i8, ptr %i.ij, i64 %i.jl  ; 3 uses
  %bound0610 = icmp ult ptr %.0.lcssa.i, %i.jf
  %bound1611 = icmp ult ptr %i.iw, %i.jd
  %found.conflict612 = and i1 %bound0610, %bound1611
  %bound0613 = icmp ult ptr %.0.lcssa.i, %i.ji
  %bound1614 = icmp ult ptr %i.jg, %i.jd
  %found.conflict615 = and i1 %bound0613, %bound1614
  %conflict.rdx616 = or i1 %found.conflict612, %found.conflict615
  %bound0617 = icmp ult ptr %.0.lcssa.i, %i.jm
  %bound1618 = icmp ult ptr %i.jk, %i.jd
  %found.conflict619 = and i1 %bound0617, %bound1618
  %conflict.rdx620 = or i1 %conflict.rdx616, %found.conflict619
  %bound0621 = icmp ult ptr %i.iw, %i.ji
  %bound1622 = icmp ult ptr %i.jg, %i.jf
  %found.conflict623 = and i1 %bound0621, %bound1622
  %conflict.rdx624 = or i1 %conflict.rdx620, %found.conflict623
  %bound0625 = icmp ult ptr %i.iw, %i.jm
  %bound1626 = icmp ult ptr %i.jk, %i.jf
  %found.conflict627 = and i1 %bound0625, %bound1626
  %conflict.rdx628 = or i1 %conflict.rdx624, %found.conflict627
  %bound0629 = icmp ult ptr %i.jg, %i.jm
  %bound1630 = icmp ult ptr %i.jk, %i.ji
  %found.conflict631 = and i1 %bound0629, %bound1630
  %conflict.rdx632 = or i1 %conflict.rdx628, %found.conflict631
  br i1 %conflict.rdx632, label %.lr.ph.i.i146.preheader775, label %vector.ph633

vector.ph633:                                     ; preds = %vector.memcheck609
  %n.vec634 = and i64 %i.ja, 4611686018427387902  ; 3 uses
  %i.jn = shl i64 %n.vec634, 3                    ; 2 uses
  %i.jo = getelementptr i8, ptr %i.iw, i64 %i.jn
  %i.jp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jn
  br label %vector.body635

vector.body635:                                   ; preds = %vector.body635, %vector.ph633
  %index636 = phi i64 [ 0, %vector.ph633 ], [ %index.next647, %vector.body635 ] ; 2 uses
  %i.jq = shl i64 %index636, 3                    ; 2 uses
  %next.gep637 = getelementptr i8, ptr %i.iw, i64 %i.jq ; 2 uses
  %next.gep638 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jq ; 2 uses
  %wide.vec639 = load <4 x i32>, ptr %next.gep638, align 4, !tbaa !338
  %wide.vec642 = load <4 x i32>, ptr %next.gep637, align 4, !tbaa !338
  store <4 x i32> %wide.vec642, ptr %next.gep638, align 4, !tbaa !338
  store <4 x i32> %wide.vec639, ptr %next.gep637, align 4, !tbaa !338
  %index.next647 = add nuw i64 %index636, 2       ; 2 uses
  %i.jr = icmp eq i64 %index.next647, %n.vec634
  br i1 %i.jr, label %middle.block648, label %vector.body635, !llvm.loop !3391

middle.block648:                                  ; preds = %vector.body635
  %cmp.n649 = icmp eq i64 %i.ja, %n.vec634
  br i1 %cmp.n649, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, label %.lr.ph.i.i146.preheader775

.lr.ph.i.i146.preheader775:                       ; preds = %vector.memcheck609, %.lr.ph.i.i146.preheader, %middle.block648
  %.010.i.i147.ph = phi ptr [ %i.iw, %vector.memcheck609 ], [ %i.iw, %.lr.ph.i.i146.preheader ], [ %i.jo, %middle.block648 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck609 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.jp, %middle.block648 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader775, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.jz, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader775 ] ; 4 uses
  %.079.i.i148 = phi ptr [ %i.jy, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader775 ] ; 4 uses
  %i.js = load i32, ptr %.079.i.i148, align 4, !tbaa !338
  %i.jt = load i32, ptr %.010.i.i147, align 4, !tbaa !338
  store i32 %i.jt, ptr %.079.i.i148, align 4, !tbaa !338
  store i32 %i.js, ptr %.010.i.i147, align 4, !tbaa !338
  %i.ju = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4 ; 2 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !338
  %i.jx = load i32, ptr %i.jv, align 4, !tbaa !338
  store i32 %i.jx, ptr %i.ju, align 4, !tbaa !338
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !338
  %i.jy = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.jy, %.0226.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, label %.lr.ph.i.i146, !llvm.loop !3392

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152: ; preds = %.lr.ph.i.i146, %middle.block648, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, %bb.ac
  %.5231 = phi ptr [ %i.ka, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152 ], [ %.0226.lcssa, %bb.ac ] ; 2 uses
  %.5225 = phi ptr [ %i.iw, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152 ], [ %.0220.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ij, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5225
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.ke, %bb.ai ], [ %.5231, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.km, %bb.ai ], [ %.5225, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.ke, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 5 uses
  %.0.i = phi ptr [ %i.kh, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.kb = load i32, ptr %.0.i, align 4, !tbaa !338 ; 2 uses
  %i.kc = load i32, ptr %.021.i.ph, align 4, !tbaa !338 ; 2 uses
  %i.kd = icmp slt i32 %i.kb, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.kf = load i32, ptr %.024.i, align 4, !tbaa !338 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.kd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.kb, ptr %.024.i, align 4, !tbaa !338
  store i32 %i.kf, ptr %.0.i, align 4, !tbaa !338
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.kj = load i32, ptr %i.kg, align 4, !tbaa !338
  %i.kk = load i32, ptr %i.ki, align 4, !tbaa !338
  store i32 %i.kk, ptr %i.kg, align 4, !tbaa !338
  store i32 %i.kj, ptr %i.ki, align 4, !tbaa !338
  %i.kl = icmp eq ptr %i.kh, %i.il
  br i1 %i.kl, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i, !llvm.loop !63

bb.ai:                                            ; preds = %.preheader.i
  %i.km = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.kc, ptr %.024.i, align 4, !tbaa !338
  store i32 %i.kf, ptr %.021.i.ph, align 4, !tbaa !338
  %i.kn = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ko = load i32, ptr %i.kg, align 4, !tbaa !338
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !338
  store i32 %i.kp, ptr %i.kg, align 4, !tbaa !338
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !338
  %i.kq = icmp eq ptr %i.km, %.5
  br i1 %i.kq, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !63

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5231, %bb.ag ], [ %i.ke, %bb.ai ], [ %i.ke, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5225, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.km, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.il, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !331
  %.not8.i.i154 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i154, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.kr = ptrtoaddr ptr %.223.i to i64
  %i.ks = add i64 %11, -8
  %i.kt = sub i64 %i.ks, %i.kr                    ; 3 uses
  %i.ku = lshr i64 %i.kt, 3
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 2 uses
  %min.iters.check685 = icmp ult i64 %i.kt, 248
  br i1 %min.iters.check685, label %.lr.ph.i.i155.preheader761, label %vector.memcheck686

vector.memcheck686:                               ; preds = %.lr.ph.i.i155.preheader
  %i.kw = and i64 %i.kt, -8                       ; 2 uses
  %i.kx = or disjoint i64 %i.kw, 4                ; 2 uses
  %i.ky = getelementptr i8, ptr %.223.i, i64 %i.kx ; 3 uses
  %i.kz = getelementptr i8, ptr %.226.i, i64 %i.kx ; 3 uses
  %i.la = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.lb = add i64 %i.kw, 8                        ; 2 uses
  %i.lc = getelementptr i8, ptr %.223.i, i64 %i.lb ; 3 uses
  %i.ld = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.le = getelementptr i8, ptr %.226.i, i64 %i.lb ; 3 uses
  %bound0687 = icmp ult ptr %.223.i, %i.kz
  %bound1688 = icmp ult ptr %.226.i, %i.ky
  %found.conflict689 = and i1 %bound0687, %bound1688
  %bound0690 = icmp ult ptr %.223.i, %i.lc
  %bound1691 = icmp ult ptr %i.la, %i.ky
  %found.conflict692 = and i1 %bound0690, %bound1691
  %conflict.rdx693 = or i1 %found.conflict689, %found.conflict692
  %bound0694 = icmp ult ptr %.223.i, %i.le
  %bound1695 = icmp ult ptr %i.ld, %i.ky
  %found.conflict696 = and i1 %bound0694, %bound1695
  %conflict.rdx697 = or i1 %conflict.rdx693, %found.conflict696
  %bound0698 = icmp ult ptr %.226.i, %i.lc
  %bound1699 = icmp ult ptr %i.la, %i.kz
  %found.conflict700 = and i1 %bound0698, %bound1699
  %conflict.rdx701 = or i1 %conflict.rdx697, %found.conflict700
  %bound0702 = icmp ult ptr %.226.i, %i.le
  %bound1703 = icmp ult ptr %i.ld, %i.kz
  %found.conflict704 = and i1 %bound0702, %bound1703
  %conflict.rdx705 = or i1 %conflict.rdx701, %found.conflict704
  %bound0706 = icmp ult ptr %i.la, %i.le
  %bound1707 = icmp ult ptr %i.ld, %i.lc
  %found.conflict708 = and i1 %bound0706, %bound1707
  %conflict.rdx709 = or i1 %conflict.rdx705, %found.conflict708
  br i1 %conflict.rdx709, label %.lr.ph.i.i155.preheader761, label %vector.ph710

vector.ph710:                                     ; preds = %vector.memcheck686
  %n.vec711 = and i64 %i.kv, 4611686018427387902  ; 3 uses
  %i.lf = shl i64 %n.vec711, 3                    ; 2 uses
  %i.lg = getelementptr i8, ptr %.226.i, i64 %i.lf ; 2 uses
  %i.lh = getelementptr i8, ptr %.223.i, i64 %i.lf
  br label %vector.body712

vector.body712:                                   ; preds = %vector.body712, %vector.ph710
  %index713 = phi i64 [ 0, %vector.ph710 ], [ %index.next724, %vector.body712 ] ; 2 uses
  %i.li = shl i64 %index713, 3                    ; 2 uses
  %next.gep714 = getelementptr i8, ptr %.226.i, i64 %i.li ; 2 uses
  %next.gep715 = getelementptr i8, ptr %.223.i, i64 %i.li ; 2 uses
  %wide.vec716 = load <4 x i32>, ptr %next.gep715, align 4, !tbaa !338
  %wide.vec719 = load <4 x i32>, ptr %next.gep714, align 4, !tbaa !338
  store <4 x i32> %wide.vec719, ptr %next.gep715, align 4, !tbaa !338
  store <4 x i32> %wide.vec716, ptr %next.gep714, align 4, !tbaa !338
  %index.next724 = add nuw i64 %index713, 2       ; 2 uses
  %i.lj = icmp eq i64 %index.next724, %n.vec711
  br i1 %i.lj, label %middle.block725, label %vector.body712, !llvm.loop !3393

middle.block725:                                  ; preds = %vector.body712
  %cmp.n726 = icmp eq i64 %i.kv, %n.vec711
  br i1 %cmp.n726, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i155.preheader761

.lr.ph.i.i155.preheader761:                       ; preds = %vector.memcheck686, %.lr.ph.i.i155.preheader, %middle.block725
  %.010.i.i156.ph = phi ptr [ %.226.i, %vector.memcheck686 ], [ %.226.i, %.lr.ph.i.i155.preheader ], [ %i.lg, %middle.block725 ]
  %.079.i.i157.ph = phi ptr [ %.223.i, %vector.memcheck686 ], [ %.223.i, %.lr.ph.i.i155.preheader ], [ %i.lh, %middle.block725 ]
  br label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155.preheader761, %.lr.ph.i.i155
  %.010.i.i156 = phi ptr [ %i.lr, %.lr.ph.i.i155 ], [ %.010.i.i156.ph, %.lr.ph.i.i155.preheader761 ] ; 4 uses
  %.079.i.i157 = phi ptr [ %i.lq, %.lr.ph.i.i155 ], [ %.079.i.i157.ph, %.lr.ph.i.i155.preheader761 ] ; 4 uses
  %i.lk = load i32, ptr %.079.i.i157, align 4, !tbaa !338
  %i.ll = load i32, ptr %.010.i.i156, align 4, !tbaa !338
  store i32 %i.ll, ptr %.079.i.i157, align 4, !tbaa !338
  store i32 %i.lk, ptr %.010.i.i156, align 4, !tbaa !338
  %i.lm = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 4 ; 2 uses
  %i.lo = load i32, ptr %i.lm, align 4, !tbaa !338
  %i.lp = load i32, ptr %i.ln, align 4, !tbaa !338
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !338
  store i32 %i.lo, ptr %i.ln, align 4, !tbaa !338
  %i.lq = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 8 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.lq, %.5
  br i1 %.not.i.i158, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i155, !llvm.loop !3394

bb.aj:                                            ; preds = %.thread
  br i1 %i.ik, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.ls = phi ptr [ %i.ij, %bb.aj ], [ %i.an, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1323, %bb.aj ], [ %.sroa.speculated210, %.thread.thread ] ; 3 uses
  %.0238278 = phi i64 [ %.0238.lcssa, %bb.aj ], [ %.0238281, %.thread.thread ] ; 3 uses
  %.0232275 = phi ptr [ %.0232.lcssa, %bb.aj ], [ %.0232282, %.thread.thread ] ; 3 uses
  %.0226273 = phi ptr [ %.0226.lcssa, %bb.aj ], [ %.0226283, %.thread.thread ] ; 11 uses
  %.0220271 = phi ptr [ %.0220.lcssa, %bb.aj ], [ %.0220284, %.thread.thread ] ; 12 uses
  %.0108269 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108285, %.thread.thread ] ; 3 uses
  %.0102265 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102287, %.thread.thread ] ; 3 uses
  %.099262 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099289, %.thread.thread ] ; 3 uses
  %i.lt = phi ptr [ %i.il, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0220271, %.0108269
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %i.lu = ptrtoaddr ptr %.0108269 to i64
  %i.lv = ptrtoaddr ptr %.0220271 to i64
  %i.lw = add i64 %i.lu, -8
  %i.lx = sub i64 %i.lw, %i.lv                    ; 3 uses
  %i.ly = lshr i64 %i.lx, 3
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 2 uses
  %min.iters.check533 = icmp ult i64 %i.lx, 248
  br i1 %min.iters.check533, label %.lr.ph.i.i163.preheader776, label %vector.memcheck534

vector.memcheck534:                               ; preds = %.lr.ph.i.i163.preheader
  %i.ma = and i64 %i.lx, -8                       ; 2 uses
  %i.mb = or disjoint i64 %i.ma, 4                ; 2 uses
  %i.mc = getelementptr i8, ptr %.0220271, i64 %i.mb ; 3 uses
  %i.md = getelementptr i8, ptr %.0226273, i64 %i.mb ; 3 uses
  %i.me = getelementptr i8, ptr %.0220271, i64 4  ; 3 uses
  %i.mf = add i64 %i.ma, 8                        ; 2 uses
  %i.mg = getelementptr i8, ptr %.0220271, i64 %i.mf ; 3 uses
  %i.mh = getelementptr i8, ptr %.0226273, i64 4  ; 3 uses
  %i.mi = getelementptr i8, ptr %.0226273, i64 %i.mf ; 3 uses
  %bound0535 = icmp ult ptr %.0220271, %i.md
  %bound1536 = icmp ult ptr %.0226273, %i.mc
  %found.conflict537 = and i1 %bound0535, %bound1536
  %bound0538 = icmp ult ptr %.0220271, %i.mg
  %bound1539 = icmp ult ptr %i.me, %i.mc
  %found.conflict540 = and i1 %bound0538, %bound1539
  %conflict.rdx541 = or i1 %found.conflict537, %found.conflict540
  %bound0542 = icmp ult ptr %.0220271, %i.mi
  %bound1543 = icmp ult ptr %i.mh, %i.mc
  %found.conflict544 = and i1 %bound0542, %bound1543
  %conflict.rdx545 = or i1 %conflict.rdx541, %found.conflict544
  %bound0546 = icmp ult ptr %.0226273, %i.mg
  %bound1547 = icmp ult ptr %i.me, %i.md
  %found.conflict548 = and i1 %bound0546, %bound1547
  %conflict.rdx549 = or i1 %conflict.rdx545, %found.conflict548
  %bound0550 = icmp ult ptr %.0226273, %i.mi
  %bound1551 = icmp ult ptr %i.mh, %i.md
  %found.conflict552 = and i1 %bound0550, %bound1551
  %conflict.rdx553 = or i1 %conflict.rdx549, %found.conflict552
  %bound0554 = icmp ult ptr %i.me, %i.mi
  %bound1555 = icmp ult ptr %i.mh, %i.mg
  %found.conflict556 = and i1 %bound0554, %bound1555
  %conflict.rdx557 = or i1 %conflict.rdx553, %found.conflict556
  br i1 %conflict.rdx557, label %.lr.ph.i.i163.preheader776, label %vector.ph558

vector.ph558:                                     ; preds = %vector.memcheck534
  %n.vec559 = and i64 %i.lz, 4611686018427387902  ; 3 uses
  %i.mj = shl i64 %n.vec559, 3                    ; 2 uses
  %i.mk = getelementptr i8, ptr %.0226273, i64 %i.mj ; 2 uses
  %i.ml = getelementptr i8, ptr %.0220271, i64 %i.mj
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph558
  %index561 = phi i64 [ 0, %vector.ph558 ], [ %index.next572, %vector.body560 ] ; 2 uses
  %i.mm = shl i64 %index561, 3                    ; 2 uses
  %next.gep562 = getelementptr i8, ptr %.0226273, i64 %i.mm ; 2 uses
  %next.gep563 = getelementptr i8, ptr %.0220271, i64 %i.mm ; 2 uses
  %wide.vec564 = load <4 x i32>, ptr %next.gep563, align 4, !tbaa !338
  %wide.vec567 = load <4 x i32>, ptr %next.gep562, align 4, !tbaa !338
  store <4 x i32> %wide.vec567, ptr %next.gep563, align 4, !tbaa !338
  store <4 x i32> %wide.vec564, ptr %next.gep562, align 4, !tbaa !338
  %index.next572 = add nuw i64 %index561, 2       ; 2 uses
  %i.mn = icmp eq i64 %index.next572, %n.vec559
  br i1 %i.mn, label %middle.block573, label %vector.body560, !llvm.loop !3395

middle.block573:                                  ; preds = %vector.body560
  %cmp.n574 = icmp eq i64 %i.lz, %n.vec559
  br i1 %cmp.n574, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i163.preheader776

.lr.ph.i.i163.preheader776:                       ; preds = %vector.memcheck534, %.lr.ph.i.i163.preheader, %middle.block573
  %.010.i.i164.ph = phi ptr [ %.0226273, %vector.memcheck534 ], [ %.0226273, %.lr.ph.i.i163.preheader ], [ %i.mk, %middle.block573 ]
  %.079.i.i165.ph = phi ptr [ %.0220271, %vector.memcheck534 ], [ %.0220271, %.lr.ph.i.i163.preheader ], [ %i.ml, %middle.block573 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader776, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.mv, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader776 ] ; 4 uses
  %.079.i.i165 = phi ptr [ %i.mu, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader776 ] ; 4 uses
  %i.mo = load i32, ptr %.079.i.i165, align 4, !tbaa !338
  %i.mp = load i32, ptr %.010.i.i164, align 4, !tbaa !338
  store i32 %i.mp, ptr %.079.i.i165, align 4, !tbaa !338
  store i32 %i.mo, ptr %.010.i.i164, align 4, !tbaa !338
  %i.mq = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %i.ms = load i32, ptr %i.mq, align 4, !tbaa !338
  %i.mt = load i32, ptr %i.mr, align 4, !tbaa !338
  store i32 %i.mt, ptr %i.mq, align 4, !tbaa !338
  store i32 %i.ms, ptr %i.mr, align 4, !tbaa !338
  %i.mu = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 8 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 8 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.mu, %.0108269
  br i1 %.not.i.i166, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i163, !llvm.loop !3396

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i155, %middle.block573, %middle.block725, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, %bb.aj
  %i.mw = phi ptr [ %i.ij, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.ij, %bb.aj ], [ %i.ls, %bb.ak ], [ %i.ij, %middle.block725 ], [ %i.ls, %middle.block573 ], [ %i.ij, %.lr.ph.i.i155 ], [ %i.ls, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1323, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.sroa.speculated210, %.thread.thread ], [ %.1323, %bb.aj ], [ %.2, %bb.ak ], [ %.1323, %middle.block725 ], [ %.2, %middle.block573 ], [ %.1323, %.lr.ph.i.i155 ], [ %.2, %.lr.ph.i.i163 ]
  %.0238279 = phi i64 [ %.0238.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0238281, %.thread.thread ], [ %.0238.lcssa, %bb.aj ], [ %.0238278, %bb.ak ], [ %.0238.lcssa, %middle.block725 ], [ %.0238278, %middle.block573 ], [ %.0238.lcssa, %.lr.ph.i.i155 ], [ %.0238278, %.lr.ph.i.i163 ]
  %.0232276 = phi ptr [ %.0232.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0232282, %.thread.thread ], [ %.0232.lcssa, %bb.aj ], [ %.0232275, %bb.ak ], [ %.0232.lcssa, %middle.block725 ], [ %.0232275, %middle.block573 ], [ %.0232.lcssa, %.lr.ph.i.i155 ], [ %.0232275, %.lr.ph.i.i163 ]
  %.0102266 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0102287, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102265, %bb.ak ], [ %.0102.lcssa, %middle.block725 ], [ %.0102265, %middle.block573 ], [ %.0102.lcssa, %.lr.ph.i.i155 ], [ %.0102265, %.lr.ph.i.i163 ]
  %.099263 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.099289, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099262, %bb.ak ], [ %.099.lcssa, %middle.block725 ], [ %.099262, %middle.block573 ], [ %.099.lcssa, %.lr.ph.i.i155 ], [ %.099262, %.lr.ph.i.i163 ]
  %i.mx = phi ptr [ %i.il, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.il, %bb.aj ], [ %i.lt, %bb.ak ], [ %i.il, %middle.block725 ], [ %i.lt, %middle.block573 ], [ %i.il, %.lr.ph.i.i155 ], [ %i.lt, %.lr.ph.i.i163 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0226283, %.thread.thread ], [ %.0226.lcssa, %bb.aj ], [ %.0226273, %bb.ak ], [ %i.lg, %middle.block725 ], [ %i.mk, %middle.block573 ], [ %i.lr, %.lr.ph.i.i155 ], [ %i.mv, %.lr.ph.i.i163 ]
  %i.my = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %.0102266, ptr noundef %.0232276, ptr noundef %i.mw, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.mx, ptr noundef %.6, i64 noundef %2, i64 noundef %.0238279, i64 noundef %.099263, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.mz = load ptr, ptr %i.d, align 8, !tbaa !331 ; 8 uses
  %.not8.i.i170 = icmp eq ptr %i.mz, %i.mx
  br i1 %.not8.i.i170, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177, label %.lr.ph.i.i171.preheader

.lr.ph.i.i171.preheader:                          ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161
  %i.na = ptrtoaddr ptr %i.mx to i64
  %i.nb = ptrtoaddr ptr %i.mz to i64
  %i.nc = add i64 %i.na, -8
  %i.nd = sub i64 %i.nc, %i.nb                    ; 3 uses
  %i.ne = lshr i64 %i.nd, 3
  %i.nf = add nuw nsw i64 %i.ne, 1                ; 2 uses
  %min.iters.check736 = icmp ult i64 %i.nd, 56
  br i1 %min.iters.check736, label %.lr.ph.i.i171.preheader760, label %vector.memcheck737

vector.memcheck737:                               ; preds = %.lr.ph.i.i171.preheader
  %i.ng = and i64 %i.nd, -8
  %i.nh = add i64 %i.ng, 8                        ; 2 uses
  %i.ni = getelementptr i8, ptr %i.mz, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.my, i64 %i.nh
  %bound0738 = icmp ult ptr %i.mz, %i.nj
  %bound1739 = icmp ult ptr %i.my, %i.ni
  %found.conflict740 = and i1 %bound0738, %bound1739
  br i1 %found.conflict740, label %.lr.ph.i.i171.preheader760, label %vector.ph741

vector.ph741:                                     ; preds = %vector.memcheck737
  %n.vec742 = and i64 %i.nf, 4611686018427387902  ; 3 uses
  %i.nk = shl i64 %n.vec742, 3                    ; 2 uses
  %i.nl = getelementptr i8, ptr %i.my, i64 %i.nk
  %i.nm = getelementptr i8, ptr %i.mz, i64 %i.nk
  br label %vector.body743

vector.body743:                                   ; preds = %vector.body743, %vector.ph741
  %index744 = phi i64 [ 0, %vector.ph741 ], [ %index.next755, %vector.body743 ] ; 2 uses
  %i.nn = shl i64 %index744, 3                    ; 2 uses
  %next.gep745 = getelementptr i8, ptr %i.my, i64 %i.nn ; 2 uses
  %next.gep746 = getelementptr i8, ptr %i.mz, i64 %i.nn ; 2 uses
  %wide.vec747 = load <4 x i32>, ptr %next.gep746, align 4, !tbaa !338, !alias.scope !3404, !noalias !3405
  %wide.vec750 = load <4 x i32>, ptr %next.gep745, align 4, !tbaa !338, !alias.scope !3405
  store <4 x i32> %wide.vec750, ptr %next.gep746, align 4, !tbaa !338, !alias.scope !3404, !noalias !3405
  store <4 x i32> %wide.vec747, ptr %next.gep745, align 4, !tbaa !338, !alias.scope !3405
  %index.next755 = add nuw i64 %index744, 2       ; 2 uses
  %i.no = icmp eq i64 %index.next755, %n.vec742
  br i1 %i.no, label %middle.block756, label %vector.body743, !llvm.loop !3400

middle.block756:                                  ; preds = %vector.body743
  %cmp.n757 = icmp eq i64 %i.nf, %n.vec742
  br i1 %cmp.n757, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177, label %.lr.ph.i.i171.preheader760

.lr.ph.i.i171.preheader760:                       ; preds = %vector.memcheck737, %.lr.ph.i.i171.preheader, %middle.block756
  %.010.i.i172.ph = phi ptr [ %i.my, %vector.memcheck737 ], [ %i.my, %.lr.ph.i.i171.preheader ], [ %i.nl, %middle.block756 ]
  %.079.i.i173.ph = phi ptr [ %i.mz, %vector.memcheck737 ], [ %i.mz, %.lr.ph.i.i171.preheader ], [ %i.nm, %middle.block756 ]
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.preheader760, %.lr.ph.i.i171
  %.010.i.i172 = phi ptr [ %i.nw, %.lr.ph.i.i171 ], [ %.010.i.i172.ph, %.lr.ph.i.i171.preheader760 ] ; 4 uses
  %.079.i.i173 = phi ptr [ %i.nv, %.lr.ph.i.i171 ], [ %.079.i.i173.ph, %.lr.ph.i.i171.preheader760 ] ; 4 uses
  %i.np = load i32, ptr %.079.i.i173, align 4, !tbaa !338
  %i.nq = load i32, ptr %.010.i.i172, align 4, !tbaa !338
  store i32 %i.nq, ptr %.079.i.i173, align 4, !tbaa !338
  store i32 %i.np, ptr %.010.i.i172, align 4, !tbaa !338
  %i.nr = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 4 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 4 ; 2 uses
  %i.nt = load i32, ptr %i.nr, align 4, !tbaa !338
  %i.nu = load i32, ptr %i.ns, align 4, !tbaa !338
  store i32 %i.nu, ptr %i.nr, align 4, !tbaa !338
  store i32 %i.nt, ptr %i.ns, align 4, !tbaa !338
  %i.nv = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 8
  %.not.i.i174 = icmp eq ptr %i.nv, %i.mx
  br i1 %.not.i.i174, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177, label %.lr.ph.i.i171, !llvm.loop !3401

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177: ; preds = %.lr.ph.i.i171, %middle.block756, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #2 comdat {
bb.a:
  %.not119 = icmp eq i64 %7, 0
  br i1 %.not119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.idx = shl i64 %6, 3                           ; 2 uses
  %.not.i.i = icmp eq i64 %6, 0
  %i.b = add i64 %i.a, -8                         ; 2 uses
  %i.c = shl i64 %6, 3
  %i.d = shl i64 %6, 3
  %i.e = add i64 %.idx, %i.a
  %i.f = add i64 %i.e, -8                         ; 4 uses
  %i.g = shl i64 %6, 3
  %i.h = shl i64 %6, 3
  %i.i = shl i64 %6, 3
  %i.j = shl i64 %6, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 7 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.hp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %.0125 = phi ptr [ %0, %.lr.ph ], [ %i.hl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 6 uses
  %.038124 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.039123 = phi i64 [ %8, %.lr.ph ], [ %i.hn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.082122 = phi i64 [ %7, %.lr.ph ], [ %i.hq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.083121 = phi ptr [ %2, %.lr.ph ], [ %i.ao, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 12 uses
  %i.k = mul i64 %i.j, %indvar
  %i.l = add i64 %i.f, %i.k                       ; 3 uses
  %i.m = mul i64 %i.i, %indvar
  %i.n = add i64 %i.f, %i.m
  %i.o = mul i64 %i.h, %indvar
  %i.p = add i64 %i.f, %i.o
  %i.q = mul i64 %i.g, %indvar
  %i.r = add i64 %i.f, %i.q
  %i.s = mul i64 %i.d, %indvar
  %i.t = add i64 %i.b, %i.s
  %i.u = mul i64 %i.c, %indvar
  %i.v = add i64 %i.b, %i.u
  %i.w = icmp ult i64 %.039123, %.0
  br i1 %i.w, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.al, %.thread24.i ], [ %.039123, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ak, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.x = mul i64 %.02226.i, %6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.083121, i64 %i.x
  %i.z = mul i64 %.027.i, %6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.083121, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.0125, i64 %.02226.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0125, i64 %.027.i
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !338 ; 2 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = icmp slt i32 %i.ae, %i.ad
  br i1 %i.ag, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !307
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !307
  %i.aj = icmp ult i8 %i.ah, %i.ai
  %cond.fr.i = freeze i1 %i.aj
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ak = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.al = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !76

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ak, %.thread24.i ] ; 6 uses
  %i.am = add i64 %.022.lcssa.i, 2
  %i.an = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.am) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.082122)
  %i.ao = getelementptr inbounds nuw i8, ptr %.083121, i64 %.idx ; 14 uses
  %i.ap = mul i64 %.022.lcssa.i, %6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.083121, i64 %i.ap ; 11 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %6 ; 2 uses
  %.not43 = icmp eq i64 %.022.lcssa.i, 0          ; 4 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !331   ; 7 uses
  %.not36.i.i46 = icmp eq ptr %4, %i.as
  %or.cond.i.i47 = select i1 %.not.i.i, i1 true, i1 %.not36.i.i46 ; 4 uses
  br i1 %.not43, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %10, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %bb.h
  %.030.ph.i.i = phi ptr [ %.131.i.i, %bb.h ], [ %.038124, %bb.f ]
  %.028.ph.i.i = phi ptr [ %i.be, %bb.h ], [ %i.as, %bb.f ] ; 4 uses
  %.026.ph.i.i = phi ptr [ %.026.i.i, %bb.h ], [ %.083121, %bb.f ]
  %.025.ph.i.i = phi ptr [ %.025.i.i, %bb.h ], [ %i.aq, %bb.f ]
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 6 uses
  %.026.i.i = phi ptr [ %i.aw, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 5 uses
  %.025.i.i = phi ptr [ %i.ax, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.at = load i32, ptr %.025.i.i, align 4, !tbaa !338 ; 2 uses
  %i.au = load i32, ptr %.028.ph.i.i, align 4, !tbaa !338 ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  store i32 %i.at, ptr %.030.i.i, align 4, !tbaa !347
  %i.ay = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !348
  %i.bb = load i32, ptr %.026.i.i, align 4, !tbaa !338
  store i32 %i.bb, ptr %.025.i.i, align 4, !tbaa !347
  %i.bc = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !338
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !348
  %.not43.i.i = icmp eq ptr %i.aw, %i.ao
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !52

end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.g
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.fu, %bb.aa ], [ %i.hv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %storemerge122 = phi ptr [ %i.hx, %bb.aa ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1109 = phi ptr [ %i.bo, %bb.aa ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1106 = phi i8 [ %i.ft, %bb.aa ], [ %.0105283, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.hy = phi i1 [ %i.fs, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %.0102284, %bb.m ], [ %.0228279, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.1223, %bb.n ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.an, %bb.m ], [ %i.an, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.an, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bo, %bb.m ], [ %i.bo, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bo, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105283, %bb.m ], [ %.0105283, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.0105283, %bb.n ] ; 2 uses
  %not. = xor i1 %i.hy, true
  %i.hz = sext i1 %not. to i64
  %.1 = add i64 %.0287, %i.hz
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !331
  %i.ia = getelementptr inbounds nuw i8, ptr %.0102284, i64 8 ; 2 uses
  %i.ib = icmp ne i64 %.099286, 0
  %.neg = sext i1 %i.ib to i64
  %i.ic = add i64 %.099286, %.neg                 ; 2 uses
  %i.id = icmp ne i64 %i.bk, 0
  %.neg123 = sext i1 %i.id to i64
  %i.ie = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.if = add i64 %.0234278, -1                   ; 2 uses
  %.not = icmp eq i64 %i.if, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3590

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ig = phi ptr [ %i.bo, %.sink.split.i ], [ %i.an, %bb.f ]
  %.4 = phi i64 [ %i.ie, %.sink.split.i ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0234278, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %.sink.split.i ], [ %.0228279, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %.sink.split.i ], [ %.0222280, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %.sink.split.i ], [ %.0216281, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108282, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105283, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.ia, %.sink.split.i ], [ %.0102284, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.ic, %.sink.split.i ], [ %.099286, %bb.f ]
  %i.ih = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ii = phi ptr [ %i.i, %bb.a ], [ %i.ig, %.thread.loopexit ] ; 10 uses
  %.1320 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.ih, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.ij = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !331
  %.idx252 = shl nuw nsw i64 %6, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx252 ; 7 uses
  %i.il = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.il, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.ij, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.im = load i32, ptr %i.k, align 4, !tbaa !338
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.ip, %bb.af ] ; 3 uses
  %i.in = load i32, ptr %.07.i, align 4, !tbaa !338
  %i.io = icmp slt i32 %i.im, %i.in
  br i1 %i.io, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ip = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.ip, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !51

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.ip, %bb.af ] ; 12 uses
  %i.iq = ptrtoint ptr %.0222.lcssa to i64        ; 2 uses
  %i.ir = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.is = sub i64 %i.iq, %i.ir                    ; 4 uses
  %i.it = ashr exact i64 %i.is, 3
  %i.iu = sub nsw i64 0, %i.it
  %i.iv = getelementptr [8 x i8], ptr %i.ii, i64 %i.iu ; 10 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.iw = add i64 %i.iq, -8
  %i.ix = sub i64 %i.iw, %i.ir                    ; 3 uses
  %i.iy = lshr i64 %i.ix, 3
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check592 = icmp ult i64 %i.ix, 456
  br i1 %min.iters.check592, label %.lr.ph.i.i146.preheader751, label %vector.memcheck593

vector.memcheck593:                               ; preds = %.lr.ph.i.i146.preheader
  %i.ja = and i64 %i.ix, -8                       ; 2 uses
  %i.jb = or disjoint i64 %i.ja, 4                ; 2 uses
  %i.jc = sub i64 %i.jb, %i.is
  %i.jd = getelementptr i8, ptr %i.ii, i64 %i.jc  ; 3 uses
  %i.je = sub i64 4, %i.is
  %i.jf = getelementptr i8, ptr %i.ii, i64 %i.je  ; 3 uses
  %i.jg = add i64 %i.ja, 8                        ; 2 uses
  %i.jh = sub i64 %i.jg, %i.is
  %i.ji = getelementptr i8, ptr %i.ii, i64 %i.jh  ; 3 uses
  %i.jj = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jb ; 2 uses
  %i.jk = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.jl = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jg ; 2 uses
  %bound0594 = icmp ult ptr %i.iv, %i.ji
  %bound1595 = icmp ult ptr %i.jf, %i.jd
  %found.conflict596 = and i1 %bound0594, %bound1595
  %bound0597 = icmp ult ptr %i.iv, %i.jj
  %bound1598 = icmp ult ptr %.0.lcssa.i, %i.jd
  %found.conflict599 = and i1 %bound0597, %bound1598
  %conflict.rdx600 = or i1 %found.conflict596, %found.conflict599
  %bound0601 = icmp ult ptr %i.iv, %i.jl
  %bound1602 = icmp ult ptr %i.jk, %i.jd
  %found.conflict603 = and i1 %bound0601, %bound1602
  %conflict.rdx604 = or i1 %conflict.rdx600, %found.conflict603
  %bound0605 = icmp ult ptr %i.jf, %i.jj
  %bound1606 = icmp ult ptr %.0.lcssa.i, %i.ji
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx608 = or i1 %conflict.rdx604, %found.conflict607
  %bound0609 = icmp ult ptr %i.jf, %i.jl
  %bound1610 = icmp ult ptr %i.jk, %i.ji
  %found.conflict611 = and i1 %bound0609, %bound1610
  %conflict.rdx612 = or i1 %conflict.rdx608, %found.conflict611
  br i1 %conflict.rdx612, label %.lr.ph.i.i146.preheader751, label %vector.ph613

vector.ph613:                                     ; preds = %vector.memcheck593
  %n.vec614 = and i64 %i.iz, 4611686018427387900  ; 3 uses
  %i.jm = shl i64 %n.vec614, 3                    ; 2 uses
  %i.jn = getelementptr i8, ptr %i.iv, i64 %i.jm
  %i.jo = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jm
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph613
  %index616 = phi i64 [ 0, %vector.ph613 ], [ %index.next629, %vector.body615 ] ; 2 uses
  %i.jp = shl i64 %index616, 3                    ; 3 uses
  %i.jq = or disjoint i64 %i.jp, 16               ; 2 uses
  %next.gep617 = getelementptr i8, ptr %i.iv, i64 %i.jp
  %next.gep618 = getelementptr i8, ptr %i.iv, i64 %i.jq
  %next.gep619 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jp
  %next.gep620 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jq
  %wide.vec621 = load <4 x i32>, ptr %next.gep619, align 4, !tbaa !338
  %wide.vec624 = load <4 x i32>, ptr %next.gep620, align 4, !tbaa !338
  store <4 x i32> %wide.vec621, ptr %next.gep617, align 4, !tbaa !338
  store <4 x i32> %wide.vec624, ptr %next.gep618, align 4, !tbaa !338
  %index.next629 = add nuw i64 %index616, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next629, %n.vec614
  br i1 %i.jr, label %middle.block630, label %vector.body615, !llvm.loop !3591

middle.block630:                                  ; preds = %vector.body615
  %cmp.n631 = icmp eq i64 %i.iz, %n.vec614
  br i1 %cmp.n631, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, label %.lr.ph.i.i146.preheader751

.lr.ph.i.i146.preheader751:                       ; preds = %vector.memcheck593, %.lr.ph.i.i146.preheader, %middle.block630
  %.010.i.i147.ph = phi ptr [ %i.iv, %vector.memcheck593 ], [ %i.iv, %.lr.ph.i.i146.preheader ], [ %i.jn, %middle.block630 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck593 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.jo, %middle.block630 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader751, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.jx, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader751 ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.jw, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader751 ] ; 3 uses
  %i.js = load i32, ptr %.079.i.i148, align 4, !tbaa !338
  store i32 %i.js, ptr %.010.i.i147, align 4, !tbaa !347
  %i.jt = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !338
  %i.jv = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !348
  %i.jw = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.jw, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, label %.lr.ph.i.i146, !llvm.loop !3592

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151: ; preds = %.lr.ph.i.i146, %middle.block630, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.jy, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.iv, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ii, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.kc, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ki, %bb.ai ], [ %.5221, %bb.ag ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.kc, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ke, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.jz = load i32, ptr %.0.i, align 4, !tbaa !338 ; 2 uses
  %i.ka = load i32, ptr %.021.i.ph, align 4, !tbaa !338 ; 2 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.kb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.jz, ptr %.024.i, align 4, !tbaa !347
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !338
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !348
  %i.kh = icmp eq ptr %i.ke, %i.ik
  br i1 %i.kh, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i, !llvm.loop !53

bb.ai:                                            ; preds = %.preheader.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.ka, ptr %.024.i, align 4, !tbaa !347
  %i.kj = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !338
  store i32 %i.kk, ptr %i.kd, align 4, !tbaa !348
  %i.kl = icmp eq ptr %i.ki, %.5
  br i1 %i.kl, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !53

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.kc, %bb.ai ], [ %i.kc, %bb.ah ] ; 12 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ki, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.ik, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !331
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.km = ptrtoaddr ptr %.223.i to i64
  %i.kn = add i64 %11, -8
  %i.ko = sub i64 %i.kn, %i.km                    ; 3 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check663 = icmp ult i64 %i.ko, 392
  br i1 %min.iters.check663, label %.lr.ph.i.i154.preheader739, label %vector.memcheck664

vector.memcheck664:                               ; preds = %.lr.ph.i.i154.preheader
  %i.kr = and i64 %i.ko, -8                       ; 2 uses
  %i.ks = or disjoint i64 %i.kr, 4                ; 2 uses
  %i.kt = getelementptr i8, ptr %.226.i, i64 %i.ks ; 3 uses
  %i.ku = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.kv = add i64 %i.kr, 8                        ; 2 uses
  %i.kw = getelementptr i8, ptr %.226.i, i64 %i.kv ; 3 uses
  %i.kx = getelementptr i8, ptr %.223.i, i64 %i.ks ; 2 uses
  %i.ky = getelementptr i8, ptr %.223.i, i64 4    ; 2 uses
  %i.kz = getelementptr i8, ptr %.223.i, i64 %i.kv ; 2 uses
  %bound0665 = icmp ult ptr %.226.i, %i.kw
  %bound1666 = icmp ult ptr %i.ku, %i.kt
  %found.conflict667 = and i1 %bound0665, %bound1666
  %bound0668 = icmp ult ptr %.226.i, %i.kx
  %bound1669 = icmp ult ptr %.223.i, %i.kt
  %found.conflict670 = and i1 %bound0668, %bound1669
  %conflict.rdx671 = or i1 %found.conflict667, %found.conflict670
  %bound0672 = icmp ult ptr %.226.i, %i.kz
  %bound1673 = icmp ult ptr %i.ky, %i.kt
  %found.conflict674 = and i1 %bound0672, %bound1673
  %conflict.rdx675 = or i1 %conflict.rdx671, %found.conflict674
  %bound0676 = icmp ult ptr %i.ku, %i.kx
  %bound1677 = icmp ult ptr %.223.i, %i.kw
  %found.conflict678 = and i1 %bound0676, %bound1677
  %conflict.rdx679 = or i1 %conflict.rdx675, %found.conflict678
  %bound0680 = icmp ult ptr %i.ku, %i.kz
  %bound1681 = icmp ult ptr %i.ky, %i.kw
  %found.conflict682 = and i1 %bound0680, %bound1681
  %conflict.rdx683 = or i1 %conflict.rdx679, %found.conflict682
  br i1 %conflict.rdx683, label %.lr.ph.i.i154.preheader739, label %vector.ph684

vector.ph684:                                     ; preds = %vector.memcheck664
  %n.vec685 = and i64 %i.kq, 4611686018427387900  ; 3 uses
  %i.la = shl i64 %n.vec685, 3                    ; 2 uses
  %i.lb = getelementptr i8, ptr %.226.i, i64 %i.la ; 2 uses
  %i.lc = getelementptr i8, ptr %.223.i, i64 %i.la
  br label %vector.body686

vector.body686:                                   ; preds = %vector.body686, %vector.ph684
  %index687 = phi i64 [ 0, %vector.ph684 ], [ %index.next700, %vector.body686 ] ; 2 uses
  %i.ld = shl i64 %index687, 3                    ; 3 uses
  %i.le = or disjoint i64 %i.ld, 16               ; 2 uses
  %next.gep688 = getelementptr i8, ptr %.226.i, i64 %i.ld
  %next.gep689 = getelementptr i8, ptr %.226.i, i64 %i.le
  %next.gep690 = getelementptr i8, ptr %.223.i, i64 %i.ld
  %next.gep691 = getelementptr i8, ptr %.223.i, i64 %i.le
  %wide.vec692 = load <4 x i32>, ptr %next.gep690, align 4, !tbaa !338
  %wide.vec695 = load <4 x i32>, ptr %next.gep691, align 4, !tbaa !338
  store <4 x i32> %wide.vec692, ptr %next.gep688, align 4, !tbaa !338
  store <4 x i32> %wide.vec695, ptr %next.gep689, align 4, !tbaa !338
  %index.next700 = add nuw i64 %index687, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next700, %n.vec685
  br i1 %i.lf, label %middle.block701, label %vector.body686, !llvm.loop !3593

middle.block701:                                  ; preds = %vector.body686
  %cmp.n702 = icmp eq i64 %i.kq, %n.vec685
  br i1 %cmp.n702, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i154.preheader739

.lr.ph.i.i154.preheader739:                       ; preds = %vector.memcheck664, %.lr.ph.i.i154.preheader, %middle.block701
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck664 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.lb, %middle.block701 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck664 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.lc, %middle.block701 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader739, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.ll, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader739 ] ; 3 uses
  %.079.i.i156 = phi ptr [ %i.lk, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader739 ] ; 3 uses
  %i.lg = load i32, ptr %.079.i.i156, align 4, !tbaa !338
  store i32 %i.lg, ptr %.010.i.i155, align 4, !tbaa !347
  %i.lh = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !338
  %i.lj = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !348
  %i.lk = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.lk, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i154, !llvm.loop !3594

bb.aj:                                            ; preds = %.thread
  br i1 %i.ij, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.lm = phi ptr [ %i.ii, %bb.aj ], [ %i.an, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 12 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 12 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.ln = phi ptr [ %i.ik, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %i.lo = ptrtoaddr ptr %.0108266 to i64
  %i.lp = ptrtoaddr ptr %.0216268 to i64
  %i.lq = add i64 %i.lo, -8
  %i.lr = sub i64 %i.lq, %i.lp                    ; 3 uses
  %i.ls = lshr i64 %i.lr, 3
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %min.iters.check523 = icmp ult i64 %i.lr, 392
  br i1 %min.iters.check523, label %.lr.ph.i.i161.preheader752, label %vector.memcheck524

vector.memcheck524:                               ; preds = %.lr.ph.i.i161.preheader
  %i.lu = and i64 %i.lr, -8                       ; 2 uses
  %i.lv = or disjoint i64 %i.lu, 4                ; 2 uses
  %i.lw = getelementptr i8, ptr %.0222270, i64 %i.lv ; 3 uses
  %i.lx = getelementptr i8, ptr %.0222270, i64 4  ; 3 uses
  %i.ly = add i64 %i.lu, 8                        ; 2 uses
  %i.lz = getelementptr i8, ptr %.0222270, i64 %i.ly ; 3 uses
  %i.ma = getelementptr i8, ptr %.0216268, i64 %i.lv ; 2 uses
  %i.mb = getelementptr i8, ptr %.0216268, i64 4  ; 2 uses
  %i.mc = getelementptr i8, ptr %.0216268, i64 %i.ly ; 2 uses
  %bound0525 = icmp ult ptr %.0222270, %i.lz
  %bound1526 = icmp ult ptr %i.lx, %i.lw
  %found.conflict527 = and i1 %bound0525, %bound1526
  %bound0528 = icmp ult ptr %.0222270, %i.ma
  %bound1529 = icmp ult ptr %.0216268, %i.lw
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %found.conflict527, %found.conflict530
  %bound0532 = icmp ult ptr %.0222270, %i.mc
  %bound1533 = icmp ult ptr %i.mb, %i.lw
  %found.conflict534 = and i1 %bound0532, %bound1533
  %conflict.rdx535 = or i1 %conflict.rdx531, %found.conflict534
  %bound0536 = icmp ult ptr %i.lx, %i.ma
  %bound1537 = icmp ult ptr %.0216268, %i.lz
  %found.conflict538 = and i1 %bound0536, %bound1537
  %conflict.rdx539 = or i1 %conflict.rdx535, %found.conflict538
  %bound0540 = icmp ult ptr %i.lx, %i.mc
  %bound1541 = icmp ult ptr %i.mb, %i.lz
  %found.conflict542 = and i1 %bound0540, %bound1541
  %conflict.rdx543 = or i1 %conflict.rdx539, %found.conflict542
  br i1 %conflict.rdx543, label %.lr.ph.i.i161.preheader752, label %vector.ph544

vector.ph544:                                     ; preds = %vector.memcheck524
  %n.vec545 = and i64 %i.lt, 4611686018427387900  ; 3 uses
  %i.md = shl i64 %n.vec545, 3                    ; 2 uses
  %i.me = getelementptr i8, ptr %.0222270, i64 %i.md ; 2 uses
  %i.mf = getelementptr i8, ptr %.0216268, i64 %i.md
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph544
  %index547 = phi i64 [ 0, %vector.ph544 ], [ %index.next560, %vector.body546 ] ; 2 uses
  %i.mg = shl i64 %index547, 3                    ; 3 uses
  %i.mh = or disjoint i64 %i.mg, 16               ; 2 uses
  %next.gep548 = getelementptr i8, ptr %.0222270, i64 %i.mg
  %next.gep549 = getelementptr i8, ptr %.0222270, i64 %i.mh
  %next.gep550 = getelementptr i8, ptr %.0216268, i64 %i.mg
  %next.gep551 = getelementptr i8, ptr %.0216268, i64 %i.mh
  %wide.vec552 = load <4 x i32>, ptr %next.gep550, align 4, !tbaa !338
  %wide.vec555 = load <4 x i32>, ptr %next.gep551, align 4, !tbaa !338
  store <4 x i32> %wide.vec552, ptr %next.gep548, align 4, !tbaa !338
  store <4 x i32> %wide.vec555, ptr %next.gep549, align 4, !tbaa !338
  %index.next560 = add nuw i64 %index547, 4       ; 2 uses
  %i.mi = icmp eq i64 %index.next560, %n.vec545
  br i1 %i.mi, label %middle.block561, label %vector.body546, !llvm.loop !3595

middle.block561:                                  ; preds = %vector.body546
  %cmp.n562 = icmp eq i64 %i.lt, %n.vec545
  br i1 %cmp.n562, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader752

.lr.ph.i.i161.preheader752:                       ; preds = %vector.memcheck524, %.lr.ph.i.i161.preheader, %middle.block561
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck524 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.me, %middle.block561 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck524 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.mf, %middle.block561 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader752, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.mo, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader752 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.mn, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader752 ] ; 3 uses
  %i.mj = load i32, ptr %.079.i.i163, align 4, !tbaa !338
  store i32 %i.mj, ptr %.010.i.i162, align 4, !tbaa !347
  %i.mk = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !338
  %i.mm = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !348
  %i.mn = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.mn, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161, !llvm.loop !3596

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block561, %middle.block701, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, %bb.aj
  %i.mp = phi ptr [ %i.ii, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.ii, %bb.aj ], [ %i.lm, %bb.ak ], [ %i.ii, %middle.block701 ], [ %i.lm, %middle.block561 ], [ %i.ii, %.lr.ph.i.i154 ], [ %i.lm, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block701 ], [ %.2, %middle.block561 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block701 ], [ %.0234275, %middle.block561 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block701 ], [ %.0228272, %middle.block561 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block701 ], [ %.0102262, %middle.block561 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block701 ], [ %.099259, %middle.block561 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.mq = phi ptr [ %i.ik, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.ik, %bb.aj ], [ %i.ln, %bb.ak ], [ %i.ik, %middle.block701 ], [ %i.ln, %middle.block561 ], [ %i.ik, %.lr.ph.i.i154 ], [ %i.ln, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.lb, %middle.block701 ], [ %i.me, %middle.block561 ], [ %i.ll, %.lr.ph.i.i154 ], [ %i.mo, %.lr.ph.i.i161 ]
  %i.mr = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.mp, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.mq, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 7 uses
  %i.ms = load ptr, ptr %i.d, align 8, !tbaa !331 ; 9 uses
  %.not8.i.i167 = icmp eq ptr %i.ms, %i.mq
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  %i.mt = ptrtoaddr ptr %i.mq to i64
  %i.mu = ptrtoaddr ptr %i.ms to i64
  %i.mv = add i64 %i.mt, -8
  %i.mw = sub i64 %i.mv, %i.mu                    ; 3 uses
  %i.mx = lshr i64 %i.mw, 3
  %i.my = add nuw nsw i64 %i.mx, 1                ; 2 uses
  %min.iters.check712 = icmp ult i64 %i.mw, 120
  br i1 %min.iters.check712, label %.lr.ph.i.i168.preheader738, label %vector.memcheck713

vector.memcheck713:                               ; preds = %.lr.ph.i.i168.preheader
  %i.mz = and i64 %i.mw, -8
  %i.na = add i64 %i.mz, 8                        ; 2 uses
  %i.nb = getelementptr i8, ptr %i.mr, i64 %i.na
  %i.nc = getelementptr i8, ptr %i.ms, i64 %i.na
  %bound0714 = icmp ult ptr %i.mr, %i.nc
  %bound1715 = icmp ult ptr %i.ms, %i.nb
  %found.conflict716 = and i1 %bound0714, %bound1715
  br i1 %found.conflict716, label %.lr.ph.i.i168.preheader738, label %vector.ph717

vector.ph717:                                     ; preds = %vector.memcheck713
  %n.vec718 = and i64 %i.my, 4611686018427387900  ; 3 uses
  %i.nd = shl i64 %n.vec718, 3                    ; 2 uses
  %i.ne = getelementptr i8, ptr %i.mr, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ms, i64 %i.nd
  br label %vector.body719

vector.body719:                                   ; preds = %vector.body719, %vector.ph717
  %index720 = phi i64 [ 0, %vector.ph717 ], [ %index.next733, %vector.body719 ] ; 2 uses
  %i.ng = shl i64 %index720, 3                    ; 3 uses
  %i.nh = or disjoint i64 %i.ng, 16               ; 2 uses
  %next.gep721 = getelementptr i8, ptr %i.mr, i64 %i.ng
  %next.gep722 = getelementptr i8, ptr %i.mr, i64 %i.nh
  %next.gep723 = getelementptr i8, ptr %i.ms, i64 %i.ng
  %next.gep724 = getelementptr i8, ptr %i.ms, i64 %i.nh
  %wide.vec725 = load <4 x i32>, ptr %next.gep723, align 4, !tbaa !338, !alias.scope !3604
  %wide.vec728 = load <4 x i32>, ptr %next.gep724, align 4, !tbaa !338, !alias.scope !3604
  store <4 x i32> %wide.vec725, ptr %next.gep721, align 4, !tbaa !338, !alias.scope !3605, !noalias !3604
  store <4 x i32> %wide.vec728, ptr %next.gep722, align 4, !tbaa !338, !alias.scope !3605, !noalias !3604
  %index.next733 = add nuw i64 %index720, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next733, %n.vec718
  br i1 %i.ni, label %middle.block734, label %vector.body719, !llvm.loop !3600

middle.block734:                                  ; preds = %vector.body719
  %cmp.n735 = icmp eq i64 %i.my, %n.vec718
  br i1 %cmp.n735, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader738

.lr.ph.i.i168.preheader738:                       ; preds = %vector.memcheck713, %.lr.ph.i.i168.preheader, %middle.block734
  %.010.i.i169.ph = phi ptr [ %i.mr, %vector.memcheck713 ], [ %i.mr, %.lr.ph.i.i168.preheader ], [ %i.ne, %middle.block734 ]
  %.079.i.i170.ph = phi ptr [ %i.ms, %vector.memcheck713 ], [ %i.ms, %.lr.ph.i.i168.preheader ], [ %i.nf, %middle.block734 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader738, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.no, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader738 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.nn, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader738 ] ; 3 uses
  %i.nj = load i32, ptr %.079.i.i170, align 4, !tbaa !338
  store i32 %i.nj, ptr %.010.i.i169, align 4, !tbaa !347
  %i.nk = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !338
  %i.nm = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  store i32 %i.nl, ptr %i.nm, align 4, !tbaa !348
  %i.nn = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.nn, %i.mq
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168, !llvm.loop !3601

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173: ; preds = %.lr.ph.i.i168, %middle.block734, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
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
  store ptr %i.i, ptr %i.a, align 8, !tbaa !331
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 12 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64
  %.idx254 = shl i64 %2, 3                        ; 4 uses
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
  %scevgep382 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %i.x = shl i64 %3, 3                            ; 2 uses
  %i.y = add i64 %i.x, %i.o
  %i.z = add i64 %i.y, %.idx254
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = shl i64 %2, 3
  %i.ac = shl i64 %2, 3
  %i.ad = getelementptr i8, ptr %1, i64 %i.x
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = getelementptr i8, ptr %1, i64 %i.r
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.w
  %i.ai = add i64 %.idx254, -8                    ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 168
  %bound0385 = icmp ult ptr %i.i, %i.k
  %bound1386 = icmp ult ptr %scevgep382, %scevgep
  %found.conflict387 = and i1 %bound0385, %bound1386
  %stride.check388 = icmp slt i64 %.idx254, 0
  %i.al = or i1 %found.conflict387, %stride.check388
  %n.vec = and i64 %i.ak, 4611686018427387902     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 4 uses
  %i.an = phi ptr [ %i.i, %.lr.ph ], [ %i.bo, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.if, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.id, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.ib, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 22 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 20 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.ig, %.sink.split.i ] ; 5 uses
  %i.ao = mul i64 %i.ac, %indvar
  %i.ap = add i64 %i.aa, %i.ao                    ; 3 uses
  %i.aq = mul i64 %i.ab, %indvar                  ; 2 uses
  %i.ar = add i64 %i.aa, %i.aq
  %scevgep475 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %.0108286418 = ptrtoaddr ptr %.0108286 to i64   ; 2 uses
  %.0220285419 = ptrtoaddr ptr %.0220285 to i64   ; 2 uses
  %i.as = mul i64 %i.v, %indvar                   ; 2 uses
  %scevgep380 = getelementptr i8, ptr %i.ag, i64 %i.as
  %scevgep383 = getelementptr i8, ptr %i.ah, i64 %i.as
  %i.at = icmp ult i64 %.099290, %.0
  br i1 %i.at, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bi, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bh, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.au = mul i64 %.02226.i, %2
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.au
  %i.aw = mul i64 %.027.i, %2
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.02226.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.027.i
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !338 ; 2 uses
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !338 ; 2 uses
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.bd = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bd, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = load i64, ptr %i.az, align 8, !tbaa !368
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !368
  %i.bg = icmp ult i64 %i.be, %i.bf
  %cond.fr.i = freeze i1 %i.bg
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bh = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bi = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !42

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bh, %.thread24.i ] ; 7 uses
  %i.bj = add i64 %.022.lcssa.i, 2
  %i.bk = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bj) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.bk, i64 %.0238282) ; 4 uses
  %i.bl = mul i64 %.022.lcssa.i, %2               ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142, %bb.aa
  %.1221 = phi ptr [ %i.fv, %bb.aa ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %storemerge122 = phi ptr [ %i.hy, %bb.aa ], [ %i.hx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1109 = phi ptr [ %i.bo, %bb.aa ], [ %i.hx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  %.1106 = phi i8 [ %i.fu, %bb.aa ], [ %.0105287, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.hz = phi i1 [ %i.ft, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.1233 = phi ptr [ %.5237, %bb.ab ], [ %.0102288, %bb.m ], [ %.0232283, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2228 = phi ptr [ %storemerge122, %bb.ab ], [ %.1227, %bb.m ], [ %.1227, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.1227, %bb.n ] ; 2 uses
  %.2222 = phi ptr [ %.1221, %bb.ab ], [ %i.an, %bb.m ], [ %i.an, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.an, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bo, %bb.m ], [ %i.bo, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bo, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105287, %bb.m ], [ %.0105287, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.0105287, %bb.n ] ; 2 uses
  %not. = xor i1 %i.hz, true
  %i.ia = sext i1 %not. to i64
  %.1 = add i64 %.0291, %i.ia
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !331
  %i.ib = getelementptr inbounds nuw i8, ptr %.0102288, i64 8 ; 2 uses
  %i.ic = icmp ne i64 %.099290, 0
  %.neg = sext i1 %i.ic to i64
  %i.id = add i64 %.099290, %.neg                 ; 2 uses
  %i.ie = icmp ne i64 %i.bk, 0
  %.neg123 = sext i1 %i.ie to i64
  %i.if = add i64 %.sroa.speculated210, %.neg123  ; 2 uses
  %i.ig = add i64 %.0238282, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ig, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3615

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ih = phi ptr [ %i.bo, %.sink.split.i ], [ %i.an, %bb.f ]
  %.4 = phi i64 [ %i.if, %.sink.split.i ], [ %.sroa.speculated210, %bb.f ]
  %.0238.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0238282, %bb.f ]
  %.0232.lcssa.ph = phi ptr [ %.1233, %.sink.split.i ], [ %.0232283, %bb.f ]
  %.0226.lcssa.ph = phi ptr [ %.2228, %.sink.split.i ], [ %.0226284, %bb.f ]
  %.0220.lcssa.ph = phi ptr [ %.2222, %.sink.split.i ], [ %.0220285, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108286, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105287, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.ib, %.sink.split.i ], [ %.0102288, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.id, %.sink.split.i ], [ %.099290, %bb.f ]
  %i.ii = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ij = phi ptr [ %i.i, %bb.a ], [ %i.ih, %.thread.loopexit ] ; 10 uses
  %.1324 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0238.lcssa = phi i64 [ 0, %bb.a ], [ %.0238.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0232.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0232.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0226.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0226.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0220.lcssa = phi ptr [ %1, %bb.a ], [ %.0220.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.ii, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.ik = icmp eq ptr %.0108.lcssa, %.0226.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !331
  %.idx256 = shl nuw nsw i64 %6, 3
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx256 ; 7 uses
  %i.im = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.im, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.ik, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0220.lcssa, %.0226.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.in = load i32, ptr %i.k, align 4, !tbaa !338
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0220.lcssa, %.lr.ph.i143 ], [ %i.iq, %bb.af ] ; 3 uses
  %i.io = load i32, ptr %.07.i, align 4, !tbaa !338
  %i.ip = icmp slt i32 %i.in, %i.io
  br i1 %i.ip, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iq = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i144 = icmp eq ptr %i.iq, %.0226.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !51

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0220.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.iq, %bb.af ] ; 12 uses
  %i.ir = ptrtoint ptr %.0226.lcssa to i64        ; 2 uses
  %i.is = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 4 uses
  %i.iu = ashr exact i64 %i.it, 3
  %i.iv = sub nsw i64 0, %i.iu
  %i.iw = getelementptr [8 x i8], ptr %i.ij, i64 %i.iv ; 9 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0226.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.ix = add i64 %i.ir, -8
  %i.iy = sub i64 %i.ix, %i.is                    ; 3 uses
  %i.iz = lshr i64 %i.iy, 3
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check609 = icmp ult i64 %i.iy, 280
  br i1 %min.iters.check609, label %.lr.ph.i.i146.preheader776, label %vector.memcheck610

vector.memcheck610:                               ; preds = %.lr.ph.i.i146.preheader
  %i.jb = and i64 %i.iy, -8                       ; 2 uses
  %i.jc = or disjoint i64 %i.jb, 4                ; 2 uses
  %i.jd = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jc ; 3 uses
  %i.je = sub i64 %i.jc, %i.it
  %i.jf = getelementptr i8, ptr %i.ij, i64 %i.je  ; 3 uses
  %i.jg = getelementptr i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.jh = add i64 %i.jb, 8                        ; 2 uses
  %i.ji = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jh ; 3 uses
  %i.jj = sub i64 4, %i.it
  %i.jk = getelementptr i8, ptr %i.ij, i64 %i.jj  ; 3 uses
  %i.jl = sub i64 %i.jh, %i.it
  %i.jm = getelementptr i8, ptr %i.ij, i64 %i.jl  ; 3 uses
  %bound0611 = icmp ult ptr %.0.lcssa.i, %i.jf
  %bound1612 = icmp ult ptr %i.iw, %i.jd
  %found.conflict613 = and i1 %bound0611, %bound1612
  %bound0614 = icmp ult ptr %.0.lcssa.i, %i.ji
  %bound1615 = icmp ult ptr %i.jg, %i.jd
  %found.conflict616 = and i1 %bound0614, %bound1615
  %conflict.rdx617 = or i1 %found.conflict613, %found.conflict616
  %bound0618 = icmp ult ptr %.0.lcssa.i, %i.jm
  %bound1619 = icmp ult ptr %i.jk, %i.jd
  %found.conflict620 = and i1 %bound0618, %bound1619
  %conflict.rdx621 = or i1 %conflict.rdx617, %found.conflict620
  %bound0622 = icmp ult ptr %i.iw, %i.ji
  %bound1623 = icmp ult ptr %i.jg, %i.jf
  %found.conflict624 = and i1 %bound0622, %bound1623
  %conflict.rdx625 = or i1 %conflict.rdx621, %found.conflict624
  %bound0626 = icmp ult ptr %i.iw, %i.jm
  %bound1627 = icmp ult ptr %i.jk, %i.jf
  %found.conflict628 = and i1 %bound0626, %bound1627
  %conflict.rdx629 = or i1 %conflict.rdx625, %found.conflict628
  %bound0630 = icmp ult ptr %i.jg, %i.jm
  %bound1631 = icmp ult ptr %i.jk, %i.ji
  %found.conflict632 = and i1 %bound0630, %bound1631
  %conflict.rdx633 = or i1 %conflict.rdx629, %found.conflict632
  br i1 %conflict.rdx633, label %.lr.ph.i.i146.preheader776, label %vector.ph634

vector.ph634:                                     ; preds = %vector.memcheck610
  %n.vec635 = and i64 %i.ja, 4611686018427387902  ; 3 uses
  %i.jn = shl i64 %n.vec635, 3                    ; 2 uses
  %i.jo = getelementptr i8, ptr %i.iw, i64 %i.jn
  %i.jp = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jn
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph634
  %index637 = phi i64 [ 0, %vector.ph634 ], [ %index.next648, %vector.body636 ] ; 2 uses
  %i.jq = shl i64 %index637, 3                    ; 2 uses
  %next.gep638 = getelementptr i8, ptr %i.iw, i64 %i.jq ; 2 uses
  %next.gep639 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.jq ; 2 uses
  %wide.vec640 = load <4 x i32>, ptr %next.gep639, align 4, !tbaa !338
  %wide.vec643 = load <4 x i32>, ptr %next.gep638, align 4, !tbaa !338
  store <4 x i32> %wide.vec643, ptr %next.gep639, align 4, !tbaa !338
  store <4 x i32> %wide.vec640, ptr %next.gep638, align 4, !tbaa !338
  %index.next648 = add nuw i64 %index637, 2       ; 2 uses
  %i.jr = icmp eq i64 %index.next648, %n.vec635
  br i1 %i.jr, label %middle.block649, label %vector.body636, !llvm.loop !3616

middle.block649:                                  ; preds = %vector.body636
  %cmp.n650 = icmp eq i64 %i.ja, %n.vec635
  br i1 %cmp.n650, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, label %.lr.ph.i.i146.preheader776

.lr.ph.i.i146.preheader776:                       ; preds = %vector.memcheck610, %.lr.ph.i.i146.preheader, %middle.block649
  %.010.i.i147.ph = phi ptr [ %i.iw, %vector.memcheck610 ], [ %i.iw, %.lr.ph.i.i146.preheader ], [ %i.jo, %middle.block649 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck610 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.jp, %middle.block649 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader776, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.jz, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader776 ] ; 4 uses
  %.079.i.i148 = phi ptr [ %i.jy, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader776 ] ; 4 uses
  %i.js = load i32, ptr %.079.i.i148, align 4, !tbaa !338
  %i.jt = load i32, ptr %.010.i.i147, align 4, !tbaa !338
  store i32 %i.jt, ptr %.079.i.i148, align 4, !tbaa !338
  store i32 %i.js, ptr %.010.i.i147, align 4, !tbaa !338
  %i.ju = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4 ; 2 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !338
  %i.jx = load i32, ptr %i.jv, align 4, !tbaa !338
  store i32 %i.jx, ptr %i.ju, align 4, !tbaa !338
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !338
  %i.jy = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.jy, %.0226.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, label %.lr.ph.i.i146, !llvm.loop !3617

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152: ; preds = %.lr.ph.i.i146, %middle.block649, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_RKNS0_15iterator_traitsISE_E10value_typeET0_.exit
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152, %bb.ac
  %.5231 = phi ptr [ %i.ka, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152 ], [ %.0226.lcssa, %bb.ac ] ; 2 uses
  %.5225 = phi ptr [ %i.iw, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152 ], [ %.0220.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ij, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit152 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5225
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.ke, %bb.ai ], [ %.5231, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.km, %bb.ai ], [ %.5225, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.ke, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 5 uses
  %.0.i = phi ptr [ %i.kh, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.kb = load i32, ptr %.0.i, align 4, !tbaa !338 ; 2 uses
  %i.kc = load i32, ptr %.021.i.ph, align 4, !tbaa !338 ; 2 uses
  %i.kd = icmp slt i32 %i.kb, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.kf = load i32, ptr %.024.i, align 4, !tbaa !338 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.kd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.kb, ptr %.024.i, align 4, !tbaa !338
  store i32 %i.kf, ptr %.0.i, align 4, !tbaa !338
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.kj = load i32, ptr %i.kg, align 4, !tbaa !338
  %i.kk = load i32, ptr %i.ki, align 4, !tbaa !338
  store i32 %i.kk, ptr %i.kg, align 4, !tbaa !338
  store i32 %i.kj, ptr %i.ki, align 4, !tbaa !338
  %i.kl = icmp eq ptr %i.kh, %i.il
  br i1 %i.kl, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i, !llvm.loop !63

bb.ai:                                            ; preds = %.preheader.i
  %i.km = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.kc, ptr %.024.i, align 4, !tbaa !338
  store i32 %i.kf, ptr %.021.i.ph, align 4, !tbaa !338
  %i.kn = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ko = load i32, ptr %i.kg, align 4, !tbaa !338
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !338
  store i32 %i.kp, ptr %i.kg, align 4, !tbaa !338
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !338
  %i.kq = icmp eq ptr %i.km, %.5
  br i1 %i.kq, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !63

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5231, %bb.ag ], [ %i.ke, %bb.ai ], [ %i.ke, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5225, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.km, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.il, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !331
  %.not8.i.i154 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i154, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit
  %11 = ptrtoaddr ptr %.5 to i64
  %i.kr = ptrtoaddr ptr %.223.i to i64
  %i.ks = add i64 %11, -8
  %i.kt = sub i64 %i.ks, %i.kr                    ; 3 uses
  %i.ku = lshr i64 %i.kt, 3
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 2 uses
  %min.iters.check686 = icmp ult i64 %i.kt, 248
  br i1 %min.iters.check686, label %.lr.ph.i.i155.preheader762, label %vector.memcheck687

vector.memcheck687:                               ; preds = %.lr.ph.i.i155.preheader
  %i.kw = and i64 %i.kt, -8                       ; 2 uses
  %i.kx = or disjoint i64 %i.kw, 4                ; 2 uses
  %i.ky = getelementptr i8, ptr %.223.i, i64 %i.kx ; 3 uses
  %i.kz = getelementptr i8, ptr %.226.i, i64 %i.kx ; 3 uses
  %i.la = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.lb = add i64 %i.kw, 8                        ; 2 uses
  %i.lc = getelementptr i8, ptr %.223.i, i64 %i.lb ; 3 uses
  %i.ld = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.le = getelementptr i8, ptr %.226.i, i64 %i.lb ; 3 uses
  %bound0688 = icmp ult ptr %.223.i, %i.kz
  %bound1689 = icmp ult ptr %.226.i, %i.ky
  %found.conflict690 = and i1 %bound0688, %bound1689
  %bound0691 = icmp ult ptr %.223.i, %i.lc
  %bound1692 = icmp ult ptr %i.la, %i.ky
  %found.conflict693 = and i1 %bound0691, %bound1692
  %conflict.rdx694 = or i1 %found.conflict690, %found.conflict693
  %bound0695 = icmp ult ptr %.223.i, %i.le
  %bound1696 = icmp ult ptr %i.ld, %i.ky
  %found.conflict697 = and i1 %bound0695, %bound1696
  %conflict.rdx698 = or i1 %conflict.rdx694, %found.conflict697
  %bound0699 = icmp ult ptr %.226.i, %i.lc
  %bound1700 = icmp ult ptr %i.la, %i.kz
  %found.conflict701 = and i1 %bound0699, %bound1700
  %conflict.rdx702 = or i1 %conflict.rdx698, %found.conflict701
  %bound0703 = icmp ult ptr %.226.i, %i.le
  %bound1704 = icmp ult ptr %i.ld, %i.kz
  %found.conflict705 = and i1 %bound0703, %bound1704
  %conflict.rdx706 = or i1 %conflict.rdx702, %found.conflict705
  %bound0707 = icmp ult ptr %i.la, %i.le
  %bound1708 = icmp ult ptr %i.ld, %i.lc
  %found.conflict709 = and i1 %bound0707, %bound1708
  %conflict.rdx710 = or i1 %conflict.rdx706, %found.conflict709
  br i1 %conflict.rdx710, label %.lr.ph.i.i155.preheader762, label %vector.ph711

vector.ph711:                                     ; preds = %vector.memcheck687
  %n.vec712 = and i64 %i.kv, 4611686018427387902  ; 3 uses
  %i.lf = shl i64 %n.vec712, 3                    ; 2 uses
  %i.lg = getelementptr i8, ptr %.226.i, i64 %i.lf ; 2 uses
  %i.lh = getelementptr i8, ptr %.223.i, i64 %i.lf
  br label %vector.body713

vector.body713:                                   ; preds = %vector.body713, %vector.ph711
  %index714 = phi i64 [ 0, %vector.ph711 ], [ %index.next725, %vector.body713 ] ; 2 uses
  %i.li = shl i64 %index714, 3                    ; 2 uses
  %next.gep715 = getelementptr i8, ptr %.226.i, i64 %i.li ; 2 uses
  %next.gep716 = getelementptr i8, ptr %.223.i, i64 %i.li ; 2 uses
  %wide.vec717 = load <4 x i32>, ptr %next.gep716, align 4, !tbaa !338
  %wide.vec720 = load <4 x i32>, ptr %next.gep715, align 4, !tbaa !338
  store <4 x i32> %wide.vec720, ptr %next.gep716, align 4, !tbaa !338
  store <4 x i32> %wide.vec717, ptr %next.gep715, align 4, !tbaa !338
  %index.next725 = add nuw i64 %index714, 2       ; 2 uses
  %i.lj = icmp eq i64 %index.next725, %n.vec712
  br i1 %i.lj, label %middle.block726, label %vector.body713, !llvm.loop !3618

middle.block726:                                  ; preds = %vector.body713
  %cmp.n727 = icmp eq i64 %i.kv, %n.vec712
  br i1 %cmp.n727, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i155.preheader762

.lr.ph.i.i155.preheader762:                       ; preds = %vector.memcheck687, %.lr.ph.i.i155.preheader, %middle.block726
  %.010.i.i156.ph = phi ptr [ %.226.i, %vector.memcheck687 ], [ %.226.i, %.lr.ph.i.i155.preheader ], [ %i.lg, %middle.block726 ]
  %.079.i.i157.ph = phi ptr [ %.223.i, %vector.memcheck687 ], [ %.223.i, %.lr.ph.i.i155.preheader ], [ %i.lh, %middle.block726 ]
  br label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155.preheader762, %.lr.ph.i.i155
  %.010.i.i156 = phi ptr [ %i.lr, %.lr.ph.i.i155 ], [ %.010.i.i156.ph, %.lr.ph.i.i155.preheader762 ] ; 4 uses
  %.079.i.i157 = phi ptr [ %i.lq, %.lr.ph.i.i155 ], [ %.079.i.i157.ph, %.lr.ph.i.i155.preheader762 ] ; 4 uses
  %i.lk = load i32, ptr %.079.i.i157, align 4, !tbaa !338
  %i.ll = load i32, ptr %.010.i.i156, align 4, !tbaa !338
  store i32 %i.ll, ptr %.079.i.i157, align 4, !tbaa !338
  store i32 %i.lk, ptr %.010.i.i156, align 4, !tbaa !338
  %i.lm = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 4 ; 2 uses
  %i.lo = load i32, ptr %i.lm, align 4, !tbaa !338
  %i.lp = load i32, ptr %i.ln, align 4, !tbaa !338
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !338
  store i32 %i.lo, ptr %i.ln, align 4, !tbaa !338
  %i.lq = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 8 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.lq, %.5
  br i1 %.not.i.i158, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i155, !llvm.loop !3619

bb.aj:                                            ; preds = %.thread
  br i1 %i.ik, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.ls = phi ptr [ %i.ij, %bb.aj ], [ %i.an, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1324, %bb.aj ], [ %.sroa.speculated210, %.thread.thread ] ; 3 uses
  %.0238279 = phi i64 [ %.0238.lcssa, %bb.aj ], [ %.0238282, %.thread.thread ] ; 3 uses
  %.0232276 = phi ptr [ %.0232.lcssa, %bb.aj ], [ %.0232283, %.thread.thread ] ; 3 uses
  %.0226274 = phi ptr [ %.0226.lcssa, %bb.aj ], [ %.0226284, %.thread.thread ] ; 11 uses
  %.0220272 = phi ptr [ %.0220.lcssa, %bb.aj ], [ %.0220285, %.thread.thread ] ; 12 uses
  %.0108270 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108286, %.thread.thread ] ; 3 uses
  %.0102266 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102288, %.thread.thread ] ; 3 uses
  %.099263 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099290, %.thread.thread ] ; 3 uses
  %i.lt = phi ptr [ %i.il, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0220272, %.0108270
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %i.lu = ptrtoaddr ptr %.0108270 to i64
  %i.lv = ptrtoaddr ptr %.0220272 to i64
  %i.lw = add i64 %i.lu, -8
  %i.lx = sub i64 %i.lw, %i.lv                    ; 3 uses
  %i.ly = lshr i64 %i.lx, 3
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 2 uses
  %min.iters.check534 = icmp ult i64 %i.lx, 248
  br i1 %min.iters.check534, label %.lr.ph.i.i163.preheader777, label %vector.memcheck535

vector.memcheck535:                               ; preds = %.lr.ph.i.i163.preheader
  %i.ma = and i64 %i.lx, -8                       ; 2 uses
  %i.mb = or disjoint i64 %i.ma, 4                ; 2 uses
  %i.mc = getelementptr i8, ptr %.0220272, i64 %i.mb ; 3 uses
  %i.md = getelementptr i8, ptr %.0226274, i64 %i.mb ; 3 uses
  %i.me = getelementptr i8, ptr %.0220272, i64 4  ; 3 uses
  %i.mf = add i64 %i.ma, 8                        ; 2 uses
  %i.mg = getelementptr i8, ptr %.0220272, i64 %i.mf ; 3 uses
  %i.mh = getelementptr i8, ptr %.0226274, i64 4  ; 3 uses
  %i.mi = getelementptr i8, ptr %.0226274, i64 %i.mf ; 3 uses
  %bound0536 = icmp ult ptr %.0220272, %i.md
  %bound1537 = icmp ult ptr %.0226274, %i.mc
  %found.conflict538 = and i1 %bound0536, %bound1537
  %bound0539 = icmp ult ptr %.0220272, %i.mg
  %bound1540 = icmp ult ptr %i.me, %i.mc
  %found.conflict541 = and i1 %bound0539, %bound1540
  %conflict.rdx542 = or i1 %found.conflict538, %found.conflict541
  %bound0543 = icmp ult ptr %.0220272, %i.mi
  %bound1544 = icmp ult ptr %i.mh, %i.mc
  %found.conflict545 = and i1 %bound0543, %bound1544
  %conflict.rdx546 = or i1 %conflict.rdx542, %found.conflict545
  %bound0547 = icmp ult ptr %.0226274, %i.mg
  %bound1548 = icmp ult ptr %i.me, %i.md
  %found.conflict549 = and i1 %bound0547, %bound1548
  %conflict.rdx550 = or i1 %conflict.rdx546, %found.conflict549
  %bound0551 = icmp ult ptr %.0226274, %i.mi
  %bound1552 = icmp ult ptr %i.mh, %i.md
  %found.conflict553 = and i1 %bound0551, %bound1552
  %conflict.rdx554 = or i1 %conflict.rdx550, %found.conflict553
  %bound0555 = icmp ult ptr %i.me, %i.mi
  %bound1556 = icmp ult ptr %i.mh, %i.mg
  %found.conflict557 = and i1 %bound0555, %bound1556
  %conflict.rdx558 = or i1 %conflict.rdx554, %found.conflict557
  br i1 %conflict.rdx558, label %.lr.ph.i.i163.preheader777, label %vector.ph559

vector.ph559:                                     ; preds = %vector.memcheck535
  %n.vec560 = and i64 %i.lz, 4611686018427387902  ; 3 uses
  %i.mj = shl i64 %n.vec560, 3                    ; 2 uses
  %i.mk = getelementptr i8, ptr %.0226274, i64 %i.mj ; 2 uses
  %i.ml = getelementptr i8, ptr %.0220272, i64 %i.mj
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph559
  %index562 = phi i64 [ 0, %vector.ph559 ], [ %index.next573, %vector.body561 ] ; 2 uses
  %i.mm = shl i64 %index562, 3                    ; 2 uses
  %next.gep563 = getelementptr i8, ptr %.0226274, i64 %i.mm ; 2 uses
  %next.gep564 = getelementptr i8, ptr %.0220272, i64 %i.mm ; 2 uses
  %wide.vec565 = load <4 x i32>, ptr %next.gep564, align 4, !tbaa !338
  %wide.vec568 = load <4 x i32>, ptr %next.gep563, align 4, !tbaa !338
  store <4 x i32> %wide.vec568, ptr %next.gep564, align 4, !tbaa !338
  store <4 x i32> %wide.vec565, ptr %next.gep563, align 4, !tbaa !338
  %index.next573 = add nuw i64 %index562, 2       ; 2 uses
  %i.mn = icmp eq i64 %index.next573, %n.vec560
  br i1 %i.mn, label %middle.block574, label %vector.body561, !llvm.loop !3620

middle.block574:                                  ; preds = %vector.body561
  %cmp.n575 = icmp eq i64 %i.lz, %n.vec560
  br i1 %cmp.n575, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i163.preheader777

.lr.ph.i.i163.preheader777:                       ; preds = %vector.memcheck535, %.lr.ph.i.i163.preheader, %middle.block574
  %.010.i.i164.ph = phi ptr [ %.0226274, %vector.memcheck535 ], [ %.0226274, %.lr.ph.i.i163.preheader ], [ %i.mk, %middle.block574 ]
  %.079.i.i165.ph = phi ptr [ %.0220272, %vector.memcheck535 ], [ %.0220272, %.lr.ph.i.i163.preheader ], [ %i.ml, %middle.block574 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader777, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.mv, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader777 ] ; 4 uses
  %.079.i.i165 = phi ptr [ %i.mu, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader777 ] ; 4 uses
  %i.mo = load i32, ptr %.079.i.i165, align 4, !tbaa !338
  %i.mp = load i32, ptr %.010.i.i164, align 4, !tbaa !338
  store i32 %i.mp, ptr %.079.i.i165, align 4, !tbaa !338
  store i32 %i.mo, ptr %.010.i.i164, align 4, !tbaa !338
  %i.mq = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %i.ms = load i32, ptr %i.mq, align 4, !tbaa !338
  %i.mt = load i32, ptr %i.mr, align 4, !tbaa !338
  store i32 %i.mt, ptr %i.mq, align 4, !tbaa !338
  store i32 %i.ms, ptr %i.mr, align 4, !tbaa !338
  %i.mu = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 8 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 8 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.mu, %.0108270
  br i1 %.not.i.i166, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %.lr.ph.i.i163, !llvm.loop !3621

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i155, %middle.block574, %middle.block726, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, %bb.aj
  %i.mw = phi ptr [ %i.ij, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.ij, %bb.aj ], [ %i.ls, %bb.ak ], [ %i.ij, %middle.block726 ], [ %i.ls, %middle.block574 ], [ %i.ij, %.lr.ph.i.i155 ], [ %i.ls, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1324, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.sroa.speculated210, %.thread.thread ], [ %.1324, %bb.aj ], [ %.2, %bb.ak ], [ %.1324, %middle.block726 ], [ %.2, %middle.block574 ], [ %.1324, %.lr.ph.i.i155 ], [ %.2, %.lr.ph.i.i163 ]
  %.0238280 = phi i64 [ %.0238.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0238282, %.thread.thread ], [ %.0238.lcssa, %bb.aj ], [ %.0238279, %bb.ak ], [ %.0238.lcssa, %middle.block726 ], [ %.0238279, %middle.block574 ], [ %.0238.lcssa, %.lr.ph.i.i155 ], [ %.0238279, %.lr.ph.i.i163 ]
  %.0232277 = phi ptr [ %.0232.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0232283, %.thread.thread ], [ %.0232.lcssa, %bb.aj ], [ %.0232276, %bb.ak ], [ %.0232.lcssa, %middle.block726 ], [ %.0232276, %middle.block574 ], [ %.0232.lcssa, %.lr.ph.i.i155 ], [ %.0232276, %.lr.ph.i.i163 ]
  %.0102267 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0102288, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102266, %bb.ak ], [ %.0102.lcssa, %middle.block726 ], [ %.0102266, %middle.block574 ], [ %.0102.lcssa, %.lr.ph.i.i155 ], [ %.0102266, %.lr.ph.i.i163 ]
  %.099264 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.099290, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099263, %bb.ak ], [ %.099.lcssa, %middle.block726 ], [ %.099263, %middle.block574 ], [ %.099.lcssa, %.lr.ph.i.i155 ], [ %.099263, %.lr.ph.i.i163 ]
  %i.mx = phi ptr [ %i.il, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.il, %bb.aj ], [ %i.lt, %bb.ak ], [ %i.il, %middle.block726 ], [ %i.lt, %middle.block574 ], [ %i.il, %.lr.ph.i.i155 ], [ %i.lt, %.lr.ph.i.i163 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0226284, %.thread.thread ], [ %.0226.lcssa, %bb.aj ], [ %.0226274, %bb.ak ], [ %i.lg, %middle.block726 ], [ %i.mk, %middle.block574 ], [ %i.lr, %.lr.ph.i.i155 ], [ %i.mv, %.lr.ph.i.i163 ]
  %i.my = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %.0102267, ptr noundef %.0232277, ptr noundef %i.mw, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.mx, ptr noundef %.6, i64 noundef %2, i64 noundef %.0238280, i64 noundef %.099264, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.mz = load ptr, ptr %i.d, align 8, !tbaa !331 ; 8 uses
  %.not8.i.i170 = icmp eq ptr %i.mz, %i.mx
  br i1 %.not8.i.i170, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177, label %.lr.ph.i.i171.preheader

.lr.ph.i.i171.preheader:                          ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161
  %i.na = ptrtoaddr ptr %i.mx to i64
  %i.nb = ptrtoaddr ptr %i.mz to i64
  %i.nc = add i64 %i.na, -8
  %i.nd = sub i64 %i.nc, %i.nb                    ; 3 uses
  %i.ne = lshr i64 %i.nd, 3
  %i.nf = add nuw nsw i64 %i.ne, 1                ; 2 uses
  %min.iters.check737 = icmp ult i64 %i.nd, 56
  br i1 %min.iters.check737, label %.lr.ph.i.i171.preheader761, label %vector.memcheck738

vector.memcheck738:                               ; preds = %.lr.ph.i.i171.preheader
  %i.ng = and i64 %i.nd, -8
  %i.nh = add i64 %i.ng, 8                        ; 2 uses
  %i.ni = getelementptr i8, ptr %i.mz, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.my, i64 %i.nh
  %bound0739 = icmp ult ptr %i.mz, %i.nj
  %bound1740 = icmp ult ptr %i.my, %i.ni
  %found.conflict741 = and i1 %bound0739, %bound1740
  br i1 %found.conflict741, label %.lr.ph.i.i171.preheader761, label %vector.ph742

vector.ph742:                                     ; preds = %vector.memcheck738
  %n.vec743 = and i64 %i.nf, 4611686018427387902  ; 3 uses
  %i.nk = shl i64 %n.vec743, 3                    ; 2 uses
  %i.nl = getelementptr i8, ptr %i.my, i64 %i.nk
  %i.nm = getelementptr i8, ptr %i.mz, i64 %i.nk
  br label %vector.body744

vector.body744:                                   ; preds = %vector.body744, %vector.ph742
  %index745 = phi i64 [ 0, %vector.ph742 ], [ %index.next756, %vector.body744 ] ; 2 uses
  %i.nn = shl i64 %index745, 3                    ; 2 uses
  %next.gep746 = getelementptr i8, ptr %i.my, i64 %i.nn ; 2 uses
  %next.gep747 = getelementptr i8, ptr %i.mz, i64 %i.nn ; 2 uses
  %wide.vec748 = load <4 x i32>, ptr %next.gep747, align 4, !tbaa !338, !alias.scope !3629, !noalias !3630
  %wide.vec751 = load <4 x i32>, ptr %next.gep746, align 4, !tbaa !338, !alias.scope !3630
  store <4 x i32> %wide.vec751, ptr %next.gep747, align 4, !tbaa !338, !alias.scope !3629, !noalias !3630
  store <4 x i32> %wide.vec748, ptr %next.gep746, align 4, !tbaa !338, !alias.scope !3630
  %index.next756 = add nuw i64 %index745, 2       ; 2 uses
  %i.no = icmp eq i64 %index.next756, %n.vec743
  br i1 %i.no, label %middle.block757, label %vector.body744, !llvm.loop !3625

middle.block757:                                  ; preds = %vector.body744
  %cmp.n758 = icmp eq i64 %i.nf, %n.vec743
  br i1 %cmp.n758, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177, label %.lr.ph.i.i171.preheader761

.lr.ph.i.i171.preheader761:                       ; preds = %vector.memcheck738, %.lr.ph.i.i171.preheader, %middle.block757
  %.010.i.i172.ph = phi ptr [ %i.my, %vector.memcheck738 ], [ %i.my, %.lr.ph.i.i171.preheader ], [ %i.nl, %middle.block757 ]
  %.079.i.i173.ph = phi ptr [ %i.mz, %vector.memcheck738 ], [ %i.mz, %.lr.ph.i.i171.preheader ], [ %i.nm, %middle.block757 ]
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.preheader761, %.lr.ph.i.i171
  %.010.i.i172 = phi ptr [ %i.nw, %.lr.ph.i.i171 ], [ %.010.i.i172.ph, %.lr.ph.i.i171.preheader761 ] ; 4 uses
  %.079.i.i173 = phi ptr [ %i.nv, %.lr.ph.i.i171 ], [ %.079.i.i173.ph, %.lr.ph.i.i171.preheader761 ] ; 4 uses
  %i.np = load i32, ptr %.079.i.i173, align 4, !tbaa !338
  %i.nq = load i32, ptr %.010.i.i172, align 4, !tbaa !338
  store i32 %i.nq, ptr %.079.i.i173, align 4, !tbaa !338
  store i32 %i.np, ptr %.010.i.i172, align 4, !tbaa !338
  %i.nr = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 4 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 4 ; 2 uses
  %i.nt = load i32, ptr %i.nr, align 4, !tbaa !338
  %i.nu = load i32, ptr %i.ns, align 4, !tbaa !338
  store i32 %i.nu, ptr %i.nr, align 4, !tbaa !338
  store i32 %i.nt, ptr %i.ns, align 4, !tbaa !338
  %i.nv = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 8
  %.not.i.i174 = icmp eq ptr %i.nv, %i.mx
  br i1 %.not.i.i174, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177, label %.lr.ph.i.i171, !llvm.loop !3626

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit177: ; preds = %.lr.ph.i.i171, %middle.block757, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #2 comdat {
bb.a:
  %.not120 = icmp eq i64 %7, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.idx = shl i64 %6, 3                           ; 2 uses
  %.not.i.i = icmp eq i64 %6, 0
  %i.b = add i64 %i.a, -8                         ; 2 uses
  %i.c = shl i64 %6, 3
  %i.d = shl i64 %6, 3
  %i.e = add i64 %.idx, %i.a
  %i.f = add i64 %i.e, -8                         ; 4 uses
  %i.g = shl i64 %6, 3
  %i.h = shl i64 %6, 3
  %i.i = shl i64 %6, 3
  %i.j = shl i64 %6, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 7 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.hp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %.0126 = phi ptr [ %0, %.lr.ph ], [ %i.hl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 6 uses
  %.038125 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.039124 = phi i64 [ %8, %.lr.ph ], [ %i.hn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.082123 = phi i64 [ %7, %.lr.ph ], [ %i.hq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.083122 = phi ptr [ %2, %.lr.ph ], [ %i.ao, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 12 uses
  %i.k = mul i64 %i.j, %indvar
  %i.l = add i64 %i.f, %i.k                       ; 3 uses
  %i.m = mul i64 %i.i, %indvar
  %i.n = add i64 %i.f, %i.m
  %i.o = mul i64 %i.h, %indvar
  %i.p = add i64 %i.f, %i.o
  %i.q = mul i64 %i.g, %indvar
  %i.r = add i64 %i.f, %i.q
  %i.s = mul i64 %i.d, %indvar
  %i.t = add i64 %i.b, %i.s
  %i.u = mul i64 %i.c, %indvar
  %i.v = add i64 %i.b, %i.u
  %i.w = icmp ult i64 %.039124, %.0
  br i1 %i.w, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.al, %.thread24.i ], [ %.039124, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ak, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.x = mul i64 %.02226.i, %6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.083122, i64 %i.x
  %i.z = mul i64 %.027.i, %6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.083122, i64 %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.02226.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.027.i
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !338 ; 2 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = icmp slt i32 %i.ae, %i.ad
  br i1 %i.ag, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !368
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !368
  %i.aj = icmp ult i64 %i.ah, %i.ai
  %cond.fr.i = freeze i1 %i.aj
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ak = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.al = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !42

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ak, %.thread24.i ] ; 6 uses
  %i.am = add i64 %.022.lcssa.i, 2
  %i.an = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.am) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.082123)
  %i.ao = getelementptr inbounds nuw i8, ptr %.083122, i64 %.idx ; 14 uses
  %i.ap = mul i64 %.022.lcssa.i, %6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.083122, i64 %i.ap ; 11 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %6 ; 2 uses
  %.not43 = icmp eq i64 %.022.lcssa.i, 0          ; 4 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !331   ; 7 uses
  %.not36.i.i46 = icmp eq ptr %4, %i.as
  %or.cond.i.i47 = select i1 %.not.i.i, i1 true, i1 %.not36.i.i46 ; 4 uses
  br i1 %.not43, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %10, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %bb.h
  %.030.ph.i.i = phi ptr [ %.131.i.i, %bb.h ], [ %.038125, %bb.f ]
  %.028.ph.i.i = phi ptr [ %i.be, %bb.h ], [ %i.as, %bb.f ] ; 4 uses
  %.026.ph.i.i = phi ptr [ %.026.i.i, %bb.h ], [ %.083122, %bb.f ]
  %.025.ph.i.i = phi ptr [ %.025.i.i, %bb.h ], [ %i.aq, %bb.f ]
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 6 uses
  %.026.i.i = phi ptr [ %i.aw, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 5 uses
  %.025.i.i = phi ptr [ %i.ax, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.at = load i32, ptr %.025.i.i, align 4, !tbaa !338 ; 2 uses
  %i.au = load i32, ptr %.028.ph.i.i, align 4, !tbaa !338 ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  store i32 %i.at, ptr %.030.i.i, align 4, !tbaa !347
  %i.ay = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !348
  %i.bb = load i32, ptr %.026.i.i, align 4, !tbaa !338
  store i32 %i.bb, ptr %.025.i.i, align 4, !tbaa !347
  %i.bc = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !338
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !348
  %.not43.i.i = icmp eq ptr %i.aw, %i.ao
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !52

end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEESC_SC_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !368
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !368
  store i64 %i.em, ptr %i.ej, align 8, !tbaa !368
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !368
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.en = load ptr, ptr %2, align 8, !tbaa !392   ; 2 uses
  %i.eo = icmp eq ptr %i.ei, %i.en
  br i1 %i.eo, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = icmp eq ptr %i.en, %i.eh
  br i1 %i.ep, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eh, %bb.y ], [ %i.ei, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !392
  %.pre184 = load ptr, ptr %1, align 8, !tbaa !392
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  %i.eq = phi ptr [ %i.eh, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit ], [ %i.eh, %bb.z ], [ %.pre184, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !387
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 2 uses
  store ptr %i.er, ptr %1, align 8, !tbaa !392
  %i.es = icmp ne i64 %.0141, 0
  %.neg = sext i1 %i.es to i64
  %i.et = add i64 %.0141, %.neg
  %i.eu = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.eu to i64
  %i.ev = add i64 %.sroa.speculated, %.neg24
  %i.ew = add i64 %.096140, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ew, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3765

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.ex = load ptr, ptr %6, align 8, !tbaa !387
  store ptr %i.ex, ptr %0, align 8, !tbaa !387
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !374  ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  %i.j = load ptr, ptr %3, align 8, !tbaa !406, !nonnull !345 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.j, ptr %7, align 8, !tbaa !385
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_13adaptive_xbufIS3_S4_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !373
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.k, align 8, !tbaa !373
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !372    ; 5 uses
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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !3773

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
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i, label %.lr.ph.i.i, !llvm.loop !3774

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %storemerge.in.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %.sroa.8.0.i, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %storemerge.in.lcssa.i.i
  store i32 %i.q, ptr %0, align 4, !tbaa !347
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !348
  store ptr %i.j, ptr %6, align 8, !tbaa !385
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.m, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEES4_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.j, ptr %5, align 8, !tbaa !385
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !338  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !338    ; 2 uses
  %.not86 = icmp slt i32 %i.b, %i.c
  br i1 %.not86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 8 uses
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !338
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 22 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !78

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i185.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !373  ; 3 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre107 = load ptr, ptr %4, align 8, !tbaa !372 ; 10 uses
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %5 = ptrtoaddr ptr %.114.i to i64
  %i.t = add i64 %i.d, -8
  %i.u = sub i64 %i.t, %5                         ; 3 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader299, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.x = and i64 %i.u, -8
  %i.y = add i64 %i.x, 8                          ; 2 uses
  %i.z = getelementptr i8, ptr %.pre107, i64 %i.y
  %i.aa = getelementptr i8, ptr %.114.i, i64 %i.y
  %bound0 = icmp ult ptr %.pre107, %i.aa
  %bound1 = icmp ult ptr %.114.i, %i.z
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader299, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %.pre107, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.114.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 3 uses
  %i.af = or disjoint i64 %i.ae, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre107, i64 %i.ae
  %next.gep144 = getelementptr i8, ptr %.pre107, i64 %i.af
  %next.gep145 = getelementptr i8, ptr %.114.i, i64 %i.ae
  %next.gep146 = getelementptr i8, ptr %.114.i, i64 %i.af
  %wide.vec = load <4 x i32>, ptr %next.gep145, align 4, !tbaa !338, !alias.scope !3800
  %wide.vec148 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !338, !alias.scope !3800
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !3801, !noalias !3800
  store <4 x i32> %wide.vec148, ptr %next.gep144, align 4, !tbaa !338, !alias.scope !3801, !noalias !3800
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3778

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.preheader299

.lr.ph.i.i.preheader299:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.pre107, %vector.memcheck ], [ %.pre107, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader299, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader299 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader299 ] ; 3 uses
  %i.ah = load i32, ptr %.079.i.i, align 4, !tbaa !338
  store i32 %i.ah, ptr %.010.i.i, align 4, !tbaa !347
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !338
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !348
  %i.al = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !3779

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.s, 3                     ; 4 uses
  %i.an = getelementptr i8, ptr %.114.i, i64 %.idx26.i ; 3 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !372   ; 9 uses
  %.not8.i17.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.f
  %i.ap = add i64 %.idx26.i, -8                   ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check158 = icmp ult i64 %i.ap, 56
  br i1 %min.iters.check158, label %.lr.ph.i18.i.preheader297, label %vector.memcheck159

vector.memcheck159:                               ; preds = %.lr.ph.i18.i.preheader
  %i.as = getelementptr i8, ptr %i.ao, i64 %.idx26.i
  %bound0160 = icmp ult ptr %i.ao, %i.an
  %bound1161 = icmp ult ptr %.114.i, %i.as
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.i18.i.preheader297, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck159
  %n.vec164 = and i64 %i.ar, 4611686018427387900  ; 3 uses
  %i.at = shl i64 %n.vec164, 3                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %.114.i, i64 %i.at
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next179, %vector.body165 ] ; 2 uses
  %i.aw = shl i64 %index166, 3                    ; 3 uses
  %i.ax = or disjoint i64 %i.aw, 16               ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.ao, i64 %i.aw
  %next.gep168 = getelementptr i8, ptr %i.ao, i64 %i.ax
  %next.gep169 = getelementptr i8, ptr %.114.i, i64 %i.aw
  %next.gep170 = getelementptr i8, ptr %.114.i, i64 %i.ax
  %wide.vec171 = load <4 x i32>, ptr %next.gep169, align 4, !tbaa !338, !alias.scope !3802
  %wide.vec174 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !338, !alias.scope !3802
  store <4 x i32> %wide.vec171, ptr %next.gep167, align 4, !tbaa !338, !alias.scope !3803, !noalias !3802
  store <4 x i32> %wide.vec174, ptr %next.gep168, align 4, !tbaa !338, !alias.scope !3803, !noalias !3802
  %index.next179 = add nuw i64 %index166, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next179, %n.vec164
  br i1 %i.ay, label %middle.block180, label %vector.body165, !llvm.loop !3783

middle.block180:                                  ; preds = %vector.body165
  %cmp.n181 = icmp eq i64 %i.ar, %n.vec164
  br i1 %cmp.n181, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader297

.lr.ph.i18.i.preheader297:                        ; preds = %vector.memcheck159, %.lr.ph.i18.i.preheader, %middle.block180
  %.010.i19.i.ph = phi ptr [ %i.ao, %vector.memcheck159 ], [ %i.ao, %.lr.ph.i18.i.preheader ], [ %i.au, %middle.block180 ]
  %.079.i20.i.ph = phi ptr [ %.114.i, %vector.memcheck159 ], [ %.114.i, %.lr.ph.i18.i.preheader ], [ %i.av, %middle.block180 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader297, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.be, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader297 ] ; 3 uses
  %.079.i20.i = phi ptr [ %i.bd, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader297 ] ; 3 uses
  %i.az = load i32, ptr %.079.i20.i, align 4, !tbaa !338
  store i32 %i.az, ptr %.010.i19.i, align 4, !tbaa !347
  %i.ba = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !348
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 8 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.bd, %i.an
  br i1 %.not.i21.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !3784

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i: ; preds = %.lr.ph.i18.i, %middle.block180, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.ao, %bb.f ], [ %i.au, %middle.block180 ], [ %i.be, %.lr.ph.i18.i ]
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.p
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bg, %.lr.ph.i24.i ], [ %i.an, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bh, %.lr.ph.i24.i ], [ %.0.lcssa.i22.i, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i ] ; 2 uses
  %i.bf = load i64, ptr %.012.i.i, align 4
  store i64 %i.bf, ptr %.0911.i.i, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bg, %1
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, label %.lr.ph.i24.i, !llvm.loop !35

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit: ; preds = %.lr.ph.i24.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !372
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit, %bb.e, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.bi = phi ptr [ %i.ao, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit.loopexit ], [ %.pre107, %bb.e ], [ %.pre107, %middle.block ], [ %.pre107, %.lr.ph.i.i ] ; 3 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64              ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !373
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.p ; 2 uses
  %.not24.i = icmp eq ptr %1, %.114.i
  br i1 %.not24.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 2 uses
  %.027.i = phi ptr [ %.1.i41, %bb.j ], [ %i.bi, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 12 uses
  %.01626.i = phi ptr [ %i.cq, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 9 uses
  %.01725.i = phi ptr [ %.118.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit ] ; 5 uses
  %i.bl = icmp eq ptr %.01725.i, %2
  br i1 %i.bl, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.027.i186.le = ptrtoaddr ptr %.027.i to i64    ; 2 uses
  %i.bm = add i64 %i.bj, %i.d
  %i.bn = add i64 %i.bm, -8
  %i.bo = add i64 %.114.i185.le, %.027.i186.le
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check194 = icmp ult i64 %i.bp, 168
  br i1 %min.iters.check194, label %.lr.ph.i.i.i.preheader290, label %vector.memcheck184

vector.memcheck184:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.bs = shl i64 %indvar, 3
  %i.bt = getelementptr i8, ptr %.114.i, i64 %i.bs
  %scevgep = getelementptr i8, ptr %i.bt, i64 8
  %i.bu = add i64 %i.bj, %i.d
  %i.bv = add i64 %i.bu, -8
  %i.bw = add i64 %.114.i185.le, %.027.i186.le
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = and i64 %i.bx, -8                       ; 2 uses
  %scevgep187 = getelementptr i8, ptr %scevgep, i64 %i.by
  %scevgep188 = getelementptr i8, ptr %.027.i, i64 8
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.by
  %bound0190 = icmp ult ptr %.01626.i, %scevgep189
  %bound1191 = icmp ult ptr %.027.i, %scevgep187
  %found.conflict192 = and i1 %bound0190, %bound1191
  br i1 %found.conflict192, label %.lr.ph.i.i.i.preheader290, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck184
  %n.vec196 = and i64 %i.br, 4611686018427387900  ; 3 uses
  %i.bz = shl i64 %n.vec196, 3                    ; 2 uses
  %i.ca = getelementptr i8, ptr %.01626.i, i64 %i.bz
  %i.cb = getelementptr i8, ptr %.027.i, i64 %i.bz
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next211, %vector.body197 ] ; 2 uses
  %i.cc = shl i64 %index198, 3                    ; 3 uses
  %i.cd = or disjoint i64 %i.cc, 16               ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.01626.i, i64 %i.cc
  %next.gep200 = getelementptr i8, ptr %.01626.i, i64 %i.cd
  %next.gep201 = getelementptr i8, ptr %.027.i, i64 %i.cc
  %next.gep202 = getelementptr i8, ptr %.027.i, i64 %i.cd
  %wide.vec203 = load <4 x i32>, ptr %next.gep201, align 4, !tbaa !338, !alias.scope !3804
  %wide.vec206 = load <4 x i32>, ptr %next.gep202, align 4, !tbaa !338, !alias.scope !3804
  store <4 x i32> %wide.vec203, ptr %next.gep199, align 4, !tbaa !338, !alias.scope !3805, !noalias !3804
  store <4 x i32> %wide.vec206, ptr %next.gep200, align 4, !tbaa !338, !alias.scope !3805, !noalias !3804
  %index.next211 = add nuw i64 %index198, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next211, %n.vec196
  br i1 %i.ce, label %middle.block212, label %vector.body197, !llvm.loop !3788

middle.block212:                                  ; preds = %vector.body197
  %cmp.n213 = icmp eq i64 %i.br, %n.vec196
  br i1 %cmp.n213, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i.preheader290

.lr.ph.i.i.i.preheader290:                        ; preds = %vector.memcheck184, %.lr.ph.i.i.i.preheader, %middle.block212
  %.010.i.i.i.ph = phi ptr [ %.01626.i, %vector.memcheck184 ], [ %.01626.i, %.lr.ph.i.i.i.preheader ], [ %i.ca, %middle.block212 ]
  %.079.i.i.i.ph = phi ptr [ %.027.i, %vector.memcheck184 ], [ %.027.i, %.lr.ph.i.i.i.preheader ], [ %i.cb, %middle.block212 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader290, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader290 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader290 ] ; 3 uses
  %i.cf = load i32, ptr %.079.i.i.i, align 4, !tbaa !338
  store i32 %i.cf, ptr %.010.i.i.i, align 4, !tbaa !347
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !338
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !348
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.cj, %i.bk
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3789

bb.g:                                             ; preds = %.lr.ph.i40
  %i.cl = load i32, ptr %.027.i, align 4, !tbaa !338 ; 2 uses
  %i.cm = load i32, ptr %.01725.i, align 4, !tbaa !338 ; 2 uses
  %.not20.i = icmp slt i32 %i.cl, %i.cm
  br i1 %.not20.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi i32 [ %i.cl, %bb.i ], [ %i.cm, %bb.h ]
  %.027.pn.i = phi ptr [ %.027.i, %bb.i ], [ %.01725.i, %bb.h ]
  %.118.i = phi ptr [ %.01725.i, %bb.i ], [ %i.cn, %bb.h ]
  %.1.i41 = phi ptr [ %i.co, %bb.i ], [ %.027.i, %bb.h ] ; 2 uses
  store i32 %.sink, ptr %.01626.i, align 4, !tbaa !347
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.027.pn.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !338
  %i.cp = getelementptr inbounds nuw i8, ptr %.01626.i, i64 4
  store i32 %.sink.i, ptr %i.cp, align 4, !tbaa !348
  %i.cq = getelementptr i8, ptr %.01626.i, i64 8
  %.not.i42 = icmp eq ptr %.1.i41, %i.bk
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !70

.lr.ph.i44:                                       ; preds = %bb.c
  %i.cr = ashr exact i64 %i.h, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i44
  %.018.i45 = phi i64 [ %i.cr, %.lr.ph.i44 ], [ %.1.i50, %bb.k ] ; 2 uses
  %.01317.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i49, %bb.k ] ; 2 uses
  %i.cs = lshr i64 %.018.i45, 1                   ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.01317.i46, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !338
  %.not15.i47 = icmp slt i32 %i.b, %i.cu          ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.neg.i48 = xor i64 %i.cs, -1
  %i.cw = add i64 %.018.i45, %.neg.i48
  %.114.i49 = select i1 %.not15.i47, ptr %.01317.i46, ptr %i.cv ; 8 uses
  %.1.i50 = select i1 %.not15.i47, i64 %i.cs, i64 %i.cw ; 2 uses
  %.not.i51 = icmp eq i64 %.1.i50, 0
  br i1 %.not.i51, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.k, !llvm.loop !66

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.k
  %i.cx = ptrtoint ptr %.114.i49 to i64
  %i.cy = sub i64 %i.cx, %i.d                     ; 3 uses
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !373 ; 3 uses
  %.not.i53 = icmp ugt i64 %i.cz, %i.db
  br i1 %.not.i53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i54 = icmp eq ptr %.114.i49, %1
  %.pre109 = load ptr, ptr %4, align 8, !tbaa !372 ; 10 uses
  br i1 %.not8.i.i54, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, label %.lr.ph.i.i56.preheader

.lr.ph.i.i56.preheader:                           ; preds = %bb.l
  %6 = ptrtoaddr ptr %.114.i49 to i64
  %i.dc = add i64 %6, -8
  %i.dd = sub i64 %i.dc, %i.d                     ; 3 uses
  %i.de = lshr i64 %i.dd, 3
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check226 = icmp ult i64 %i.dd, 104
  br i1 %min.iters.check226, label %.lr.ph.i.i56.preheader288, label %vector.memcheck227

vector.memcheck227:                               ; preds = %.lr.ph.i.i56.preheader
  %i.dg = and i64 %i.dd, -8
  %i.dh = add i64 %i.dg, 8                        ; 2 uses
  %i.di = getelementptr i8, ptr %.pre109, i64 %i.dh
  %i.dj = getelementptr i8, ptr %1, i64 %i.dh
  %bound0228 = icmp ult ptr %.pre109, %i.dj
  %bound1229 = icmp ult ptr %1, %i.di
  %found.conflict230 = and i1 %bound0228, %bound1229
  br i1 %found.conflict230, label %.lr.ph.i.i56.preheader288, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck227
  %n.vec232 = and i64 %i.df, 4611686018427387900  ; 3 uses
  %i.dk = shl i64 %n.vec232, 3                    ; 2 uses
  %i.dl = getelementptr i8, ptr %.pre109, i64 %i.dk
  %i.dm = getelementptr i8, ptr %1, i64 %i.dk
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next247, %vector.body233 ] ; 2 uses
  %i.dn = shl i64 %index234, 3                    ; 3 uses
  %i.do = or disjoint i64 %i.dn, 16               ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.pre109, i64 %i.dn
  %next.gep236 = getelementptr i8, ptr %.pre109, i64 %i.do
  %next.gep237 = getelementptr i8, ptr %1, i64 %i.dn
  %next.gep238 = getelementptr i8, ptr %1, i64 %i.do
  %wide.vec239 = load <4 x i32>, ptr %next.gep237, align 4, !tbaa !338, !alias.scope !3806
  %wide.vec242 = load <4 x i32>, ptr %next.gep238, align 4, !tbaa !338, !alias.scope !3806
  store <4 x i32> %wide.vec239, ptr %next.gep235, align 4, !tbaa !338, !alias.scope !3807, !noalias !3806
  store <4 x i32> %wide.vec242, ptr %next.gep236, align 4, !tbaa !338, !alias.scope !3807, !noalias !3806
  %index.next247 = add nuw i64 %index234, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next247, %n.vec232
  br i1 %i.dp, label %middle.block248, label %vector.body233, !llvm.loop !3793

middle.block248:                                  ; preds = %vector.body233
  %cmp.n249 = icmp eq i64 %i.df, %n.vec232
  br i1 %cmp.n249, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, label %.lr.ph.i.i56.preheader288

.lr.ph.i.i56.preheader288:                        ; preds = %vector.memcheck227, %.lr.ph.i.i56.preheader, %middle.block248
  %.010.i.i57.ph = phi ptr [ %.pre109, %vector.memcheck227 ], [ %.pre109, %.lr.ph.i.i56.preheader ], [ %i.dl, %middle.block248 ]
  %.079.i.i58.ph = phi ptr [ %1, %vector.memcheck227 ], [ %1, %.lr.ph.i.i56.preheader ], [ %i.dm, %middle.block248 ]
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader288, %.lr.ph.i.i56
  %.010.i.i57 = phi ptr [ %i.dv, %.lr.ph.i.i56 ], [ %.010.i.i57.ph, %.lr.ph.i.i56.preheader288 ] ; 3 uses
  %.079.i.i58 = phi ptr [ %i.du, %.lr.ph.i.i56 ], [ %.079.i.i58.ph, %.lr.ph.i.i56.preheader288 ] ; 3 uses
  %i.dq = load i32, ptr %.079.i.i58, align 4, !tbaa !338
  store i32 %i.dq, ptr %.010.i.i57, align 4, !tbaa !347
  %i.dr = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !338
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 4
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !348
  %i.du = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 8
  %.not.i.i59 = icmp eq ptr %i.du, %.114.i49
  br i1 %.not.i.i59, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, label %.lr.ph.i.i56, !llvm.loop !3794

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx26.i60 = shl i64 %i.db, 3                  ; 4 uses
  %i.dw = getelementptr i8, ptr %1, i64 %.idx26.i60 ; 3 uses
  %i.dx = load ptr, ptr %4, align 8, !tbaa !372   ; 9 uses
  %.not8.i17.i61 = icmp eq i64 %i.db, 0
  br i1 %.not8.i17.i61, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66, label %.lr.ph.i18.i62.preheader

.lr.ph.i18.i62.preheader:                         ; preds = %bb.m
  %i.dy = add i64 %.idx26.i60, -8                 ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 3
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check258 = icmp ult i64 %i.dy, 56
  br i1 %min.iters.check258, label %.lr.ph.i18.i62.preheader287, label %vector.memcheck259

vector.memcheck259:                               ; preds = %.lr.ph.i18.i62.preheader
  %i.eb = getelementptr i8, ptr %i.dx, i64 %.idx26.i60
  %bound0260 = icmp ult ptr %i.dx, %i.dw
  %bound1261 = icmp ult ptr %1, %i.eb
  %found.conflict262 = and i1 %bound0260, %bound1261
  br i1 %found.conflict262, label %.lr.ph.i18.i62.preheader287, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck259
  %n.vec264 = and i64 %i.ea, 4611686018427387900  ; 3 uses
  %i.ec = shl i64 %n.vec264, 3                    ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dx, i64 %i.ec  ; 2 uses
  %i.ee = getelementptr i8, ptr %1, i64 %i.ec
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next279, %vector.body265 ] ; 2 uses
  %i.ef = shl i64 %index266, 3                    ; 3 uses
  %i.eg = or disjoint i64 %i.ef, 16               ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.dx, i64 %i.ef
  %next.gep268 = getelementptr i8, ptr %i.dx, i64 %i.eg
  %next.gep269 = getelementptr i8, ptr %1, i64 %i.ef
  %next.gep270 = getelementptr i8, ptr %1, i64 %i.eg
  %wide.vec271 = load <4 x i32>, ptr %next.gep269, align 4, !tbaa !338, !alias.scope !3808
  %wide.vec274 = load <4 x i32>, ptr %next.gep270, align 4, !tbaa !338, !alias.scope !3808
  store <4 x i32> %wide.vec271, ptr %next.gep267, align 4, !tbaa !338, !alias.scope !3809, !noalias !3808
  store <4 x i32> %wide.vec274, ptr %next.gep268, align 4, !tbaa !338, !alias.scope !3809, !noalias !3808
  %index.next279 = add nuw i64 %index266, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next279, %n.vec264
  br i1 %i.eh, label %middle.block280, label %vector.body265, !llvm.loop !3798

middle.block280:                                  ; preds = %vector.body265
  %cmp.n281 = icmp eq i64 %i.ea, %n.vec264
  br i1 %cmp.n281, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66, label %.lr.ph.i18.i62.preheader287

.lr.ph.i18.i62.preheader287:                      ; preds = %vector.memcheck259, %.lr.ph.i18.i62.preheader, %middle.block280
  %.010.i19.i63.ph = phi ptr [ %i.dx, %vector.memcheck259 ], [ %i.dx, %.lr.ph.i18.i62.preheader ], [ %i.ed, %middle.block280 ]
  %.079.i20.i64.ph = phi ptr [ %1, %vector.memcheck259 ], [ %1, %.lr.ph.i18.i62.preheader ], [ %i.ee, %middle.block280 ]
  br label %.lr.ph.i18.i62

.lr.ph.i18.i62:                                   ; preds = %.lr.ph.i18.i62.preheader287, %.lr.ph.i18.i62
  %.010.i19.i63 = phi ptr [ %i.en, %.lr.ph.i18.i62 ], [ %.010.i19.i63.ph, %.lr.ph.i18.i62.preheader287 ] ; 3 uses
  %.079.i20.i64 = phi ptr [ %i.em, %.lr.ph.i18.i62 ], [ %.079.i20.i64.ph, %.lr.ph.i18.i62.preheader287 ] ; 3 uses
  %i.ei = load i32, ptr %.079.i20.i64, align 4, !tbaa !338
  store i32 %i.ei, ptr %.010.i19.i63, align 4, !tbaa !347
  %i.ej = getelementptr inbounds nuw i8, ptr %.079.i20.i64, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !338
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i19.i63, i64 4
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !348
  %i.em = getelementptr inbounds nuw i8, ptr %.079.i20.i64, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.010.i19.i63, i64 8 ; 2 uses
  %.not.i21.i65 = icmp eq ptr %i.em, %i.dw
  br i1 %.not.i21.i65, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66, label %.lr.ph.i18.i62, !llvm.loop !3799

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66: ; preds = %.lr.ph.i18.i62, %middle.block280, %bb.m
  %.0.lcssa.i22.i67 = phi ptr [ %i.dx, %bb.m ], [ %i.ed, %middle.block280 ], [ %i.en, %.lr.ph.i18.i62 ]
  %.not10.i.i68 = icmp eq i64 %.idx26.i60, %i.cy
  br i1 %.not10.i.i68, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, label %.lr.ph.i24.i69

.lr.ph.i24.i69:                                   ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66, %.lr.ph.i24.i69
  %.012.i.i70 = phi ptr [ %i.ep, %.lr.ph.i24.i69 ], [ %i.dw, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66 ] ; 2 uses
  %.0911.i.i71 = phi ptr [ %i.eq, %.lr.ph.i24.i69 ], [ %.0.lcssa.i22.i67, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66 ] ; 2 uses
  %i.eo = load i64, ptr %.012.i.i70, align 4
  store i64 %i.eo, ptr %.0911.i.i71, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i70, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i71, i64 8
  %.not.i25.i72 = icmp eq ptr %i.ep, %.114.i49
  br i1 %.not.i25.i72, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73.loopexit, label %.lr.ph.i24.i69, !llvm.loop !35

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73.loopexit: ; preds = %.lr.ph.i24.i69
  %.pre108 = load ptr, ptr %4, align 8, !tbaa !372
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73: ; preds = %.lr.ph.i.i56, %middle.block248, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73.loopexit, %bb.l, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66
  %i.er = phi ptr [ %i.dx, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i66 ], [ %.pre108, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73.loopexit ], [ %.pre109, %bb.l ], [ %.pre109, %middle.block248 ], [ %.pre109, %.lr.ph.i.i56 ] ; 3 uses
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !373
  %.not28.i = icmp eq ptr %.114.i49, %1
  br i1 %.not28.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.cy
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %bb.n
  %.031.i = phi ptr [ %.031..i, %bb.n ], [ %1, %.lr.ph.i74.preheader ] ; 4 uses
  %.01930.i = phi ptr [ %..01930.i, %bb.n ], [ %i.es, %.lr.ph.i74.preheader ] ; 4 uses
  %.02129.i = phi ptr [ %i.fe, %bb.n ], [ %.114.i49, %.lr.ph.i74.preheader ] ; 3 uses
  %i.et = icmp eq ptr %0, %.031.i
  br i1 %i.et, label %.lr.ph.i.i.i79, label %bb.n

.lr.ph.i.i.i79:                                   ; preds = %.lr.ph.i74, %.lr.ph.i.i.i79
  %.010.i.i.i80 = phi ptr [ %i.ev, %.lr.ph.i.i.i79 ], [ %.02129.i, %.lr.ph.i74 ] ; 2 uses
  %.079.i.i.i81 = phi ptr [ %i.eu, %.lr.ph.i.i.i79 ], [ %.01930.i, %.lr.ph.i74 ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.079.i.i.i81, i64 -8 ; 3 uses
  %i.ev = getelementptr inbounds i8, ptr %.010.i.i.i80, i64 -8 ; 2 uses
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !338
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !347
  %i.ex = getelementptr inbounds i8, ptr %.079.i.i.i81, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !338
  %i.ez = getelementptr inbounds i8, ptr %.010.i.i.i80, i64 -4
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !348
  %.not.i.i.i82 = icmp eq ptr %i.er, %i.eu
  br i1 %.not.i.i.i82, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i79, !llvm.loop !32

bb.n:                                             ; preds = %.lr.ph.i74
  %i.fa = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !338 ; 2 uses
  %i.fd = load i32, ptr %i.fa, align 4, !tbaa !338 ; 2 uses
  %.not24.i75 = icmp slt i32 %i.fc, %i.fd         ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 %i.fd)
  %.01930..031.i = select i1 %.not24.i75, ptr %.01930.i, ptr %.031.i
  %..01930.i = select i1 %.not24.i75, ptr %i.fa, ptr %.01930.i ; 2 uses
  %.031..i = select i1 %.not24.i75, ptr %.031.i, ptr %i.fb
  store i32 %..i, ptr %i.fe, align 4, !tbaa !347
  %.sink.in.i76 = getelementptr inbounds i8, ptr %.01930..031.i, i64 -4
  %.sink.i77 = load i32, ptr %.sink.in.i76, align 4, !tbaa !338
  %i.ff = getelementptr inbounds i8, ptr %.02129.i, i64 -4
  store i32 %.sink.i77, ptr %i.ff, align 4, !tbaa !348
  %.not.i78 = icmp eq ptr %i.er, %..01930.i
  br i1 %.not.i78, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i74, !llvm.loop !79

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.n, %.lr.ph.i.i.i79, %middle.block212, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit73, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, %bb.b, %bb.a
  ret void
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_:bb.a
  %.pre-phi96 = phi i64 [ %.pre95, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre91, %bb.l ]
  %.013.lcssa.i87 = phi ptr [ %.114.i84, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %0, %bb.l ]
  %i.ap = sub i64 %.pre-phi96, %.pre91
  %i.aq = ashr exact i64 %i.ap, 3
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.af, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.070 = phi i64 [ %i.r, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.aq, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.069 = phi i64 [ %i.ad, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.ae, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi ptr [ %i.s, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ], [ %.013.lcssa.i87, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %i.ar = sub i64 %3, %.070                       ; 2 uses
  %i.as = tail call noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairIiiES4_EET_S5_S5_S5_NS0_9iter_sizeIS5_E4typeES8_T0_S8_(ptr noundef %.0, ptr noundef %1, ptr noundef %.071, i64 noundef %i.ar, i64 noundef %.069, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !406, !nonnull !345
  store ptr %i.at, ptr %11, align 8, !tbaa !385
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %0, ptr noundef %.0, ptr noundef %i.as, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %11)
  %i.au = sub i64 %4, %.069
  %i.av = load ptr, ptr %7, align 8, !tbaa !406, !nonnull !345
  store ptr %i.av, ptr %12, align 8, !tbaa !385
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairIiiES4_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %i.as, ptr noundef %.071, ptr noundef %2, i64 noundef %i.ar, i64 noundef %i.au, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %12)
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.h, %bb.n, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = sub i64 %i.d, %i.a
  %i.f = icmp slt i64 %i.c, %i.e
  br i1 %i.f, label %.preheader74, label %.preheader75

.preheader75:                                     ; preds = %bb.a
  %.not80 = icmp eq ptr %1, %2
  br i1 %.not80, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader75
  %.not16.i54117 = icmp eq ptr %1, %0
  br i1 %.not16.i54117, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit.thread, label %.lr.ph.i55

.preheader74:                                     ; preds = %bb.a
  %.not5283 = icmp eq ptr %0, %1
  br i1 %.not5283, label %.critedge.thread, label %.lr.ph86

.lr.ph86.loopexit:                                ; preds = %bb.c
  br label %.lr.ph86, !llvm.loop !3810

.lr.ph86:                                         ; preds = %.preheader74, %.lr.ph86.loopexit
  %.04085 = phi ptr [ %i.r, %.lr.ph86.loopexit ], [ %0, %.preheader74 ] ; 2 uses
  %.04584 = phi ptr [ %.013.lcssa.i, %.lr.ph86.loopexit ], [ %1, %.preheader74 ] ; 5 uses
  %.not16.i = icmp eq ptr %2, %.04584
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph86
  %i.g = ptrtoint ptr %.04584 to i64
  %i.h = sub i64 %i.d, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = load i32, ptr %.04085, align 4, !tbaa !338
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01317.i = phi ptr [ %.04584, %.lr.ph.i ], [ %.114.i, %bb.b ] ; 2 uses
  %i.k = lshr i64 %.018.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !338
  %.not15.i = icmp slt i32 %i.j, %i.m             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.o = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.n ; 2 uses
  %.1.i = select i1 %.not15.i, i64 %i.k, i64 %i.o ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.b, !llvm.loop !66

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.b, %.lr.ph86
  %.013.lcssa.i = phi ptr [ %.04584, %.lr.ph86 ], [ %.114.i, %bb.b ] ; 5 uses
  %i.p = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_(ptr noundef nonnull %.04085, ptr noundef %.04584, ptr noundef %.013.lcssa.i)
  %i.q = icmp eq ptr %.013.lcssa.i, %2
  br i1 %i.q, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, %bb.c
  %.141 = phi ptr [ %i.r, %bb.c ], [ %i.p, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.141, i64 8 ; 4 uses
  %.not53 = icmp eq ptr %i.r, %.013.lcssa.i
  br i1 %.not53, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.s = load i32, ptr %i.r, align 4, !tbaa !338
  %i.t = load i32, ptr %.013.lcssa.i, align 4, !tbaa !338
  %.not73 = icmp slt i32 %i.s, %i.t
  br i1 %.not73, label %.preheader, label %.lr.ph86.loopexit, !llvm.loop !3810

.lr.ph.loopexit:                                  ; preds = %bb.g
  br label %.lr.ph.i55, !llvm.loop !3811

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit.thread: ; preds = %.lr.ph.preheader
  %i.u = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.critedge.thread

.lr.ph.i55:                                       ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %.14681119 = phi ptr [ %.114.i60, %.lr.ph.loopexit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04282118 = phi ptr [ %i.ai, %.lr.ph.loopexit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.04282118, i64 -8
  %i.w = ptrtoint ptr %.14681119 to i64
  %i.x = sub i64 %i.w, %i.b
  %i.y = ashr exact i64 %i.x, 3
  %i.z = load i32, ptr %i.v, align 4, !tbaa !338
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i55
  %.018.i56 = phi i64 [ %i.y, %.lr.ph.i55 ], [ %.1.i61, %bb.d ] ; 2 uses
  %.01317.i57 = phi ptr [ %0, %.lr.ph.i55 ], [ %.114.i60, %bb.d ] ; 2 uses
  %i.aa = lshr i64 %.018.i56, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.01317.i57, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !338
  %.not15.i58 = icmp slt i32 %i.ac, %i.z          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.neg.i59 = xor i64 %i.aa, -1
  %i.ae = add i64 %.018.i56, %.neg.i59
  %.114.i60 = select i1 %.not15.i58, ptr %i.ad, ptr %.01317.i57 ; 6 uses
  %.1.i61 = select i1 %.not15.i58, i64 %i.ae, i64 %i.aa ; 2 uses
  %.not.i62 = icmp eq i64 %.1.i61, 0
  br i1 %.not.i62, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !78

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %i.af = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_(ptr noundef %.114.i60, ptr noundef %.14681119, ptr noundef nonnull %.04282118)
  %i.ag = icmp eq ptr %.114.i60, %0
  br i1 %i.ag, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %i.ah = getelementptr inbounds i8, ptr %.114.i60, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.143 = phi ptr [ %i.af, %bb.e ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.143, i64 -8 ; 3 uses
  %.not51 = icmp eq ptr %.114.i60, %i.ai
  br i1 %.not51, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %.143, i64 -16
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !338
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !338
  %.not72 = icmp slt i32 %i.ak, %i.al
  br i1 %.not72, label %bb.f, label %.lr.ph.loopexit, !llvm.loop !3811

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, %bb.f, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, %.preheader, %.preheader75, %.preheader74, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEENS0_7move_opENS0_10range_xbufIS4_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !338  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !338    ; 2 uses
  %.not79 = icmp slt i32 %i.b, %i.c
  br i1 %.not79, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !338
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 12 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !78

_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %4, align 8, !tbaa !394    ; 10 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %5 = ptrtoaddr ptr %.114.i to i64               ; 3 uses
  %i.q = add i64 %i.d, -8
  %i.r = sub i64 %i.q, %5                         ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader214, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = and i64 %i.r, -8
  %i.v = add i64 %i.u, 8                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %.114.i, i64 %i.v
  %bound0 = icmp ult ptr %i.o, %i.x
  %bound1 = icmp ult ptr %.114.i, %i.w
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader214, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y     ; 3 uses
  %i.aa = getelementptr i8, ptr %.114.i, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 3 uses
  %i.ac = or disjoint i64 %i.ab, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ab
  %next.gep126 = getelementptr i8, ptr %i.o, i64 %i.ac
  %next.gep127 = getelementptr i8, ptr %.114.i, i64 %i.ab
  %next.gep128 = getelementptr i8, ptr %.114.i, i64 %i.ac
  %wide.vec = load <4 x i32>, ptr %next.gep127, align 4, !tbaa !338, !alias.scope !3828
  %wide.vec130 = load <4 x i32>, ptr %next.gep128, align 4, !tbaa !338, !alias.scope !3828
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !3829, !noalias !3828
  store <4 x i32> %wide.vec130, ptr %next.gep126, align 4, !tbaa !338, !alias.scope !3829, !noalias !3828
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !3815

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.z, i64 -8
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.i.preheader214

.lr.ph.i.i.i.preheader214:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader214, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader214 ] ; 4 uses
  %.079.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader214 ] ; 3 uses
  %i.ae = load i32, ptr %.079.i.i.i, align 4, !tbaa !338
  store i32 %i.ae, ptr %.010.i.i.i, align 4, !tbaa !347
  %i.af = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !338
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !348
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !3816

_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa121 = phi ptr [ %i.z, %middle.block ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa217 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa121, ptr %i.ak, align 8, !tbaa !395
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.027.i = phi ptr [ %i.o, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit ], [ %.1.i40, %bb.h ] ; 12 uses
  %.01626.i = phi ptr [ %.114.i, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit ], [ %i.cu, %bb.h ] ; 9 uses
  %.01725.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit ], [ %.118.i, %bb.h ] ; 5 uses
  %i.al = icmp eq ptr %.01725.i, %2
  br i1 %i.al, label %.lr.ph.i.i.i42.preheader, label %bb.e

.lr.ph.i.i.i42.preheader:                         ; preds = %.lr.ph.i39
  %.027.i136.le = ptrtoaddr ptr %.027.i to i64    ; 2 uses
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %5
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, %i.p
  %i.aq = sub i64 %i.ap, %.027.i136.le            ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.aq, 184
  br i1 %min.iters.check144, label %.lr.ph.i.i.i42.preheader207, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.i.i.i42.preheader
  %i.at = shl i64 %indvar, 3
  %i.au = getelementptr i8, ptr %.114.i, i64 %i.at
  %scevgep = getelementptr i8, ptr %i.au, i64 8
  %i.av = add i64 %i.d, -8
  %i.aw = sub i64 %i.av, %5
  %i.ax = and i64 %i.aw, -8
  %i.ay = add i64 %i.ax, %i.p
  %i.az = sub i64 %i.ay, %.027.i136.le
  %i.ba = and i64 %i.az, -8                       ; 2 uses
  %scevgep137 = getelementptr i8, ptr %scevgep, i64 %i.ba
  %scevgep138 = getelementptr i8, ptr %.027.i, i64 8
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %i.ba
  %bound0140 = icmp ult ptr %.01626.i, %scevgep139
  %bound1141 = icmp ult ptr %.027.i, %scevgep137
  %found.conflict142 = and i1 %bound0140, %bound1141
  br i1 %found.conflict142, label %.lr.ph.i.i.i42.preheader207, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck135
  %n.vec146 = and i64 %i.as, 4611686018427387900  ; 3 uses
  %i.bb = shl i64 %n.vec146, 3                    ; 2 uses
  %i.bc = getelementptr i8, ptr %.01626.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.027.i, i64 %i.bb
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next161, %vector.body147 ] ; 2 uses
  %i.be = shl i64 %index148, 3                    ; 3 uses
  %i.bf = or disjoint i64 %i.be, 16               ; 2 uses
  %next.gep149 = getelementptr i8, ptr %.01626.i, i64 %i.be
  %next.gep150 = getelementptr i8, ptr %.01626.i, i64 %i.bf
  %next.gep151 = getelementptr i8, ptr %.027.i, i64 %i.be
  %next.gep152 = getelementptr i8, ptr %.027.i, i64 %i.bf
  %wide.vec153 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !338, !alias.scope !3830
  %wide.vec156 = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !338, !alias.scope !3830
  store <4 x i32> %wide.vec153, ptr %next.gep149, align 4, !tbaa !338, !alias.scope !3831, !noalias !3830
  store <4 x i32> %wide.vec156, ptr %next.gep150, align 4, !tbaa !338, !alias.scope !3831, !noalias !3830
  %index.next161 = add nuw i64 %index148, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next161, %n.vec146
  br i1 %i.bg, label %middle.block162, label %vector.body147, !llvm.loop !3820

middle.block162:                                  ; preds = %vector.body147
  %cmp.n163 = icmp eq i64 %i.as, %n.vec146
  br i1 %cmp.n163, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i42.preheader207

.lr.ph.i.i.i42.preheader207:                      ; preds = %vector.memcheck135, %.lr.ph.i.i.i42.preheader, %middle.block162
  %.010.i.i.i43.ph = phi ptr [ %.01626.i, %vector.memcheck135 ], [ %.01626.i, %.lr.ph.i.i.i42.preheader ], [ %i.bc, %middle.block162 ] ; 2 uses
  %.079.i.i.i44.ph = phi ptr [ %.027.i, %vector.memcheck135 ], [ %.027.i, %.lr.ph.i.i.i42.preheader ], [ %i.bd, %middle.block162 ] ; 3 uses
  %.079.i.i.i44.ph218 = ptrtoaddr ptr %.079.i.i.i44.ph to i64
  %i.bh = sub i64 %.010.i.i.i.lcssa217, %.079.i.i.i44.ph218 ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol

.lr.ph.i.i.i42.prol:                              ; preds = %.lr.ph.i.i.i42.preheader207, %.lr.ph.i.i.i42.prol
  %.010.i.i.i43.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i42.prol ], [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader207 ] ; 3 uses
  %.079.i.i.i44.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i42.prol ], [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader207 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i42.preheader207 ]
  %i.bk = load i32, ptr %.079.i.i.i44.prol, align 4, !tbaa !338
  store i32 %i.bk, ptr %.010.i.i.i43.prol, align 4, !tbaa !347
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !338
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !348
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol, !llvm.loop !3821

.lr.ph.i.i.i42.prol.loopexit:                     ; preds = %.lr.ph.i.i.i42.prol, %.lr.ph.i.i.i42.preheader207
  %.010.i.i.i43.unr = phi ptr [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader207 ], [ %i.bp, %.lr.ph.i.i.i42.prol ]
  %.079.i.i.i44.unr = phi ptr [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader207 ], [ %i.bo, %.lr.ph.i.i.i42.prol ]
  %i.bq = icmp ult i64 %i.bh, 24
  br i1 %i.bq, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42
  %.010.i.i.i43 = phi ptr [ %i.co, %.lr.ph.i.i.i42 ], [ %.010.i.i.i43.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %.079.i.i.i44 = phi ptr [ %i.cn, %.lr.ph.i.i.i42 ], [ %.079.i.i.i44.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %i.br = load i32, ptr %.079.i.i.i44, align 4, !tbaa !338
  store i32 %i.br, ptr %.010.i.i.i43, align 4, !tbaa !347
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !338
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !348
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 8
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !338
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !347
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !338
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 12
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !348
  %i.cb = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 16
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !338
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !347
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 20
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !338
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 20
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !348
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 24
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !338
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !347
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !338
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 28
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !348
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 32
  %.not.i.i.i45.3 = icmp eq ptr %i.ch, %.010.i.i.i.lcssa
  br i1 %.not.i.i.i45.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i42, !llvm.loop !3822

bb.e:                                             ; preds = %.lr.ph.i39
  %i.cp = load i32, ptr %.027.i, align 4, !tbaa !338 ; 2 uses
  %i.cq = load i32, ptr %.01725.i, align 4, !tbaa !338 ; 2 uses
  %.not20.i = icmp slt i32 %i.cp, %i.cq
  br i1 %.not20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.cp, %bb.g ], [ %i.cq, %bb.f ]
  %.027.pn.i = phi ptr [ %.027.i, %bb.g ], [ %.01725.i, %bb.f ]
  %.118.i = phi ptr [ %.01725.i, %bb.g ], [ %i.cr, %bb.f ]
  %.1.i40 = phi ptr [ %i.cs, %bb.g ], [ %.027.i, %bb.f ] ; 2 uses
  store i32 %.sink, ptr %.01626.i, align 4, !tbaa !347
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.027.pn.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !338
  %i.ct = getelementptr inbounds nuw i8, ptr %.01626.i, i64 4
  store i32 %.sink.i, ptr %i.ct, align 4, !tbaa !348
  %i.cu = getelementptr i8, ptr %.01626.i, i64 8
  %.not.i41 = icmp eq ptr %.1.i40, %.lcssa121
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i39, !llvm.loop !70

.lr.ph.i47:                                       ; preds = %bb.c
  %i.cv = ashr exact i64 %i.h, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i47
  %.018.i48 = phi i64 [ %i.cv, %.lr.ph.i47 ], [ %.1.i53, %bb.i ] ; 2 uses
  %.01317.i49 = phi ptr [ %1, %.lr.ph.i47 ], [ %.114.i52, %bb.i ] ; 2 uses
  %i.cw = lshr i64 %.018.i48, 1                   ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.01317.i49, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !338
  %.not15.i50 = icmp slt i32 %i.b, %i.cy          ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.neg.i51 = xor i64 %i.cw, -1
  %i.da = add i64 %.018.i48, %.neg.i51
  %.114.i52 = select i1 %.not15.i50, ptr %.01317.i49, ptr %i.cz ; 5 uses
  %.1.i53 = select i1 %.not15.i50, i64 %i.cw, i64 %i.da ; 2 uses
  %.not.i54 = icmp eq i64 %.1.i53, 0
  br i1 %.not.i54, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %bb.i, !llvm.loop !66

_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i
  %i.db = load ptr, ptr %4, align 8, !tbaa !394   ; 10 uses
  %.not8.i.i.i56 = icmp eq ptr %.114.i52, %1
  br i1 %.not8.i.i.i56, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i57.preheader

.lr.ph.i.i.i57.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %6 = ptrtoaddr ptr %.114.i52 to i64
  %i.dc = add i64 %6, -8
  %i.dd = sub i64 %i.dc, %i.d                     ; 3 uses
  %i.de = lshr i64 %i.dd, 3
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.dd, 104
  br i1 %min.iters.check176, label %.lr.ph.i.i.i57.preheader205, label %vector.memcheck177

vector.memcheck177:                               ; preds = %.lr.ph.i.i.i57.preheader
  %i.dg = and i64 %i.dd, -8
  %i.dh = add i64 %i.dg, 8                        ; 2 uses
  %i.di = getelementptr i8, ptr %i.db, i64 %i.dh
  %i.dj = getelementptr i8, ptr %1, i64 %i.dh
  %bound0178 = icmp ult ptr %i.db, %i.dj
  %bound1179 = icmp ult ptr %1, %i.di
  %found.conflict180 = and i1 %bound0178, %bound1179
  br i1 %found.conflict180, label %.lr.ph.i.i.i57.preheader205, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck177
  %n.vec182 = and i64 %i.df, 4611686018427387900  ; 3 uses
  %i.dk = shl i64 %n.vec182, 3                    ; 2 uses
  %i.dl = getelementptr i8, ptr %i.db, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %1, i64 %i.dk
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next197, %vector.body183 ] ; 2 uses
  %i.dn = shl i64 %index184, 3                    ; 3 uses
  %i.do = or disjoint i64 %i.dn, 16               ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.db, i64 %i.dn
  %next.gep186 = getelementptr i8, ptr %i.db, i64 %i.do
  %next.gep187 = getelementptr i8, ptr %1, i64 %i.dn
  %next.gep188 = getelementptr i8, ptr %1, i64 %i.do
  %wide.vec189 = load <4 x i32>, ptr %next.gep187, align 4, !tbaa !338, !alias.scope !3832
  %wide.vec192 = load <4 x i32>, ptr %next.gep188, align 4, !tbaa !338, !alias.scope !3832
  store <4 x i32> %wide.vec189, ptr %next.gep185, align 4, !tbaa !338, !alias.scope !3833, !noalias !3832
  store <4 x i32> %wide.vec192, ptr %next.gep186, align 4, !tbaa !338, !alias.scope !3833, !noalias !3832
  %index.next197 = add nuw i64 %index184, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next197, %n.vec182
  br i1 %i.dp, label %middle.block198, label %vector.body183, !llvm.loop !3826

middle.block198:                                  ; preds = %vector.body183
  %cmp.n199 = icmp eq i64 %i.df, %n.vec182
  br i1 %cmp.n199, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit62, label %.lr.ph.i.i.i57.preheader205

.lr.ph.i.i.i57.preheader205:                      ; preds = %vector.memcheck177, %.lr.ph.i.i.i57.preheader, %middle.block198
  %.010.i.i.i58.ph = phi ptr [ %i.db, %vector.memcheck177 ], [ %i.db, %.lr.ph.i.i.i57.preheader ], [ %i.dl, %middle.block198 ]
  %.079.i.i.i59.ph = phi ptr [ %1, %vector.memcheck177 ], [ %1, %.lr.ph.i.i.i57.preheader ], [ %i.dm, %middle.block198 ]
  br label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %.lr.ph.i.i.i57.preheader205, %.lr.ph.i.i.i57
  %.010.i.i.i58 = phi ptr [ %i.dv, %.lr.ph.i.i.i57 ], [ %.010.i.i.i58.ph, %.lr.ph.i.i.i57.preheader205 ] ; 3 uses
  %.079.i.i.i59 = phi ptr [ %i.du, %.lr.ph.i.i.i57 ], [ %.079.i.i.i59.ph, %.lr.ph.i.i.i57.preheader205 ] ; 3 uses
  %i.dq = load i32, ptr %.079.i.i.i59, align 4, !tbaa !338
  store i32 %i.dq, ptr %.010.i.i.i58, align 4, !tbaa !347
  %i.dr = getelementptr inbounds nuw i8, ptr %.079.i.i.i59, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !338
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i.i58, i64 4
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !348
  %i.du = getelementptr inbounds nuw i8, ptr %.079.i.i.i59, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.010.i.i.i58, i64 8 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.du, %.114.i52
  br i1 %.not.i.i.i60, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit62, label %.lr.ph.i.i.i57, !llvm.loop !3827

_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit62: ; preds = %.lr.ph.i.i.i57, %middle.block198
  %.lcssa = phi ptr [ %i.dl, %middle.block198 ], [ %i.dv, %.lr.ph.i.i.i57 ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa, ptr %i.dw, align 8, !tbaa !395
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit62, %bb.j
  %.031.i = phi ptr [ %.031..i, %bb.j ], [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit62 ] ; 4 uses
  %.01930.i = phi ptr [ %..01930.i, %bb.j ], [ %.lcssa, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit62 ] ; 4 uses
  %.02129.i = phi ptr [ %i.ei, %bb.j ], [ %.114.i52, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignIS4_EEvT_m.exit62 ] ; 3 uses
  %i.dx = icmp eq ptr %0, %.031.i
  br i1 %i.dx, label %.lr.ph.i.i.i68, label %bb.j

.lr.ph.i.i.i68:                                   ; preds = %.lr.ph.i63, %.lr.ph.i.i.i68
  %.010.i.i.i69 = phi ptr [ %i.dz, %.lr.ph.i.i.i68 ], [ %.02129.i, %.lr.ph.i63 ] ; 2 uses
  %.079.i.i.i70 = phi ptr [ %i.dy, %.lr.ph.i.i.i68 ], [ %.01930.i, %.lr.ph.i63 ] ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.079.i.i.i70, i64 -8 ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %.010.i.i.i69, i64 -8 ; 2 uses
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !338
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !347
  %i.eb = getelementptr inbounds i8, ptr %.079.i.i.i70, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !338
  %i.ed = getelementptr inbounds i8, ptr %.010.i.i.i69, i64 -4
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !348
  %.not.i.i.i71 = icmp eq ptr %i.db, %i.dy
  br i1 %.not.i.i.i71, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i68, !llvm.loop !32

bb.j:                                             ; preds = %.lr.ph.i63
  %i.ee = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !338 ; 2 uses
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !338 ; 2 uses
  %.not24.i64 = icmp slt i32 %i.eg, %i.eh         ; 3 uses
  %i.ei = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 %i.eh)
  %.01930..031.i = select i1 %.not24.i64, ptr %.01930.i, ptr %.031.i
  %..01930.i = select i1 %.not24.i64, ptr %i.ee, ptr %.01930.i ; 2 uses
  %.031..i = select i1 %.not24.i64, ptr %.031.i, ptr %i.ef
  store i32 %..i, ptr %i.ei, align 4, !tbaa !347
  %.sink.in.i65 = getelementptr inbounds i8, ptr %.01930..031.i, i64 -4
  %.sink.i66 = load i32, ptr %.sink.in.i65, align 4, !tbaa !338
  %i.ej = getelementptr inbounds i8, ptr %.02129.i, i64 -4
  store i32 %.sink.i66, ptr %i.ej, align 4, !tbaa !348
  %.not.i67 = icmp eq ptr %i.db, %..01930.i
  br i1 %.not.i67, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i63, !llvm.loop !79

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit
  %.sink112 = phi ptr [ %i.o, %_ZN5boost7movelib11upper_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.db, %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit ]
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sink112, ptr %i.ek, align 8, !tbaa !395
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42, %bb.j, %.lr.ph.i.i.i68, %middle.block162, %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS4_9select1stIiEEEEEEPS9_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef align 8 dead_on_return %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond94 = and i1 %i.a, %i.b
  br i1 %or.cond94, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.067101 = phi ptr [ %.1, %bb.n ], [ %0, %bb.a ] ; 11 uses
  %.068100 = phi i64 [ %.169, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %.07099 = phi i64 [ %.171, %bb.n ], [ %3, %bb.a ] ; 6 uses
  %.07297 = phi ptr [ %.173, %bb.n ], [ %2, %bb.a ] ; 5 uses
  %.07495 = phi ptr [ %.175, %bb.n ], [ %1, %bb.a ] ; 12 uses
  %i.c = or i64 %.068100, %.07099
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr %.067101, align 4, !tbaa !338 ; 2 uses
  %i.f = load i32, ptr %.07495, align 4, !tbaa !338 ; 2 uses
  %.not = icmp slt i32 %i.e, %i.f
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %.067101, align 4, !tbaa !338
  store i32 %i.e, ptr %.07495, align 4, !tbaa !338
  %i.g = getelementptr inbounds nuw i8, ptr %.067101, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07495, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !338
  %i.j = load i32, ptr %i.h, align 4, !tbaa !338
  store i32 %i.j, ptr %i.g, align 4, !tbaa !338
  store i32 %i.i, ptr %i.h, align 4, !tbaa !338
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.k = add i64 %.068100, %.07099                ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %5, align 8, !tbaa !406, !nonnull !345
  store ptr %i.m, ptr %6, align 8, !tbaa !385
  call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairIiiENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEEvT_SF_SF_T0_(ptr noundef %.067101, ptr noundef %.07495, ptr noundef %.07297, ptr noundef nonnull align 8 dead_on_return %6)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ugt i64 %.07099, %.068100
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = lshr i64 %.07099, 1                      ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.067101, i64 %i.o ; 2 uses
  %.not16.i = icmp eq ptr %.07297, %.07495
  %.pre = ptrtoint ptr %.07495 to i64             ; 3 uses
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.q = ptrtoint ptr %.07297 to i64
  %i.r = sub i64 %i.q, %.pre
  %i.s = ashr exact i64 %i.r, 3
  %i.t = load i32, ptr %i.p, align 4, !tbaa !338
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.018.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.01317.i = phi ptr [ %.07495, %.lr.ph.i ], [ %.114.i, %bb.h ] ; 2 uses
  %i.u = lshr i64 %.018.i, 1                      ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !338
  %.not15.i = icmp slt i32 %i.t, %i.w             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.neg.i = xor i64 %i.u, -1
  %i.y = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.x ; 3 uses
  %.1.i = select i1 %.not15.i, i64 %i.u, i64 %i.y ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairIiiES3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS7_9select1stIiEEEEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.h, !llvm.loop !66

end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_bbT0_RT1_:bb.a
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.d, i64 %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.d, ptr %9, align 8, !tbaa !350
  store ptr %i.an, ptr %10, align 8, !tbaa !350
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEE4sortES7_S7_SE_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.d, ptr %15, align 8, !tbaa !350
  store ptr %i.e, ptr %16, align 8, !tbaa !350
  %i.ao = sub i64 0, %5
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ao
  store ptr %i.ap, ptr %17, align 8, !tbaa !350, !alias.scope !4612
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %5, i64 noundef %i.af, i64 noundef %i.al, i64 noundef %i.am, i64 noundef %i.ah, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.h:                                             ; preds = %bb.f
  store ptr %i.d, ptr %18, align 8, !tbaa !350
  store ptr %i.e, ptr %19, align 8, !tbaa !350
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, i64 noundef %5, i64 noundef %i.af, i64 noundef %i.al, i64 noundef %i.am, i64 noundef %i.ah)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

bb.i:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !373 ; 3 uses
  %i.as = icmp ugt i64 %i.ar, %5
  br i1 %i.as, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.i
  store i64 %5, ptr %i.aq, align 8, !tbaa !373
  %.pre101 = load ptr, ptr %8, align 8, !tbaa !372
  br label %bb.k

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit: ; preds = %bb.i
  %i.at = icmp ult i64 %i.ar, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !372   ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE13shrink_to_fitEm.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !350   ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ar
  %i.aw = load i64, ptr %i.au, align 4
  store i64 %i.aw, ptr %i.av, align 4
  %storemerge.in6.i43 = load i64, ptr %i.aq, align 8, !tbaa !373 ; 3 uses
  %storemerge7.i44 = add i64 %storemerge.in6.i43, 1 ; 3 uses
  store i64 %storemerge7.i44, ptr %i.aq, align 8, !tbaa !373
  %.not8.i45 = icmp eq i64 %storemerge7.i44, %5
  br i1 %.not8.i45, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.j, %.lr.ph.i46
  %storemerge10.i47 = phi i64 [ %storemerge.i50, %.lr.ph.i46 ], [ %storemerge7.i44, %bb.j ]
  %storemerge.in9.i48 = phi i64 [ %storemerge.in.i49, %.lr.ph.i46 ], [ %storemerge.in6.i43, %bb.j ]
  %i.ax = load ptr, ptr %8, align 8, !tbaa !372   ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %storemerge10.i47
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %storemerge.in9.i48
  %i.ba = load i64, ptr %i.az, align 4
  store i64 %i.ba, ptr %i.ay, align 4
  %storemerge.in.i49 = load i64, ptr %i.aq, align 8, !tbaa !373 ; 3 uses
  %storemerge.i50 = add i64 %storemerge.in.i49, 1 ; 3 uses
  store i64 %storemerge.i50, ptr %i.aq, align 8, !tbaa !373
  %.not.i51 = icmp eq i64 %storemerge.i50, %5
  br i1 %.not.i51, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54, label %.lr.ph.i46, !llvm.loop !33

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE16initialize_untilEmRS3_.exit54: ; preds = %.lr.ph.i46, %bb.j
  %storemerge.in.lcssa.i53 = phi i64 [ %storemerge.in6.i43, %bb.j ], [ %storemerge.in.i49, %.lr.ph.i46 ]
  %i.bb = load ptr, ptr %8, align 8, !tbaa !372   ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %storemerge.in.lcssa.i53 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !338
  store i32 %i.bd, ptr %i.au, align 4, !tbaa !347
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !348
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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !368
  store <2 x i64> %step.add, ptr %i.cb, align 8, !tbaa !368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !4609

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
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !368
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ce = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ce, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, label %.lr.ph.i.i, !llvm.loop !4610

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  %i.cf = load ptr, ptr %0, align 8, !tbaa !331
  store ptr %i.cf, ptr %20, align 8, !tbaa !350
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %i.bm, ptr noundef nonnull align 8 dead_on_return %20, i64 noundef %5, i64 noundef %i.bn, i64 noundef %i.bt, i64 noundef %i.bu, i64 noundef %i.bp, ptr noundef %i.bh)
  %i.cg = load i64, ptr %i.aq, align 8, !tbaa !373
  %.not.i55 = icmp eq i64 %i.cg, 0
  br i1 %.not.i55, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit
  store i64 0, ptr %i.aq, align 8, !tbaa !373
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairIiiEPS7_mEEEEvT_T0_T1_SC_SC_RT2_RSC_SF_SF_SF_b.exit, %bb.e, %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_13adaptive_xbufIS5_S6_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !350    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !350    ; 6 uses
  %.not59 = icmp eq ptr %i.a, %i.b
  br i1 %.not59, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !350    ; 2 uses
  %.not60 = icmp eq ptr %i.b, %i.c
  br i1 %.not60, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !338  ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !338  ; 2 uses
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338, !noalias !4651
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 25 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !88

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !350
  %i.x = load ptr, ptr %1, align 8, !tbaa !350    ; 9 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 4 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 3                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !373 ; 3 uses
  %.not.i7 = icmp ugt i64 %i.ab, %i.ad
  br i1 %.not.i7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.not3.i.i = icmp eq ptr %i.x, %i.v
  %.pre86 = load ptr, ptr %3, align 8, !tbaa !372 ; 10 uses
  br i1 %.not3.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %4 = ptrtoaddr ptr %i.v to i64
  %i.ae = add i64 %i.y, -8
  %i.af = sub i64 %i.ae, %4                       ; 3 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ai = and i64 %i.af, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %i.ak = getelementptr i8, ptr %.pre86, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.v, i64 %i.aj
  %bound0 = icmp ult ptr %.pre86, %i.al
  %bound1 = icmp ult ptr %i.v, %i.ak
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.v, i64 %i.am
  %i.ao = getelementptr i8, ptr %.pre86, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ap
  %next.gep140 = getelementptr i8, ptr %i.v, i64 %i.aq
  %next.gep141 = getelementptr i8, ptr %.pre86, i64 %i.ap
  %next.gep142 = getelementptr i8, ptr %.pre86, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !338, !alias.scope !4652
  %wide.vec144 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !338, !alias.scope !4652
  store <4 x i32> %wide.vec, ptr %next.gep141, align 4, !tbaa !338, !alias.scope !4653, !noalias !4652
  store <4 x i32> %wide.vec144, ptr %next.gep142, align 4, !tbaa !338, !alias.scope !4653, !noalias !4652
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !4618

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.preheader297

.lr.ph.i.i.preheader297:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph298 = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  %.04.i.i.ph = phi ptr [ %.pre86, %vector.memcheck ], [ %.pre86, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader297, %.lr.ph.i.i
  %i.as = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.ph298, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %.04.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.04.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !338
  store i32 %i.at, ptr %.04.i.i, align 4, !tbaa !347
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !348
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ax, %i.x
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !4619

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx28.i = shl i64 %i.ad, 3                    ; 4 uses
  %i.az = getelementptr i8, ptr %i.v, i64 %.idx28.i ; 3 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !372   ; 9 uses
  %.not3.i10.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i10.i, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i, label %.lr.ph.i11.i.preheader

.lr.ph.i11.i.preheader:                           ; preds = %bb.f
  %i.bb = add i64 %.idx28.i, -8                   ; 2 uses
  %i.bc = lshr exact i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.bb, 56
  br i1 %min.iters.check154, label %.lr.ph.i11.i.preheader294, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i11.i.preheader
  %i.be = getelementptr i8, ptr %i.ba, i64 %.idx28.i
  %bound0156 = icmp ult ptr %i.ba, %i.az
  %bound1157 = icmp ult ptr %i.v, %i.be
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %.lr.ph.i11.i.preheader294, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck155
  %n.vec160 = and i64 %i.bd, 4611686018427387900  ; 3 uses
  %i.bf = shl i64 %n.vec160, 3                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.v, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.ba, i64 %i.bf  ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next175, %vector.body161 ] ; 2 uses
  %i.bi = shl i64 %index162, 3                    ; 3 uses
  %i.bj = or disjoint i64 %i.bi, 16               ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.v, i64 %i.bi
  %next.gep164 = getelementptr i8, ptr %i.v, i64 %i.bj
  %next.gep165 = getelementptr i8, ptr %i.ba, i64 %i.bi
  %next.gep166 = getelementptr i8, ptr %i.ba, i64 %i.bj
  %wide.vec167 = load <4 x i32>, ptr %next.gep163, align 4, !tbaa !338, !alias.scope !4654
  %wide.vec170 = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !338, !alias.scope !4654
  store <4 x i32> %wide.vec167, ptr %next.gep165, align 4, !tbaa !338, !alias.scope !4655, !noalias !4654
  store <4 x i32> %wide.vec170, ptr %next.gep166, align 4, !tbaa !338, !alias.scope !4655, !noalias !4654
  %index.next175 = add nuw i64 %index162, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next175, %n.vec160
  br i1 %i.bk, label %middle.block176, label %vector.body161, !llvm.loop !4623

middle.block176:                                  ; preds = %vector.body161
  %cmp.n177 = icmp eq i64 %i.bd, %n.vec160
  br i1 %cmp.n177, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i, label %.lr.ph.i11.i.preheader294

.lr.ph.i11.i.preheader294:                        ; preds = %vector.memcheck155, %.lr.ph.i11.i.preheader, %middle.block176
  %.ph295 = phi ptr [ %i.v, %vector.memcheck155 ], [ %i.v, %.lr.ph.i11.i.preheader ], [ %i.bg, %middle.block176 ]
  %.04.i12.i.ph = phi ptr [ %i.ba, %vector.memcheck155 ], [ %i.ba, %.lr.ph.i11.i.preheader ], [ %i.bh, %middle.block176 ]
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i.preheader294, %.lr.ph.i11.i
  %i.bl = phi ptr [ %i.bq, %.lr.ph.i11.i ], [ %.ph295, %.lr.ph.i11.i.preheader294 ] ; 3 uses
  %.04.i12.i = phi ptr [ %i.br, %.lr.ph.i11.i ], [ %.04.i12.i.ph, %.lr.ph.i11.i.preheader294 ] ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !338
  store i32 %i.bm, ptr %.04.i12.i, align 4, !tbaa !347
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %.04.i12.i, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !348
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.04.i12.i, i64 8 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.bq, %i.az
  br i1 %.not.i13.i, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i, label %.lr.ph.i11.i, !llvm.loop !4624

_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i: ; preds = %.lr.ph.i11.i, %middle.block176, %bb.f
  %.0.lcssa.i14.i = phi ptr [ %i.ba, %bb.f ], [ %i.bh, %middle.block176 ], [ %i.br, %.lr.ph.i11.i ]
  %.not5.i.i = icmp eq i64 %.idx28.i, %i.aa
  br i1 %.not5.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i, %.lr.ph.i16.i
  %.sroa.020.0.i = phi ptr [ %i.bt, %.lr.ph.i16.i ], [ %i.az, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i ] ; 2 uses
  %.06.i.i = phi ptr [ %i.bu, %.lr.ph.i16.i ], [ %.0.lcssa.i14.i, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i ] ; 2 uses
  %i.bs = load i64, ptr %.sroa.020.0.i, align 4
  store i64 %i.bs, ptr %.06.i.i, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %.not.i17.i = icmp eq ptr %i.bt, %i.x
  br i1 %.not.i17.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit, label %.lr.ph.i16.i, !llvm.loop !4625

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit: ; preds = %.lr.ph.i16.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !372
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !331
  %.pre88 = load ptr, ptr %1, align 8, !tbaa !331
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit, %bb.e, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i
  %i.bv = phi ptr [ %i.x, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i ], [ %.pre88, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit ], [ %i.x, %bb.e ], [ %i.x, %middle.block ], [ %i.x, %.lr.ph.i.i ]
  %i.bw = phi ptr [ %i.v, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i ], [ %.pre87, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit ], [ %i.v, %bb.e ], [ %i.v, %middle.block ], [ %i.v, %.lr.ph.i.i ] ; 2 uses
  %i.bx = phi ptr [ %i.ba, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit.loopexit ], [ %.pre86, %bb.e ], [ %.pre86, %middle.block ], [ %.pre86, %.lr.ph.i.i ] ; 3 uses
  %i.by = ptrtoaddr ptr %i.bx to i64              ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !373
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.aa ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !331
  %.not14.i = icmp eq ptr %i.x, %i.v
  br i1 %.not14.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ] ; 2 uses
  %.sroa.051.0 = phi ptr [ %.sroa.051.1, %bb.j ], [ %i.bv, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ] ; 5 uses
  %.sroa.052.0 = phi ptr [ %i.di, %bb.j ], [ %i.bw, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ] ; 10 uses
  %.015.i = phi ptr [ %.1.i9, %bb.j ], [ %i.bx, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ] ; 12 uses
  %i.cb = icmp eq ptr %.sroa.051.0, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i8
  %.015.i181.le = ptrtoaddr ptr %.015.i to i64    ; 2 uses
  %i.cc = add i64 %i.by, %i.y
  %i.cd = add i64 %i.cc, -8
  %i.ce = add i64 %i.w, %.015.i181.le
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.cf, 168
  br i1 %min.iters.check189, label %.lr.ph.i.i.i.preheader286, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ci = shl i64 %indvar, 3
  %i.cj = getelementptr i8, ptr %i.bw, i64 %i.ci
  %scevgep = getelementptr i8, ptr %i.cj, i64 8
  %i.ck = add i64 %i.by, %i.y
  %i.cl = add i64 %i.ck, -8
  %i.cm = add i64 %i.w, %.015.i181.le
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = and i64 %i.cn, -8                       ; 2 uses
  %scevgep182 = getelementptr i8, ptr %scevgep, i64 %i.co
  %scevgep183 = getelementptr i8, ptr %.015.i, i64 8
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 %i.co
  %bound0185 = icmp ult ptr %.sroa.052.0, %scevgep184
  %bound1186 = icmp ult ptr %.015.i, %scevgep182
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %.lr.ph.i.i.i.preheader286, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck180
  %n.vec191 = and i64 %i.ch, 4611686018427387900  ; 3 uses
  %i.cp = shl i64 %n.vec191, 3                    ; 2 uses
  %i.cq = getelementptr i8, ptr %.sroa.052.0, i64 %i.cp
  %i.cr = getelementptr i8, ptr %.015.i, i64 %i.cp
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next206, %vector.body192 ] ; 2 uses
  %i.cs = shl i64 %index193, 3                    ; 3 uses
  %i.ct = or disjoint i64 %i.cs, 16               ; 2 uses
  %next.gep194 = getelementptr i8, ptr %.sroa.052.0, i64 %i.cs
  %next.gep195 = getelementptr i8, ptr %.sroa.052.0, i64 %i.ct
  %next.gep196 = getelementptr i8, ptr %.015.i, i64 %i.cs
  %next.gep197 = getelementptr i8, ptr %.015.i, i64 %i.ct
  %wide.vec198 = load <4 x i32>, ptr %next.gep196, align 4, !tbaa !338, !alias.scope !4656, !noalias !4657
  %wide.vec201 = load <4 x i32>, ptr %next.gep197, align 4, !tbaa !338, !alias.scope !4656, !noalias !4657
  store <4 x i32> %wide.vec198, ptr %next.gep194, align 4, !tbaa !338, !alias.scope !4658, !noalias !4657
  store <4 x i32> %wide.vec201, ptr %next.gep195, align 4, !tbaa !338, !alias.scope !4658, !noalias !4657
  %index.next206 = add nuw i64 %index193, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next206, %n.vec191
  br i1 %i.cu, label %middle.block207, label %vector.body192, !llvm.loop !4633

middle.block207:                                  ; preds = %vector.body192
  %cmp.n208 = icmp eq i64 %i.ch, %n.vec191
  br i1 %cmp.n208, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i.preheader286

.lr.ph.i.i.i.preheader286:                        ; preds = %vector.memcheck180, %.lr.ph.i.i.i.preheader, %middle.block207
  %.ph287 = phi ptr [ %.sroa.052.0, %vector.memcheck180 ], [ %.sroa.052.0, %.lr.ph.i.i.i.preheader ], [ %i.cq, %middle.block207 ]
  %.05.i.i.i.ph = phi ptr [ %.015.i, %vector.memcheck180 ], [ %.015.i, %.lr.ph.i.i.i.preheader ], [ %i.cr, %middle.block207 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader286, %.lr.ph.i.i.i
  %i.cv = phi ptr [ %i.db, %.lr.ph.i.i.i ], [ %.ph287, %.lr.ph.i.i.i.preheader286 ] ; 3 uses
  %.05.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i.preheader286 ] ; 3 uses
  %i.cw = load i32, ptr %.05.i.i.i, align 4, !tbaa !338, !noalias !4657
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !347, !noalias !4657
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !338, !noalias !4657
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !348, !noalias !4657
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.not.i.i.i = icmp eq ptr %i.da, %i.bz
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !4634

bb.g:                                             ; preds = %.lr.ph.i8
  %i.dc = load i32, ptr %.sroa.051.0, align 4, !tbaa !338 ; 2 uses
  %i.dd = load i32, ptr %.015.i, align 4, !tbaa !338 ; 2 uses
  %i.de = icmp slt i32 %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.052.0, i64 4
  br i1 %i.de, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.dc, ptr %.sroa.052.0, align 4, !tbaa !347
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.dd, ptr %.sroa.052.0, align 4, !tbaa !347
  %i.dh = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.051.0.pn = phi ptr [ %.sroa.051.0, %bb.h ], [ %.015.i, %bb.i ]
  %.sroa.051.1 = phi ptr [ %i.dg, %bb.h ], [ %.sroa.051.0, %bb.i ]
  %.1.i9 = phi ptr [ %.015.i, %bb.h ], [ %i.dh, %bb.i ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sroa.051.0.pn, i64 4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !338
  store i32 %.sink, ptr %i.df, align 4, !tbaa !348
  %i.di = getelementptr i8, ptr %.sroa.052.0, i64 8
  %.not.i10 = icmp eq ptr %.1.i9, %i.bz
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i10, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i8, !llvm.loop !89

.lr.ph.i12:                                       ; preds = %bb.d, %.lr.ph.i12
  %i.dj = phi ptr [ %i.dq, %.lr.ph.i12 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i13 = phi i64 [ %.1.i15, %.lr.ph.i12 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dk = lshr i64 %.010.i13, 1                   ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !338, !noalias !4659
  %i.dn = icmp slt i32 %i.dm, %i.f                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.neg.i14 = xor i64 %i.dk, -1
  %i.dp = add i64 %.010.i13, %.neg.i14
  %i.dq = select i1 %i.dn, ptr %i.do, ptr %i.dj   ; 8 uses
  %.1.i15 = select i1 %i.dn, i64 %i.dp, i64 %i.dk ; 2 uses
  %.not.i16 = icmp eq i64 %.1.i15, 0
  br i1 %.not.i16, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i12, !llvm.loop !87

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i12
  store ptr %i.dq, ptr %2, align 8, !tbaa !350
  %i.dr = load ptr, ptr %1, align 8, !tbaa !331   ; 21 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = ashr exact i64 %i.du, 3                 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !373 ; 3 uses
  %.not.i17 = icmp ugt i64 %i.dv, %i.dx
  br i1 %.not.i17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.not3.i.i18 = icmp eq ptr %i.dq, %i.dr
  %.pre91 = load ptr, ptr %3, align 8, !tbaa !372 ; 10 uses
  br i1 %.not3.i.i18, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35, label %.lr.ph.i.i20.preheader

.lr.ph.i.i20.preheader:                           ; preds = %bb.k
  %5 = ptrtoaddr ptr %i.dq to i64
  %i.dy = add i64 %5, -8
  %i.dz = sub i64 %i.dy, %i.dt                    ; 3 uses
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check220 = icmp ult i64 %i.dz, 104
  br i1 %min.iters.check220, label %.lr.ph.i.i20.preheader282, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph.i.i20.preheader
  %i.ec = and i64 %i.dz, -8
  %i.ed = add i64 %i.ec, 8                        ; 2 uses
  %i.ee = getelementptr i8, ptr %.pre91, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.dr, i64 %i.ed
  %bound0222 = icmp ult ptr %.pre91, %i.ef
  %bound1223 = icmp ult ptr %i.dr, %i.ee
  %found.conflict224 = and i1 %bound0222, %bound1223
  br i1 %found.conflict224, label %.lr.ph.i.i20.preheader282, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck221
  %n.vec226 = and i64 %i.eb, 4611686018427387900  ; 3 uses
  %i.eg = shl i64 %n.vec226, 3                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dr, i64 %i.eg
  %i.ei = getelementptr i8, ptr %.pre91, i64 %i.eg
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next241, %vector.body227 ] ; 2 uses
  %i.ej = shl i64 %index228, 3                    ; 3 uses
  %i.ek = or disjoint i64 %i.ej, 16               ; 2 uses
  %next.gep229 = getelementptr i8, ptr %i.dr, i64 %i.ej
  %next.gep230 = getelementptr i8, ptr %i.dr, i64 %i.ek
  %next.gep231 = getelementptr i8, ptr %.pre91, i64 %i.ej
  %next.gep232 = getelementptr i8, ptr %.pre91, i64 %i.ek
  %wide.vec233 = load <4 x i32>, ptr %next.gep229, align 4, !tbaa !338, !alias.scope !4660
  %wide.vec236 = load <4 x i32>, ptr %next.gep230, align 4, !tbaa !338, !alias.scope !4660
  store <4 x i32> %wide.vec233, ptr %next.gep231, align 4, !tbaa !338, !alias.scope !4661, !noalias !4660
  store <4 x i32> %wide.vec236, ptr %next.gep232, align 4, !tbaa !338, !alias.scope !4661, !noalias !4660
  %index.next241 = add nuw i64 %index228, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next241, %n.vec226
  br i1 %i.el, label %middle.block242, label %vector.body227, !llvm.loop !4640

middle.block242:                                  ; preds = %vector.body227
  %cmp.n243 = icmp eq i64 %i.eb, %n.vec226
  br i1 %cmp.n243, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35, label %.lr.ph.i.i20.preheader282

.lr.ph.i.i20.preheader282:                        ; preds = %vector.memcheck221, %.lr.ph.i.i20.preheader, %middle.block242
  %.ph283 = phi ptr [ %i.dr, %vector.memcheck221 ], [ %i.dr, %.lr.ph.i.i20.preheader ], [ %i.eh, %middle.block242 ]
  %.04.i.i21.ph = phi ptr [ %.pre91, %vector.memcheck221 ], [ %.pre91, %.lr.ph.i.i20.preheader ], [ %i.ei, %middle.block242 ]
  br label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i.i20.preheader282, %.lr.ph.i.i20
  %i.em = phi ptr [ %i.er, %.lr.ph.i.i20 ], [ %.ph283, %.lr.ph.i.i20.preheader282 ] ; 3 uses
  %.04.i.i21 = phi ptr [ %i.es, %.lr.ph.i.i20 ], [ %.04.i.i21.ph, %.lr.ph.i.i20.preheader282 ] ; 3 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !338
  store i32 %i.en, ptr %.04.i.i21, align 4, !tbaa !347
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !338
  %i.eq = getelementptr inbounds nuw i8, ptr %.04.i.i21, i64 4
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !348
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.04.i.i21, i64 8
  %.not.i.i22 = icmp eq ptr %i.er, %i.dq
  br i1 %.not.i.i22, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35, label %.lr.ph.i.i20, !llvm.loop !4641

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.idx28.i23 = shl i64 %i.dx, 3                  ; 4 uses
  %i.et = getelementptr i8, ptr %i.dr, i64 %.idx28.i23 ; 3 uses
  %i.eu = load ptr, ptr %3, align 8, !tbaa !372   ; 9 uses
  %.not3.i10.i24 = icmp eq i64 %i.dx, 0
  br i1 %.not3.i10.i24, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28, label %.lr.ph.i11.i25.preheader

.lr.ph.i11.i25.preheader:                         ; preds = %bb.l
  %i.ev = add i64 %.idx28.i23, -8                 ; 2 uses
  %i.ew = lshr exact i64 %i.ev, 3
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.ev, 56
  br i1 %min.iters.check252, label %.lr.ph.i11.i25.preheader281, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph.i11.i25.preheader
  %i.ey = getelementptr i8, ptr %i.eu, i64 %.idx28.i23
  %bound0254 = icmp ult ptr %i.eu, %i.et
  %bound1255 = icmp ult ptr %i.dr, %i.ey
  %found.conflict256 = and i1 %bound0254, %bound1255
  br i1 %found.conflict256, label %.lr.ph.i11.i25.preheader281, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck253
  %n.vec258 = and i64 %i.ex, 4611686018427387900  ; 3 uses
  %i.ez = shl i64 %n.vec258, 3                    ; 2 uses
  %i.fa = getelementptr i8, ptr %i.dr, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.eu, i64 %i.ez  ; 2 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next273, %vector.body259 ] ; 2 uses
  %i.fc = shl i64 %index260, 3                    ; 3 uses
  %i.fd = or disjoint i64 %i.fc, 16               ; 2 uses
  %next.gep261 = getelementptr i8, ptr %i.dr, i64 %i.fc
  %next.gep262 = getelementptr i8, ptr %i.dr, i64 %i.fd
  %next.gep263 = getelementptr i8, ptr %i.eu, i64 %i.fc
  %next.gep264 = getelementptr i8, ptr %i.eu, i64 %i.fd
  %wide.vec265 = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !338, !alias.scope !4662
  %wide.vec268 = load <4 x i32>, ptr %next.gep262, align 4, !tbaa !338, !alias.scope !4662
  store <4 x i32> %wide.vec265, ptr %next.gep263, align 4, !tbaa !338, !alias.scope !4663, !noalias !4662
  store <4 x i32> %wide.vec268, ptr %next.gep264, align 4, !tbaa !338, !alias.scope !4663, !noalias !4662
  %index.next273 = add nuw i64 %index260, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next273, %n.vec258
  br i1 %i.fe, label %middle.block274, label %vector.body259, !llvm.loop !4645

middle.block274:                                  ; preds = %vector.body259
  %cmp.n275 = icmp eq i64 %i.ex, %n.vec258
  br i1 %cmp.n275, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28, label %.lr.ph.i11.i25.preheader281

.lr.ph.i11.i25.preheader281:                      ; preds = %vector.memcheck253, %.lr.ph.i11.i25.preheader, %middle.block274
  %.ph = phi ptr [ %i.dr, %vector.memcheck253 ], [ %i.dr, %.lr.ph.i11.i25.preheader ], [ %i.fa, %middle.block274 ]
  %.04.i12.i26.ph = phi ptr [ %i.eu, %vector.memcheck253 ], [ %i.eu, %.lr.ph.i11.i25.preheader ], [ %i.fb, %middle.block274 ]
  br label %.lr.ph.i11.i25

.lr.ph.i11.i25:                                   ; preds = %.lr.ph.i11.i25.preheader281, %.lr.ph.i11.i25
  %i.ff = phi ptr [ %i.fk, %.lr.ph.i11.i25 ], [ %.ph, %.lr.ph.i11.i25.preheader281 ] ; 3 uses
  %.04.i12.i26 = phi ptr [ %i.fl, %.lr.ph.i11.i25 ], [ %.04.i12.i26.ph, %.lr.ph.i11.i25.preheader281 ] ; 3 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !338
  store i32 %i.fg, ptr %.04.i12.i26, align 4, !tbaa !347
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !338
  %i.fj = getelementptr inbounds nuw i8, ptr %.04.i12.i26, i64 4
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !348
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.04.i12.i26, i64 8 ; 2 uses
  %.not.i13.i27 = icmp eq ptr %i.fk, %i.et
  br i1 %.not.i13.i27, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28, label %.lr.ph.i11.i25, !llvm.loop !4646

_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28: ; preds = %.lr.ph.i11.i25, %middle.block274, %bb.l
  %.0.lcssa.i14.i29 = phi ptr [ %i.eu, %bb.l ], [ %i.fb, %middle.block274 ], [ %i.fl, %.lr.ph.i11.i25 ]
  %.not5.i.i30 = icmp eq i64 %.idx28.i23, %i.du
  br i1 %.not5.i.i30, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35, label %.lr.ph.i16.i31

.lr.ph.i16.i31:                                   ; preds = %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28, %.lr.ph.i16.i31
  %.sroa.020.0.i32 = phi ptr [ %i.fn, %.lr.ph.i16.i31 ], [ %i.et, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28 ] ; 2 uses
  %.06.i.i33 = phi ptr [ %i.fo, %.lr.ph.i16.i31 ], [ %.0.lcssa.i14.i29, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28 ] ; 2 uses
  %i.fm = load i64, ptr %.sroa.020.0.i32, align 4
  store i64 %i.fm, ptr %.06.i.i33, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i32, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.06.i.i33, i64 8
  %.not.i17.i34 = icmp eq ptr %i.fn, %i.dq
  br i1 %.not.i17.i34, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit, label %.lr.ph.i16.i31, !llvm.loop !4625

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit: ; preds = %.lr.ph.i16.i31
  %.pre89 = load ptr, ptr %1, align 8, !tbaa !331
  %.pre90 = load ptr, ptr %3, align 8, !tbaa !372
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35: ; preds = %.lr.ph.i.i20, %middle.block242, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit, %bb.k, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28
  %i.fp = phi ptr [ %i.eu, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28 ], [ %.pre90, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit ], [ %.pre91, %bb.k ], [ %.pre91, %middle.block242 ], [ %.pre91, %.lr.ph.i.i20 ] ; 3 uses
  %i.fq = phi ptr [ %i.dr, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit15.i28 ], [ %.pre89, %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35.loopexit ], [ %i.dr, %bb.k ], [ %i.dr, %middle.block242 ], [ %i.dr, %.lr.ph.i.i20 ]
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !373
  %i.fr = load ptr, ptr %0, align 8, !tbaa !331
  %.not15.i = icmp eq ptr %i.dq, %i.dr
  br i1 %.not15.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit35
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.du
  %i.ft = load ptr, ptr %2, align 8, !tbaa !331
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.preheader, %bb.m
  %.sroa.0.0 = phi ptr [ %i.gi, %bb.m ], [ %i.ft, %.lr.ph.i36.preheader ] ; 3 uses
  %i.fu = phi ptr [ %.124, %bb.m ], [ %i.fq, %.lr.ph.i36.preheader ] ; 4 uses
  %.016.i = phi ptr [ %.016.i., %bb.m ], [ %i.fs, %.lr.ph.i36.preheader ] ; 4 uses
  %i.fv = icmp eq ptr %i.fr, %i.fu
  br i1 %i.fv, label %.lr.ph.i.i.i39, label %bb.m

.lr.ph.i.i.i39:                                   ; preds = %.lr.ph.i36, %.lr.ph.i.i.i39
  %i.fw = phi ptr [ %i.fy, %.lr.ph.i.i.i39 ], [ %.sroa.0.0, %.lr.ph.i36 ] ; 2 uses
  %.05.i.i.i40 = phi ptr [ %i.fx, %.lr.ph.i.i.i39 ], [ %.016.i, %.lr.ph.i36 ] ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.05.i.i.i40, i64 -8 ; 3 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fw, i64 -8 ; 2 uses
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !338, !noalias !4664
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !347, !noalias !4664
  %i.ga = getelementptr inbounds i8, ptr %.05.i.i.i40, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !338, !noalias !4664
  %i.gc = getelementptr inbounds i8, ptr %i.fw, i64 -4
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !348, !noalias !4664
  %.not.i.i.i41 = icmp eq ptr %i.fp, %i.fx
  br i1 %.not.i.i.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i39, !llvm.loop !90

bb.m:                                             ; preds = %.lr.ph.i36
  %i.gd = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.fu, i64 -8 ; 2 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !338 ; 2 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !338 ; 2 uses
  %i.gh = icmp slt i32 %i.gf, %i.gg               ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 %i.gg)
  %..016.i = select i1 %i.gh, ptr %i.fu, ptr %.016.i
  %.124 = select i1 %i.gh, ptr %i.ge, ptr %i.fu
  %.016.i. = select i1 %i.gh, ptr %.016.i, ptr %i.gd ; 2 uses
  store i32 %., ptr %i.gi, align 4, !tbaa !347
  %.sink85.in = getelementptr inbounds i8, ptr %..016.i, i64 -4
  %.sink85 = load i32, ptr %.sink85.in, align 4, !tbaa !338
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  store i32 %.sink85, ptr %i.gj, align 4, !tbaa !348
  %.not.i38 = icmp eq ptr %i.fp, %.016.i.
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_:bb.a
  store ptr %i.bz, ptr %1, align 8, !tbaa !350
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit
  %.sroa.045.0 = phi ptr [ %i.by, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.ca = load ptr, ptr %4, align 8, !tbaa !331   ; 3 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !331   ; 4 uses
  %i.cc = load ptr, ptr %9, align 8, !tbaa !331, !noalias !345 ; 5 uses
  %i.cd = load ptr, ptr %10, align 8, !tbaa !331, !noalias !345 ; 5 uses
  %.not.i13 = icmp eq ptr %i.cd, %i.ca
  %.not17.i = icmp eq ptr %.sroa.045.0, %i.cc
  %or.cond50 = select i1 %.not.i13, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %or.cond50, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %5, align 8, !tbaa !331, !noalias !5174
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.k
  %.sroa.022.0 = phi ptr [ %i.cb, %bb.k ], [ %i.cj, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.ce, %bb.k ], [ %i.ci, %.split.i ] ; 5 uses
  %.sroa.013.0.ph.i = phi ptr [ %i.cd, %bb.k ], [ %i.ch, %.split.i ] ; 5 uses
  %.sroa.017.0.ph.i = phi ptr [ %i.cc, %bb.k ], [ %.sroa.017.0.i, %.split.i ]
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.outer.i
  %.sroa.022.1 = phi ptr [ %.sroa.022.0, %.outer.i ], [ %i.cs, %bb.m ] ; 8 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.cr, %bb.m ] ; 6 uses
  %i.cf = load i32, ptr %.sroa.017.0.i, align 4, !tbaa !338, !noalias !5174 ; 2 uses
  %i.cg = load i32, ptr %.sroa.010.0.ph.i, align 4, !tbaa !338, !noalias !5174 ; 2 uses
  %.not26.i = icmp slt i32 %i.cf, %i.cg
  br i1 %.not26.i, label %bb.m, label %.split.i

.split.i:                                         ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.013.0.ph.i, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 8 ; 2 uses
  %i.ck = load i64, ptr %.sroa.022.1, align 4, !noalias !5174
  store i32 %i.cg, ptr %.sroa.022.1, align 4, !tbaa !347, !noalias !5174
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.010.0.ph.i, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !338, !noalias !5174
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !348, !noalias !5174
  %i.co = load i32, ptr %.sroa.013.0.ph.i, align 4, !tbaa !338, !noalias !5174
  store i32 %i.co, ptr %.sroa.010.0.ph.i, align 4, !tbaa !347, !noalias !5174
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.ph.i, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !338, !noalias !5174
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !348, !noalias !5174
  store i64 %i.ck, ptr %.sroa.013.0.ph.i, align 4, !noalias !5174
  %.not28.i10 = icmp eq ptr %i.ch, %i.ca
  br i1 %.not28.i10, label %.loopexit.i11, label %.outer.i, !llvm.loop !5164

bb.m:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 8 ; 2 uses
  %i.ct = load i32, ptr %.sroa.022.1, align 4, !tbaa !338, !noalias !5174
  store i32 %i.cf, ptr %.sroa.022.1, align 4, !tbaa !338, !noalias !5174
  store i32 %i.ct, ptr %.sroa.017.0.i, align 4, !tbaa !338, !noalias !5174
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !338, !noalias !5174
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !338, !noalias !5174
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !338, !noalias !5174
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !338, !noalias !5174
  %.not27.i12 = icmp eq ptr %i.cr, %.sroa.045.0
  br i1 %.not27.i12, label %.loopexit.i11, label %bb.l, !llvm.loop !5164

.loopexit.i11:                                    ; preds = %.split.i, %bb.m
  %.sroa.022.2 = phi ptr [ %i.cs, %bb.m ], [ %i.cj, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.cr, %bb.m ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.m ], [ %i.ch, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.m ], [ %i.ci, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !350, !noalias !5174
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit

bb.n:                                             ; preds = %bb.i
  br i1 %or.cond50, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.n, %bb.o
  %.sroa.015.0.ph = phi ptr [ %i.da, %bb.o ], [ %i.cb, %bb.n ]
  %.sroa.07.0.i.ph = phi ptr [ %i.dd, %bb.o ], [ %i.cd, %bb.n ] ; 5 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.o ], [ %i.cc, %bb.n ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.sroa.015.0 = phi ptr [ %i.da, %bb.p ], [ %.sroa.015.0.ph, %.preheader.i.outer ] ; 5 uses
  %.sroa.012.0.i = phi ptr [ %i.di, %bb.p ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.cy = load i32, ptr %.sroa.012.0.i, align 4, !tbaa !338, !noalias !5175 ; 2 uses
  %i.cz = load i32, ptr %.sroa.07.0.i.ph, align 4, !tbaa !338, !noalias !5175 ; 2 uses
  %.not18.i = icmp slt i32 %i.cy, %i.cz
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 8 ; 4 uses
  %i.db = load i32, ptr %.sroa.015.0, align 4, !tbaa !338, !noalias !5175 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 4 ; 4 uses
  br i1 %.not18.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.ph, i64 8 ; 3 uses
  store i32 %i.cz, ptr %.sroa.015.0, align 4, !tbaa !338, !noalias !5175
  store i32 %i.db, ptr %.sroa.07.0.i.ph, align 4, !tbaa !338, !noalias !5175
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.ph, i64 4 ; 2 uses
  %i.df = load i32, ptr %i.dc, align 4, !tbaa !338, !noalias !5175
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !338, !noalias !5175
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !338, !noalias !5175
  store i32 %i.df, ptr %i.de, align 4, !tbaa !338, !noalias !5175
  %i.dh = icmp eq ptr %i.dd, %i.ca
  br i1 %i.dh, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !5167

bb.p:                                             ; preds = %.preheader.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8 ; 3 uses
  store i32 %i.cy, ptr %.sroa.015.0, align 4, !tbaa !338, !noalias !5175
  store i32 %i.db, ptr %.sroa.012.0.i, align 4, !tbaa !338, !noalias !5175
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dc, align 4, !tbaa !338, !noalias !5175
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !338, !noalias !5175
  store i32 %i.dl, ptr %i.dc, align 4, !tbaa !338, !noalias !5175
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !338, !noalias !5175
  %i.dm = icmp eq ptr %i.di, %.sroa.045.0
  br i1 %i.dm, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i, !llvm.loop !5167

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit: ; preds = %bb.p, %bb.o, %bb.n, %.loopexit.i11, %bb.j
  %i.dn = phi ptr [ %.sroa.013.123.i, %.loopexit.i11 ], [ %i.cd, %bb.j ], [ %i.cd, %bb.n ], [ %.sroa.07.0.i.ph, %bb.p ], [ %i.dd, %bb.o ]
  %i.do = phi ptr [ %.sroa.017.124.i, %.loopexit.i11 ], [ %i.cc, %bb.j ], [ %i.cc, %bb.n ], [ %i.di, %bb.p ], [ %.sroa.012.0.i, %bb.o ]
  %.sroa.029.0 = phi ptr [ %.sroa.022.2, %.loopexit.i11 ], [ %i.cb, %bb.j ], [ %i.cb, %bb.n ], [ %i.da, %bb.o ], [ %i.da, %bb.p ]
  store ptr %.sroa.029.0, ptr %1, align 8, !tbaa !350
  store ptr %i.do, ptr %6, align 8, !tbaa !350
  store ptr %.sroa.045.0, ptr %7, align 8, !tbaa !350
  store ptr %i.dn, ptr %3, align 8, !tbaa !350
  %i.dp = load ptr, ptr %1, align 8, !tbaa !331
  store ptr %i.dp, ptr %0, align 8, !tbaa !350
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !331    ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !350
  %i.b = load ptr, ptr %3, align 8, !tbaa !331    ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !350    ; 5 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !350
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !350
  %.not34 = icmp eq ptr %i.b, %i.e
  br i1 %.not34, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %5, align 8, !tbaa !331    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %1, align 8, !tbaa !350, !noalias !5198
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !350, !noalias !5199
  %i.k = load i64, ptr %i.a, align 4
  %i.l = load i32, ptr %i.c, align 4, !tbaa !338
  store i32 %i.l, ptr %i.a, align 4, !tbaa !347
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !338
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !348
  %i.p = load i32, ptr %i.f, align 4, !tbaa !338
  store i32 %i.p, ptr %i.c, align 4, !tbaa !347
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338
  store i32 %i.r, ptr %i.m, align 4, !tbaa !348
  %i.s = load i32, ptr %i.b, align 4, !tbaa !338
  store i32 %i.s, ptr %i.f, align 4, !tbaa !347
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !338
  store i32 %i.u, ptr %i.q, align 4, !tbaa !348
  store i64 %i.k, ptr %i.b, align 4
  %i.v = load ptr, ptr %1, align 8, !tbaa !350    ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !350    ; 2 uses
  %.not3546 = icmp eq ptr %i.v, %i.w
  br i1 %.not3546, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.x = load ptr, ptr %4, align 8, !tbaa !350
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %.lr.ph.i.i.preheader, label %.lr.ph81

.lr.ph:                                           ; preds = %bb.f
  %i.z = load ptr, ptr %4, align 8, !tbaa !350
  %i.aa = icmp eq ptr %.sroa.024.1, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.preheader, label %.lr.ph81, !llvm.loop !5180

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa76 = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.cg, %.lr.ph ] ; 2 uses
  %.lcssa74 = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.cf, %.lr.ph ] ; 7 uses
  %.sroa.029.049.lcssa = phi ptr [ %i.a, %.lr.ph.preheader ], [ %.sroa.029.1, %.lr.ph ] ; 7 uses
  %.sroa.024.048.lcssa = phi ptr [ %i.g, %.lr.ph.preheader ], [ %.sroa.024.1, %.lr.ph ]
  %.sroa.020.047.lcssa = phi ptr [ %i.h, %.lr.ph.preheader ], [ %.sroa.020.1, %.lr.ph ]
  %i.ab = ptrtoaddr ptr %.lcssa76 to i64
  %i.ac = ptrtoaddr ptr %.lcssa74 to i64
  %i.ad = add i64 %i.ab, -8
  %i.ae = sub i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader96, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = and i64 %i.ae, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %i.aj = getelementptr i8, ptr %.lcssa74, i64 %i.ai
  %i.ak = getelementptr i8, ptr %.sroa.029.049.lcssa, i64 %i.ai
  %bound0 = icmp ult ptr %.lcssa74, %i.ak
  %bound1 = icmp ult ptr %.sroa.029.049.lcssa, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader96, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387902     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.029.049.lcssa, i64 %i.al ; 2 uses
  %i.an = getelementptr i8, ptr %.lcssa74, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.049.lcssa, i64 %i.ao ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.lcssa74, i64 %i.ao ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep89, align 4, !tbaa !338, !alias.scope !5200, !noalias !5201
  %wide.vec91 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !338, !alias.scope !5202, !noalias !5201
  store <4 x i32> %wide.vec91, ptr %next.gep89, align 4, !tbaa !338, !alias.scope !5200, !noalias !5201
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !5202, !noalias !5201
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !5188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader96

.lr.ph.i.i.preheader96:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.029.049.lcssa, %vector.memcheck ], [ %.sroa.029.049.lcssa, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.ph = phi ptr [ %.lcssa74, %vector.memcheck ], [ %.lcssa74, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader96, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader96 ] ; 4 uses
  %i.aq = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader96 ] ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !338, !noalias !5201
  %i.as = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !338, !noalias !5201
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !338, !noalias !5201
  store i32 %i.ar, ptr %.sroa.0.0.i, align 4, !tbaa !338, !noalias !5201
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !338, !noalias !5201
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !338, !noalias !5201
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !338, !noalias !5201
  store i32 %i.av, ptr %i.au, align 4, !tbaa !338, !noalias !5201
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %.lcssa76
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !5189

_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi ptr [ %i.am, %middle.block ], [ %i.ay, %.lr.ph.i.i ]
  store ptr %.lcssa, ptr %0, align 8, !tbaa !350
  br label %.loopexit

.lr.ph81:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.020.04780 = phi ptr [ %.sroa.020.1, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 6 uses
  %.sroa.024.04879 = phi ptr [ %.sroa.024.1, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 5 uses
  %.sroa.029.04978 = phi ptr [ %.sroa.029.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 6 uses
  %i.az = phi ptr [ %i.cf, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 8 uses
  %i.ba = load i32, ptr %.sroa.020.04780, align 4, !tbaa !338
  %i.bb = load i32, ptr %.sroa.029.04978, align 4, !tbaa !338
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph81
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.024.04879, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.020.04780, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bf, ptr %1, align 8, !tbaa !350, !noalias !5203
  %i.bg = load ptr, ptr %0, align 8, !tbaa !350, !noalias !5204 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %0, align 8, !tbaa !350, !noalias !5204
  %i.bi = load i64, ptr %i.bg, align 4
  %i.bj = load i32, ptr %i.az, align 4, !tbaa !338
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !347
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !348
  %i.bn = load i32, ptr %.sroa.020.04780, align 4, !tbaa !338
  store i32 %i.bn, ptr %i.az, align 4, !tbaa !347
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.020.04780, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !338
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !348
  %i.bq = load i32, ptr %.sroa.024.04879, align 4, !tbaa !338
  store i32 %i.bq, ptr %.sroa.020.04780, align 4, !tbaa !347
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.024.04879, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !338
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !348
  store i64 %i.bi, ptr %.sroa.024.04879, align 4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph81
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.029.04978, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bu, ptr %1, align 8, !tbaa !350, !noalias !5205
  %i.bv = load ptr, ptr %0, align 8, !tbaa !350, !noalias !5206 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %0, align 8, !tbaa !350, !noalias !5206
  %i.bx = load i64, ptr %i.bv, align 4
  %i.by = load i32, ptr %i.az, align 4, !tbaa !338
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !347
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !338
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !348
  %i.cc = load i32, ptr %.sroa.029.04978, align 4, !tbaa !338
  store i32 %i.cc, ptr %i.az, align 4, !tbaa !347
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.029.04978, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !338
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !348
  store i64 %i.bx, ptr %.sroa.029.04978, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.020.1 = phi ptr [ %i.be, %bb.d ], [ %.sroa.020.04780, %bb.e ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %i.bd, %bb.d ], [ %.sroa.024.04879, %bb.e ] ; 4 uses
  %.sroa.029.1 = phi ptr [ %.sroa.029.04978, %bb.d ], [ %i.bt, %bb.e ] ; 3 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !350   ; 3 uses
  %i.cg = load ptr, ptr %2, align 8, !tbaa !350   ; 2 uses
  %.not35 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not35, label %.loopexit, label %.lr.ph, !llvm.loop !5180

.loopexit:                                        ; preds = %bb.f, %bb.c, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit
  %.sroa.020.045 = phi ptr [ %.sroa.020.047.lcssa, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.h, %bb.c ], [ %.sroa.020.1, %bb.f ]
  %.sroa.024.043 = phi ptr [ %.sroa.024.048.lcssa, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.g, %bb.c ], [ %.sroa.024.1, %bb.f ]
  %.sroa.029.041 = phi ptr [ %.sroa.029.049.lcssa, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.a, %bb.c ], [ %.sroa.029.1, %bb.f ]
  store ptr %.sroa.024.043, ptr %3, align 8, !tbaa !350
  store ptr %.sroa.029.041, ptr %6, align 8, !tbaa !350
  store ptr %.sroa.020.045, ptr %5, align 8, !tbaa !350
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !331    ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !350
  %i.b = load ptr, ptr %3, align 8, !tbaa !331    ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !350    ; 5 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !350
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !350
  %.not34 = icmp eq ptr %i.b, %i.e
  br i1 %.not34, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %5, align 8, !tbaa !331    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %1, align 8, !tbaa !350, !noalias !5229
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !350, !noalias !5230
  %i.k = load i64, ptr %i.a, align 4
  %i.l = load i32, ptr %i.c, align 4, !tbaa !338
  store i32 %i.l, ptr %i.a, align 4, !tbaa !347
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !338
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !348
  %i.p = load i32, ptr %i.f, align 4, !tbaa !338
  store i32 %i.p, ptr %i.c, align 4, !tbaa !347
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338
  store i32 %i.r, ptr %i.m, align 4, !tbaa !348
  %i.s = load i32, ptr %i.b, align 4, !tbaa !338
  store i32 %i.s, ptr %i.f, align 4, !tbaa !347
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !338
  store i32 %i.u, ptr %i.q, align 4, !tbaa !348
  store i64 %i.k, ptr %i.b, align 4
  %i.v = load ptr, ptr %1, align 8, !tbaa !350    ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !350    ; 2 uses
  %.not3547 = icmp eq ptr %i.v, %i.w
  br i1 %.not3547, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.x = load ptr, ptr %4, align 8, !tbaa !350
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %.lr.ph.i.i.preheader, label %.lr.ph82

.lr.ph:                                           ; preds = %bb.f
  %i.z = load ptr, ptr %4, align 8, !tbaa !350
  %i.aa = icmp eq ptr %.sroa.024.1, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.preheader, label %.lr.ph82, !llvm.loop !5211

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa77 = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.cf, %.lr.ph ] ; 2 uses
  %.lcssa75 = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.ce, %.lr.ph ] ; 7 uses
  %.sroa.029.050.lcssa = phi ptr [ %i.a, %.lr.ph.preheader ], [ %.sroa.029.1, %.lr.ph ] ; 7 uses
  %.sroa.024.049.lcssa = phi ptr [ %i.g, %.lr.ph.preheader ], [ %.sroa.024.1, %.lr.ph ]
  %.sroa.020.048.lcssa = phi ptr [ %i.h, %.lr.ph.preheader ], [ %.sroa.020.1, %.lr.ph ]
  %i.ab = ptrtoaddr ptr %.lcssa77 to i64
  %i.ac = ptrtoaddr ptr %.lcssa75 to i64
  %i.ad = add i64 %i.ab, -8
  %i.ae = sub i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = and i64 %i.ae, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %i.aj = getelementptr i8, ptr %.lcssa75, i64 %i.ai
  %i.ak = getelementptr i8, ptr %.sroa.029.050.lcssa, i64 %i.ai
  %bound0 = icmp ult ptr %.lcssa75, %i.ak
  %bound1 = icmp ult ptr %.sroa.029.050.lcssa, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387902     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.029.050.lcssa, i64 %i.al ; 2 uses
  %i.an = getelementptr i8, ptr %.lcssa75, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.050.lcssa, i64 %i.ao ; 2 uses
  %next.gep90 = getelementptr i8, ptr %.lcssa75, i64 %i.ao ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep90, align 4, !tbaa !338, !alias.scope !5231, !noalias !5232
  %wide.vec92 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !338, !alias.scope !5233, !noalias !5232
  store <4 x i32> %wide.vec92, ptr %next.gep90, align 4, !tbaa !338, !alias.scope !5231, !noalias !5232
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !5233, !noalias !5232
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !5219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader97

.lr.ph.i.i.preheader97:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.029.050.lcssa, %vector.memcheck ], [ %.sroa.029.050.lcssa, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.ph = phi ptr [ %.lcssa75, %vector.memcheck ], [ %.lcssa75, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader97, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader97 ] ; 4 uses
  %i.aq = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader97 ] ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !338, !noalias !5232
  %i.as = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !338, !noalias !5232
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !338, !noalias !5232
  store i32 %i.ar, ptr %.sroa.0.0.i, align 4, !tbaa !338, !noalias !5232
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !338, !noalias !5232
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !338, !noalias !5232
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !338, !noalias !5232
  store i32 %i.av, ptr %i.au, align 4, !tbaa !338, !noalias !5232
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %.lcssa77
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !5220

_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi ptr [ %i.am, %middle.block ], [ %i.ay, %.lr.ph.i.i ]
  store ptr %.lcssa, ptr %0, align 8, !tbaa !350
  br label %.loopexit

.lr.ph82:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.020.04881 = phi ptr [ %.sroa.020.1, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 6 uses
  %.sroa.024.04980 = phi ptr [ %.sroa.024.1, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 5 uses
  %.sroa.029.05079 = phi ptr [ %.sroa.029.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 6 uses
  %i.az = phi ptr [ %i.ce, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 8 uses
  %i.ba = load i32, ptr %.sroa.029.05079, align 4, !tbaa !338
  %i.bb = load i32, ptr %.sroa.020.04881, align 4, !tbaa !338
  %.not36 = icmp slt i32 %i.ba, %i.bb
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph82
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.024.04980, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.020.04881, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.be, ptr %1, align 8, !tbaa !350, !noalias !5234
  %i.bf = load ptr, ptr %0, align 8, !tbaa !350, !noalias !5235 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %0, align 8, !tbaa !350, !noalias !5235
  %i.bh = load i64, ptr %i.bf, align 4
  %i.bi = load i32, ptr %i.az, align 4, !tbaa !338
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !347
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !348
  %i.bm = load i32, ptr %.sroa.020.04881, align 4, !tbaa !338
  store i32 %i.bm, ptr %i.az, align 4, !tbaa !347
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.020.04881, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !338
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !348
  %i.bp = load i32, ptr %.sroa.024.04980, align 4, !tbaa !338
  store i32 %i.bp, ptr %.sroa.020.04881, align 4, !tbaa !347
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.024.04980, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !338
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !348
  store i64 %i.bh, ptr %.sroa.024.04980, align 4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph82
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.029.05079, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bt, ptr %1, align 8, !tbaa !350, !noalias !5236
  %i.bu = load ptr, ptr %0, align 8, !tbaa !350, !noalias !5237 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bv, ptr %0, align 8, !tbaa !350, !noalias !5237
  %i.bw = load i64, ptr %i.bu, align 4
  %i.bx = load i32, ptr %i.az, align 4, !tbaa !338
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !347
  %i.by = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !338
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !348
  %i.cb = load i32, ptr %.sroa.029.05079, align 4, !tbaa !338
  store i32 %i.cb, ptr %i.az, align 4, !tbaa !347
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.029.05079, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !338
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !348
  store i64 %i.bw, ptr %.sroa.029.05079, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.020.1 = phi ptr [ %i.bd, %bb.d ], [ %.sroa.020.04881, %bb.e ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %i.bc, %bb.d ], [ %.sroa.024.04980, %bb.e ] ; 4 uses
  %.sroa.029.1 = phi ptr [ %.sroa.029.05079, %bb.d ], [ %i.bs, %bb.e ] ; 3 uses
  %i.ce = load ptr, ptr %1, align 8, !tbaa !350   ; 3 uses
  %i.cf = load ptr, ptr %2, align 8, !tbaa !350   ; 2 uses
  %.not35 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not35, label %.loopexit, label %.lr.ph, !llvm.loop !5211

.loopexit:                                        ; preds = %bb.f, %bb.c, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit
  %.sroa.020.046 = phi ptr [ %.sroa.020.048.lcssa, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.h, %bb.c ], [ %.sroa.020.1, %bb.f ]
  %.sroa.024.044 = phi ptr [ %.sroa.024.049.lcssa, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.g, %bb.c ], [ %.sroa.024.1, %bb.f ]
  %.sroa.029.042 = phi ptr [ %.sroa.029.050.lcssa, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.a, %bb.c ], [ %.sroa.029.1, %bb.f ]
  store ptr %.sroa.024.044, ptr %3, align 8, !tbaa !350
  store ptr %.sroa.029.042, ptr %6, align 8, !tbaa !350
  store ptr %.sroa.020.046, ptr %5, align 8, !tbaa !350
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_SG_PbT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.a = load i8, ptr %4, align 1, !tbaa !388, !range !389, !noundef !345
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !tbaa !331    ; 6 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !331    ; 13 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !331    ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5249)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %i.f, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_SG_PbT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.h = load i32, ptr %i.d, align 4, !tbaa !338, !noalias !5249
  %i.i = load i32, ptr %i.g, align 4, !tbaa !338, !noalias !5249
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %.preheader8.i.preheader, label %.loopexit.i

.preheader8.i.preheader:                          ; preds = %bb.d
  %i.k = ptrtoint ptr %i.e to i64
  br label %.preheader8.i

.preheader8.i.loopexit:                           ; preds = %bb.f
  br label %.preheader8.i, !llvm.loop !5240

.preheader8.i:                                    ; preds = %.preheader8.i.preheader, %.preheader8.i.loopexit
  %.sroa.026.0 = phi ptr [ %i.ac, %.preheader8.i.loopexit ], [ %i.c, %.preheader8.i.preheader ] ; 2 uses
  %i.l = phi ptr [ %i.y, %.preheader8.i.loopexit ], [ %i.d, %.preheader8.i.preheader ] ; 5 uses
  %.not9.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not9.i.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader8.i
end_hunk_12
begin_hunk_13_@_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_:bb.a
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
  store ptr %5, ptr %10, align 8, !tbaa !394
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !395
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !396
  %i.f = load ptr, ptr %0, align 8, !tbaa !331
  %i.g = load ptr, ptr %1, align 8, !tbaa !331
  %i.h = load ptr, ptr %2, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !350
  store ptr %i.g, ptr %8, align 8, !tbaa !350
  store ptr %i.h, ptr %9, align 8, !tbaa !350
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !331    ; 9 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !350    ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !338  ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !338  ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 4, !tbaa !338
  store i32 %i.n, ptr %i.l, align 4, !tbaa !338
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !338
  %i.s = load i32, ptr %i.q, align 4, !tbaa !338
  store i32 %i.s, ptr %i.p, align 4, !tbaa !338
  store i32 %i.r, ptr %i.q, align 4, !tbaa !338
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %i.i, 16
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !350
  %i.u = load ptr, ptr %1, align 8, !tbaa !331
  store ptr %i.u, ptr %12, align 8, !tbaa !350
  %i.v = load ptr, ptr %2, align 8, !tbaa !331
  store ptr %i.v, ptr %13, align 8, !tbaa !350
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !331    ; 8 uses
  %i.x = icmp ugt i64 %3, %4
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = lshr i64 %3, 1                           ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !331   ; 2 uses
  %.not9.i = icmp eq ptr %i.aa, %i.w
  %.pre = ptrtoint ptr %i.w to i64                ; 3 uses
  br i1 %.not9.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %.pre
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !338, !noalias !5294
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %i.af = phi ptr [ %i.w, %.lr.ph.i ], [ %i.am, %bb.k ] ; 2 uses
  %.010.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %i.ag = lshr i64 %.010.i, 1                     ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !338, !noalias !5294
  %i.aj = icmp slt i32 %i.ai, %i.ae               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.neg.i = xor i64 %i.ag, -1
  %i.al = add i64 %.010.i, %.neg.i
  %i.am = select i1 %i.aj, ptr %i.ak, ptr %i.af   ; 3 uses
  %.1.i = select i1 %i.aj, i64 %i.al, i64 %i.ag   ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.k, !llvm.loop !87

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
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !338, !noalias !5295
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i44
  %i.aw = phi ptr [ %i.k, %.lr.ph.i44 ], [ %i.bd, %bb.m ] ; 2 uses
  %.010.i45 = phi i64 [ %i.au, %.lr.ph.i44 ], [ %.1.i47, %bb.m ] ; 2 uses
  %i.ax = lshr i64 %.010.i45, 1                   ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !338, !noalias !5295
  %i.ba = icmp slt i32 %i.av, %i.az               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.neg.i46 = xor i64 %i.ax, -1
  %i.bc = add i64 %.010.i45, %.neg.i46
  %i.bd = select i1 %i.ba, ptr %i.aw, ptr %i.bb   ; 3 uses
  %.1.i47 = select i1 %i.ba, i64 %i.ax, i64 %i.bc ; 2 uses
  %.not.i48 = icmp eq i64 %.1.i47, 0
  br i1 %.not.i48, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.m, !llvm.loop !88

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.m
  %.pre73 = ptrtoint ptr %i.bd to i64
  br label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.l, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi74 = phi i64 [ %.pre73, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre69, %bb.l ]
  %i.be = phi ptr [ %i.bd, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %i.k, %bb.l ]
  %i.bf = sub i64 %.pre-phi74, %.pre69
  %i.bg = ashr exact i64 %i.bf, 3
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.sroa.054.0 = phi ptr [ %i.an, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.ar, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.sroa.059.0 = phi ptr [ %i.z, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.be, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.036 = phi i64 [ %i.y, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.bg, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.ap, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.aq, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %.sroa.059.0, ptr %15, align 8, !tbaa !350
  store ptr %i.w, ptr %16, align 8, !tbaa !350
  store ptr %.sroa.054.0, ptr %17, align 8, !tbaa !350
  %i.bh = sub i64 %3, %.036                       ; 2 uses
  call void @_ZN5boost7movelib15rotate_adaptiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dead_on_return %17, i64 noundef %i.bh, i64 noundef %.0, ptr noundef %5, i64 noundef %6)
  %i.bi = load ptr, ptr %0, align 8, !tbaa !331
  store ptr %i.bi, ptr %18, align 8, !tbaa !350
  store ptr %.sroa.059.0, ptr %19, align 8, !tbaa !350
  %i.bj = load ptr, ptr %14, align 8, !tbaa !331
  store ptr %i.bj, ptr %20, align 8, !tbaa !350
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dead_on_return %20, i64 noundef %.036, i64 noundef %.0, ptr noundef %5, i64 noundef %6)
  %i.bk = load ptr, ptr %14, align 8, !tbaa !331
  store ptr %i.bk, ptr %21, align 8, !tbaa !350
  store ptr %.sroa.054.0, ptr %22, align 8, !tbaa !350
  %i.bl = load ptr, ptr %2, align 8, !tbaa !331
  store ptr %i.bl, ptr %23, align 8, !tbaa !350
  %i.bm = sub i64 %4, %.0
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, i64 noundef %i.bh, i64 noundef %i.bm, ptr noundef %5, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.h, %bb.n, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15rotate_adaptiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %i.a = icmp ule i64 %4, %5
  %.not = icmp ugt i64 %5, %7
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16 = icmp eq i64 %5, 0
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %2, align 8, !tbaa !331    ; 11 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !331    ; 4 uses
  %.not3.i = icmp eq ptr %i.b, %i.c
  br i1 %.not3.i, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = ptrtoaddr ptr %i.b to i64
  %i.f = add i64 %i.d, -8
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = lshr i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 120
  br i1 %min.iters.check, label %.lr.ph.i.preheader227, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = and i64 %i.g, -8
  %i.k = add i64 %i.j, 8                          ; 2 uses
  %i.l = getelementptr i8, ptr %6, i64 %i.k
  %i.m = getelementptr i8, ptr %i.b, i64 %i.k
  %bound0 = icmp ult ptr %6, %i.m
  %bound1 = icmp ult ptr %i.b, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader227, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4611686018427387900      ; 3 uses
  %i.n = shl i64 %n.vec, 3                        ; 2 uses
  %i.o = getelementptr i8, ptr %i.b, i64 %i.n
  %i.p = getelementptr i8, ptr %6, i64 %i.n       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 3                        ; 3 uses
  %i.r = or disjoint i64 %i.q, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.q
  %next.gep79 = getelementptr i8, ptr %i.b, i64 %i.r
  %next.gep80 = getelementptr i8, ptr %6, i64 %i.q
  %next.gep81 = getelementptr i8, ptr %6, i64 %i.r
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !338, !alias.scope !5329
  %wide.vec83 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !338, !alias.scope !5329
  store <4 x i32> %wide.vec, ptr %next.gep80, align 4, !tbaa !338, !alias.scope !5330, !noalias !5329
  store <4 x i32> %wide.vec83, ptr %next.gep81, align 4, !tbaa !338, !alias.scope !5330, !noalias !5329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !5299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.preheader227

.lr.ph.i.preheader227:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph228 = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.o, %middle.block ]
  %.04.i.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader227, %.lr.ph.i
  %i.t = phi ptr [ %i.y, %.lr.ph.i ], [ %.ph228, %.lr.ph.i.preheader227 ] ; 3 uses
  %.04.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.04.i.ph, %.lr.ph.i.preheader227 ] ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !338
  store i32 %i.u, ptr %.04.i, align 4, !tbaa !347
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !338
  %i.x = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !348
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.04.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.c
  br i1 %.not.i, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !5300

_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.c
  %.0.lcssa.i = phi ptr [ %6, %bb.c ], [ %i.p, %middle.block ], [ %i.z, %.lr.ph.i ] ; 3 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !331   ; 10 uses
  %.not1.i = icmp eq ptr %i.aa, %i.b
  br i1 %.not1.i, label %_ZN5boost13move_backwardINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, %.lr.ph.i17
  %.sroa.048.0 = phi ptr [ %i.ad, %.lr.ph.i17 ], [ %i.c, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit ] ; 2 uses
  %i.ab = phi ptr [ %i.ac, %.lr.ph.i17 ], [ %i.b, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !338, !noalias !5331
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !347, !noalias !5331
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !338, !noalias !5331
  %i.ah = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !348, !noalias !5331
  %.not.i18 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i18, label %_ZN5boost13move_backwardINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i17, !llvm.loop !86

_ZN5boost13move_backwardINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i17, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5332)
  %.not4.i = icmp eq ptr %6, %.0.lcssa.i
  br i1 %.not4.i, label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %_ZN5boost13move_backwardINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit
  %11 = ptrtoaddr ptr %.0.lcssa.i to i64
  %12 = ptrtoaddr ptr %6 to i64
  %i.ai = add i64 %11, -8
  %i.aj = sub i64 %i.ai, %12                      ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check95 = icmp ult i64 %i.aj, 120
  br i1 %min.iters.check95, label %.lr.ph.i20.preheader224, label %vector.memcheck96

vector.memcheck96:                                ; preds = %.lr.ph.i20.preheader
  %i.am = and i64 %i.aj, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aa, i64 %i.an
  %i.ap = getelementptr i8, ptr %6, i64 %i.an
  %bound097 = icmp ult ptr %i.aa, %i.ap
  %bound198 = icmp ult ptr %6, %i.ao
  %found.conflict99 = and i1 %bound097, %bound198
  br i1 %found.conflict99, label %.lr.ph.i20.preheader224, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck96
  %n.vec101 = and i64 %i.al, 4611686018427387900  ; 3 uses
  %i.aq = shl i64 %n.vec101, 3                    ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aa, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %6, i64 %i.aq
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next116, %vector.body102 ] ; 2 uses
  %i.at = shl i64 %index103, 3                    ; 3 uses
  %i.au = or disjoint i64 %i.at, 16               ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.aa, i64 %i.at
  %next.gep105 = getelementptr i8, ptr %i.aa, i64 %i.au
  %next.gep106 = getelementptr i8, ptr %6, i64 %i.at
  %next.gep107 = getelementptr i8, ptr %6, i64 %i.au
  %wide.vec108 = load <4 x i32>, ptr %next.gep106, align 4, !tbaa !338, !alias.scope !5333, !noalias !5332
  %wide.vec111 = load <4 x i32>, ptr %next.gep107, align 4, !tbaa !338, !alias.scope !5333, !noalias !5332
  store <4 x i32> %wide.vec108, ptr %next.gep104, align 4, !tbaa !338, !alias.scope !5334, !noalias !5332
  store <4 x i32> %wide.vec111, ptr %next.gep105, align 4, !tbaa !338, !alias.scope !5334, !noalias !5332
  %index.next116 = add nuw i64 %index103, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next116, %n.vec101
  br i1 %i.av, label %middle.block117, label %vector.body102, !llvm.loop !5308

middle.block117:                                  ; preds = %vector.body102
  %cmp.n118 = icmp eq i64 %i.al, %n.vec101
  br i1 %cmp.n118, label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit, label %.lr.ph.i20.preheader224

.lr.ph.i20.preheader224:                          ; preds = %vector.memcheck96, %.lr.ph.i20.preheader, %middle.block117
  %.ph225 = phi ptr [ %i.aa, %vector.memcheck96 ], [ %i.aa, %.lr.ph.i20.preheader ], [ %i.ar, %middle.block117 ]
  %.05.i.ph = phi ptr [ %6, %vector.memcheck96 ], [ %6, %.lr.ph.i20.preheader ], [ %i.as, %middle.block117 ]
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader224, %.lr.ph.i20
  %i.aw = phi ptr [ %i.bc, %.lr.ph.i20 ], [ %.ph225, %.lr.ph.i20.preheader224 ] ; 3 uses
  %.05.i = phi ptr [ %i.bb, %.lr.ph.i20 ], [ %.05.i.ph, %.lr.ph.i20.preheader224 ] ; 3 uses
  %i.ax = load i32, ptr %.05.i, align 4, !tbaa !338, !noalias !5332
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !347, !noalias !5332
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !338, !noalias !5332
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !348, !noalias !5332
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %.not.i21 = icmp eq ptr %i.bb, %.0.lcssa.i
  br i1 %.not.i21, label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit, label %.lr.ph.i20, !llvm.loop !5309

_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit: ; preds = %.lr.ph.i20, %middle.block117, %_ZN5boost13move_backwardINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit
  %i.bd = phi ptr [ %i.aa, %_ZN5boost13move_backwardINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit ], [ %i.ar, %middle.block117 ], [ %i.bc, %.lr.ph.i20 ]
  store ptr %i.bd, ptr %0, align 8, !tbaa !350, !alias.scope !5332
  br label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36

bb.d:                                             ; preds = %bb.b
  %i.be = load ptr, ptr %1, align 8, !tbaa !331
  store ptr %i.be, ptr %0, align 8, !tbaa !350
  br label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36

bb.e:                                             ; preds = %bb.a
  %.not14 = icmp ugt i64 %4, %7
  br i1 %.not14, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not15 = icmp eq i64 %4, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %1, align 8, !tbaa !331   ; 17 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !331   ; 12 uses
  %.not3.i22 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not3.i22, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit27, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %bb.g
  %13 = ptrtoaddr ptr %i.bg to i64
  %i.bh = ptrtoaddr ptr %i.bf to i64
  %i.bi = add i64 %13, -8
  %i.bj = sub i64 %i.bi, %i.bh                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.bj, 120
  br i1 %min.iters.check127, label %.lr.ph.i23.preheader221, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.lr.ph.i23.preheader
  %i.bm = and i64 %i.bj, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %i.bo = getelementptr i8, ptr %6, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bn
  %bound0129 = icmp ult ptr %6, %i.bp
  %bound1130 = icmp ult ptr %i.bf, %i.bo
  %found.conflict131 = and i1 %bound0129, %bound1130
  br i1 %found.conflict131, label %.lr.ph.i23.preheader221, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck128
  %n.vec133 = and i64 %i.bl, 4611686018427387900  ; 3 uses
  %i.bq = shl i64 %n.vec133, 3                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.bf, i64 %i.bq
  %i.bs = getelementptr i8, ptr %6, i64 %i.bq     ; 2 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next148, %vector.body134 ] ; 2 uses
  %i.bt = shl i64 %index135, 3                    ; 3 uses
  %i.bu = or disjoint i64 %i.bt, 16               ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.bf, i64 %i.bt
  %next.gep137 = getelementptr i8, ptr %i.bf, i64 %i.bu
  %next.gep138 = getelementptr i8, ptr %6, i64 %i.bt
  %next.gep139 = getelementptr i8, ptr %6, i64 %i.bu
  %wide.vec140 = load <4 x i32>, ptr %next.gep136, align 4, !tbaa !338, !alias.scope !5335
  %wide.vec143 = load <4 x i32>, ptr %next.gep137, align 4, !tbaa !338, !alias.scope !5335
  store <4 x i32> %wide.vec140, ptr %next.gep138, align 4, !tbaa !338, !alias.scope !5336, !noalias !5335
  store <4 x i32> %wide.vec143, ptr %next.gep139, align 4, !tbaa !338, !alias.scope !5336, !noalias !5335
  %index.next148 = add nuw i64 %index135, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next148, %n.vec133
  br i1 %i.bv, label %middle.block149, label %vector.body134, !llvm.loop !5313

middle.block149:                                  ; preds = %vector.body134
  %cmp.n150 = icmp eq i64 %i.bl, %n.vec133
  br i1 %cmp.n150, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit27, label %.lr.ph.i23.preheader221

.lr.ph.i23.preheader221:                          ; preds = %vector.memcheck128, %.lr.ph.i23.preheader, %middle.block149
  %.ph222.a = phi ptr [ %i.bf, %vector.memcheck128 ], [ %i.bf, %.lr.ph.i23.preheader ], [ %i.br, %middle.block149 ]
  %.04.i24.ph = phi ptr [ %6, %vector.memcheck128 ], [ %6, %.lr.ph.i23.preheader ], [ %i.bs, %middle.block149 ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader221, %.lr.ph.i23
  %i.bw = phi ptr [ %i.cb, %.lr.ph.i23 ], [ %.ph222.a, %.lr.ph.i23.preheader221 ] ; 3 uses
  %.04.i24 = phi ptr [ %i.cc, %.lr.ph.i23 ], [ %.04.i24.ph, %.lr.ph.i23.preheader221 ] ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !338
  store i32 %i.bx, ptr %.04.i24, align 4, !tbaa !347
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !338
  %i.ca = getelementptr inbounds nuw i8, ptr %.04.i24, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !348
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.04.i24, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %i.cb, %i.bg
  br i1 %.not.i25, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit27, label %.lr.ph.i23, !llvm.loop !5314

_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit27: ; preds = %.lr.ph.i23, %middle.block149, %bb.g
  %.0.lcssa.i26 = phi ptr [ %6, %bb.g ], [ %i.bs, %middle.block149 ], [ %i.cc, %.lr.ph.i23 ] ; 3 uses
  %i.cd = load ptr, ptr %3, align 8, !tbaa !331   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5337)
  %.not1.i28 = icmp eq ptr %i.bg, %i.cd
  br i1 %.not1.i28, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit27
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %14 = ptrtoaddr ptr %i.bg to i64
  %i.cf = add i64 %i.ce, -8
  %i.cg = sub i64 %i.cf, %14                      ; 3 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check159 = icmp ult i64 %i.cg, 120
  br i1 %min.iters.check159, label %.lr.ph.i29.preheader219, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph.i29.preheader
  %i.cj = and i64 %i.cg, -8
  %i.ck = add i64 %i.cj, 8                        ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bf, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.bg, i64 %i.ck
  %bound0161 = icmp ult ptr %i.bf, %i.cm
  %bound1162 = icmp ult ptr %i.bg, %i.cl
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i29.preheader219, label %vector.ph164

vector.ph164:                                     ; preds = %vector.memcheck160
  %n.vec165 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec165, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %i.bf, i64 %i.cn  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bg, i64 %i.cn
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next180, %vector.body166 ] ; 2 uses
  %i.cq = shl i64 %index167, 3                    ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 16               ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.bf, i64 %i.cq
  %next.gep169 = getelementptr i8, ptr %i.bf, i64 %i.cr
  %next.gep170 = getelementptr i8, ptr %i.bg, i64 %i.cq
  %next.gep171 = getelementptr i8, ptr %i.bg, i64 %i.cr
  %wide.vec172 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !338, !alias.scope !5338, !noalias !5337
  %wide.vec175 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !338, !alias.scope !5338, !noalias !5337
  store <4 x i32> %wide.vec172, ptr %next.gep168, align 4, !tbaa !338, !alias.scope !5339, !noalias !5337
  store <4 x i32> %wide.vec175, ptr %next.gep169, align 4, !tbaa !338, !alias.scope !5339, !noalias !5337
  %index.next180 = add nuw i64 %index167, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next180, %n.vec165
  br i1 %i.cs, label %middle.block181, label %vector.body166, !llvm.loop !5320

middle.block181:                                  ; preds = %vector.body166
  %cmp.n182 = icmp eq i64 %i.ci, %n.vec165
  br i1 %cmp.n182, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29.preheader219

.lr.ph.i29.preheader219:                          ; preds = %vector.memcheck160, %.lr.ph.i29.preheader, %middle.block181
  %.sroa.038.0.ph = phi ptr [ %i.bf, %vector.memcheck160 ], [ %i.bf, %.lr.ph.i29.preheader ], [ %i.co, %middle.block181 ]
  %.ph220 = phi ptr [ %i.bg, %vector.memcheck160 ], [ %i.bg, %.lr.ph.i29.preheader ], [ %i.cp, %middle.block181 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader219, %.lr.ph.i29
  %.sroa.038.0 = phi ptr [ %i.cz, %.lr.ph.i29 ], [ %.sroa.038.0.ph, %.lr.ph.i29.preheader219 ] ; 3 uses
  %i.ct = phi ptr [ %i.cy, %.lr.ph.i29 ], [ %.ph220, %.lr.ph.i29.preheader219 ] ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !338, !noalias !5337
  store i32 %i.cu, ptr %.sroa.038.0, align 4, !tbaa !347, !noalias !5337
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !338, !noalias !5337
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !348, !noalias !5337
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %i.cy, %i.cd
  br i1 %.not.i30, label %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !5321

_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %middle.block181, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit27
  %i.da = phi ptr [ %i.bf, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit27 ], [ %i.co, %middle.block181 ], [ %i.cz, %.lr.ph.i29 ] ; 8 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !350, !alias.scope !5337
  %.not4.i31 = icmp eq ptr %6, %.0.lcssa.i26
  br i1 %.not4.i31, label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36, label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit
  %15 = ptrtoaddr ptr %.0.lcssa.i26 to i64
  %16 = ptrtoaddr ptr %6 to i64
  %i.db = add i64 %15, -8
  %i.dc = sub i64 %i.db, %16                      ; 3 uses
  %i.dd = lshr i64 %i.dc, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check192 = icmp ult i64 %i.dc, 120
  br i1 %min.iters.check192, label %.lr.ph.i33.preheader218, label %vector.memcheck193

vector.memcheck193:                               ; preds = %.lr.ph.i33.preheader
  %i.df = and i64 %i.dc, -8
  %i.dg = add i64 %i.df, 8                        ; 2 uses
  %i.dh = getelementptr i8, ptr %i.da, i64 %i.dg
  %i.di = getelementptr i8, ptr %6, i64 %i.dg
  %bound0194 = icmp ult ptr %i.da, %i.di
  %bound1195 = icmp ult ptr %6, %i.dh
  %found.conflict196 = and i1 %bound0194, %bound1195
  br i1 %found.conflict196, label %.lr.ph.i33.preheader218, label %vector.ph197

vector.ph197:                                     ; preds = %vector.memcheck193
  %n.vec198 = and i64 %i.de, 4611686018427387900  ; 3 uses
  %i.dj = shl i64 %n.vec198, 3                    ; 2 uses
  %i.dk = getelementptr i8, ptr %i.da, i64 %i.dj
  %i.dl = getelementptr i8, ptr %6, i64 %i.dj
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph197
  %index200 = phi i64 [ 0, %vector.ph197 ], [ %index.next213, %vector.body199 ] ; 2 uses
  %i.dm = shl i64 %index200, 3                    ; 3 uses
  %i.dn = or disjoint i64 %i.dm, 16               ; 2 uses
  %next.gep201 = getelementptr i8, ptr %i.da, i64 %i.dm
  %next.gep202 = getelementptr i8, ptr %i.da, i64 %i.dn
  %next.gep203 = getelementptr i8, ptr %6, i64 %i.dm
  %next.gep204 = getelementptr i8, ptr %6, i64 %i.dn
  %wide.vec205 = load <4 x i32>, ptr %next.gep203, align 4, !tbaa !338, !alias.scope !5340, !noalias !5341
  %wide.vec208 = load <4 x i32>, ptr %next.gep204, align 4, !tbaa !338, !alias.scope !5340, !noalias !5341
  store <4 x i32> %wide.vec205, ptr %next.gep201, align 4, !tbaa !338, !alias.scope !5342, !noalias !5341
  store <4 x i32> %wide.vec208, ptr %next.gep202, align 4, !tbaa !338, !alias.scope !5342, !noalias !5341
  %index.next213 = add nuw i64 %index200, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next213, %n.vec198
  br i1 %i.do, label %middle.block214, label %vector.body199, !llvm.loop !5327

middle.block214:                                  ; preds = %vector.body199
  %cmp.n215 = icmp eq i64 %i.de, %n.vec198
  br i1 %cmp.n215, label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36, label %.lr.ph.i33.preheader218

.lr.ph.i33.preheader218:                          ; preds = %vector.memcheck193, %.lr.ph.i33.preheader, %middle.block214
  %.ph = phi ptr [ %i.da, %vector.memcheck193 ], [ %i.da, %.lr.ph.i33.preheader ], [ %i.dk, %middle.block214 ]
  %.05.i34.ph = phi ptr [ %6, %vector.memcheck193 ], [ %6, %.lr.ph.i33.preheader ], [ %i.dl, %middle.block214 ]
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader218, %.lr.ph.i33
  %i.dp = phi ptr [ %i.dv, %.lr.ph.i33 ], [ %.ph, %.lr.ph.i33.preheader218 ] ; 3 uses
  %.05.i34 = phi ptr [ %i.du, %.lr.ph.i33 ], [ %.05.i34.ph, %.lr.ph.i33.preheader218 ] ; 3 uses
  %i.dq = load i32, ptr %.05.i34, align 4, !tbaa !338, !noalias !5341
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !347, !noalias !5341
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i34, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !338, !noalias !5341
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !348, !noalias !5341
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i34, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.not.i35 = icmp eq ptr %i.du, %.0.lcssa.i26
  br i1 %.not.i35, label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36, label %.lr.ph.i33, !llvm.loop !5328

bb.h:                                             ; preds = %bb.f
  %i.dw = load ptr, ptr %3, align 8, !tbaa !331
  store ptr %i.dw, ptr %0, align 8, !tbaa !350
  br label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36

bb.i:                                             ; preds = %bb.e
  %i.dx = load ptr, ptr %1, align 8, !tbaa !331
  store ptr %i.dx, ptr %8, align 8, !tbaa !350
  %i.dy = load ptr, ptr %2, align 8, !tbaa !331
  store ptr %i.dy, ptr %9, align 8, !tbaa !350
  %i.dz = load ptr, ptr %3, align 8, !tbaa !331
  store ptr %i.dz, ptr %10, align 8, !tbaa !350
  call void @_ZN5boost7movelib10rotate_gcdINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEET_S8_S8_S8_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  br label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36

_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36: ; preds = %.lr.ph.i33, %middle.block214, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, %bb.i, %bb.h, %bb.d, %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !350    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !350    ; 6 uses
  %.not51 = icmp eq ptr %i.a, %i.b
  br i1 %.not51, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !350    ; 2 uses
  %.not52 = icmp eq ptr %i.b, %i.c
  br i1 %.not52, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !338  ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !338  ; 2 uses
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
  br i1 %.not, label %.lr.ph.i13, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.o = phi ptr [ %i.v, %.lr.ph.i ], [ %i.a, %bb.d ] ; 2 uses
  %.010.i = phi i64 [ %.1.i, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = lshr i64 %.010.i, 1                      ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338, !noalias !5371
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 11 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !88

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i
  store ptr %i.v, ptr %0, align 8, !tbaa !350
  %i.w = load ptr, ptr %1, align 8, !tbaa !350    ; 3 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !394    ; 10 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not3.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %4 = ptrtoaddr ptr %i.w to i64                  ; 2 uses
  %5 = ptrtoaddr ptr %i.v to i64                  ; 2 uses
  %i.z = add i64 %4, -8
  %i.aa = sub i64 %i.z, %5                        ; 4 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader205, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ad = and i64 %i.aa, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.ae
  %bound0 = icmp ult ptr %i.x, %i.ag
  %bound1 = icmp ult ptr %i.v, %i.af
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader205, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ah   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 3 uses
  %i.al = or disjoint i64 %i.ak, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ak
  %next.gep116 = getelementptr i8, ptr %i.v, i64 %i.al
  %next.gep117 = getelementptr i8, ptr %i.x, i64 %i.ak
  %next.gep118 = getelementptr i8, ptr %i.x, i64 %i.al
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !338, !alias.scope !5372
  %wide.vec120 = load <4 x i32>, ptr %next.gep116, align 4, !tbaa !338, !alias.scope !5372
  store <4 x i32> %wide.vec, ptr %next.gep117, align 4, !tbaa !338, !alias.scope !5373, !noalias !5372
  store <4 x i32> %wide.vec120, ptr %next.gep118, align 4, !tbaa !338, !alias.scope !5373, !noalias !5372
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !5348

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.aj, i64 -8
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i.preheader205

.lr.ph.i.i.i.preheader205:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph206 = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.04.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader205, %.lr.ph.i.i.i
  %i.an = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.ph206, %.lr.ph.i.i.i.preheader205 ] ; 3 uses
  %.04.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.04.i.i.i.ph, %.lr.ph.i.i.i.preheader205 ] ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !338
  store i32 %i.ao, ptr %.04.i.i.i, align 4, !tbaa !347
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !338
  %i.ar = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !348
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.w
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !5349

_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.04.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.04.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa111 = phi ptr [ %i.aj, %middle.block ], [ %i.at, %.lr.ph.i.i.i ] ; 2 uses
  %.04.i.i.i.lcssa210 = ptrtoaddr ptr %.04.i.i.i.lcssa to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa111, ptr %i.au, align 8, !tbaa !395
  %i.av = load ptr, ptr %0, align 8, !tbaa !331   ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !331
  %i.ax = load ptr, ptr %2, align 8, !tbaa !331
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.aw, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ], [ %.sroa.039.1, %bb.h ] ; 5 uses
  %.sroa.040.0 = phi ptr [ %i.av, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ], [ %i.di, %bb.h ] ; 10 uses
  %.015.i = phi ptr [ %i.x, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ], [ %.1.i8, %bb.h ] ; 12 uses
  %i.ay = icmp eq ptr %.sroa.039.0, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i.i10.preheader, label %bb.e

.lr.ph.i.i.i10.preheader:                         ; preds = %.lr.ph.i7
  %.015.i126.le = ptrtoaddr ptr %.015.i to i64    ; 2 uses
  %i.az = and i64 %i.aa, -8
  %i.ba = add i64 %i.az, %i.y
  %i.bb = sub i64 %i.ba, %.015.i126.le            ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.bb, 184
  br i1 %min.iters.check134, label %.lr.ph.i.i.i10.preheader197, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph.i.i.i10.preheader
  %i.be = shl i64 %indvar, 3
  %i.bf = getelementptr i8, ptr %i.av, i64 %i.be
  %scevgep = getelementptr i8, ptr %i.bf, i64 8
  %i.bg = add i64 %4, -8
  %i.bh = sub i64 %i.bg, %5
  %i.bi = and i64 %i.bh, -8
  %i.bj = add i64 %i.bi, %i.y
  %i.bk = sub i64 %i.bj, %.015.i126.le
  %i.bl = and i64 %i.bk, -8                       ; 2 uses
  %scevgep127 = getelementptr i8, ptr %scevgep, i64 %i.bl
  %scevgep128 = getelementptr i8, ptr %.015.i, i64 8
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.bl
  %bound0130 = icmp ult ptr %.sroa.040.0, %scevgep129
  %bound1131 = icmp ult ptr %.015.i, %scevgep127
  %found.conflict132 = and i1 %bound0130, %bound1131
  br i1 %found.conflict132, label %.lr.ph.i.i.i10.preheader197, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck125
  %n.vec136 = and i64 %i.bd, 4611686018427387900  ; 3 uses
  %i.bm = shl i64 %n.vec136, 3                    ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.040.0, i64 %i.bm
  %i.bo = getelementptr i8, ptr %.015.i, i64 %i.bm
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next151, %vector.body137 ] ; 2 uses
  %i.bp = shl i64 %index138, 3                    ; 3 uses
  %i.bq = or disjoint i64 %i.bp, 16               ; 2 uses
  %next.gep139 = getelementptr i8, ptr %.sroa.040.0, i64 %i.bp
  %next.gep140 = getelementptr i8, ptr %.sroa.040.0, i64 %i.bq
  %next.gep141 = getelementptr i8, ptr %.015.i, i64 %i.bp
  %next.gep142 = getelementptr i8, ptr %.015.i, i64 %i.bq
  %wide.vec143 = load <4 x i32>, ptr %next.gep141, align 4, !tbaa !338, !alias.scope !5374, !noalias !5375
  %wide.vec146 = load <4 x i32>, ptr %next.gep142, align 4, !tbaa !338, !alias.scope !5374, !noalias !5375
  store <4 x i32> %wide.vec143, ptr %next.gep139, align 4, !tbaa !338, !alias.scope !5376, !noalias !5375
  store <4 x i32> %wide.vec146, ptr %next.gep140, align 4, !tbaa !338, !alias.scope !5376, !noalias !5375
  %index.next151 = add nuw i64 %index138, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next151, %n.vec136
  br i1 %i.br, label %middle.block152, label %vector.body137, !llvm.loop !5357

middle.block152:                                  ; preds = %vector.body137
  %cmp.n153 = icmp eq i64 %i.bd, %n.vec136
  br i1 %cmp.n153, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i10.preheader197

.lr.ph.i.i.i10.preheader197:                      ; preds = %vector.memcheck125, %.lr.ph.i.i.i10.preheader, %middle.block152
  %.ph198 = phi ptr [ %.sroa.040.0, %vector.memcheck125 ], [ %.sroa.040.0, %.lr.ph.i.i.i10.preheader ], [ %i.bn, %middle.block152 ] ; 2 uses
  %.05.i.i.i.ph = phi ptr [ %.015.i, %vector.memcheck125 ], [ %.015.i, %.lr.ph.i.i.i10.preheader ], [ %i.bo, %middle.block152 ] ; 3 uses
  %.05.i.i.i.ph211 = ptrtoaddr ptr %.05.i.i.i.ph to i64
  %i.bs = sub i64 %.04.i.i.i.lcssa210, %.05.i.i.i.ph211 ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol

.lr.ph.i.i.i10.prol:                              ; preds = %.lr.ph.i.i.i10.preheader197, %.lr.ph.i.i.i10.prol
  %i.bv = phi ptr [ %i.cb, %.lr.ph.i.i.i10.prol ], [ %.ph198, %.lr.ph.i.i.i10.preheader197 ] ; 3 uses
  %.05.i.i.i.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i10.prol ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader197 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i10.prol ], [ 0, %.lr.ph.i.i.i10.preheader197 ]
  %i.bw = load i32, ptr %.05.i.i.i.prol, align 4, !tbaa !338, !noalias !5375
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !347, !noalias !5375
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !338, !noalias !5375
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !348, !noalias !5375
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !5358

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.i.i.i10.preheader197
  %.unr = phi ptr [ %.ph198, %.lr.ph.i.i.i10.preheader197 ], [ %i.cb, %.lr.ph.i.i.i10.prol ]
  %.05.i.i.i.unr = phi ptr [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader197 ], [ %i.ca, %.lr.ph.i.i.i10.prol ]
  %i.cc = icmp ult i64 %i.bs, 24
  br i1 %i.cc, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %i.cd = phi ptr [ %i.db, %.lr.ph.i.i.i10 ], [ %.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.05.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i10 ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %i.ce = load i32, ptr %.05.i.i.i, align 4, !tbaa !338, !noalias !5375
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !347, !noalias !5375
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !338, !noalias !5375
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !348, !noalias !5375
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !338, !noalias !5375
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !347, !noalias !5375
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !338, !noalias !5375
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !348, !noalias !5375
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !338, !noalias !5375
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !347, !noalias !5375
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 20
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !338, !noalias !5375
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !348, !noalias !5375
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !338, !noalias !5375
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !347, !noalias !5375
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !338, !noalias !5375
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !348, !noalias !5375
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.not.i.i.i11.3 = icmp eq ptr %i.cu, %.04.i.i.i.lcssa
  br i1 %.not.i.i.i11.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i10, !llvm.loop !5359

bb.e:                                             ; preds = %.lr.ph.i7
  %i.dc = load i32, ptr %.sroa.039.0, align 4, !tbaa !338 ; 2 uses
  %i.dd = load i32, ptr %.015.i, align 4, !tbaa !338 ; 2 uses
  %i.de = icmp slt i32 %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4
  br i1 %i.de, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dc, ptr %.sroa.040.0, align 4, !tbaa !347
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.dd, ptr %.sroa.040.0, align 4, !tbaa !347
  %i.dh = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.039.0.pn = phi ptr [ %.sroa.039.0, %bb.f ], [ %.015.i, %bb.g ]
  %.sroa.039.1 = phi ptr [ %i.dg, %bb.f ], [ %.sroa.039.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.dh, %bb.g ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sroa.039.0.pn, i64 4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !338
  store i32 %.sink, ptr %i.df, align 4, !tbaa !348
  %i.di = getelementptr i8, ptr %.sroa.040.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa111
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !89

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dj = phi ptr [ %i.dq, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dk = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !338, !noalias !5377
  %i.dn = icmp slt i32 %i.dm, %i.f                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.neg.i15 = xor i64 %i.dk, -1
  %i.dp = add i64 %.010.i14, %.neg.i15
  %i.dq = select i1 %i.dn, ptr %i.do, ptr %i.dj   ; 5 uses
  %.1.i16 = select i1 %i.dn, i64 %i.dp, i64 %i.dk ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !87

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  store ptr %i.dq, ptr %2, align 8, !tbaa !350
  %i.dr = load ptr, ptr %1, align 8, !tbaa !331   ; 9 uses
  %i.ds = load ptr, ptr %3, align 8, !tbaa !394   ; 10 uses
  %.not3.i.i.i18 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %6 = ptrtoaddr ptr %i.dq to i64
  %i.dt = ptrtoaddr ptr %i.dr to i64
  %i.du = add i64 %6, -8
  %i.dv = sub i64 %i.du, %i.dt                    ; 3 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.dv, 104
  br i1 %min.iters.check165, label %.lr.ph.i.i.i19.preheader194, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i.i.i19.preheader
  %i.dy = and i64 %i.dv, -8
  %i.dz = add i64 %i.dy, 8                        ; 2 uses
  %i.ea = getelementptr i8, ptr %i.ds, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.dr, i64 %i.dz
  %bound0167 = icmp ult ptr %i.ds, %i.eb
  %bound1168 = icmp ult ptr %i.dr, %i.ea
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.lr.ph.i.i.i19.preheader194, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck166
  %n.vec171 = and i64 %i.dx, 4611686018427387900  ; 3 uses
  %i.ec = shl i64 %n.vec171, 3                    ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dr, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ds, i64 %i.ec  ; 2 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next186, %vector.body172 ] ; 2 uses
  %i.ef = shl i64 %index173, 3                    ; 3 uses
  %i.eg = or disjoint i64 %i.ef, 16               ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.dr, i64 %i.ef
  %next.gep175 = getelementptr i8, ptr %i.dr, i64 %i.eg
  %next.gep176 = getelementptr i8, ptr %i.ds, i64 %i.ef
  %next.gep177 = getelementptr i8, ptr %i.ds, i64 %i.eg
  %wide.vec178 = load <4 x i32>, ptr %next.gep174, align 4, !tbaa !338, !alias.scope !5378
  %wide.vec181 = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !338, !alias.scope !5378
  store <4 x i32> %wide.vec178, ptr %next.gep176, align 4, !tbaa !338, !alias.scope !5379, !noalias !5378
  store <4 x i32> %wide.vec181, ptr %next.gep177, align 4, !tbaa !338, !alias.scope !5379, !noalias !5378
  %index.next186 = add nuw i64 %index173, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next186, %n.vec171
  br i1 %i.eh, label %middle.block187, label %vector.body172, !llvm.loop !5365

middle.block187:                                  ; preds = %vector.body172
  %cmp.n188 = icmp eq i64 %i.dx, %n.vec171
  br i1 %cmp.n188, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i19.preheader194

.lr.ph.i.i.i19.preheader194:                      ; preds = %vector.memcheck166, %.lr.ph.i.i.i19.preheader, %middle.block187
  %.ph = phi ptr [ %i.dr, %vector.memcheck166 ], [ %i.dr, %.lr.ph.i.i.i19.preheader ], [ %i.ed, %middle.block187 ]
  %.04.i.i.i20.ph = phi ptr [ %i.ds, %vector.memcheck166 ], [ %i.ds, %.lr.ph.i.i.i19.preheader ], [ %i.ee, %middle.block187 ]
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19.preheader194, %.lr.ph.i.i.i19
  %i.ei = phi ptr [ %i.en, %.lr.ph.i.i.i19 ], [ %.ph, %.lr.ph.i.i.i19.preheader194 ] ; 3 uses
  %.04.i.i.i20 = phi ptr [ %i.eo, %.lr.ph.i.i.i19 ], [ %.04.i.i.i20.ph, %.lr.ph.i.i.i19.preheader194 ] ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !338
  store i32 %i.ej, ptr %.04.i.i.i20, align 4, !tbaa !347
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !338
  %i.em = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 4
  store i32 %i.el, ptr %i.em, align 4, !tbaa !348
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.en, %i.dq
  br i1 %.not.i.i.i21, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i19, !llvm.loop !5366

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i.i19, %middle.block187
  %.lcssa = phi ptr [ %i.ee, %middle.block187 ], [ %i.eo, %.lr.ph.i.i.i19 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.ep, align 8, !tbaa !395
  %i.eq = load ptr, ptr %0, align 8, !tbaa !331
  %i.er = load ptr, ptr %1, align 8, !tbaa !331
  %i.es = load ptr, ptr %2, align 8, !tbaa !331
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.i, %.lr.ph.preheader.i
  %.sroa.0.0 = phi ptr [ %i.es, %.lr.ph.preheader.i ], [ %i.fh, %bb.i ] ; 3 uses
  %i.et = phi ptr [ %i.er, %.lr.ph.preheader.i ], [ %.102, %bb.i ] ; 4 uses
  %.016.i = phi ptr [ %.lcssa, %.lr.ph.preheader.i ], [ %.016.i., %bb.i ] ; 4 uses
  %i.eu = icmp eq ptr %i.eq, %i.et
  br i1 %i.eu, label %.lr.ph.i.i.i27, label %bb.i

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i24, %.lr.ph.i.i.i27
  %i.ev = phi ptr [ %i.ex, %.lr.ph.i.i.i27 ], [ %.sroa.0.0, %.lr.ph.i24 ] ; 2 uses
  %.05.i.i.i28 = phi ptr [ %i.ew, %.lr.ph.i.i.i27 ], [ %.016.i, %.lr.ph.i24 ] ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -8 ; 3 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -8 ; 2 uses
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !338, !noalias !5380
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !347, !noalias !5380
  %i.ez = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !338, !noalias !5380
  %i.fb = getelementptr inbounds i8, ptr %i.ev, i64 -4
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !348, !noalias !5380
  %.not.i.i.i29 = icmp eq ptr %i.ds, %i.ew
  br i1 %.not.i.i.i29, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i27, !llvm.loop !90

bb.i:                                             ; preds = %.lr.ph.i24
  %i.fc = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.et, i64 -8 ; 2 uses
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !338 ; 2 uses
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !338 ; 2 uses
  %i.fg = icmp slt i32 %i.fe, %i.ff               ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 %i.ff)
  %..016.i = select i1 %i.fg, ptr %i.et, ptr %.016.i
  %.102 = select i1 %i.fg, ptr %i.fd, ptr %i.et
  %.016.i. = select i1 %i.fg, ptr %.016.i, ptr %i.fc ; 2 uses
  store i32 %., ptr %i.fh, align 4, !tbaa !347
  %.sink73.in = getelementptr inbounds i8, ptr %..016.i, i64 -4
  %.sink73 = load i32, ptr %.sink73.in, align 4, !tbaa !338
  %i.fi = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  store i32 %.sink73, ptr %i.fi, align 4, !tbaa !348
  %.not.i26 = icmp eq ptr %i.ds, %.016.i.
  br i1 %.not.i26, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i24, !llvm.loop !91

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.sink100 = phi ptr [ %i.x, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.ds, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ]
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink100, ptr %i.fj, align 8, !tbaa !395
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %bb.i, %.lr.ph.i.i.i27, %middle.block152, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !350
  %i.b = load ptr, ptr %0, align 8, !tbaa !350
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0.in10 = phi i64 [ %.011, %bb.c ], [ %i.f, %bb.a ] ; 3 uses
  %.011 = add nsw i64 %.0.in10, -1                ; 3 uses
  %i.h = tail call i32 @rand() #23
  %i.i = sext i32 %i.h to i64
  %i.j = srem i64 %i.i, %.0.in10                  ; 2 uses
  %.not = icmp eq i64 %i.j, %.011
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %0, align 8, !tbaa !350    ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.011 ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !338
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !338
  store <2 x i32> %i.o, ptr %i.l, align 4, !tbaa !338
  store <2 x i32> %i.n, ptr %i.m, align 4, !tbaa !338
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = icmp samesign ugt i64 %.0.in10, 2
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE14adopt_sequenceENS0_22ordered_unique_range_tEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSA_.exit, label %bb.b, !prof !344

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !336
  %i.b = load ptr, ptr %0, align 8, !tbaa !408    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i, label %bb.c, !prof !344

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !409
  %i.e = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #23
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i: ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !339
  store ptr %i.f, ptr %0, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !368
  store <2 x i64> %i.h, ptr %i.a, align 8, !tbaa !368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSA_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSA_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
end_hunk_13
