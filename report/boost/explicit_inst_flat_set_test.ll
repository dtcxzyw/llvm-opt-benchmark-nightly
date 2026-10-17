Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 282
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_:bb.a
  br i1 %i.cp, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i
  %.0127.us.i.i = phi ptr [ %i.cy, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ], [ %.0127.us.i.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ]
  %.069126.us.i.i = phi ptr [ %i.cx, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ], [ %.069126.us.i.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.069126.us.i.i, i64 %.1.i158
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.1.i158
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.1.i158
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.1.i158
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.1.i158
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.1.i158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.1.i158 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.1.i158
  %i.cy = getelementptr inbounds nuw i8, ptr %.0127.us.i.i, i64 8 ; 2 uses
  %.not77.us.i.i.7 = icmp eq ptr %i.cy, %i.cl
  br i1 %.not77.us.i.i.7, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i, !llvm.loop !23

_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i, %bb.r
  %.070.lcssa.i.i = phi ptr [ %i.cj, %bb.r ], [ %.069126.us.i.i.lcssa.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ], [ %i.cw, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ] ; 2 uses
  %i.cz = mul i64 %i.ci, %.1.i158
  %i.da = getelementptr i8, ptr %i.ck, i64 %i.cz  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cf
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %.070.lcssa.i.i to i64
  %i.de = sub i64 %i.dc, %i.dd
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %.070.lcssa.i.i, ptr noundef %i.da, ptr noundef %i.db, i64 noundef %i.de, i64 noundef %i.cf)
  br label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread

bb.s:                                             ; preds = %bb.n, %bb.m
  %i.df = phi i64 [ %i.bz, %bb.n ], [ %i.bv, %bb.m ] ; 2 uses
  %i.dg = phi i64 [ %i.by, %bb.n ], [ %i.bu, %bb.m ] ; 2 uses
  %i.dh = phi i1 [ false, %bb.n ], [ %i.bt, %bb.m ] ; 2 uses
  %.097103120 = phi i64 [ %.1.i158, %bb.n ], [ %spec.select.i, %bb.m ] ; 8 uses
  %.096104118 = phi i64 [ %i.bx, %bb.n ], [ %i.ai, %bb.m ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !235
  %or.cond.not.i = icmp eq i64 %i.dj, %.097103120
  br i1 %or.cond.not.i, label %bb.t, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s
  store i64 %.097103120, ptr %i.di, align 8, !tbaa !235
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %bb.s
  %i.dk = load ptr, ptr %3, align 8, !tbaa !234   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.097103120
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = add i64 %i.dm, 7
  %i.do = and i64 %i.dn, -8
  %i.dp = inttoptr i64 %i.do to ptr               ; 4 uses
  %i.dq = urem i64 %i.df, %.097103120             ; 3 uses
  %i.dr = sub i64 %i.dg, %i.dq
  %i.ds = urem i64 %i.dr, %.097103120             ; 2 uses
  %i.dt = add i64 %i.dq, %i.ds
  %i.du = sub i64 %i.dg, %i.dt
  %i.dv = udiv i64 %i.du, %.097103120             ; 4 uses
  %i.dw = udiv i64 %i.df, %.097103120             ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = shl i64 %i.dv, 3
  %i.dz = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.mask.i.i = and i64 %i.dv, 2305843009213693951
  %.not8.i.i.i = icmp eq i64 %.mask.i.i, 0
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, label %.lr.ph.i.i.i51.preheader

.lr.ph.i.i.i51.preheader:                         ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.dz, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i51.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i51.preheader
  %i.ea = and i64 %i.dv, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.dz, %i.ea           ; 3 uses
  %i.eb = shl i64 %n.vec, 3
  %i.ec = getelementptr i8, ptr %i.dp, i64 %i.eb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ed = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.ed ; 2 uses
  %i.ee = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !223
  store <2 x i64> %step.add, ptr %i.ee, align 8, !tbaa !223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !1411

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ea, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, label %.lr.ph.i.i.i51.preheader163

.lr.ph.i.i.i51.preheader163:                      ; preds = %.lr.ph.i.i.i51.preheader, %middle.block
  %.010.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i51.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %i.dp, %.lr.ph.i.i.i51.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph.i.i.i51

.lr.ph.i.i.i51:                                   ; preds = %.lr.ph.i.i.i51.preheader163, %.lr.ph.i.i.i51
  %.010.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i51 ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i51.preheader163 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i51 ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i51.preheader163 ] ; 2 uses
  store i64 %.010.i.i.i, ptr %.079.i.i.i, align 8, !tbaa !223
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8
  %i.eh = add i64 %.010.i.i.i, 1                  ; 2 uses
  %.not.i.i.i52 = icmp eq i64 %i.eh, %i.dz
  br i1 %.not.i.i.i52, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, label %.lr.ph.i.i.i51, !llvm.loop !1412

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i: ; preds = %.lr.ph.i.i.i51, %middle.block, %bb.t
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %i.dp, ptr noundef nonnull %0, i64 noundef %.097103120, i64 noundef %i.dq, i64 noundef %i.dw, i64 noundef %i.dx, i64 noundef %i.ds, ptr noundef %i.dk)
  %i.ei = load i64, ptr %i.di, align 8, !tbaa !235
  %.not.i76.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i76.i, label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i
  store i64 0, ptr %i.di, align 8, !tbaa !235
  br label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit

