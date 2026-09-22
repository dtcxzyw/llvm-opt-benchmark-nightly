Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 282
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_:bb.a
  br i1 %i.cq, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i
  %.0127.us.i.i = phi ptr [ %i.cz, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ], [ %.0127.us.i.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ]
  %.069126.us.i.i = phi ptr [ %i.cy, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ], [ %.069126.us.i.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.069126.us.i.i, i64 %.1.i158
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.1.i158
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.1.i158
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.1.i158
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.1.i158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.1.i158
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.1.i158 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.1.i158
  %i.cz = getelementptr inbounds nuw i8, ptr %.0127.us.i.i, i64 8 ; 2 uses
  %.not77.us.i.i.7 = icmp eq ptr %i.cz, %i.cm
  br i1 %.not77.us.i.i.7, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i, !llvm.loop !23

_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i, %bb.r
  %.070.lcssa.i.i = phi ptr [ %i.ck, %bb.r ], [ %.069126.us.i.i.lcssa.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i.prol.loopexit ], [ %i.cx, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEET_SE_SE_SE_PbT0_.exit.us.i.i ] ; 2 uses
  %i.da = mul i64 %i.cj, %.1.i158
  %i.db = getelementptr i8, ptr %i.cl, i64 %i.da  ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cg
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %.070.lcssa.i.i to i64
  %i.df = sub i64 %i.dd, %i.de
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %.070.lcssa.i.i, ptr noundef %i.db, ptr noundef %i.dc, i64 noundef %i.df, i64 noundef %i.cg)
  br label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread

bb.s:                                             ; preds = %bb.n, %bb.m
  %i.dg = phi i64 [ %i.ca, %bb.n ], [ %i.bw, %bb.m ] ; 2 uses
  %i.dh = phi i64 [ %i.bz, %bb.n ], [ %i.bv, %bb.m ] ; 2 uses
  %i.di = phi i1 [ false, %bb.n ], [ %i.bu, %bb.m ] ; 2 uses
  %.097103120 = phi i64 [ %.1.i158, %bb.n ], [ %spec.select.i, %bb.m ] ; 8 uses
  %.096104118 = phi i64 [ %i.by, %bb.n ], [ %i.ai, %bb.m ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !235
  %or.cond.not.i = icmp eq i64 %i.dk, %.097103120
  br i1 %or.cond.not.i, label %bb.t, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s
  store i64 %.097103120, ptr %i.dj, align 8, !tbaa !235
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %bb.s
  %i.dl = load ptr, ptr %3, align 8, !tbaa !234   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.097103120
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = add i64 %i.dn, 7
  %i.dp = and i64 %i.do, -8
  %i.dq = inttoptr i64 %i.dp to ptr               ; 4 uses
  %i.dr = urem i64 %i.dg, %.097103120             ; 3 uses
  %i.ds = sub i64 %i.dh, %i.dr
  %i.dt = urem i64 %i.ds, %.097103120             ; 2 uses
  %i.du = add i64 %i.dr, %i.dt
  %i.dv = sub i64 %i.dh, %i.du
  %i.dw = udiv i64 %i.dv, %.097103120             ; 4 uses
  %i.dx = udiv i64 %i.dg, %.097103120             ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = shl i64 %i.dw, 3
  %i.ea = ashr exact i64 %i.dz, 3                 ; 3 uses
  %.mask.i.i = and i64 %i.dw, 2305843009213693951
  %.not8.i.i.i = icmp eq i64 %.mask.i.i, 0
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, label %.lr.ph.i.i.i51.preheader

.lr.ph.i.i.i51.preheader:                         ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.ea, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i51.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i51.preheader
  %i.eb = and i64 %i.dw, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ea, %i.eb           ; 3 uses
  %i.ec = shl i64 %n.vec, 3
  %i.ed = getelementptr i8, ptr %i.dq, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ee = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dq, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !223
  store <2 x i64> %step.add, ptr %i.ef, align 8, !tbaa !223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !1411

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, label %.lr.ph.i.i.i51.preheader163

.lr.ph.i.i.i51.preheader163:                      ; preds = %.lr.ph.i.i.i51.preheader, %middle.block
  %.010.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i51.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %i.dq, %.lr.ph.i.i.i51.preheader ], [ %i.ed, %middle.block ]
  br label %.lr.ph.i.i.i51

.lr.ph.i.i.i51:                                   ; preds = %.lr.ph.i.i.i51.preheader163, %.lr.ph.i.i.i51
  %.010.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i51 ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i51.preheader163 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i51 ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i51.preheader163 ] ; 2 uses
  store i64 %.010.i.i.i, ptr %.079.i.i.i, align 8, !tbaa !223
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8
  %i.ei = add i64 %.010.i.i.i, 1                  ; 2 uses
  %.not.i.i.i52 = icmp eq i64 %i.ei, %i.ea
  br i1 %.not.i.i.i52, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, label %.lr.ph.i.i.i51, !llvm.loop !1412

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i: ; preds = %.lr.ph.i.i.i51, %middle.block, %bb.t
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %i.dq, ptr noundef nonnull %0, i64 noundef %.097103120, i64 noundef %i.dr, i64 noundef %i.dx, i64 noundef %i.dy, i64 noundef %i.dt, ptr noundef %i.dl)
  %i.ej = load i64, ptr %i.dj, align 8, !tbaa !235
  %.not.i76.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i76.i, label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i
  store i64 0, ptr %i.dj, align 8, !tbaa !235
  br label %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit

_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread: ; preds = %bb.q, %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i, %bb.o
  %.096104116.ph = phi i64 [ %.1.i158, %bb.q ], [ 0, %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEES4_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_.exit.i ], [ %i.ai, %bb.o ] ; 2 uses
  %i.ek = icmp ne i64 %i.bj, %.096104116.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !235
  br label %bb.u

_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit: ; preds = %bb.p, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i, %.preheader.preheader.i.i.i
  %i.el = phi i64 [ %i.cc, %bb.p ], [ %spec.select.i, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i ], [ 0, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i ], [ 0, %.preheader.preheader.i.i.i ]
  %i.em = phi i1 [ true, %bb.p ], [ true, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i ], [ %i.di, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i ], [ %i.di, %.preheader.preheader.i.i.i ] ; 2 uses
  %.096104116 = phi i64 [ %i.ai, %bb.p ], [ %i.ai, %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i ], [ %.096104118, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufI5emptyPS6_mEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.i ], [ %.096104118, %.preheader.preheader.i.i.i ] ; 2 uses
  %.not.i53 = xor i1 %i.em, true
  %i.en = icmp ne i64 %i.bj, %.096104116          ; 2 uses
  %or.cond.i = or i1 %i.en, %.not.i53
  br i1 %or.cond.i, label %bb.u, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit
  %i.eo = phi i64 [ %.pre, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %i.el, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %i.ep = phi i1 [ %i.ek, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %i.en, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %.096104116132 = phi i64 [ %.096104116.ph, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %.096104116, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %i.eq = phi i1 [ false, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit.thread ], [ %i.em, %_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEENS0_13adaptive_xbufIS3_S4_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_bbT0_RT1_.exit ]
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.not.i.i54 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i54, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i, label %.preheader.preheader.i.i.i55

.preheader.preheader.i.i.i55:                     ; preds = %bb.u
  store i64 0, ptr %i.er, align 8, !tbaa !235
  br label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i: ; preds = %.preheader.preheader.i.i.i55, %bb.u
  %or.cond3.i = and i1 %i.ep, %i.eq
  %i.es = select i1 %or.cond3.i, i64 %.096104116132, i64 0 ; 2 uses
  %i.et = sub i64 %i.bj, %i.es                    ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %i.et ; 5 uses
  %i.ev = getelementptr i8, ptr %0, i64 %i.l      ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %gepdiff.i = sub i64 %i.l, %i.et                ; 5 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.et, i64 %gepdiff.i)
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !236 ; 3 uses
  %.not.i23.i56 = icmp ult i64 %i.ex, %.sroa.speculated.i.i
  %i.ey = icmp eq i64 %i.et, %i.l                 ; 2 uses
  br i1 %.not.i23.i56, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i
  %.not.i.i.i.i = icmp eq i64 %i.bj, %i.es
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.ey
  br i1 %or.cond.i.i.i.i, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not38.i.i.i.i = icmp ugt i64 %i.et, %gepdiff.i
  br i1 %.not38.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.preheader.preheader.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i ], [ %gepdiff.i, %bb.w ] ; 2 uses
  %.01316.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i ], [ %i.eu, %bb.w ]
  %i.ez = lshr i64 %.017.i.i.i.i.i, 1             ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.i.i, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1 ; 3 uses
  %.neg.i.i.i.i.i = xor i64 %i.ez, -1
  %i.fc = add i64 %.017.i.i.i.i.i, %.neg.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fd, %i.ew
  store i64 %i.fe, ptr %i.er, align 8, !tbaa !235
  %i.ff = icmp eq ptr %i.fb, %i.eu
  br i1 %i.ff, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit.i.i, %bb.w
  store i64 0, ptr %i.er, align 8, !tbaa !235
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.x:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE5clearEv.exit.i
  %i.fg = load ptr, ptr %3, align 8, !tbaa !234
  br i1 %i.ey, label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i15.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i15.i.i, label %bb.z, label %_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i.i

_ZN5boost7movelib13adaptive_xbufI5emptyPS2_mE16initialize_untilEmRS2_.exit.i.i.i: ; preds = %bb.y
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIP5emptyS3_NS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef nonnull %0, ptr noundef %i.eu, ptr noundef %i.ev, i64 noundef %i.et, i64 noundef %gepdiff.i, ptr noundef %i.fg, i64 noundef %i.ex)
  br label %_ZN5boost7movelib14buffered_mergeIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEENS0_13adaptive_xbufIS2_S3_mEEEEvT_SF_SF_T0_RT1_.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIP5emptyNS_9container3dtl23flat_tree_value_compareISt4lessIS2_ES2_NS_11move_detail8identityIS2_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef nonnull %0, ptr noundef %i.eu, ptr noundef %i.ev, i64 noundef %i.et, i64 noundef %gepdiff.i)
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