_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread: ; preds = %bb.q, %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i, %bb.o
  %.096104116.ph = phi i64 [ %.1.i158, %bb.q ], [ 0, %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i ], [ %i.ai, %bb.o ] ; 2 uses
  %i.ej = icmp ne i64 %i.bj, %.096104116.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !235
  br label %bb.u

_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit: ; preds = %bb.p, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, %.preheader.preheader.i.i.i
  %i.ek = phi i64 [ %i.cb, %bb.p ], [ %spec.select.i, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i ], [ 0, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i ], [ 0, %.preheader.preheader.i.i.i ]
  %i.el = phi i1 [ true, %bb.p ], [ true, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i ], [ %i.dh, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i ], [ %i.dh, %.preheader.preheader.i.i.i ] ; 2 uses
  %.096104116 = phi i64 [ %i.ai, %bb.p ], [ %i.ai, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i ], [ %.096104118, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i ], [ %.096104118, %.preheader.preheader.i.i.i ] ; 2 uses
  %.not.i53 = xor i1 %i.el, true
  %i.em = icmp ne i64 %i.bj, %.096104116          ; 2 uses
  %or.cond.i = or i1 %i.em, %.not.i53
  br i1 %or.cond.i, label %bb.u, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit
  %i.en = phi i64 [ %.pre, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %i.ek, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %i.eo = phi i1 [ %i.ej, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %i.em, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %.096104116132 = phi i64 [ %.096104116.ph, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %.096104116, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %i.ep = phi i1 [ false, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %i.el, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.not.i.i54 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i54, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i, label %.preheader.preheader.i.i.i55

.preheader.preheader.i.i.i55:                     ; preds = %bb.u
  store i64 0, ptr %i.eq, align 8, !tbaa !235
  br label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i: ; preds = %.preheader.preheader.i.i.i55, %bb.u
  %or.cond3.i = and i1 %i.eo, %i.ep
  %i.er = select i1 %or.cond3.i, i64 %.096104116132, i64 0 ; 2 uses
  %i.es = sub i64 %i.bj, %i.er                    ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 %i.es ; 5 uses
  %i.eu = getelementptr i8, ptr %0, i64 %i.l      ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %gepdiff.i = sub i64 %i.l, %i.es                ; 5 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.es, i64 %gepdiff.i)
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !236 ; 3 uses
  %.not.i23.i56 = icmp ult i64 %i.ew, %.sroa.speculated.i.i
  %i.ex = icmp eq i64 %i.es, %i.l                 ; 2 uses
  br i1 %.not.i23.i56, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i
  %.not.i.i.i.i = icmp eq i64 %i.bj, %i.er
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.ex
  br i1 %or.cond.i.i.i.i, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not38.i.i.i.i = icmp ugt i64 %i.es, %gepdiff.i
  br i1 %.not38.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.preheader.preheader.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i.i.i ], [ %gepdiff.i, %bb.w ] ; 2 uses
  %.01316.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i ], [ %i.et, %bb.w ]
  %i.ey = lshr i64 %.017.i.i.i.i.i, 1             ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.i.i, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 3 uses
  %.neg.i.i.i.i.i = xor i64 %i.ey, -1
  %i.fb = add i64 %.017.i.i.i.i.i, %.neg.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fc, %i.ev
  store i64 %i.fd, ptr %i.eq, align 8, !tbaa !235
  %i.fe = icmp eq ptr %i.fa, %i.et
  br i1 %i.fe, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i, %bb.w
  store i64 0, ptr %i.eq, align 8, !tbaa !235
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.x:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i
  %i.ff = load ptr, ptr %3, align 8, !tbaa !234
  br i1 %i.ex, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i15.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i15.i.i, label %bb.z, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i.i

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i.i: ; preds = %bb.y
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef nonnull %0, ptr noundef %i.et, ptr noundef %i.eu, i64 noundef %i.es, i64 noundef %gepdiff.i, ptr noundef %i.ff, i64 noundef %i.ew)
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef nonnull %0, ptr noundef %i.et, ptr noundef %i.eu, i64 noundef %i.es, i64 noundef %gepdiff.i)
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit: ; preds = %bb.f, %bb.z, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i.i, %bb.x, %.preheader.preheader.i.i.i.i, %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i, %bb.v, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit, %bb.i, %.sink.split.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive14collect_uniqueIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEENS0_9iter_sizeIT_E4typeESH_SH_SJ_T0_RT1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit132, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !236
  %.not80 = icmp ult i64 %i.e, %2
  br i1 %.not80, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.f = icmp ne ptr %i.c, %1
  %i.g = icmp ne i64 %2, 1
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %.lr.ph148.preheader, label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit132

.lr.ph148.preheader:                              ; preds = %.preheader
  %i.i = ptrtoint ptr %0 to i64
  br label %.lr.ph148

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !235  ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !235
  %i.m = icmp ne ptr %i.c, %1
  %i.n = icmp ne i64 %2, 1
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %.lr.ph.preheader, label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit132

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.p = add i64 %i.b, -2
  %i.q = sub i64 %i.p, %i.a
  %i.r = add i64 %2, -2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.r) ; 2 uses
  %i.s = add nuw i64 %umin, 2
  %i.t = add i64 %i.k, %umin
  %i.u = add i64 %i.t, 2
  store i64 %i.u, ptr %i.j, align 8, !tbaa !235
  br label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit132

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit
  %.2147 = phi i64 [ %i.ac, %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit ], [ 1, %.lr.ph148.preheader ]
  %.176144 = phi ptr [ %i.ab, %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit ], [ %i.c, %.lr.ph148.preheader ] ; 2 uses
  %i.v = ptrtoint ptr %.176144 to i64
  %i.w = sub i64 %i.v, %i.i                       ; 2 uses
  %.not15.i87 = icmp eq i64 %i.w, 0
  br i1 %.not15.i87, label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.lr.ph148, %.lr.ph.i88
  %.017.i89 = phi i64 [ %i.aa, %.lr.ph.i88 ], [ %i.w, %.lr.ph148 ] ; 2 uses
  %.01316.i90 = phi ptr [ %i.z, %.lr.ph.i88 ], [ %0, %.lr.ph148 ]
  %i.x = lshr i64 %.017.i89, 1                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01316.i90, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.neg.i91 = xor i64 %i.x, -1
  %i.aa = add i64 %.017.i89, %.neg.i91            ; 2 uses
  %.not.i92 = icmp eq i64 %i.aa, 0
  br i1 %.not.i92, label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit, label %.lr.ph.i88, !llvm.loop !20

_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit: ; preds = %.lr.ph.i88, %.lr.ph148
  %i.ab = getelementptr i8, ptr %.176144, i64 1   ; 2 uses
  %i.ac = add nuw i64 %.2147, 1                   ; 3 uses
  %i.ad = icmp ne ptr %i.ab, %1
  %i.ae = icmp ult i64 %i.ac, %2
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %.lr.ph148, label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit132, !llvm.loop !1413

_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit132: ; preds = %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit, %.preheader, %bb.c, %.lr.ph.preheader, %bb.a
  %.5 = phi i64 [ 0, %bb.a ], [ %i.s, %.lr.ph.preheader ], [ 1, %bb.c ], [ 1, %.preheader ], [ %i.ac, %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp eq i64 %3, 0
  %i.c = or i64 %4, %3
  %i.d = icmp eq i64 %i.c, 1
  %i.e = or i1 %i.b, %i.d
  %or.cond7988 = or i1 %i.a, %i.e
  br i1 %or.cond7988, label %_ZN5boost7movelib20merge_bufferless_ON2IP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.06794 = phi i64 [ %.1, %bb.j ], [ %4, %bb.a ] ; 5 uses
  %.06893 = phi i64 [ %.169, %bb.j ], [ %3, %bb.a ] ; 5 uses
  %.07092 = phi ptr [ %.171, %bb.j ], [ %2, %bb.a ] ; 3 uses
  %.07290 = phi ptr [ %.173, %bb.j ], [ %1, %bb.a ] ; 7 uses
  %.07489 = phi ptr [ %.175, %bb.j ], [ %0, %bb.a ] ; 4 uses
  %i.f = add i64 %.06794, %.06893                 ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  br i1 %i.g, label %_ZN5boost7movelib20merge_bufferless_ON2IP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = icmp ugt i64 %.06893, %.06794
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i64 %.06893, 1                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07489, i64 %i.i
  %i.k = ptrtoint ptr %.07092 to i64
  %i.l = ptrtoint ptr %.07290 to i64              ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %.not15.i = icmp eq i64 %i.m, 0
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.017.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %.01316.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.07290, %bb.c ]
  %i.n = lshr i64 %.017.i, 1                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01316.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  %.neg.i = xor i64 %i.n, -1
  %i.q = add i64 %.017.i, %.neg.i                 ; 2 uses
  %.not.i77 = icmp eq i64 %i.q, 0
  br i1 %.not.i77, label %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !20

_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = ptrtoint ptr %i.p to i64
  br label %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit: ; preds = %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.loopexit, %bb.c
  %.pre-phi = phi i64 [ %.pre, %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %i.l, %bb.c ]
  %.013.lcssa.i = phi ptr [ %i.p, %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.07290, %bb.c ]
  %i.r = sub i64 %.pre-phi, %i.l
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %.06794, 1                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.07290, i64 %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit
  %.066 = phi ptr [ %i.j, %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit ], [ %.07489, %bb.d ] ; 5 uses
  %.065 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit ], [ %i.t, %bb.d ] ; 5 uses
  %.064 = phi i64 [ %i.i, %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit ], [ 0, %bb.d ] ; 5 uses
  %.0 = phi i64 [ %i.r, %_ZN5boost7movelib11lower_boundIP5emptyS2_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEET_SD_SD_RKT0_T1_.exit ], [ %i.s, %bb.d ] ; 5 uses
  %i.u = icmp eq ptr %.066, %.07290
  br i1 %i.u, label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq ptr %.07290, %.065
  br i1 %i.v, label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = ptrtoint ptr %.07290 to i64
  %i.x = ptrtoint ptr %.066 to i64
  %.neg = sub i64 %i.x, %i.w
  %i.y = getelementptr inbounds i8, ptr %.065, i64 %.neg
  br label %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit

_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit: ; preds = %bb.g, %bb.e, %bb.f
  %.043.i = phi ptr [ %.066, %bb.f ], [ %.065, %bb.e ], [ %i.y, %bb.g ] ; 4 uses
  %i.z = add i64 %.0, %.064                       ; 2 uses
  %i.aa = sub i64 %i.f, %i.z
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %.07489, ptr noundef %.066, ptr noundef %.043.i, i64 noundef %.064, i64 noundef %.0)
  %i.ac = sub i64 %.06893, %.064
  %i.ad = sub i64 %.06794, %.0
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost7movelib10rotate_gcdIP5emptyEET_S4_S4_S4_.exit
  %i.ae = sub i64 %.06893, %.064
  %i.af = sub i64 %.06794, %.0
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %.043.i, ptr noundef %.065, ptr noundef %.07092, i64 noundef %i.ae, i64 noundef %i.af)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.175 = phi ptr [ %.043.i, %bb.h ], [ %.07489, %bb.i ]
  %.173 = phi ptr [ %.065, %bb.h ], [ %.066, %bb.i ]
  %.171 = phi ptr [ %.07092, %bb.h ], [ %.043.i, %bb.i ]
  %.169 = phi i64 [ %i.ac, %bb.h ], [ %.064, %bb.i ] ; 3 uses
  %.1 = phi i64 [ %i.ad, %bb.h ], [ %.0, %bb.i ]  ; 3 uses
  %i.ag = icmp eq i64 %.1, 0
  %i.ah = icmp eq i64 %.169, 0
  %i.ai = or i64 %.1, %.169
  %i.aj = icmp eq i64 %i.ai, 1
  %i.ak = or i1 %i.ah, %i.aj
  %or.cond79 = or i1 %i.ag, %i.ak
  br i1 %or.cond79, label %_ZN5boost7movelib20merge_bufferless_ON2IP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_T0_.exit, label %.lr.ph, !llvm.loop !1414

_ZN5boost7movelib20merge_bufferless_ON2IP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_T0_.exit: ; preds = %bb.j, %.lr.ph, %bb.a
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIPKS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag:bb.a
.lr.ph.i.i.i.i.i65:                               ; preds = %.lr.ph.i.i.i.i.i65.preheader206, %.lr.ph.i.i.i.i.i65
  %.012.i.i.i.i.i66 = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i65 ], [ %.012.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i65.preheader206 ] ; 2 uses
  %.0811.i.i.i.i.i67 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i65 ], [ %.0811.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i65.preheader206 ] ; 2 uses
  %.0910.i.i.i.i.i68 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i65 ], [ %.0910.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i65.preheader206 ] ; 2 uses
  %i.cj = load i32, ptr %.0910.i.i.i.i.i68, align 4, !tbaa !247
  store i32 %i.cj, ptr %.0811.i.i.i.i.i67, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i68, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i67, i64 4
  %i.cm = add nsw i64 %.012.i.i.i.i.i66, -1
  %i.cn = icmp samesign ugt i64 %.012.i.i.i.i.i66, 1
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i65, label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit, !llvm.loop !15024

bb.e:                                             ; preds = %bb.b
  %i.co = load ptr, ptr %0, align 8, !tbaa !302   ; 12 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cq = sub i64 %i.k, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 4 uses
  %i.cs = sub nsw i64 2305843009213693951, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.e
  br i1 %i.ct, label %bb.f, label %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
  unreachable

_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.e)
  %i.cu = add nsw i64 %.sroa.speculated.i, %i.cr  ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 2305843009213693951)
  %i.cx = select i1 %i.cv, i64 2305843009213693951, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #27
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.da = phi ptr [ %i.cz, %bb.g ], [ null, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.co, %1
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.db = add i64 %i.a, -4
  %i.dc = sub i64 %i.db, %i.cp                    ; 3 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.dc, 60
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i.i70.preheader200, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %i.df = and i64 %i.dc, -4
  %i.dg = getelementptr i8, ptr %i.co, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %bound0181 = icmp ugt ptr %i.dh, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1182 = icmp ult ptr %i.co, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict183 = and i1 %bound0181, %bound1182
  br i1 %found.conflict183, label %.lr.ph.i.i.i.i.i70.preheader200, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck180
  %n.vec185 = and i64 %i.de, 9223372036854775800  ; 3 uses
  %i.di = shl i64 %n.vec185, 2                    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.da, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %i.co, i64 %i.di
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next193, %vector.body186 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dl, %vector.ph184 ], [ %i.dp, %vector.body186 ]
  %vec.phi188 = phi <4 x i32> [ zeroinitializer, %vector.ph184 ], [ %i.dq, %vector.body186 ]
  %i.dm = shl i64 %index187, 2                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.da, i64 %i.dm ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.co, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <4 x i32>, ptr %next.gep190, align 4, !tbaa !247, !alias.scope !15032
  %wide.load192 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !247, !alias.scope !15032
  %i.do = getelementptr i8, ptr %next.gep189, i64 16
  store <4 x i32> %wide.load191, ptr %next.gep189, align 4, !tbaa !247
  store <4 x i32> %wide.load192, ptr %i.do, align 4, !tbaa !247
  %i.dp = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dq = add <4 x i32> %vec.phi188, splat (i32 1) ; 2 uses
  %index.next193 = add nuw i64 %index187, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next193, %n.vec185
  br i1 %i.dr, label %middle.block194, label %vector.body186, !llvm.loop !15027

middle.block194:                                  ; preds = %vector.body186
  %bin.rdx = add <4 x i32> %i.dq, %i.dp
  %i.ds = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !15033, !noalias !15032
  %cmp.n195 = icmp eq i64 %i.de, %n.vec185
  br i1 %cmp.n195, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70.preheader200

.lr.ph.i.i.i.i.i70.preheader200:                  ; preds = %vector.memcheck180, %.lr.ph.i.i.i.i.i70.preheader, %middle.block194
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck180 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.ds, %middle.block194 ]
  %.015.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck180 ], [ %i.da, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.dj, %middle.block194 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.co, %vector.memcheck180 ], [ %i.co, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.dk, %middle.block194 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader200, %.lr.ph.i.i.i.i.i70
  %i.dt = phi i32 [ %i.dv, %.lr.ph.i.i.i.i.i70 ], [ %.ph, %.lr.ph.i.i.i.i.i70.preheader200 ]
  %.015.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i70 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i70.preheader200 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i70 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i70.preheader200 ] ; 2 uses
  %i.du = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.du, ptr %.015.i.i.i.i.i, align 4, !tbaa !247
  %i.dv = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.dv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.dw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i71 = icmp eq ptr %i.dw, %1
  br i1 %.not.i.i.i.i.i71, label %.lr.ph.i.i.i.i74.preheader, label %.lr.ph.i.i.i.i.i70, !llvm.loop !15029

.lr.ph.i.i.i.i74.preheader:                       ; preds = %.lr.ph.i.i.i.i.i70, %middle.block194, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %.015.i.i.i.i75.ph = phi ptr [ %i.da, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit ], [ %i.dj, %middle.block194 ], [ %i.dx, %.lr.ph.i.i.i.i.i70 ]
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74.preheader, %.lr.ph.i.i.i.i74
  %.015.i.i.i.i75 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i74 ], [ %.015.i.i.i.i75.ph, %.lr.ph.i.i.i.i74.preheader ] ; 2 uses
  %.01214.i.i.i.i76 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i74 ], [ %2, %.lr.ph.i.i.i.i74.preheader ] ; 2 uses
  %i.dy = load i32, ptr %.01214.i.i.i.i76, align 4, !tbaa !247
  store i32 %i.dy, ptr %.015.i.i.i.i75, align 4, !tbaa !247
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i76, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i75, i64 4 ; 3 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.eb, %3
  br i1 %.not.i.i.i.i77, label %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79, label %.lr.ph.i.i.i.i74, !llvm.loop !15022

_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79: ; preds = %.lr.ph.i.i.i.i74
  %.not13.i.i.i.i.i80 = icmp eq ptr %1, %i.i
  br i1 %.not13.i.i.i.i.i80, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86, label %.lr.ph.i.i.i.i.i81

.lr.ph.i.i.i.i.i81:                               ; preds = %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79, %.lr.ph.i.i.i.i.i81
  %.015.i.i.i.i.i82 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i81 ], [ %i.ec, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79 ] ; 2 uses
  %.01214.i.i.i.i.i83 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i81 ], [ %1, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79 ] ; 2 uses
  %i.ed = load i32, ptr %.01214.i.i.i.i.i83, align 4, !tbaa !247
  store i32 %i.ed, ptr %.015.i.i.i.i.i82, align 4, !tbaa !247
  %i.ee = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i83, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i82, i64 4 ; 2 uses
  %.not.i.i.i.i.i84 = icmp eq ptr %i.eg, %i.i
  br i1 %.not.i.i.i.i.i84, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86, label %.lr.ph.i.i.i.i.i81, !llvm.loop !15022

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86: ; preds = %.lr.ph.i.i.i.i.i81, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79
  %.0.lcssa.i.i.i.i.i85 = phi ptr [ %i.ec, %_ZSt22__uninitialized_copy_aIPKN5boost9container4test24movable_and_copyable_intEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit79 ], [ %i.eh, %.lr.ph.i.i.i.i.i81 ]
  %.not4.i.i = icmp eq ptr %i.co, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %i.co, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86 ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !247
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ek, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit86
  %.not.i87 = icmp eq ptr %i.co, null
  br i1 %.not.i87, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !303
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.en) #28
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.h
  store ptr %i.da, ptr %0, align 8, !tbaa !302
  store ptr %.0.lcssa.i.i.i.i.i85, ptr %i.h, align 8, !tbaa !301
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cx
  store ptr %i.eo, ptr %i.f, align 8, !tbaa !303
  br label %_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit

_ZSt4copyIPKN5boost9container4test24movable_and_copyable_intEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i65, %.lr.ph.i.i.i.i.i56, %middle.block, %middle.block169, %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit63, %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !302    ; 16 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.j = load ptr, ptr %0, align 8, !tbaa !302    ; 13 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit.i, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 10 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e                       ; 3 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check86 = icmp ult i64 %i.q, 124
  br i1 %min.iters.check86, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.t = and i64 %i.q, -4
  %i.u = add i64 %i.t, 4                          ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 %i.u       ; 2 uses
  %i.w = getelementptr i8, ptr %i.c, i64 %i.u     ; 2 uses
  %bound0 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.v, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound088 = icmp ult ptr %2, %i.w
  %bound189 = icmp ult ptr %i.c, %i.v
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx = or i1 %found.conflict, %found.conflict90
  %bound091 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound192 = icmp ult ptr %i.c, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %conflict.rdx, %found.conflict93
  br i1 %conflict.rdx94, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %vector.memcheck87
  %n.vec96 = and i64 %i.s, 9223372036854775800    ; 3 uses
  %i.x = shl i64 %n.vec96, 2                      ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  %i.aa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, i64 0
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph95
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next104, %vector.body97 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aa, %vector.ph95 ], [ %i.ae, %vector.body97 ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph95 ], [ %i.af, %vector.body97 ]
  %i.ab = shl i64 %index98, 2                     ; 2 uses
  %next.gep100 = getelementptr i8, ptr %2, i64 %i.ab ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load102 = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !247, !alias.scope !15046
  %wide.load103 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !247, !alias.scope !15046
  %i.ad = getelementptr i8, ptr %next.gep100, i64 16
  store <4 x i32> %wide.load102, ptr %next.gep100, align 4, !tbaa !247, !alias.scope !15047, !noalias !15048
  store <4 x i32> %wide.load103, ptr %i.ad, align 4, !tbaa !247, !alias.scope !15047, !noalias !15048
  %i.ae = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.af = add <4 x i32> %vec.phi99, splat (i32 1) ; 2 uses
  %index.next104 = add nuw i64 %index98, 8        ; 2 uses
  %i.ag = icmp eq i64 %index.next104, %n.vec96
  br i1 %i.ag, label %middle.block105, label %vector.body97, !llvm.loop !15038

middle.block105:                                  ; preds = %vector.body97
  %bin.rdx = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248, !alias.scope !15049, !noalias !15046
  %cmp.n106 = icmp eq i64 %i.s, %n.vec96
  br i1 %cmp.n106, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck87, %.lr.ph.i.i.i.i.preheader.i, %middle.block105
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %vector.memcheck87 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ah, %middle.block105 ]
  %.013.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck87 ], [ %2, %.lr.ph.i.i.i.i.preheader.i ], [ %i.y, %middle.block105 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck87 ], [ %i.c, %.lr.ph.i.i.i.i.preheader.i ], [ %i.z, %middle.block105 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ai = phi i32 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.aj, ptr %.013.i.i.i.i.i, align 4, !tbaa !247
  %i.ak = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15039

_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block105, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit.i
  %i.an = load ptr, ptr %0, align 8, !tbaa !302   ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !301 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.an, %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !247
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.as, %i.ap
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aw) #28
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !302
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.ax, ptr %i.h, align 8, !tbaa !303
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.f:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !301 ; 4 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bb, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp sgt i64 %i.g, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.bd = sub i64 %i.e, %i.l
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i26.preheader114, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  %i.be = and i64 %i.g, 7
  %i.bf = shl i64 %n.vec, 2                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.j, i64 %i.bf   ; 2 uses
  %i.bh = getelementptr i8, ptr %i.c, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bi ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.c, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !247
  %wide.load53 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !247
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247
  store <4 x i32> %wide.load53, ptr %i.bk, align 4, !tbaa !247
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !15040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, label %.lr.ph.i.i.i.i.i26.preheader114

.lr.ph.i.i.i.i.i26.preheader114:                  ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.be, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bg, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader114, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i26.preheader114 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i26.preheader114 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i26.preheader114 ] ; 2 uses
  %i.bm = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !247
  store i32 %i.bm, ptr %.0811.i.i.i.i.i, align 4, !tbaa !247
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4 ; 2 uses
  %i.bp = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !15041

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i26, %middle.block
  %.lcssa = phi ptr [ %i.bg, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i26 ] ; 2 uses
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.g ]
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.lcssa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.g ]
  %.not4.i.i27 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.az
  br i1 %.not4.i.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit
  %i.br = sub i64 %.pre-phi, %i.l
  %i.bs = getelementptr inbounds i8, ptr %i.j, i64 %i.br
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.bv, %.lr.ph.i.i28 ], [ %i.bs, %.lr.ph.i.i28.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.sroa.01.05.i.i, align 4, !tbaa !247
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bv, %i.az
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28, !llvm.loop !15042

bb.h:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb ; 2 uses
  %i.bx = ashr exact i64 %i.bb, 2                 ; 6 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i31.preheader, label %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i31.preheader:                     ; preds = %bb.h
  %min.iters.check59 = icmp ult i64 %i.bx, 8
  %i.bz = sub i64 %i.e, %i.l
  %diff.check61 = icmp ugt i64 %i.bz, -32
  %or.cond109 = or i1 %min.iters.check59, %diff.check61
  br i1 %or.cond109, label %.lr.ph.i.i.i.i.i31.preheader112, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i.i.i.i.i31.preheader
  %n.vec63 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.ca = and i64 %i.bx, 7
  %i.cb = shl i64 %n.vec63, 2                     ; 2 uses
  %i.cc = getelementptr i8, ptr %i.j, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.c, i64 %i.cb
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.ce = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.j, i64 %i.ce ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.c, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !247
  %wide.load69 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !247
  %i.cg = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %wide.load68, ptr %next.gep66, align 4, !tbaa !247
  store <4 x i32> %wide.load69, ptr %i.cg, align 4, !tbaa !247
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.ch = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.ch, label %middle.block71, label %vector.body64, !llvm.loop !15043

middle.block71:                                   ; preds = %vector.body64
  %cmp.n72 = icmp eq i64 %i.bx, %n.vec63
  br i1 %cmp.n72, label %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i31.preheader112

.lr.ph.i.i.i.i.i31.preheader112:                  ; preds = %.lr.ph.i.i.i.i.i31.preheader, %middle.block71
  %.012.i.i.i.i.i32.ph = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i31.preheader ], [ %i.ca, %middle.block71 ]
  %.0811.i.i.i.i.i33.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i31.preheader ], [ %i.cc, %middle.block71 ]
  %.0910.i.i.i.i.i34.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i31.preheader ], [ %i.cd, %middle.block71 ]
  br label %.lr.ph.i.i.i.i.i31

.lr.ph.i.i.i.i.i31:                               ; preds = %.lr.ph.i.i.i.i.i31.preheader112, %.lr.ph.i.i.i.i.i31
  %.012.i.i.i.i.i32 = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i31 ], [ %.012.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i31.preheader112 ] ; 2 uses
  %.0811.i.i.i.i.i33 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i31 ], [ %.0811.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i31.preheader112 ] ; 2 uses
  %.0910.i.i.i.i.i34 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i31 ], [ %.0910.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i31.preheader112 ] ; 2 uses
  %i.ci = load i32, ptr %.0910.i.i.i.i.i34, align 4, !tbaa !247
  store i32 %i.ci, ptr %.0811.i.i.i.i.i33, align 4, !tbaa !247
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 4
  %i.cl = add nsw i64 %.012.i.i.i.i.i32, -1
  %i.cm = icmp samesign ugt i64 %.012.i.i.i.i.i32, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, !llvm.loop !15044

_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i31, %middle.block71, %bb.h
  %.not13.i.i.i.i = icmp eq ptr %i.bw, %i.b
  br i1 %.not13.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.az, %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.01214.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.bw, %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.cn = load i32, ptr %.01214.i.i.i.i, align 4, !tbaa !247
  store i32 %i.cn, ptr %.015.i.i.i.i, align 4, !tbaa !247
  %i.co = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15045

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i28, %.lr.ph.i.i.i.i, %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit
end_hunk_1
